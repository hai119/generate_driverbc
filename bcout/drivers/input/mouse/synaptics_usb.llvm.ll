; ModuleID = '../bcout/drivers/input/mouse/synaptics_usb.llvm.bc'
source_filename = "drivers/input/mouse/synaptics_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_synusb_driver_init6:\09\09\09"
module asm ".long\09synusb_driver_init - .\09\09\09"
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
%struct.synusb = type { %struct.usb_device*, %struct.usb_interface*, %struct.urb*, i8*, %struct.mutex, i8, %struct.input_dev*, [128 x i8], [64 x i8], i64 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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

@__UNIQUE_ID___addressable_synusb_driver_init214 = internal global i8* bitcast (i32 ()* @synusb_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@synusb_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @synusb_probe, void (%struct.usb_interface*)* @synusb_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @synusb_suspend, i32 (%struct.usb_interface*)* @synusb_resume, i32 (%struct.usb_interface*)* @synusb_reset_resume, i32 (%struct.usb_interface*)* @synusb_pre_reset, i32 (%struct.usb_interface*)* @synusb_post_reset, %struct.usb_device_id* getelementptr inbounds ([10 x %struct.usb_device_id], [10 x %struct.usb_device_id]* @synusb_idtable, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 8, !dbg !3843
@__exitcall_synusb_driver_exit = internal global void ()* @synusb_driver_exit, section ".exitcall.exit", align 8, !dbg !3818
@__UNIQUE_ID_author215 = internal constant [122 x i8] c"synaptics_usb.author=Rob Miller <rob@inpharmatica.co.uk>, Ron Lee <ron@debian.org>, Jan Steinhoff <cpad@jan-steinhoff.de>\00", section ".modinfo", align 1, !dbg !3823
@__UNIQUE_ID_description216 = internal constant [54 x i8] c"synaptics_usb.description=Synaptics USB device driver\00", section ".modinfo", align 1, !dbg !3828
@__UNIQUE_ID_file217 = internal constant [53 x i8] c"synaptics_usb.file=drivers/input/mouse/synaptics_usb\00", section ".modinfo", align 1, !dbg !3833
@__UNIQUE_ID_license218 = internal constant [26 x i8] c"synaptics_usb.license=GPL\00", section ".modinfo", align 1, !dbg !3838
@.str = private unnamed_addr constant [14 x i8] c"synaptics_usb\00", align 1
@synusb_idtable = internal constant [10 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1739, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 41 }, %struct.usb_device_id { i16 3, i16 1739, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4 }, %struct.usb_device_id { i16 3, i16 1739, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1739, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 16 }, %struct.usb_device_id { i16 3, i16 1739, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1739, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3907
@.str.1 = private unnamed_addr constant [47 x i8] c"Can not set alternate setting to %i, error: %i\00", align 1
@synusb_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3904
@.str.2 = private unnamed_addr constant [18 x i8] c"&synusb->pm_mutex\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"USB Synaptics Device %04x:%04x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" (Stick)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to register input device, error %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s - usb_submit_urb failed with result: %d\00", align 1
@__func__.synusb_irq = private unnamed_addr constant [11 x i8] c"synusb_irq\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"%s - usb_autopm_get_interface failed, error: %d\0A\00", align 1
@__func__.synusb_open = private unnamed_addr constant [12 x i8] c"synusb_open\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s - usb_submit_urb failed, error: %d\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_synusb_driver_init214 to i8*), i8* bitcast (void ()* @synusb_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_synusb_driver_exit to i8*), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @__UNIQUE_ID_author215, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_description216, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_file217, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_license218, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_driver_init() #0 section ".init.text" !dbg !3917 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @synusb_driver, %struct.module* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !3920
  ret i32 %call, !dbg !3920
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @synusb_driver_exit() #0 section ".exit.text" !dbg !3921 {
entry:
  call void @usb_deregister(%struct.usb_driver* @synusb_driver) #8, !dbg !3922
  ret void, !dbg !3922
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !3906 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %ep = alloca %struct.usb_endpoint_descriptor*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %intf_num = alloca i32, align 4
  %altsetting = alloca i32, align 4
  %__UNIQUE_ID___x212 = alloca i32, align 4
  %__UNIQUE_ID___y213 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !3923, metadata !DIExpression()), !dbg !3924
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !3927, metadata !DIExpression()), !dbg !3928
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3929
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #8, !dbg !3930
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !3928
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep, metadata !3931, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !3934, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.declare(metadata i32* %intf_num, metadata !4280, metadata !DIExpression()), !dbg !4281
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4282
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4283
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4283
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %2, i32 0, i32 0, !dbg !4284
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 2, !dbg !4285
  %3 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4285
  %conv = zext i8 %3 to i32, !dbg !4282
  store i32 %conv, i32* %intf_num, align 4, !dbg !4281
  call void @llvm.dbg.declare(metadata i32* %altsetting, metadata !4286, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x212, metadata !4288, metadata !DIExpression()), !dbg !4290
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4290
  %num_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 2, !dbg !4290
  %5 = load i32, i32* %num_altsetting, align 8, !dbg !4290
  store i32 %5, i32* %__UNIQUE_ID___x212, align 4, !dbg !4290
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y213, metadata !4291, metadata !DIExpression()), !dbg !4290
  store i32 1, i32* %__UNIQUE_ID___y213, align 4, !dbg !4290
  %6 = load i32, i32* %__UNIQUE_ID___x212, align 4, !dbg !4290
  %7 = load i32, i32* %__UNIQUE_ID___y213, align 4, !dbg !4290
  %cmp = icmp ult i32 %6, %7, !dbg !4290
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4290

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %__UNIQUE_ID___x212, align 4, !dbg !4290
  br label %cond.end, !dbg !4290

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %__UNIQUE_ID___y213, align 4, !dbg !4290
  br label %cond.end, !dbg !4290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !4290
  store i32 %cond, i32* %tmp, align 4, !dbg !4290
  %10 = load i32, i32* %tmp, align 4, !dbg !4290
  store i32 %10, i32* %altsetting, align 4, !dbg !4287
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4292, metadata !DIExpression()), !dbg !4293
  %11 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4294
  %12 = load i32, i32* %intf_num, align 4, !dbg !4295
  %13 = load i32, i32* %altsetting, align 4, !dbg !4296
  %call2 = call i32 @usb_set_interface(%struct.usb_device* %11, i32 %12, i32 %13) #8, !dbg !4297
  store i32 %call2, i32* %error, align 4, !dbg !4298
  %14 = load i32, i32* %error, align 4, !dbg !4299
  %tobool = icmp ne i32 %14, 0, !dbg !4299
  br i1 %tobool, label %if.then, label %if.end, !dbg !4301

if.then:                                          ; preds = %cond.end
  %15 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4302
  %dev = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 14, !dbg !4302
  %16 = load i32, i32* %altsetting, align 4, !dbg !4302
  %17 = load i32, i32* %error, align 4, !dbg !4302
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17) #9, !dbg !4302
  %18 = load i32, i32* %error, align 4, !dbg !4304
  store i32 %18, i32* %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

if.end:                                           ; preds = %cond.end
  %19 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4306
  %cur_altsetting3 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 1, !dbg !4307
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting3, align 8, !dbg !4307
  %call4 = call %struct.usb_endpoint_descriptor* @synusb_get_in_endpoint(%struct.usb_host_interface* %20) #8, !dbg !4308
  store %struct.usb_endpoint_descriptor* %call4, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4309
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4310
  %tobool5 = icmp ne %struct.usb_endpoint_descriptor* %21, null, !dbg !4310
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4312

if.then6:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4313
  br label %return, !dbg !4313

if.end7:                                          ; preds = %if.end
  %call8 = call i8* @kzalloc(i64 272, i32 3264) #8, !dbg !4314
  %22 = bitcast i8* %call8 to %struct.synusb*, !dbg !4314
  store %struct.synusb* %22, %struct.synusb** %synusb, align 8, !dbg !4315
  %call9 = call %struct.input_dev* @input_allocate_device() #8, !dbg !4316
  store %struct.input_dev* %call9, %struct.input_dev** %input_dev, align 8, !dbg !4317
  %23 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4318
  %tobool10 = icmp ne %struct.synusb* %23, null, !dbg !4318
  br i1 %tobool10, label %lor.lhs.false, label %if.then12, !dbg !4320

lor.lhs.false:                                    ; preds = %if.end7
  %24 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4321
  %tobool11 = icmp ne %struct.input_dev* %24, null, !dbg !4321
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4322

if.then12:                                        ; preds = %lor.lhs.false, %if.end7
  store i32 -12, i32* %error, align 4, !dbg !4323
  br label %err_free_mem, !dbg !4325

if.end13:                                         ; preds = %lor.lhs.false
  %25 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4326
  %26 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4327
  %udev14 = getelementptr inbounds %struct.synusb, %struct.synusb* %26, i32 0, i32 0, !dbg !4328
  store %struct.usb_device* %25, %struct.usb_device** %udev14, align 8, !dbg !4329
  %27 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4330
  %28 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4331
  %intf15 = getelementptr inbounds %struct.synusb, %struct.synusb* %28, i32 0, i32 1, !dbg !4332
  store %struct.usb_interface* %27, %struct.usb_interface** %intf15, align 8, !dbg !4333
  %29 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4334
  %30 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4335
  %input = getelementptr inbounds %struct.synusb, %struct.synusb* %30, i32 0, i32 6, !dbg !4336
  store %struct.input_dev* %29, %struct.input_dev** %input, align 8, !dbg !4337
  br label %do.body, !dbg !4338

do.body:                                          ; preds = %if.end13
  %31 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4339
  %pm_mutex = getelementptr inbounds %struct.synusb, %struct.synusb* %31, i32 0, i32 4, !dbg !4339
  call void @__mutex_init(%struct.mutex* %pm_mutex, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @synusb_probe.__key) #8, !dbg !4339
  br label %do.end, !dbg !4339

do.end:                                           ; preds = %do.body
  %32 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4341
  %driver_info = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %32, i32 0, i32 12, !dbg !4342
  %33 = load i64, i64* %driver_info, align 8, !dbg !4342
  %34 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4343
  %flags = getelementptr inbounds %struct.synusb, %struct.synusb* %34, i32 0, i32 9, !dbg !4344
  store i64 %33, i64* %flags, align 8, !dbg !4345
  %35 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4346
  %flags16 = getelementptr inbounds %struct.synusb, %struct.synusb* %35, i32 0, i32 9, !dbg !4348
  %36 = load i64, i64* %flags16, align 8, !dbg !4348
  %and = and i64 %36, 16, !dbg !4349
  %tobool17 = icmp ne i64 %and, 0, !dbg !4349
  br i1 %tobool17, label %if.then18, label %if.end24, !dbg !4350

if.then18:                                        ; preds = %do.end
  %37 = load i32, i32* %intf_num, align 4, !dbg !4351
  %cmp19 = icmp eq i32 %37, 1, !dbg !4353
  %38 = zext i1 %cmp19 to i64, !dbg !4351
  %cond21 = select i1 %cmp19, i32 2, i32 1, !dbg !4351
  %conv22 = sext i32 %cond21 to i64, !dbg !4351
  %39 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4354
  %flags23 = getelementptr inbounds %struct.synusb, %struct.synusb* %39, i32 0, i32 9, !dbg !4355
  %40 = load i64, i64* %flags23, align 8, !dbg !4356
  %or = or i64 %40, %conv22, !dbg !4356
  store i64 %or, i64* %flags23, align 8, !dbg !4356
  br label %if.end24, !dbg !4357

if.end24:                                         ; preds = %if.then18, %do.end
  %call25 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #8, !dbg !4358
  %41 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4359
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %41, i32 0, i32 2, !dbg !4360
  store %struct.urb* %call25, %struct.urb** %urb, align 8, !dbg !4361
  %42 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4362
  %urb26 = getelementptr inbounds %struct.synusb, %struct.synusb* %42, i32 0, i32 2, !dbg !4364
  %43 = load %struct.urb*, %struct.urb** %urb26, align 8, !dbg !4364
  %tobool27 = icmp ne %struct.urb* %43, null, !dbg !4362
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4365

if.then28:                                        ; preds = %if.end24
  store i32 -12, i32* %error, align 4, !dbg !4366
  br label %err_free_mem, !dbg !4368

if.end29:                                         ; preds = %if.end24
  %44 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4369
  %45 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4370
  %urb30 = getelementptr inbounds %struct.synusb, %struct.synusb* %45, i32 0, i32 2, !dbg !4371
  %46 = load %struct.urb*, %struct.urb** %urb30, align 8, !dbg !4371
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 15, !dbg !4372
  %call31 = call i8* @usb_alloc_coherent(%struct.usb_device* %44, i64 8, i32 3264, i64* %transfer_dma) #8, !dbg !4373
  %47 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4374
  %data = getelementptr inbounds %struct.synusb, %struct.synusb* %47, i32 0, i32 3, !dbg !4375
  store i8* %call31, i8** %data, align 8, !dbg !4376
  %48 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4377
  %data32 = getelementptr inbounds %struct.synusb, %struct.synusb* %48, i32 0, i32 3, !dbg !4379
  %49 = load i8*, i8** %data32, align 8, !dbg !4379
  %tobool33 = icmp ne i8* %49, null, !dbg !4377
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !4380

if.then34:                                        ; preds = %if.end29
  store i32 -12, i32* %error, align 4, !dbg !4381
  br label %err_free_urb, !dbg !4383

if.end35:                                         ; preds = %if.end29
  %50 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4384
  %urb36 = getelementptr inbounds %struct.synusb, %struct.synusb* %50, i32 0, i32 2, !dbg !4385
  %51 = load %struct.urb*, %struct.urb** %urb36, align 8, !dbg !4385
  %52 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4386
  %53 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4387
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4387
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %54, i32 0, i32 2, !dbg !4387
  %55 = load i8, i8* %bEndpointAddress, align 1, !dbg !4387
  %conv37 = zext i8 %55 to i32, !dbg !4387
  %call38 = call i32 @__create_pipe(%struct.usb_device* %53, i32 %conv37) #8, !dbg !4387
  %or39 = or i32 1073741824, %call38, !dbg !4387
  %or40 = or i32 %or39, 128, !dbg !4387
  %56 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4388
  %data41 = getelementptr inbounds %struct.synusb, %struct.synusb* %56, i32 0, i32 3, !dbg !4389
  %57 = load i8*, i8** %data41, align 8, !dbg !4389
  %58 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4390
  %59 = bitcast %struct.synusb* %58 to i8*, !dbg !4390
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4391
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %60, i32 0, i32 5, !dbg !4392
  %61 = load i8, i8* %bInterval, align 1, !dbg !4392
  %conv42 = zext i8 %61 to i32, !dbg !4391
  call void @usb_fill_int_urb(%struct.urb* %51, %struct.usb_device* %52, i32 %or40, i8* %57, i32 8, void (%struct.urb*)* @synusb_irq, i8* %59, i32 %conv42) #8, !dbg !4393
  %62 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4394
  %urb43 = getelementptr inbounds %struct.synusb, %struct.synusb* %62, i32 0, i32 2, !dbg !4395
  %63 = load %struct.urb*, %struct.urb** %urb43, align 8, !dbg !4395
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 13, !dbg !4396
  %64 = load i32, i32* %transfer_flags, align 4, !dbg !4397
  %or44 = or i32 %64, 4, !dbg !4397
  store i32 %or44, i32* %transfer_flags, align 4, !dbg !4397
  %65 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4398
  %manufacturer = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 32, !dbg !4400
  %66 = load i8*, i8** %manufacturer, align 8, !dbg !4400
  %tobool45 = icmp ne i8* %66, null, !dbg !4398
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !4401

if.then46:                                        ; preds = %if.end35
  %67 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4402
  %name = getelementptr inbounds %struct.synusb, %struct.synusb* %67, i32 0, i32 7, !dbg !4403
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4402
  %68 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4404
  %manufacturer47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 32, !dbg !4405
  %69 = load i8*, i8** %manufacturer47, align 8, !dbg !4405
  %call48 = call i64 @strlcpy(i8* %arraydecay, i8* %69, i64 128) #8, !dbg !4406
  br label %if.end49, !dbg !4406

if.end49:                                         ; preds = %if.then46, %if.end35
  %70 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4407
  %product = getelementptr inbounds %struct.usb_device, %struct.usb_device* %70, i32 0, i32 31, !dbg !4409
  %71 = load i8*, i8** %product, align 8, !dbg !4409
  %tobool50 = icmp ne i8* %71, null, !dbg !4407
  br i1 %tobool50, label %if.then51, label %if.end63, !dbg !4410

if.then51:                                        ; preds = %if.end49
  %72 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4411
  %manufacturer52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 32, !dbg !4414
  %73 = load i8*, i8** %manufacturer52, align 8, !dbg !4414
  %tobool53 = icmp ne i8* %73, null, !dbg !4411
  br i1 %tobool53, label %if.then54, label %if.end58, !dbg !4415

if.then54:                                        ; preds = %if.then51
  %74 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4416
  %name55 = getelementptr inbounds %struct.synusb, %struct.synusb* %74, i32 0, i32 7, !dbg !4417
  %arraydecay56 = getelementptr inbounds [128 x i8], [128 x i8]* %name55, i64 0, i64 0, !dbg !4416
  %call57 = call i64 @strlcat(i8* %arraydecay56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 128) #8, !dbg !4418
  br label %if.end58, !dbg !4418

if.end58:                                         ; preds = %if.then54, %if.then51
  %75 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4419
  %name59 = getelementptr inbounds %struct.synusb, %struct.synusb* %75, i32 0, i32 7, !dbg !4420
  %arraydecay60 = getelementptr inbounds [128 x i8], [128 x i8]* %name59, i64 0, i64 0, !dbg !4419
  %76 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4421
  %product61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 31, !dbg !4422
  %77 = load i8*, i8** %product61, align 8, !dbg !4422
  %call62 = call i64 @strlcat(i8* %arraydecay60, i8* %77, i64 128) #8, !dbg !4423
  br label %if.end63, !dbg !4424

if.end63:                                         ; preds = %if.end58, %if.end49
  %78 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4425
  %name64 = getelementptr inbounds %struct.synusb, %struct.synusb* %78, i32 0, i32 7, !dbg !4427
  %arraydecay65 = getelementptr inbounds [128 x i8], [128 x i8]* %name64, i64 0, i64 0, !dbg !4425
  %call66 = call i64 @strlen(i8* %arraydecay65) #8, !dbg !4428
  %tobool67 = icmp ne i64 %call66, 0, !dbg !4428
  br i1 %tobool67, label %if.end75, label %if.then68, !dbg !4429

if.then68:                                        ; preds = %if.end63
  %79 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4430
  %name69 = getelementptr inbounds %struct.synusb, %struct.synusb* %79, i32 0, i32 7, !dbg !4431
  %arraydecay70 = getelementptr inbounds [128 x i8], [128 x i8]* %name69, i64 0, i64 0, !dbg !4430
  %80 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4432
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 15, !dbg !4432
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !4432
  %81 = load i16, i16* %idVendor, align 8, !dbg !4432
  %conv71 = zext i16 %81 to i32, !dbg !4432
  %82 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4433
  %descriptor72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 15, !dbg !4433
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor72, i32 0, i32 8, !dbg !4433
  %83 = load i16, i16* %idProduct, align 2, !dbg !4433
  %conv73 = zext i16 %83 to i32, !dbg !4433
  %call74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay70, i64 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %conv71, i32 %conv73) #8, !dbg !4434
  br label %if.end75, !dbg !4434

if.end75:                                         ; preds = %if.then68, %if.end63
  %84 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4435
  %flags76 = getelementptr inbounds %struct.synusb, %struct.synusb* %84, i32 0, i32 9, !dbg !4437
  %85 = load i64, i64* %flags76, align 8, !dbg !4437
  %and77 = and i64 %85, 2, !dbg !4438
  %tobool78 = icmp ne i64 %and77, 0, !dbg !4438
  br i1 %tobool78, label %if.then79, label %if.end83, !dbg !4439

if.then79:                                        ; preds = %if.end75
  %86 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4440
  %name80 = getelementptr inbounds %struct.synusb, %struct.synusb* %86, i32 0, i32 7, !dbg !4441
  %arraydecay81 = getelementptr inbounds [128 x i8], [128 x i8]* %name80, i64 0, i64 0, !dbg !4440
  %call82 = call i64 @strlcat(i8* %arraydecay81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 128) #8, !dbg !4442
  br label %if.end83, !dbg !4442

if.end83:                                         ; preds = %if.then79, %if.end75
  %87 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4443
  %88 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4444
  %phys = getelementptr inbounds %struct.synusb, %struct.synusb* %88, i32 0, i32 8, !dbg !4445
  %arraydecay84 = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !4444
  %call85 = call i32 @usb_make_path(%struct.usb_device* %87, i8* %arraydecay84, i64 64) #8, !dbg !4446
  %89 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4447
  %phys86 = getelementptr inbounds %struct.synusb, %struct.synusb* %89, i32 0, i32 8, !dbg !4448
  %arraydecay87 = getelementptr inbounds [64 x i8], [64 x i8]* %phys86, i64 0, i64 0, !dbg !4447
  %call88 = call i64 @strlcat(i8* %arraydecay87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 64) #8, !dbg !4449
  %90 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4450
  %name89 = getelementptr inbounds %struct.synusb, %struct.synusb* %90, i32 0, i32 7, !dbg !4451
  %arraydecay90 = getelementptr inbounds [128 x i8], [128 x i8]* %name89, i64 0, i64 0, !dbg !4450
  %91 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4452
  %name91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 0, !dbg !4453
  store i8* %arraydecay90, i8** %name91, align 8, !dbg !4454
  %92 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4455
  %phys92 = getelementptr inbounds %struct.synusb, %struct.synusb* %92, i32 0, i32 8, !dbg !4456
  %arraydecay93 = getelementptr inbounds [64 x i8], [64 x i8]* %phys92, i64 0, i64 0, !dbg !4455
  %93 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4457
  %phys94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 1, !dbg !4458
  store i8* %arraydecay93, i8** %phys94, align 8, !dbg !4459
  %94 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4460
  %95 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4461
  %id95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 3, !dbg !4462
  call void @usb_to_input_id(%struct.usb_device* %94, %struct.input_id* %id95) #8, !dbg !4463
  %96 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4464
  %intf96 = getelementptr inbounds %struct.synusb, %struct.synusb* %96, i32 0, i32 1, !dbg !4465
  %97 = load %struct.usb_interface*, %struct.usb_interface** %intf96, align 8, !dbg !4465
  %dev97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %97, i32 0, i32 7, !dbg !4466
  %98 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4467
  %dev98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 40, !dbg !4468
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev98, i32 0, i32 1, !dbg !4469
  store %struct.device* %dev97, %struct.device** %parent, align 8, !dbg !4470
  %99 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4471
  %flags99 = getelementptr inbounds %struct.synusb, %struct.synusb* %99, i32 0, i32 9, !dbg !4473
  %100 = load i64, i64* %flags99, align 8, !dbg !4473
  %and100 = and i64 %100, 32, !dbg !4474
  %tobool101 = icmp ne i64 %and100, 0, !dbg !4474
  br i1 %tobool101, label %if.end103, label %if.then102, !dbg !4475

if.then102:                                       ; preds = %if.end83
  %101 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4476
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 31, !dbg !4478
  store i32 (%struct.input_dev*)* @synusb_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !4479
  %102 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4480
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 32, !dbg !4481
  store void (%struct.input_dev*)* @synusb_close, void (%struct.input_dev*)** %close, align 8, !dbg !4482
  br label %if.end103, !dbg !4483

if.end103:                                        ; preds = %if.then102, %if.end83
  %103 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4484
  %104 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4485
  %105 = bitcast %struct.synusb* %104 to i8*, !dbg !4485
  call void @input_set_drvdata(%struct.input_dev* %103, i8* %105) #8, !dbg !4486
  %106 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4487
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 5, !dbg !4488
  %arraydecay104 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4487
  call void @__set_bit(i64 3, i64* %arraydecay104) #8, !dbg !4489
  %107 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4490
  %evbit105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 5, !dbg !4491
  %arraydecay106 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit105, i64 0, i64 0, !dbg !4490
  call void @__set_bit(i64 1, i64* %arraydecay106) #8, !dbg !4492
  %108 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4493
  %flags107 = getelementptr inbounds %struct.synusb, %struct.synusb* %108, i32 0, i32 9, !dbg !4495
  %109 = load i64, i64* %flags107, align 8, !dbg !4495
  %and108 = and i64 %109, 2, !dbg !4496
  %tobool109 = icmp ne i64 %and108, 0, !dbg !4496
  br i1 %tobool109, label %if.then110, label %if.else, !dbg !4497

if.then110:                                       ; preds = %if.end103
  %110 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4498
  %evbit111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 5, !dbg !4500
  %arraydecay112 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit111, i64 0, i64 0, !dbg !4498
  call void @__set_bit(i64 2, i64* %arraydecay112) #8, !dbg !4501
  %111 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4502
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 7, !dbg !4503
  %arraydecay113 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !4502
  call void @__set_bit(i64 0, i64* %arraydecay113) #8, !dbg !4504
  %112 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4505
  %relbit114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 7, !dbg !4506
  %arraydecay115 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit114, i64 0, i64 0, !dbg !4505
  call void @__set_bit(i64 1, i64* %arraydecay115) #8, !dbg !4507
  %113 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4508
  %propbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 4, !dbg !4509
  %arraydecay116 = getelementptr inbounds [1 x i64], [1 x i64]* %propbit, i64 0, i64 0, !dbg !4508
  call void @__set_bit(i64 5, i64* %arraydecay116) #8, !dbg !4510
  %114 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4511
  call void @input_set_abs_params(%struct.input_dev* %114, i32 24, i32 0, i32 127, i32 0, i32 0) #8, !dbg !4512
  br label %if.end124, !dbg !4513

if.else:                                          ; preds = %if.end103
  %115 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4514
  call void @input_set_abs_params(%struct.input_dev* %115, i32 0, i32 1472, i32 5472, i32 0, i32 0) #8, !dbg !4516
  %116 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4517
  call void @input_set_abs_params(%struct.input_dev* %116, i32 1, i32 1408, i32 4448, i32 0, i32 0) #8, !dbg !4518
  %117 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4519
  call void @input_set_abs_params(%struct.input_dev* %117, i32 24, i32 0, i32 255, i32 0, i32 0) #8, !dbg !4520
  %118 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4521
  call void @input_set_abs_params(%struct.input_dev* %118, i32 28, i32 0, i32 15, i32 0, i32 0) #8, !dbg !4522
  %119 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4523
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 6, !dbg !4524
  %arraydecay117 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4523
  call void @__set_bit(i64 330, i64* %arraydecay117) #8, !dbg !4525
  %120 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4526
  %keybit118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 6, !dbg !4527
  %arraydecay119 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit118, i64 0, i64 0, !dbg !4526
  call void @__set_bit(i64 325, i64* %arraydecay119) #8, !dbg !4528
  %121 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4529
  %keybit120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %121, i32 0, i32 6, !dbg !4530
  %arraydecay121 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit120, i64 0, i64 0, !dbg !4529
  call void @__set_bit(i64 333, i64* %arraydecay121) #8, !dbg !4531
  %122 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4532
  %keybit122 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 6, !dbg !4533
  %arraydecay123 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit122, i64 0, i64 0, !dbg !4532
  call void @__set_bit(i64 334, i64* %arraydecay123) #8, !dbg !4534
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.then110
  %123 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4535
  %flags125 = getelementptr inbounds %struct.synusb, %struct.synusb* %123, i32 0, i32 9, !dbg !4537
  %124 = load i64, i64* %flags125, align 8, !dbg !4537
  %and126 = and i64 %124, 4, !dbg !4538
  %tobool127 = icmp ne i64 %and126, 0, !dbg !4538
  br i1 %tobool127, label %if.then128, label %if.else131, !dbg !4539

if.then128:                                       ; preds = %if.end124
  %125 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4540
  %propbit129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 4, !dbg !4541
  %arraydecay130 = getelementptr inbounds [1 x i64], [1 x i64]* %propbit129, i64 0, i64 0, !dbg !4540
  call void @__set_bit(i64 1, i64* %arraydecay130) #8, !dbg !4542
  br label %if.end134, !dbg !4542

if.else131:                                       ; preds = %if.end124
  %126 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4543
  %propbit132 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %126, i32 0, i32 4, !dbg !4544
  %arraydecay133 = getelementptr inbounds [1 x i64], [1 x i64]* %propbit132, i64 0, i64 0, !dbg !4543
  call void @__set_bit(i64 0, i64* %arraydecay133) #8, !dbg !4545
  br label %if.end134

if.end134:                                        ; preds = %if.else131, %if.then128
  %127 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4546
  %keybit135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 6, !dbg !4547
  %arraydecay136 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit135, i64 0, i64 0, !dbg !4546
  call void @__set_bit(i64 272, i64* %arraydecay136) #8, !dbg !4548
  %128 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4549
  %keybit137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 6, !dbg !4550
  %arraydecay138 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit137, i64 0, i64 0, !dbg !4549
  call void @__set_bit(i64 273, i64* %arraydecay138) #8, !dbg !4551
  %129 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4552
  %keybit139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %129, i32 0, i32 6, !dbg !4553
  %arraydecay140 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit139, i64 0, i64 0, !dbg !4552
  call void @__set_bit(i64 274, i64* %arraydecay140) #8, !dbg !4554
  %130 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4555
  %131 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4556
  %132 = bitcast %struct.synusb* %131 to i8*, !dbg !4556
  call void @usb_set_intfdata(%struct.usb_interface* %130, i8* %132) #8, !dbg !4557
  %133 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4558
  %flags141 = getelementptr inbounds %struct.synusb, %struct.synusb* %133, i32 0, i32 9, !dbg !4560
  %134 = load i64, i64* %flags141, align 8, !dbg !4560
  %and142 = and i64 %134, 32, !dbg !4561
  %tobool143 = icmp ne i64 %and142, 0, !dbg !4561
  br i1 %tobool143, label %if.then144, label %if.end149, !dbg !4562

if.then144:                                       ; preds = %if.end134
  %135 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4563
  %call145 = call i32 @synusb_open(%struct.input_dev* %135) #8, !dbg !4565
  store i32 %call145, i32* %error, align 4, !dbg !4566
  %136 = load i32, i32* %error, align 4, !dbg !4567
  %tobool146 = icmp ne i32 %136, 0, !dbg !4567
  br i1 %tobool146, label %if.then147, label %if.end148, !dbg !4569

if.then147:                                       ; preds = %if.then144
  br label %err_free_dma, !dbg !4570

if.end148:                                        ; preds = %if.then144
  br label %if.end149, !dbg !4571

if.end149:                                        ; preds = %if.end148, %if.end134
  %137 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4572
  %call150 = call i32 @input_register_device(%struct.input_dev* %137) #8, !dbg !4573
  store i32 %call150, i32* %error, align 4, !dbg !4574
  %138 = load i32, i32* %error, align 4, !dbg !4575
  %tobool151 = icmp ne i32 %138, 0, !dbg !4575
  br i1 %tobool151, label %if.then152, label %if.end154, !dbg !4577

if.then152:                                       ; preds = %if.end149
  %139 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4578
  %dev153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %139, i32 0, i32 14, !dbg !4578
  %140 = load i32, i32* %error, align 4, !dbg !4578
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev153, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %140) #9, !dbg !4578
  br label %err_stop_io, !dbg !4580

if.end154:                                        ; preds = %if.end149
  store i32 0, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

err_stop_io:                                      ; preds = %if.then152
  call void @llvm.dbg.label(metadata !4582), !dbg !4583
  %141 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4584
  %flags155 = getelementptr inbounds %struct.synusb, %struct.synusb* %141, i32 0, i32 9, !dbg !4586
  %142 = load i64, i64* %flags155, align 8, !dbg !4586
  %and156 = and i64 %142, 32, !dbg !4587
  %tobool157 = icmp ne i64 %and156, 0, !dbg !4587
  br i1 %tobool157, label %if.then158, label %if.end160, !dbg !4588

if.then158:                                       ; preds = %err_stop_io
  %143 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4589
  %input159 = getelementptr inbounds %struct.synusb, %struct.synusb* %143, i32 0, i32 6, !dbg !4590
  %144 = load %struct.input_dev*, %struct.input_dev** %input159, align 8, !dbg !4590
  call void @synusb_close(%struct.input_dev* %144) #8, !dbg !4591
  br label %if.end160, !dbg !4591

if.end160:                                        ; preds = %if.then158, %err_stop_io
  br label %err_free_dma, !dbg !4592

err_free_dma:                                     ; preds = %if.end160, %if.then147
  call void @llvm.dbg.label(metadata !4593), !dbg !4594
  %145 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4595
  %146 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4596
  %data161 = getelementptr inbounds %struct.synusb, %struct.synusb* %146, i32 0, i32 3, !dbg !4597
  %147 = load i8*, i8** %data161, align 8, !dbg !4597
  %148 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4598
  %urb162 = getelementptr inbounds %struct.synusb, %struct.synusb* %148, i32 0, i32 2, !dbg !4599
  %149 = load %struct.urb*, %struct.urb** %urb162, align 8, !dbg !4599
  %transfer_dma163 = getelementptr inbounds %struct.urb, %struct.urb* %149, i32 0, i32 15, !dbg !4600
  %150 = load i64, i64* %transfer_dma163, align 8, !dbg !4600
  call void @usb_free_coherent(%struct.usb_device* %145, i64 8, i8* %147, i64 %150) #8, !dbg !4601
  br label %err_free_urb, !dbg !4601

err_free_urb:                                     ; preds = %err_free_dma, %if.then34
  call void @llvm.dbg.label(metadata !4602), !dbg !4603
  %151 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4604
  %urb164 = getelementptr inbounds %struct.synusb, %struct.synusb* %151, i32 0, i32 2, !dbg !4605
  %152 = load %struct.urb*, %struct.urb** %urb164, align 8, !dbg !4605
  call void @usb_free_urb(%struct.urb* %152) #8, !dbg !4606
  br label %err_free_mem, !dbg !4606

err_free_mem:                                     ; preds = %err_free_urb, %if.then28, %if.then12
  call void @llvm.dbg.label(metadata !4607), !dbg !4608
  %153 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4609
  call void @input_free_device(%struct.input_dev* %153) #8, !dbg !4610
  %154 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4611
  %155 = bitcast %struct.synusb* %154 to i8*, !dbg !4611
  call void @kfree(i8* %155) #8, !dbg !4612
  %156 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4613
  call void @usb_set_intfdata(%struct.usb_interface* %156, i8* null) #8, !dbg !4614
  %157 = load i32, i32* %error, align 4, !dbg !4615
  store i32 %157, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

return:                                           ; preds = %err_free_mem, %if.end154, %if.then6, %if.then
  %158 = load i32, i32* %retval, align 4, !dbg !4617
  ret i32 %158, !dbg !4617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @synusb_disconnect(%struct.usb_interface* %intf) #2 !dbg !4618 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %udev = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !4621, metadata !DIExpression()), !dbg !4622
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4623
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !4624
  %1 = bitcast i8* %call to %struct.synusb*, !dbg !4624
  store %struct.synusb* %1, %struct.synusb** %synusb, align 8, !dbg !4622
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4625, metadata !DIExpression()), !dbg !4626
  %2 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4627
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %2) #8, !dbg !4628
  store %struct.usb_device* %call1, %struct.usb_device** %udev, align 8, !dbg !4626
  %3 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4629
  %flags = getelementptr inbounds %struct.synusb, %struct.synusb* %3, i32 0, i32 9, !dbg !4631
  %4 = load i64, i64* %flags, align 8, !dbg !4631
  %and = and i64 %4, 32, !dbg !4632
  %tobool = icmp ne i64 %and, 0, !dbg !4632
  br i1 %tobool, label %if.then, label %if.end, !dbg !4633

if.then:                                          ; preds = %entry
  %5 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4634
  %input = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 6, !dbg !4635
  %6 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4635
  call void @synusb_close(%struct.input_dev* %6) #8, !dbg !4636
  br label %if.end, !dbg !4636

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4637
  %input2 = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 6, !dbg !4638
  %8 = load %struct.input_dev*, %struct.input_dev** %input2, align 8, !dbg !4638
  call void @input_unregister_device(%struct.input_dev* %8) #8, !dbg !4639
  %9 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4640
  %10 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4641
  %data = getelementptr inbounds %struct.synusb, %struct.synusb* %10, i32 0, i32 3, !dbg !4642
  %11 = load i8*, i8** %data, align 8, !dbg !4642
  %12 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4643
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %12, i32 0, i32 2, !dbg !4644
  %13 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4644
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 15, !dbg !4645
  %14 = load i64, i64* %transfer_dma, align 8, !dbg !4645
  call void @usb_free_coherent(%struct.usb_device* %9, i64 8, i8* %11, i64 %14) #8, !dbg !4646
  %15 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4647
  %urb3 = getelementptr inbounds %struct.synusb, %struct.synusb* %15, i32 0, i32 2, !dbg !4648
  %16 = load %struct.urb*, %struct.urb** %urb3, align 8, !dbg !4648
  call void @usb_free_urb(%struct.urb* %16) #8, !dbg !4649
  %17 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4650
  %18 = bitcast %struct.synusb* %17 to i8*, !dbg !4650
  call void @kfree(i8* %18) #8, !dbg !4651
  %19 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4652
  call void @usb_set_intfdata(%struct.usb_interface* %19, i8* null) #8, !dbg !4653
  ret void, !dbg !4654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_suspend(%struct.usb_interface* %intf, i32 %message.coerce) #2 !dbg !4655 {
entry:
  %message = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !4660, metadata !DIExpression()), !dbg !4661
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4662
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !4663
  %1 = bitcast i8* %call to %struct.synusb*, !dbg !4663
  store %struct.synusb* %1, %struct.synusb** %synusb, align 8, !dbg !4661
  %2 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4664
  %pm_mutex = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 4, !dbg !4665
  call void @mutex_lock(%struct.mutex* %pm_mutex) #8, !dbg !4666
  %3 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4667
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %3, i32 0, i32 2, !dbg !4668
  %4 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4668
  call void @usb_kill_urb(%struct.urb* %4) #8, !dbg !4669
  %5 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4670
  %pm_mutex1 = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 4, !dbg !4671
  call void @mutex_unlock(%struct.mutex* %pm_mutex1) #8, !dbg !4672
  ret i32 0, !dbg !4673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_resume(%struct.usb_interface* %intf) #2 !dbg !4674 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %retval1 = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !4677, metadata !DIExpression()), !dbg !4678
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4679
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !4680
  %1 = bitcast i8* %call to %struct.synusb*, !dbg !4680
  store %struct.synusb* %1, %struct.synusb** %synusb, align 8, !dbg !4678
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4681, metadata !DIExpression()), !dbg !4682
  store i32 0, i32* %retval1, align 4, !dbg !4682
  %2 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4683
  %pm_mutex = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 4, !dbg !4684
  call void @mutex_lock(%struct.mutex* %pm_mutex) #8, !dbg !4685
  %3 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4686
  %is_open = getelementptr inbounds %struct.synusb, %struct.synusb* %3, i32 0, i32 5, !dbg !4688
  %4 = load i8, i8* %is_open, align 8, !dbg !4688
  %tobool = trunc i8 %4 to i1, !dbg !4688
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !4689

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4690
  %flags = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 9, !dbg !4691
  %6 = load i64, i64* %flags, align 8, !dbg !4691
  %and = and i64 %6, 32, !dbg !4692
  %tobool2 = icmp ne i64 %and, 0, !dbg !4692
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !4693

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %7 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4694
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 2, !dbg !4695
  %8 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4695
  %call3 = call i32 @usb_submit_urb(%struct.urb* %8, i32 3072) #8, !dbg !4696
  %cmp = icmp slt i32 %call3, 0, !dbg !4697
  br i1 %cmp, label %if.then, label %if.end, !dbg !4698

if.then:                                          ; preds = %land.lhs.true
  store i32 -5, i32* %retval1, align 4, !dbg !4699
  br label %if.end, !dbg !4701

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %9 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4702
  %pm_mutex4 = getelementptr inbounds %struct.synusb, %struct.synusb* %9, i32 0, i32 4, !dbg !4703
  call void @mutex_unlock(%struct.mutex* %pm_mutex4) #8, !dbg !4704
  %10 = load i32, i32* %retval1, align 4, !dbg !4705
  ret i32 %10, !dbg !4706
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_reset_resume(%struct.usb_interface* %intf) #2 !dbg !4707 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4710
  %call = call i32 @synusb_resume(%struct.usb_interface* %0) #8, !dbg !4711
  ret i32 %call, !dbg !4712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_pre_reset(%struct.usb_interface* %intf) #2 !dbg !4713 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %synusb = alloca %struct.synusb*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4714, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !4716, metadata !DIExpression()), !dbg !4717
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4718
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !4719
  %1 = bitcast i8* %call to %struct.synusb*, !dbg !4719
  store %struct.synusb* %1, %struct.synusb** %synusb, align 8, !dbg !4717
  %2 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4720
  %pm_mutex = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 4, !dbg !4721
  call void @mutex_lock(%struct.mutex* %pm_mutex) #8, !dbg !4722
  %3 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4723
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %3, i32 0, i32 2, !dbg !4724
  %4 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4724
  call void @usb_kill_urb(%struct.urb* %4) #8, !dbg !4725
  ret i32 0, !dbg !4726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_post_reset(%struct.usb_interface* %intf) #2 !dbg !4727 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %retval1 = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4728, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !4730, metadata !DIExpression()), !dbg !4731
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4732
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !4733
  %1 = bitcast i8* %call to %struct.synusb*, !dbg !4733
  store %struct.synusb* %1, %struct.synusb** %synusb, align 8, !dbg !4731
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4734, metadata !DIExpression()), !dbg !4735
  store i32 0, i32* %retval1, align 4, !dbg !4735
  %2 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4736
  %is_open = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 5, !dbg !4738
  %3 = load i8, i8* %is_open, align 8, !dbg !4738
  %tobool = trunc i8 %3 to i1, !dbg !4738
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !4739

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4740
  %flags = getelementptr inbounds %struct.synusb, %struct.synusb* %4, i32 0, i32 9, !dbg !4741
  %5 = load i64, i64* %flags, align 8, !dbg !4741
  %and = and i64 %5, 32, !dbg !4742
  %tobool2 = icmp ne i64 %and, 0, !dbg !4742
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !4743

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %6 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4744
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %6, i32 0, i32 2, !dbg !4745
  %7 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4745
  %call3 = call i32 @usb_submit_urb(%struct.urb* %7, i32 3072) #8, !dbg !4746
  %cmp = icmp slt i32 %call3, 0, !dbg !4747
  br i1 %cmp, label %if.then, label %if.end, !dbg !4748

if.then:                                          ; preds = %land.lhs.true
  store i32 -5, i32* %retval1, align 4, !dbg !4749
  br label %if.end, !dbg !4751

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %8 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !4752
  %pm_mutex = getelementptr inbounds %struct.synusb, %struct.synusb* %8, i32 0, i32 4, !dbg !4753
  call void @mutex_unlock(%struct.mutex* %pm_mutex) #8, !dbg !4754
  %9 = load i32, i32* %retval1, align 4, !dbg !4755
  ret i32 %9, !dbg !4756
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4757 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4762, metadata !DIExpression()), !dbg !4764
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4764
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4764
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4764
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4764
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4764
  store i8* %2, i8** %__mptr, align 8, !dbg !4764
  br label %do.body, !dbg !4764

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4765

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4764
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4764
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4764
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4765
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4764
  ret %struct.usb_device* %5, !dbg !4767
}

; Function Attrs: noredzone
declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_endpoint_descriptor* @synusb_get_in_endpoint(%struct.usb_host_interface* %iface) #2 !dbg !4768 {
entry:
  %retval = alloca %struct.usb_endpoint_descriptor*, align 8
  %iface.addr = alloca %struct.usb_host_interface*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %i = alloca i32, align 4
  store %struct.usb_host_interface* %iface, %struct.usb_host_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !4773, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4775, metadata !DIExpression()), !dbg !4776
  store i32 0, i32* %i, align 4, !dbg !4777
  br label %for.cond, !dbg !4779

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4780
  %1 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface.addr, align 8, !dbg !4782
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %1, i32 0, i32 0, !dbg !4783
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4784
  %2 = load i8, i8* %bNumEndpoints, align 4, !dbg !4784
  %conv = zext i8 %2 to i32, !dbg !4782
  %cmp = icmp slt i32 %0, %conv, !dbg !4785
  br i1 %cmp, label %for.body, label %for.end, !dbg !4786

for.body:                                         ; preds = %for.cond
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface.addr, align 8, !dbg !4787
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %3, i32 0, i32 3, !dbg !4789
  %4 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint2, align 8, !dbg !4789
  %5 = load i32, i32* %i, align 4, !dbg !4790
  %idxprom = sext i32 %5 to i64, !dbg !4787
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %4, i64 %idxprom, !dbg !4787
  %desc3 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4791
  store %struct.usb_endpoint_descriptor* %desc3, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4792
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4793
  %call = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %6) #8, !dbg !4795
  %tobool = icmp ne i32 %call, 0, !dbg !4795
  br i1 %tobool, label %if.then, label %if.end, !dbg !4796

if.then:                                          ; preds = %for.body
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4797
  store %struct.usb_endpoint_descriptor* %7, %struct.usb_endpoint_descriptor** %retval, align 8, !dbg !4799
  br label %return, !dbg !4799

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4800

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !4801
  %inc = add i32 %8, 1, !dbg !4801
  store i32 %inc, i32* %i, align 4, !dbg !4801
  br label %for.cond, !dbg !4802, !llvm.loop !4803

for.end:                                          ; preds = %for.cond
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %retval, align 8, !dbg !4805
  br label %return, !dbg !4805

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %retval, align 8, !dbg !4806
  ret %struct.usb_endpoint_descriptor* %9, !dbg !4806
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4807 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4810, metadata !DIExpression()), !dbg !4814
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4820, metadata !DIExpression()), !dbg !4821
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4822, metadata !DIExpression()), !dbg !4823
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4824, metadata !DIExpression()), !dbg !4825
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4826, metadata !DIExpression()), !dbg !4830
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4832, metadata !DIExpression()), !dbg !4836
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4838, metadata !DIExpression()), !dbg !4842
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4847, metadata !DIExpression()), !dbg !4848
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4849, metadata !DIExpression()), !dbg !4850
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4851, metadata !DIExpression()), !dbg !4852
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4853, metadata !DIExpression()), !dbg !4854
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4855, metadata !DIExpression()), !dbg !4856
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4857, metadata !DIExpression()), !dbg !4858
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4859, metadata !DIExpression()), !dbg !4860
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4861, metadata !DIExpression()), !dbg !4862
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4863, metadata !DIExpression()), !dbg !4864
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4865, metadata !DIExpression()), !dbg !4866
  %0 = load i64, i64* %size.addr, align 8, !dbg !4867
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4868
  %or = or i32 %1, 256, !dbg !4869
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4870
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4871
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4872

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4873
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4874
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4875

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4876
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4877
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4878
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4879
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4856
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4880
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4881
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4882
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4883
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4884
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4885
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4886
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4886
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4886
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4886
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4886
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4887
  br label %kmalloc.exit, !dbg !4887

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4888
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4889
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4889
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4891

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4895
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4896

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4900
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4901

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4903
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4904

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4905
  br label %kmalloc_index.exit.i, !dbg !4905

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4906
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4908
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4909

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4910
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4911
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4912

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4913
  br label %kmalloc_index.exit.i, !dbg !4913

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4914
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4916
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4917

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4918
  br label %kmalloc_index.exit.i, !dbg !4918

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4919
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4921
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4922

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4923
  br label %kmalloc_index.exit.i, !dbg !4923

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4924
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4926
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4927

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4928
  br label %kmalloc_index.exit.i, !dbg !4928

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4929
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4931
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4932

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4933
  br label %kmalloc_index.exit.i, !dbg !4933

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4934
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4936
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4937

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4938
  br label %kmalloc_index.exit.i, !dbg !4938

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4939
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4941
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4942

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4943
  br label %kmalloc_index.exit.i, !dbg !4943

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4944
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4946
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4947

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4948
  br label %kmalloc_index.exit.i, !dbg !4948

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4949
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4951
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4952

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4953
  br label %kmalloc_index.exit.i, !dbg !4953

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4954
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4956
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4957

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4958
  br label %kmalloc_index.exit.i, !dbg !4958

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4959
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4961
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4962

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4963
  br label %kmalloc_index.exit.i, !dbg !4963

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4964
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4966
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4967

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4968
  br label %kmalloc_index.exit.i, !dbg !4968

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4969
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4971
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4972

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4973
  br label %kmalloc_index.exit.i, !dbg !4973

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4976
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4977

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4978
  br label %kmalloc_index.exit.i, !dbg !4978

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4979
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4981
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4982

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4983
  br label %kmalloc_index.exit.i, !dbg !4983

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4984
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4986
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4987

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4988
  br label %kmalloc_index.exit.i, !dbg !4988

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4989
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4991
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4992

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4993
  br label %kmalloc_index.exit.i, !dbg !4993

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4994
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4996
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4997

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5001
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5002

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5003
  br label %kmalloc_index.exit.i, !dbg !5003

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5004
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5006
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5007

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5008
  br label %kmalloc_index.exit.i, !dbg !5008

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5009
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5011
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5012

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5013
  br label %kmalloc_index.exit.i, !dbg !5013

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5014
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5016
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5017

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5018
  br label %kmalloc_index.exit.i, !dbg !5018

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5019
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5021
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5022

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5023
  br label %kmalloc_index.exit.i, !dbg !5023

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5024
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5026
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5027

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5028
  br label %kmalloc_index.exit.i, !dbg !5028

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5029
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5031
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5032

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5034, !srcloc !5037
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !5038, !srcloc !5041
  unreachable, !dbg !5042

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5043
  store i32 %45, i32* %index.i, align 4, !dbg !5044
  %46 = load i32, i32* %index.i, align 4, !dbg !5045
  %tobool.i = icmp ne i32 %46, 0, !dbg !5045
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5047

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5048
  br label %kmalloc.exit, !dbg !5048

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5049
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5050
  %and.i.i = and i32 %48, 17, !dbg !5050
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5050
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5050
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5050
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5050
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5052

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5053
  br label %kmalloc_type.exit.i, !dbg !5053

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5054
  %and2.i.i = and i32 %49, 1, !dbg !5055
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5054
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5054
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5054
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5056
  br label %kmalloc_type.exit.i, !dbg !5056

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5057
  %idxprom.i = zext i32 %51 to i64, !dbg !5058
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5058
  %52 = load i32, i32* %index.i, align 4, !dbg !5059
  %idxprom6.i = zext i32 %52 to i64, !dbg !5058
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5058
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5058
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5060
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5061
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5062
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5063
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5064
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5064
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5064
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5064
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5064
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4825
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5065
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5066
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5067
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5068
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5069
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5070
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5071
  store i8* %62, i8** %retval.i, align 8, !dbg !5072
  br label %kmalloc.exit, !dbg !5072

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5073
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5074
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5075
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5075
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5075
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5075
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5075
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5076
  br label %kmalloc.exit, !dbg !5076

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5077
  ret i8* %65, !dbg !5078
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5079 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5098
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5099
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5100
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5101
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5102
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5103
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5104
  store i32 %2, i32* %pipe2, align 8, !dbg !5105
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5106
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5107
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5108
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5109
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5110
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5111
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5112
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5113
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5114
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5115
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5116
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5117
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5118
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5119
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5120
  store i8* %10, i8** %context4, align 8, !dbg !5121
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5122
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5124
  %13 = load i32, i32* %speed, align 4, !dbg !5124
  %cmp = icmp eq i32 %13, 3, !dbg !5125
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5126

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5127
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5128
  %15 = load i32, i32* %speed5, align 4, !dbg !5128
  %cmp6 = icmp uge i32 %15, 5, !dbg !5129
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5130

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5131, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5135, metadata !DIExpression()), !dbg !5137
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5137
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5137
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5138, metadata !DIExpression()), !dbg !5137
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5137
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5137
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5137
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5137
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5137

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5137
  br label %cond.end, !dbg !5137

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5137
  br label %cond.end, !dbg !5137

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5137
  store i32 %cond, i32* %tmp, align 4, !dbg !5137
  %21 = load i32, i32* %tmp, align 4, !dbg !5137
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5134
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5139, metadata !DIExpression()), !dbg !5134
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5134
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5134
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5134
  %cmp9 = icmp slt i32 %22, %23, !dbg !5134
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5134

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5134
  br label %cond.end12, !dbg !5134

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5134
  br label %cond.end12, !dbg !5134

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5134
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5134
  %26 = load i32, i32* %tmp8, align 4, !dbg !5134
  store i32 %26, i32* %interval.addr, align 4, !dbg !5140
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5141
  %sub = sub i32 %27, 1, !dbg !5142
  %shl = shl i32 1, %sub, !dbg !5143
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5144
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5145
  store i32 %shl, i32* %interval14, align 8, !dbg !5146
  br label %if.end, !dbg !5147

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5148
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5150
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5151
  store i32 %29, i32* %interval15, align 8, !dbg !5152
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5153
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5154
  store i32 -1, i32* %start_frame, align 8, !dbg !5155
  ret void, !dbg !5156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5157 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5164
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5165
  %1 = load i32, i32* %devnum, align 8, !dbg !5165
  %shl = shl i32 %1, 8, !dbg !5166
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5167
  %shl1 = shl i32 %2, 15, !dbg !5168
  %or = or i32 %shl, %shl1, !dbg !5169
  ret i32 %or, !dbg !5170
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @synusb_irq(%struct.urb* %urb) #2 !dbg !5171 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %error = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5176
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5177
  %1 = load i8*, i8** %context, align 8, !dbg !5177
  %2 = bitcast i8* %1 to %struct.synusb*, !dbg !5176
  store %struct.synusb* %2, %struct.synusb** %synusb, align 8, !dbg !5175
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5178, metadata !DIExpression()), !dbg !5179
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5180
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5181
  %4 = load i32, i32* %status, align 8, !dbg !5181
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb1
    i32 -2, label %sw.bb1
    i32 -108, label %sw.bb1
  ], !dbg !5182

sw.bb:                                            ; preds = %entry
  %5 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5183
  %udev = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 0, !dbg !5185
  %6 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5185
  call void @usb_mark_last_busy(%struct.usb_device* %6) #8, !dbg !5186
  br label %sw.epilog, !dbg !5187

sw.bb1:                                           ; preds = %entry, %entry, %entry
  br label %if.end4, !dbg !5188

sw.default:                                       ; preds = %entry
  br label %resubmit, !dbg !5189

sw.epilog:                                        ; preds = %sw.bb
  %7 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5190
  %flags = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 9, !dbg !5192
  %8 = load i64, i64* %flags, align 8, !dbg !5192
  %and = and i64 %8, 2, !dbg !5193
  %tobool = icmp ne i64 %and, 0, !dbg !5193
  br i1 %tobool, label %if.then, label %if.else, !dbg !5194

if.then:                                          ; preds = %sw.epilog
  %9 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5195
  call void @synusb_report_stick(%struct.synusb* %9) #8, !dbg !5196
  br label %if.end, !dbg !5196

if.else:                                          ; preds = %sw.epilog
  %10 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5197
  call void @synusb_report_touchpad(%struct.synusb* %10) #8, !dbg !5198
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %resubmit, !dbg !5199

resubmit:                                         ; preds = %if.end, %sw.default
  call void @llvm.dbg.label(metadata !5200), !dbg !5201
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5202
  %call = call i32 @usb_submit_urb(%struct.urb* %11, i32 2592) #8, !dbg !5203
  store i32 %call, i32* %error, align 4, !dbg !5204
  %12 = load i32, i32* %error, align 4, !dbg !5205
  %tobool2 = icmp ne i32 %12, 0, !dbg !5205
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !5207

land.lhs.true:                                    ; preds = %resubmit
  %13 = load i32, i32* %error, align 4, !dbg !5208
  %cmp = icmp ne i32 %13, -1, !dbg !5209
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5210

if.then3:                                         ; preds = %land.lhs.true
  %14 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5211
  %intf = getelementptr inbounds %struct.synusb, %struct.synusb* %14, i32 0, i32 1, !dbg !5211
  %15 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5211
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 7, !dbg !5211
  %16 = load i32, i32* %error, align 4, !dbg !5211
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.synusb_irq, i64 0, i64 0), i32 %16) #9, !dbg !5211
  br label %if.end4, !dbg !5211

if.end4:                                          ; preds = %sw.bb1, %if.then3, %land.lhs.true, %resubmit
  ret void, !dbg !5212
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
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5213 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5222, metadata !DIExpression()), !dbg !5223
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5224
  %1 = load i64, i64* %size.addr, align 8, !dbg !5225
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5226
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5227
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5227
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5228
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5228
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5229
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5230
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5229
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %4, i8* %arraydecay) #8, !dbg !5231
  store i32 %call, i32* %actual, align 4, !dbg !5232
  %6 = load i32, i32* %actual, align 4, !dbg !5233
  %7 = load i64, i64* %size.addr, align 8, !dbg !5234
  %conv = trunc i64 %7 to i32, !dbg !5235
  %cmp = icmp sge i32 %6, %conv, !dbg !5236
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5237

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5237

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5238
  br label %cond.end, !dbg !5237

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5237
  ret i32 %cond, !dbg !5239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5240 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5251
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5252
  store i16 3, i16* %bustype, align 2, !dbg !5253
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5254
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5254
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5254
  %2 = load i16, i16* %idVendor, align 8, !dbg !5254
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5255
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5256
  store i16 %2, i16* %vendor, align 2, !dbg !5257
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5258
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5258
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5258
  %5 = load i16, i16* %idProduct, align 2, !dbg !5258
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5259
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5260
  store i16 %5, i16* %product, align 2, !dbg !5261
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5262
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5262
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5262
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5262
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5263
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5264
  store i16 %8, i16* %version, align 2, !dbg !5265
  ret void, !dbg !5266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @synusb_open(%struct.input_dev* %dev) #2 !dbg !5267 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %retval1 = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5268, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !5270, metadata !DIExpression()), !dbg !5271
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5272
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #8, !dbg !5273
  %1 = bitcast i8* %call to %struct.synusb*, !dbg !5273
  store %struct.synusb* %1, %struct.synusb** %synusb, align 8, !dbg !5271
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5274, metadata !DIExpression()), !dbg !5275
  %2 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5276
  %intf = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 1, !dbg !5277
  %3 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5277
  %call2 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %3) #8, !dbg !5278
  store i32 %call2, i32* %retval1, align 4, !dbg !5279
  %4 = load i32, i32* %retval1, align 4, !dbg !5280
  %tobool = icmp ne i32 %4, 0, !dbg !5280
  br i1 %tobool, label %if.then, label %if.end, !dbg !5282

if.then:                                          ; preds = %entry
  %5 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5283
  %intf3 = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 1, !dbg !5283
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf3, align 8, !dbg !5283
  %dev4 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 7, !dbg !5283
  %7 = load i32, i32* %retval1, align 4, !dbg !5283
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.synusb_open, i64 0, i64 0), i32 %7) #9, !dbg !5283
  %8 = load i32, i32* %retval1, align 4, !dbg !5285
  store i32 %8, i32* %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end:                                           ; preds = %entry
  %9 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5287
  %pm_mutex = getelementptr inbounds %struct.synusb, %struct.synusb* %9, i32 0, i32 4, !dbg !5288
  call void @mutex_lock(%struct.mutex* %pm_mutex) #8, !dbg !5289
  %10 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5290
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %10, i32 0, i32 2, !dbg !5291
  %11 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5291
  %call5 = call i32 @usb_submit_urb(%struct.urb* %11, i32 3264) #8, !dbg !5292
  store i32 %call5, i32* %retval1, align 4, !dbg !5293
  %12 = load i32, i32* %retval1, align 4, !dbg !5294
  %tobool6 = icmp ne i32 %12, 0, !dbg !5294
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5296

if.then7:                                         ; preds = %if.end
  %13 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5297
  %intf8 = getelementptr inbounds %struct.synusb, %struct.synusb* %13, i32 0, i32 1, !dbg !5297
  %14 = load %struct.usb_interface*, %struct.usb_interface** %intf8, align 8, !dbg !5297
  %dev9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 7, !dbg !5297
  %15 = load i32, i32* %retval1, align 4, !dbg !5297
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.synusb_open, i64 0, i64 0), i32 %15) #9, !dbg !5297
  store i32 -5, i32* %retval1, align 4, !dbg !5299
  br label %out, !dbg !5300

if.end10:                                         ; preds = %if.end
  %16 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5301
  %intf11 = getelementptr inbounds %struct.synusb, %struct.synusb* %16, i32 0, i32 1, !dbg !5302
  %17 = load %struct.usb_interface*, %struct.usb_interface** %intf11, align 8, !dbg !5302
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 6, !dbg !5303
  %bf.load = load i8, i8* %needs_remote_wakeup, align 8, !dbg !5304
  %bf.clear = and i8 %bf.load, -9, !dbg !5304
  %bf.set = or i8 %bf.clear, 8, !dbg !5304
  store i8 %bf.set, i8* %needs_remote_wakeup, align 8, !dbg !5304
  %18 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5305
  %is_open = getelementptr inbounds %struct.synusb, %struct.synusb* %18, i32 0, i32 5, !dbg !5306
  store i8 1, i8* %is_open, align 8, !dbg !5307
  br label %out, !dbg !5305

out:                                              ; preds = %if.end10, %if.then7
  call void @llvm.dbg.label(metadata !5308), !dbg !5309
  %19 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5310
  %pm_mutex12 = getelementptr inbounds %struct.synusb, %struct.synusb* %19, i32 0, i32 4, !dbg !5311
  call void @mutex_unlock(%struct.mutex* %pm_mutex12) #8, !dbg !5312
  %20 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5313
  %intf13 = getelementptr inbounds %struct.synusb, %struct.synusb* %20, i32 0, i32 1, !dbg !5314
  %21 = load %struct.usb_interface*, %struct.usb_interface** %intf13, align 8, !dbg !5314
  call void @usb_autopm_put_interface(%struct.usb_interface* %21) #8, !dbg !5315
  %22 = load i32, i32* %retval1, align 4, !dbg !5316
  store i32 %22, i32* %retval, align 4, !dbg !5317
  br label %return, !dbg !5317

return:                                           ; preds = %out, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5318
  ret i32 %23, !dbg !5318
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @synusb_close(%struct.input_dev* %dev) #2 !dbg !5319 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %synusb = alloca %struct.synusb*, align 8
  %autopm_error = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb, metadata !5322, metadata !DIExpression()), !dbg !5323
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5324
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #8, !dbg !5325
  %1 = bitcast i8* %call to %struct.synusb*, !dbg !5325
  store %struct.synusb* %1, %struct.synusb** %synusb, align 8, !dbg !5323
  call void @llvm.dbg.declare(metadata i32* %autopm_error, metadata !5326, metadata !DIExpression()), !dbg !5327
  %2 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5328
  %intf = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 1, !dbg !5329
  %3 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5329
  %call1 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %3) #8, !dbg !5330
  store i32 %call1, i32* %autopm_error, align 4, !dbg !5331
  %4 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5332
  %pm_mutex = getelementptr inbounds %struct.synusb, %struct.synusb* %4, i32 0, i32 4, !dbg !5333
  call void @mutex_lock(%struct.mutex* %pm_mutex) #8, !dbg !5334
  %5 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5335
  %urb = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 2, !dbg !5336
  %6 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5336
  call void @usb_kill_urb(%struct.urb* %6) #8, !dbg !5337
  %7 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5338
  %intf2 = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 1, !dbg !5339
  %8 = load %struct.usb_interface*, %struct.usb_interface** %intf2, align 8, !dbg !5339
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 6, !dbg !5340
  %bf.load = load i8, i8* %needs_remote_wakeup, align 8, !dbg !5341
  %bf.clear = and i8 %bf.load, -9, !dbg !5341
  store i8 %bf.clear, i8* %needs_remote_wakeup, align 8, !dbg !5341
  %9 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5342
  %is_open = getelementptr inbounds %struct.synusb, %struct.synusb* %9, i32 0, i32 5, !dbg !5343
  store i8 0, i8* %is_open, align 8, !dbg !5344
  %10 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5345
  %pm_mutex3 = getelementptr inbounds %struct.synusb, %struct.synusb* %10, i32 0, i32 4, !dbg !5346
  call void @mutex_unlock(%struct.mutex* %pm_mutex3) #8, !dbg !5347
  %11 = load i32, i32* %autopm_error, align 4, !dbg !5348
  %tobool = icmp ne i32 %11, 0, !dbg !5348
  br i1 %tobool, label %if.end, label %if.then, !dbg !5350

if.then:                                          ; preds = %entry
  %12 = load %struct.synusb*, %struct.synusb** %synusb, align 8, !dbg !5351
  %intf4 = getelementptr inbounds %struct.synusb, %struct.synusb* %12, i32 0, i32 1, !dbg !5352
  %13 = load %struct.usb_interface*, %struct.usb_interface** %intf4, align 8, !dbg !5352
  call void @usb_autopm_put_interface(%struct.usb_interface* %13) #8, !dbg !5353
  br label %if.end, !dbg !5353

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #2 !dbg !5355 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5362
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5363
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5364
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #8, !dbg !5365
  ret void, !dbg !5366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #2 !dbg !5367 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5373, metadata !DIExpression()), !dbg !5376
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5378, metadata !DIExpression()), !dbg !5379
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5380, metadata !DIExpression()), !dbg !5388
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5390, metadata !DIExpression()), !dbg !5391
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5396
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5397
  %div = sdiv i64 %1, 64, !dbg !5397
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5398
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5396
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5399
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5400
  %conv.i = trunc i64 %4 to i32, !dbg !5400
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5401
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5402
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5402
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5402
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5403
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5404
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5405
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5406
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #10, !dbg !5407, !srcloc !5408
  ret void, !dbg !5409
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5410 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5417
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5418
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5419
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5420
  ret void, !dbg !5421
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5422 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5429
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #8, !dbg !5430
  %tobool = icmp ne i32 %call, 0, !dbg !5430
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5431

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5432
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #8, !dbg !5433
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5431
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5434
  %land.ext = zext i1 %2 to i32, !dbg !5431
  ret i32 %land.ext, !dbg !5435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5436 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5439
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5440
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5440
  %conv = zext i8 %1 to i32, !dbg !5439
  %and = and i32 %conv, 3, !dbg !5441
  %cmp = icmp eq i32 %and, 3, !dbg !5442
  %conv1 = zext i1 %cmp to i32, !dbg !5442
  ret i32 %conv1, !dbg !5443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5444 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5447
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5448
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5448
  %conv = zext i8 %1 to i32, !dbg !5447
  %and = and i32 %conv, 128, !dbg !5449
  %cmp = icmp eq i32 %and, 128, !dbg !5450
  %conv1 = zext i1 %cmp to i32, !dbg !5450
  ret i32 %conv1, !dbg !5451
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5452 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5456, metadata !DIExpression()), !dbg !5460
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5462, metadata !DIExpression()), !dbg !5463
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5464, metadata !DIExpression()), !dbg !5465
  %0 = load i64, i64* %size.addr, align 8, !dbg !5466
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5468
  br i1 %1, label %if.then, label %if.end447, !dbg !5469

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5470
  %tobool = icmp ne i64 %2, 0, !dbg !5470
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5473

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5474
  br label %return, !dbg !5474

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5475
  %cmp = icmp ult i64 %3, 4096, !dbg !5477
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5478

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5479
  br label %return, !dbg !5479

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub = sub i64 %4, 1, !dbg !5480
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5480
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5480

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub4 = sub i64 %6, 1, !dbg !5480
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5480
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5480

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub6 = sub i64 %8, 1, !dbg !5480
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5480
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5480

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5480

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub9 = sub i64 %9, 1, !dbg !5480
  %and = and i64 %sub9, -9223372036854775808, !dbg !5480
  %tobool10 = icmp ne i64 %and, 0, !dbg !5480
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5480

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5480

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub13 = sub i64 %10, 1, !dbg !5480
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5480
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5480
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5480

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5480

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub18 = sub i64 %11, 1, !dbg !5480
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5480
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5480
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5480

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5480

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub23 = sub i64 %12, 1, !dbg !5480
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5480
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5480
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5480

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5480

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub28 = sub i64 %13, 1, !dbg !5480
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5480
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5480
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5480

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5480

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub33 = sub i64 %14, 1, !dbg !5480
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5480
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5480
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5480

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5480

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub38 = sub i64 %15, 1, !dbg !5480
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5480
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5480
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5480

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5480

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub43 = sub i64 %16, 1, !dbg !5480
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5480
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5480
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5480

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5480

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub48 = sub i64 %17, 1, !dbg !5480
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5480
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5480
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5480

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5480

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub53 = sub i64 %18, 1, !dbg !5480
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5480
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5480
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5480

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5480

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub58 = sub i64 %19, 1, !dbg !5480
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5480
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5480
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5480

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5480

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub63 = sub i64 %20, 1, !dbg !5480
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5480
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5480
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5480

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5480

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub68 = sub i64 %21, 1, !dbg !5480
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5480
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5480
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5480

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5480

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub73 = sub i64 %22, 1, !dbg !5480
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5480
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5480
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5480

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5480

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub78 = sub i64 %23, 1, !dbg !5480
  %and79 = and i64 %sub78, 562949953421312, !dbg !5480
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5480
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5480

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5480

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub83 = sub i64 %24, 1, !dbg !5480
  %and84 = and i64 %sub83, 281474976710656, !dbg !5480
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5480
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5480

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5480

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub88 = sub i64 %25, 1, !dbg !5480
  %and89 = and i64 %sub88, 140737488355328, !dbg !5480
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5480
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5480

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5480

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub93 = sub i64 %26, 1, !dbg !5480
  %and94 = and i64 %sub93, 70368744177664, !dbg !5480
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5480
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5480

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5480

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub98 = sub i64 %27, 1, !dbg !5480
  %and99 = and i64 %sub98, 35184372088832, !dbg !5480
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5480
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5480

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5480

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub103 = sub i64 %28, 1, !dbg !5480
  %and104 = and i64 %sub103, 17592186044416, !dbg !5480
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5480
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5480

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5480

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub108 = sub i64 %29, 1, !dbg !5480
  %and109 = and i64 %sub108, 8796093022208, !dbg !5480
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5480
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5480

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5480

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub113 = sub i64 %30, 1, !dbg !5480
  %and114 = and i64 %sub113, 4398046511104, !dbg !5480
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5480
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5480

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5480

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub118 = sub i64 %31, 1, !dbg !5480
  %and119 = and i64 %sub118, 2199023255552, !dbg !5480
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5480
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5480

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5480

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub123 = sub i64 %32, 1, !dbg !5480
  %and124 = and i64 %sub123, 1099511627776, !dbg !5480
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5480
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5480

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5480

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub128 = sub i64 %33, 1, !dbg !5480
  %and129 = and i64 %sub128, 549755813888, !dbg !5480
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5480
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5480

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5480

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub133 = sub i64 %34, 1, !dbg !5480
  %and134 = and i64 %sub133, 274877906944, !dbg !5480
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5480
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5480

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5480

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub138 = sub i64 %35, 1, !dbg !5480
  %and139 = and i64 %sub138, 137438953472, !dbg !5480
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5480
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5480

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5480

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub143 = sub i64 %36, 1, !dbg !5480
  %and144 = and i64 %sub143, 68719476736, !dbg !5480
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5480
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5480

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5480

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub148 = sub i64 %37, 1, !dbg !5480
  %and149 = and i64 %sub148, 34359738368, !dbg !5480
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5480
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5480

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5480

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub153 = sub i64 %38, 1, !dbg !5480
  %and154 = and i64 %sub153, 17179869184, !dbg !5480
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5480
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5480

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5480

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub158 = sub i64 %39, 1, !dbg !5480
  %and159 = and i64 %sub158, 8589934592, !dbg !5480
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5480
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5480

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5480

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub163 = sub i64 %40, 1, !dbg !5480
  %and164 = and i64 %sub163, 4294967296, !dbg !5480
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5480
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5480

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5480

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub168 = sub i64 %41, 1, !dbg !5480
  %and169 = and i64 %sub168, 2147483648, !dbg !5480
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5480
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5480

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5480

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub173 = sub i64 %42, 1, !dbg !5480
  %and174 = and i64 %sub173, 1073741824, !dbg !5480
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5480
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5480

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5480

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub178 = sub i64 %43, 1, !dbg !5480
  %and179 = and i64 %sub178, 536870912, !dbg !5480
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5480
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5480

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5480

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub183 = sub i64 %44, 1, !dbg !5480
  %and184 = and i64 %sub183, 268435456, !dbg !5480
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5480
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5480

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5480

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub188 = sub i64 %45, 1, !dbg !5480
  %and189 = and i64 %sub188, 134217728, !dbg !5480
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5480
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5480

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5480

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub193 = sub i64 %46, 1, !dbg !5480
  %and194 = and i64 %sub193, 67108864, !dbg !5480
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5480
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5480

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5480

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub198 = sub i64 %47, 1, !dbg !5480
  %and199 = and i64 %sub198, 33554432, !dbg !5480
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5480
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5480

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5480

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub203 = sub i64 %48, 1, !dbg !5480
  %and204 = and i64 %sub203, 16777216, !dbg !5480
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5480
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5480

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5480

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub208 = sub i64 %49, 1, !dbg !5480
  %and209 = and i64 %sub208, 8388608, !dbg !5480
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5480
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5480

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5480

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub213 = sub i64 %50, 1, !dbg !5480
  %and214 = and i64 %sub213, 4194304, !dbg !5480
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5480
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5480

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5480

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub218 = sub i64 %51, 1, !dbg !5480
  %and219 = and i64 %sub218, 2097152, !dbg !5480
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5480
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5480

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5480

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub223 = sub i64 %52, 1, !dbg !5480
  %and224 = and i64 %sub223, 1048576, !dbg !5480
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5480
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5480

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5480

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub228 = sub i64 %53, 1, !dbg !5480
  %and229 = and i64 %sub228, 524288, !dbg !5480
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5480
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5480

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5480

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub233 = sub i64 %54, 1, !dbg !5480
  %and234 = and i64 %sub233, 262144, !dbg !5480
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5480
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5480

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5480

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub238 = sub i64 %55, 1, !dbg !5480
  %and239 = and i64 %sub238, 131072, !dbg !5480
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5480
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5480

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5480

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub243 = sub i64 %56, 1, !dbg !5480
  %and244 = and i64 %sub243, 65536, !dbg !5480
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5480
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5480

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5480

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub248 = sub i64 %57, 1, !dbg !5480
  %and249 = and i64 %sub248, 32768, !dbg !5480
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5480
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5480

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5480

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub253 = sub i64 %58, 1, !dbg !5480
  %and254 = and i64 %sub253, 16384, !dbg !5480
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5480
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5480

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5480

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub258 = sub i64 %59, 1, !dbg !5480
  %and259 = and i64 %sub258, 8192, !dbg !5480
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5480
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5480

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5480

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub263 = sub i64 %60, 1, !dbg !5480
  %and264 = and i64 %sub263, 4096, !dbg !5480
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5480
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5480

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5480

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub268 = sub i64 %61, 1, !dbg !5480
  %and269 = and i64 %sub268, 2048, !dbg !5480
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5480
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5480

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5480

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub273 = sub i64 %62, 1, !dbg !5480
  %and274 = and i64 %sub273, 1024, !dbg !5480
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5480
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5480

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5480

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub278 = sub i64 %63, 1, !dbg !5480
  %and279 = and i64 %sub278, 512, !dbg !5480
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5480
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5480

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5480

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub283 = sub i64 %64, 1, !dbg !5480
  %and284 = and i64 %sub283, 256, !dbg !5480
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5480
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5480

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5480

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub288 = sub i64 %65, 1, !dbg !5480
  %and289 = and i64 %sub288, 128, !dbg !5480
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5480
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5480

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5480

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub293 = sub i64 %66, 1, !dbg !5480
  %and294 = and i64 %sub293, 64, !dbg !5480
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5480
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5480

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5480

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub298 = sub i64 %67, 1, !dbg !5480
  %and299 = and i64 %sub298, 32, !dbg !5480
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5480
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5480

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5480

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub303 = sub i64 %68, 1, !dbg !5480
  %and304 = and i64 %sub303, 16, !dbg !5480
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5480
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5480

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5480

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub308 = sub i64 %69, 1, !dbg !5480
  %and309 = and i64 %sub308, 8, !dbg !5480
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5480
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5480

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5480

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub313 = sub i64 %70, 1, !dbg !5480
  %and314 = and i64 %sub313, 4, !dbg !5480
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5480
  %71 = zext i1 %tobool315 to i64, !dbg !5480
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5480
  br label %cond.end, !dbg !5480

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5480
  br label %cond.end317, !dbg !5480

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5480
  br label %cond.end319, !dbg !5480

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5480
  br label %cond.end321, !dbg !5480

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5480
  br label %cond.end323, !dbg !5480

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5480
  br label %cond.end325, !dbg !5480

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5480
  br label %cond.end327, !dbg !5480

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5480
  br label %cond.end329, !dbg !5480

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5480
  br label %cond.end331, !dbg !5480

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5480
  br label %cond.end333, !dbg !5480

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5480
  br label %cond.end335, !dbg !5480

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5480
  br label %cond.end337, !dbg !5480

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5480
  br label %cond.end339, !dbg !5480

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5480
  br label %cond.end341, !dbg !5480

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5480
  br label %cond.end343, !dbg !5480

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5480
  br label %cond.end345, !dbg !5480

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5480
  br label %cond.end347, !dbg !5480

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5480
  br label %cond.end349, !dbg !5480

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5480
  br label %cond.end351, !dbg !5480

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5480
  br label %cond.end353, !dbg !5480

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5480
  br label %cond.end355, !dbg !5480

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5480
  br label %cond.end357, !dbg !5480

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5480
  br label %cond.end359, !dbg !5480

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5480
  br label %cond.end361, !dbg !5480

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5480
  br label %cond.end363, !dbg !5480

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5480
  br label %cond.end365, !dbg !5480

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5480
  br label %cond.end367, !dbg !5480

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5480
  br label %cond.end369, !dbg !5480

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5480
  br label %cond.end371, !dbg !5480

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5480
  br label %cond.end373, !dbg !5480

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5480
  br label %cond.end375, !dbg !5480

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5480
  br label %cond.end377, !dbg !5480

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5480
  br label %cond.end379, !dbg !5480

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5480
  br label %cond.end381, !dbg !5480

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5480
  br label %cond.end383, !dbg !5480

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5480
  br label %cond.end385, !dbg !5480

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5480
  br label %cond.end387, !dbg !5480

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5480
  br label %cond.end389, !dbg !5480

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5480
  br label %cond.end391, !dbg !5480

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5480
  br label %cond.end393, !dbg !5480

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5480
  br label %cond.end395, !dbg !5480

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5480
  br label %cond.end397, !dbg !5480

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5480
  br label %cond.end399, !dbg !5480

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5480
  br label %cond.end401, !dbg !5480

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5480
  br label %cond.end403, !dbg !5480

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5480
  br label %cond.end405, !dbg !5480

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5480
  br label %cond.end407, !dbg !5480

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5480
  br label %cond.end409, !dbg !5480

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5480
  br label %cond.end411, !dbg !5480

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5480
  br label %cond.end413, !dbg !5480

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5480
  br label %cond.end415, !dbg !5480

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5480
  br label %cond.end417, !dbg !5480

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5480
  br label %cond.end419, !dbg !5480

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5480
  br label %cond.end421, !dbg !5480

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5480
  br label %cond.end423, !dbg !5480

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5480
  br label %cond.end425, !dbg !5480

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5480
  br label %cond.end427, !dbg !5480

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5480
  br label %cond.end429, !dbg !5480

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5480
  br label %cond.end431, !dbg !5480

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5480
  br label %cond.end433, !dbg !5480

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5480
  br label %cond.end435, !dbg !5480

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5480
  br label %cond.end437, !dbg !5480

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5480
  br label %cond.end440, !dbg !5480

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5480

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5480
  br label %cond.end444, !dbg !5480

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5480
  %sub443 = sub i64 %72, 1, !dbg !5480
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5480
  br label %cond.end444, !dbg !5480

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5480
  %sub446 = sub i32 %cond445, 12, !dbg !5481
  %add = add i32 %sub446, 1, !dbg !5482
  store i32 %add, i32* %retval, align 4, !dbg !5483
  br label %return, !dbg !5483

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5484
  %dec = add i64 %73, -1, !dbg !5484
  store i64 %dec, i64* %size.addr, align 8, !dbg !5484
  %74 = load i64, i64* %size.addr, align 8, !dbg !5485
  %shr = lshr i64 %74, 12, !dbg !5485
  store i64 %shr, i64* %size.addr, align 8, !dbg !5485
  %75 = load i64, i64* %size.addr, align 8, !dbg !5486
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5463
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5487
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5488
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5487, !srcloc !5489
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5487
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5490
  %add.i = add i32 %79, 1, !dbg !5491
  store i32 %add.i, i32* %retval, align 4, !dbg !5492
  br label %return, !dbg !5492

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5493
  ret i32 %80, !dbg !5493
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5494 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5456, metadata !DIExpression()), !dbg !5498
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5462, metadata !DIExpression()), !dbg !5500
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  %0 = load i64, i64* %n.addr, align 8, !dbg !5503
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5500
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5504
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5505
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5504, !srcloc !5489
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5504
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5506
  %add.i = add i32 %4, 1, !dbg !5507
  %sub = sub i32 %add.i, 1, !dbg !5508
  ret i32 %sub, !dbg !5509
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5510 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5521
  ret i8* %0, !dbg !5522
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_mark_last_busy(%struct.usb_device* %udev) #2 !dbg !5523 {
entry:
  %udev.addr = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5528
  %dev = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 14, !dbg !5529
  call void @pm_runtime_mark_last_busy(%struct.device* %dev) #8, !dbg !5530
  ret void, !dbg !5531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @synusb_report_stick(%struct.synusb* %synusb) #2 !dbg !5532 {
entry:
  %p.addr.i.i15 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i15, metadata !5535, metadata !DIExpression()), !dbg !5542
  %p.addr.i16 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i16, metadata !5551, metadata !DIExpression()), !dbg !5552
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !5535, metadata !DIExpression()), !dbg !5553
  %p.addr.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i, metadata !5551, metadata !DIExpression()), !dbg !5556
  %synusb.addr = alloca %struct.synusb*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pressure = alloca i32, align 4
  store %struct.synusb* %synusb, %struct.synusb** %synusb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !5559, metadata !DIExpression()), !dbg !5560
  %0 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5561
  %input = getelementptr inbounds %struct.synusb, %struct.synusb* %0, i32 0, i32 6, !dbg !5562
  %1 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5562
  store %struct.input_dev* %1, %struct.input_dev** %input_dev, align 8, !dbg !5560
  call void @llvm.dbg.declare(metadata i32* %x, metadata !5563, metadata !DIExpression()), !dbg !5564
  call void @llvm.dbg.declare(metadata i32* %y, metadata !5565, metadata !DIExpression()), !dbg !5566
  call void @llvm.dbg.declare(metadata i32* %pressure, metadata !5567, metadata !DIExpression()), !dbg !5568
  %2 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5569
  %data = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 3, !dbg !5570
  %3 = load i8*, i8** %data, align 8, !dbg !5570
  %arrayidx = getelementptr i8, i8* %3, i64 6, !dbg !5569
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5569
  %conv = zext i8 %4 to i32, !dbg !5569
  store i32 %conv, i32* %pressure, align 4, !dbg !5571
  %5 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5572
  %data1 = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 3, !dbg !5573
  %6 = load i8*, i8** %data1, align 8, !dbg !5573
  %arrayidx2 = getelementptr i8, i8* %6, i64 2, !dbg !5572
  %7 = bitcast i8* %arrayidx2 to i16*, !dbg !5574
  store i16* %7, i16** %p.addr.i, align 8
  %8 = load i16*, i16** %p.addr.i, align 8, !dbg !5575
  store i16* %8, i16** %p.addr.i.i, align 8
  %9 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5576
  %10 = load i16, i16* %9, align 2, !dbg !5576
  %11 = call i1 @llvm.is.constant.i16(i16 %10) #10, !dbg !5576
  br i1 %11, label %cond.true.i.i, label %cond.false.i.i, !dbg !5576

cond.true.i.i:                                    ; preds = %entry
  %12 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5576
  %13 = load i16, i16* %12, align 2, !dbg !5576
  %conv.i.i = zext i16 %13 to i32, !dbg !5576
  %and.i.i = and i32 %conv.i.i, 255, !dbg !5576
  %shl.i.i = shl i32 %and.i.i, 8, !dbg !5576
  %14 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5576
  %15 = load i16, i16* %14, align 2, !dbg !5576
  %conv1.i.i = zext i16 %15 to i32, !dbg !5576
  %and2.i.i = and i32 %conv1.i.i, 65280, !dbg !5576
  %shr.i.i = ashr i32 %and2.i.i, 8, !dbg !5576
  %or.i.i = or i32 %shl.i.i, %shr.i.i, !dbg !5576
  %conv3.i.i = trunc i32 %or.i.i to i16, !dbg !5576
  %conv4.i.i = zext i16 %conv3.i.i to i32, !dbg !5576
  br label %__be16_to_cpup.exit, !dbg !5576

cond.false.i.i:                                   ; preds = %entry
  %16 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5576
  %17 = load i16, i16* %16, align 2, !dbg !5576
  %call.i.i = call zeroext i16 @__fswab16(i16 zeroext %17) #11, !dbg !5576
  %conv5.i.i = zext i16 %call.i.i to i32, !dbg !5576
  br label %__be16_to_cpup.exit, !dbg !5576

__be16_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ %conv5.i.i, %cond.false.i.i ], !dbg !5576
  %conv6.i.i = trunc i32 %cond.i.i to i16, !dbg !5576
  %conv3 = zext i16 %conv6.i.i to i32, !dbg !5577
  %shl = shl i32 %conv3, 3, !dbg !5578
  %conv4 = trunc i32 %shl to i16, !dbg !5579
  %conv5 = sext i16 %conv4 to i32, !dbg !5579
  %shr = ashr i32 %conv5, 7, !dbg !5580
  store i32 %shr, i32* %x, align 4, !dbg !5581
  %18 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5582
  %data6 = getelementptr inbounds %struct.synusb, %struct.synusb* %18, i32 0, i32 3, !dbg !5583
  %19 = load i8*, i8** %data6, align 8, !dbg !5583
  %arrayidx7 = getelementptr i8, i8* %19, i64 4, !dbg !5582
  %20 = bitcast i8* %arrayidx7 to i16*, !dbg !5584
  store i16* %20, i16** %p.addr.i16, align 8
  %21 = load i16*, i16** %p.addr.i16, align 8, !dbg !5585
  store i16* %21, i16** %p.addr.i.i15, align 8
  %22 = load i16*, i16** %p.addr.i.i15, align 8, !dbg !5586
  %23 = load i16, i16* %22, align 2, !dbg !5586
  %24 = call i1 @llvm.is.constant.i16(i16 %23) #10, !dbg !5586
  br i1 %24, label %cond.true.i.i26, label %cond.false.i.i29, !dbg !5586

cond.true.i.i26:                                  ; preds = %__be16_to_cpup.exit
  %25 = load i16*, i16** %p.addr.i.i15, align 8, !dbg !5586
  %26 = load i16, i16* %25, align 2, !dbg !5586
  %conv.i.i17 = zext i16 %26 to i32, !dbg !5586
  %and.i.i18 = and i32 %conv.i.i17, 255, !dbg !5586
  %shl.i.i19 = shl i32 %and.i.i18, 8, !dbg !5586
  %27 = load i16*, i16** %p.addr.i.i15, align 8, !dbg !5586
  %28 = load i16, i16* %27, align 2, !dbg !5586
  %conv1.i.i20 = zext i16 %28 to i32, !dbg !5586
  %and2.i.i21 = and i32 %conv1.i.i20, 65280, !dbg !5586
  %shr.i.i22 = ashr i32 %and2.i.i21, 8, !dbg !5586
  %or.i.i23 = or i32 %shl.i.i19, %shr.i.i22, !dbg !5586
  %conv3.i.i24 = trunc i32 %or.i.i23 to i16, !dbg !5586
  %conv4.i.i25 = zext i16 %conv3.i.i24 to i32, !dbg !5586
  br label %__be16_to_cpup.exit32, !dbg !5586

cond.false.i.i29:                                 ; preds = %__be16_to_cpup.exit
  %29 = load i16*, i16** %p.addr.i.i15, align 8, !dbg !5586
  %30 = load i16, i16* %29, align 2, !dbg !5586
  %call.i.i27 = call zeroext i16 @__fswab16(i16 zeroext %30) #11, !dbg !5586
  %conv5.i.i28 = zext i16 %call.i.i27 to i32, !dbg !5586
  br label %__be16_to_cpup.exit32, !dbg !5586

__be16_to_cpup.exit32:                            ; preds = %cond.true.i.i26, %cond.false.i.i29
  %cond.i.i30 = phi i32 [ %conv4.i.i25, %cond.true.i.i26 ], [ %conv5.i.i28, %cond.false.i.i29 ], !dbg !5586
  %conv6.i.i31 = trunc i32 %cond.i.i30 to i16, !dbg !5586
  %conv9 = zext i16 %conv6.i.i31 to i32, !dbg !5587
  %shl10 = shl i32 %conv9, 3, !dbg !5588
  %conv11 = trunc i32 %shl10 to i16, !dbg !5589
  %conv12 = sext i16 %conv11 to i32, !dbg !5589
  %shr13 = ashr i32 %conv12, 7, !dbg !5590
  store i32 %shr13, i32* %y, align 4, !dbg !5591
  %31 = load i32, i32* %pressure, align 4, !dbg !5592
  %cmp = icmp ugt i32 %31, 0, !dbg !5594
  br i1 %cmp, label %if.then, label %if.end, !dbg !5595

if.then:                                          ; preds = %__be16_to_cpup.exit32
  %32 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5596
  %33 = load i32, i32* %x, align 4, !dbg !5598
  call void @input_report_rel(%struct.input_dev* %32, i32 0, i32 %33) #8, !dbg !5599
  %34 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5600
  %35 = load i32, i32* %y, align 4, !dbg !5601
  %sub = sub i32 0, %35, !dbg !5602
  call void @input_report_rel(%struct.input_dev* %34, i32 1, i32 %sub) #8, !dbg !5603
  br label %if.end, !dbg !5604

if.end:                                           ; preds = %if.then, %__be16_to_cpup.exit32
  %36 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5605
  %37 = load i32, i32* %pressure, align 4, !dbg !5606
  call void @input_report_abs(%struct.input_dev* %36, i32 24, i32 %37) #8, !dbg !5607
  %38 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5608
  call void @synusb_report_buttons(%struct.synusb* %38) #8, !dbg !5609
  %39 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5610
  call void @input_sync(%struct.input_dev* %39) #8, !dbg !5611
  ret void, !dbg !5612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @synusb_report_touchpad(%struct.synusb* %synusb) #2 !dbg !5613 {
entry:
  %p.addr.i.i39 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i39, metadata !5535, metadata !DIExpression()), !dbg !5614
  %p.addr.i40 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i40, metadata !5551, metadata !DIExpression()), !dbg !5617
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !5535, metadata !DIExpression()), !dbg !5618
  %p.addr.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i, metadata !5551, metadata !DIExpression()), !dbg !5621
  %synusb.addr = alloca %struct.synusb*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %num_fingers = alloca i32, align 4
  %tool_width = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pressure = alloca i32, align 4
  %w = alloca i32, align 4
  store %struct.synusb* %synusb, %struct.synusb** %synusb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb.addr, metadata !5622, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !5624, metadata !DIExpression()), !dbg !5625
  %0 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5626
  %input = getelementptr inbounds %struct.synusb, %struct.synusb* %0, i32 0, i32 6, !dbg !5627
  %1 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5627
  store %struct.input_dev* %1, %struct.input_dev** %input_dev, align 8, !dbg !5625
  call void @llvm.dbg.declare(metadata i32* %num_fingers, metadata !5628, metadata !DIExpression()), !dbg !5629
  call void @llvm.dbg.declare(metadata i32* %tool_width, metadata !5630, metadata !DIExpression()), !dbg !5631
  call void @llvm.dbg.declare(metadata i32* %x, metadata !5632, metadata !DIExpression()), !dbg !5633
  call void @llvm.dbg.declare(metadata i32* %y, metadata !5634, metadata !DIExpression()), !dbg !5635
  call void @llvm.dbg.declare(metadata i32* %pressure, metadata !5636, metadata !DIExpression()), !dbg !5637
  call void @llvm.dbg.declare(metadata i32* %w, metadata !5638, metadata !DIExpression()), !dbg !5639
  %2 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5640
  %data = getelementptr inbounds %struct.synusb, %struct.synusb* %2, i32 0, i32 3, !dbg !5641
  %3 = load i8*, i8** %data, align 8, !dbg !5641
  %arrayidx = getelementptr i8, i8* %3, i64 6, !dbg !5640
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5640
  %conv = zext i8 %4 to i32, !dbg !5640
  store i32 %conv, i32* %pressure, align 4, !dbg !5642
  %5 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5643
  %data1 = getelementptr inbounds %struct.synusb, %struct.synusb* %5, i32 0, i32 3, !dbg !5644
  %6 = load i8*, i8** %data1, align 8, !dbg !5644
  %arrayidx2 = getelementptr i8, i8* %6, i64 2, !dbg !5643
  %7 = bitcast i8* %arrayidx2 to i16*, !dbg !5645
  store i16* %7, i16** %p.addr.i, align 8
  %8 = load i16*, i16** %p.addr.i, align 8, !dbg !5646
  store i16* %8, i16** %p.addr.i.i, align 8
  %9 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5647
  %10 = load i16, i16* %9, align 2, !dbg !5647
  %11 = call i1 @llvm.is.constant.i16(i16 %10) #10, !dbg !5647
  br i1 %11, label %cond.true.i.i, label %cond.false.i.i, !dbg !5647

cond.true.i.i:                                    ; preds = %entry
  %12 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5647
  %13 = load i16, i16* %12, align 2, !dbg !5647
  %conv.i.i = zext i16 %13 to i32, !dbg !5647
  %and.i.i = and i32 %conv.i.i, 255, !dbg !5647
  %shl.i.i = shl i32 %and.i.i, 8, !dbg !5647
  %14 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5647
  %15 = load i16, i16* %14, align 2, !dbg !5647
  %conv1.i.i = zext i16 %15 to i32, !dbg !5647
  %and2.i.i = and i32 %conv1.i.i, 65280, !dbg !5647
  %shr.i.i = ashr i32 %and2.i.i, 8, !dbg !5647
  %or.i.i = or i32 %shl.i.i, %shr.i.i, !dbg !5647
  %conv3.i.i = trunc i32 %or.i.i to i16, !dbg !5647
  %conv4.i.i = zext i16 %conv3.i.i to i32, !dbg !5647
  br label %__be16_to_cpup.exit, !dbg !5647

cond.false.i.i:                                   ; preds = %entry
  %16 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5647
  %17 = load i16, i16* %16, align 2, !dbg !5647
  %call.i.i = call zeroext i16 @__fswab16(i16 zeroext %17) #11, !dbg !5647
  %conv5.i.i = zext i16 %call.i.i to i32, !dbg !5647
  br label %__be16_to_cpup.exit, !dbg !5647

__be16_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ %conv5.i.i, %cond.false.i.i ], !dbg !5647
  %conv6.i.i = trunc i32 %cond.i.i to i16, !dbg !5647
  %conv3 = zext i16 %conv6.i.i to i32, !dbg !5648
  store i32 %conv3, i32* %x, align 4, !dbg !5649
  %18 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5650
  %data4 = getelementptr inbounds %struct.synusb, %struct.synusb* %18, i32 0, i32 3, !dbg !5651
  %19 = load i8*, i8** %data4, align 8, !dbg !5651
  %arrayidx5 = getelementptr i8, i8* %19, i64 4, !dbg !5650
  %20 = bitcast i8* %arrayidx5 to i16*, !dbg !5652
  store i16* %20, i16** %p.addr.i40, align 8
  %21 = load i16*, i16** %p.addr.i40, align 8, !dbg !5653
  store i16* %21, i16** %p.addr.i.i39, align 8
  %22 = load i16*, i16** %p.addr.i.i39, align 8, !dbg !5654
  %23 = load i16, i16* %22, align 2, !dbg !5654
  %24 = call i1 @llvm.is.constant.i16(i16 %23) #10, !dbg !5654
  br i1 %24, label %cond.true.i.i50, label %cond.false.i.i53, !dbg !5654

cond.true.i.i50:                                  ; preds = %__be16_to_cpup.exit
  %25 = load i16*, i16** %p.addr.i.i39, align 8, !dbg !5654
  %26 = load i16, i16* %25, align 2, !dbg !5654
  %conv.i.i41 = zext i16 %26 to i32, !dbg !5654
  %and.i.i42 = and i32 %conv.i.i41, 255, !dbg !5654
  %shl.i.i43 = shl i32 %and.i.i42, 8, !dbg !5654
  %27 = load i16*, i16** %p.addr.i.i39, align 8, !dbg !5654
  %28 = load i16, i16* %27, align 2, !dbg !5654
  %conv1.i.i44 = zext i16 %28 to i32, !dbg !5654
  %and2.i.i45 = and i32 %conv1.i.i44, 65280, !dbg !5654
  %shr.i.i46 = ashr i32 %and2.i.i45, 8, !dbg !5654
  %or.i.i47 = or i32 %shl.i.i43, %shr.i.i46, !dbg !5654
  %conv3.i.i48 = trunc i32 %or.i.i47 to i16, !dbg !5654
  %conv4.i.i49 = zext i16 %conv3.i.i48 to i32, !dbg !5654
  br label %__be16_to_cpup.exit56, !dbg !5654

cond.false.i.i53:                                 ; preds = %__be16_to_cpup.exit
  %29 = load i16*, i16** %p.addr.i.i39, align 8, !dbg !5654
  %30 = load i16, i16* %29, align 2, !dbg !5654
  %call.i.i51 = call zeroext i16 @__fswab16(i16 zeroext %30) #11, !dbg !5654
  %conv5.i.i52 = zext i16 %call.i.i51 to i32, !dbg !5654
  br label %__be16_to_cpup.exit56, !dbg !5654

__be16_to_cpup.exit56:                            ; preds = %cond.true.i.i50, %cond.false.i.i53
  %cond.i.i54 = phi i32 [ %conv4.i.i49, %cond.true.i.i50 ], [ %conv5.i.i52, %cond.false.i.i53 ], !dbg !5654
  %conv6.i.i55 = trunc i32 %cond.i.i54 to i16, !dbg !5654
  %conv7 = zext i16 %conv6.i.i55 to i32, !dbg !5655
  store i32 %conv7, i32* %y, align 4, !dbg !5656
  %31 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5657
  %data8 = getelementptr inbounds %struct.synusb, %struct.synusb* %31, i32 0, i32 3, !dbg !5658
  %32 = load i8*, i8** %data8, align 8, !dbg !5658
  %arrayidx9 = getelementptr i8, i8* %32, i64 0, !dbg !5657
  %33 = load i8, i8* %arrayidx9, align 1, !dbg !5657
  %conv10 = zext i8 %33 to i32, !dbg !5657
  %and = and i32 %conv10, 15, !dbg !5659
  store i32 %and, i32* %w, align 4, !dbg !5660
  %34 = load i32, i32* %pressure, align 4, !dbg !5661
  %cmp = icmp ugt i32 %34, 0, !dbg !5663
  br i1 %cmp, label %if.then, label %if.else, !dbg !5664

if.then:                                          ; preds = %__be16_to_cpup.exit56
  store i32 1, i32* %num_fingers, align 4, !dbg !5665
  store i32 5, i32* %tool_width, align 4, !dbg !5667
  %35 = load i32, i32* %w, align 4, !dbg !5668
  switch i32 %35, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 4, label %sw.bb13
    i32 5, label %sw.bb13
    i32 6, label %sw.bb13
    i32 7, label %sw.bb13
    i32 8, label %sw.bb13
    i32 9, label %sw.bb13
    i32 10, label %sw.bb13
    i32 11, label %sw.bb13
    i32 12, label %sw.bb13
    i32 13, label %sw.bb13
    i32 14, label %sw.bb13
    i32 15, label %sw.bb13
  ], !dbg !5669

sw.bb:                                            ; preds = %if.then, %if.then
  %36 = load i32, i32* %w, align 4, !dbg !5670
  %add = add i32 2, %36, !dbg !5672
  store i32 %add, i32* %num_fingers, align 4, !dbg !5673
  br label %sw.epilog, !dbg !5674

sw.bb12:                                          ; preds = %if.then
  br label %sw.epilog, !dbg !5675

sw.bb13:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %37 = load i32, i32* %w, align 4, !dbg !5676
  store i32 %37, i32* %tool_width, align 4, !dbg !5677
  br label %sw.epilog, !dbg !5678

sw.epilog:                                        ; preds = %if.then, %sw.bb13, %sw.bb12, %sw.bb
  br label %if.end, !dbg !5679

if.else:                                          ; preds = %__be16_to_cpup.exit56
  store i32 0, i32* %num_fingers, align 4, !dbg !5680
  store i32 0, i32* %tool_width, align 4, !dbg !5682
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  %38 = load i32, i32* %pressure, align 4, !dbg !5683
  %cmp14 = icmp ugt i32 %38, 30, !dbg !5685
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5686

if.then16:                                        ; preds = %if.end
  %39 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5687
  call void @input_report_key(%struct.input_dev* %39, i32 330, i32 1) #8, !dbg !5688
  br label %if.end17, !dbg !5688

if.end17:                                         ; preds = %if.then16, %if.end
  %40 = load i32, i32* %pressure, align 4, !dbg !5689
  %cmp18 = icmp ult i32 %40, 25, !dbg !5691
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5692

if.then20:                                        ; preds = %if.end17
  %41 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5693
  call void @input_report_key(%struct.input_dev* %41, i32 330, i32 0) #8, !dbg !5694
  br label %if.end21, !dbg !5694

if.end21:                                         ; preds = %if.then20, %if.end17
  %42 = load i32, i32* %num_fingers, align 4, !dbg !5695
  %cmp22 = icmp ugt i32 %42, 0, !dbg !5697
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5698

if.then24:                                        ; preds = %if.end21
  %43 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5699
  %44 = load i32, i32* %x, align 4, !dbg !5701
  call void @input_report_abs(%struct.input_dev* %43, i32 0, i32 %44) #8, !dbg !5702
  %45 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5703
  %46 = load i32, i32* %y, align 4, !dbg !5704
  %sub = sub i32 5856, %46, !dbg !5705
  call void @input_report_abs(%struct.input_dev* %45, i32 1, i32 %sub) #8, !dbg !5706
  br label %if.end25, !dbg !5707

if.end25:                                         ; preds = %if.then24, %if.end21
  %47 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5708
  %48 = load i32, i32* %pressure, align 4, !dbg !5709
  call void @input_report_abs(%struct.input_dev* %47, i32 24, i32 %48) #8, !dbg !5710
  %49 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5711
  %50 = load i32, i32* %tool_width, align 4, !dbg !5712
  call void @input_report_abs(%struct.input_dev* %49, i32 28, i32 %50) #8, !dbg !5713
  %51 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5714
  %52 = load i32, i32* %num_fingers, align 4, !dbg !5715
  %cmp26 = icmp eq i32 %52, 1, !dbg !5716
  %conv27 = zext i1 %cmp26 to i32, !dbg !5716
  call void @input_report_key(%struct.input_dev* %51, i32 325, i32 %conv27) #8, !dbg !5717
  %53 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5718
  %54 = load i32, i32* %num_fingers, align 4, !dbg !5719
  %cmp28 = icmp eq i32 %54, 2, !dbg !5720
  %conv29 = zext i1 %cmp28 to i32, !dbg !5720
  call void @input_report_key(%struct.input_dev* %53, i32 333, i32 %conv29) #8, !dbg !5721
  %55 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5722
  %56 = load i32, i32* %num_fingers, align 4, !dbg !5723
  %cmp30 = icmp eq i32 %56, 3, !dbg !5724
  %conv31 = zext i1 %cmp30 to i32, !dbg !5724
  call void @input_report_key(%struct.input_dev* %55, i32 334, i32 %conv31) #8, !dbg !5725
  %57 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5726
  call void @synusb_report_buttons(%struct.synusb* %57) #8, !dbg !5727
  %58 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5728
  %flags = getelementptr inbounds %struct.synusb, %struct.synusb* %58, i32 0, i32 9, !dbg !5730
  %59 = load i64, i64* %flags, align 8, !dbg !5730
  %and32 = and i64 %59, 8, !dbg !5731
  %tobool = icmp ne i64 %and32, 0, !dbg !5731
  br i1 %tobool, label %if.then33, label %if.end38, !dbg !5732

if.then33:                                        ; preds = %if.end25
  %60 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5733
  %61 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5734
  %data34 = getelementptr inbounds %struct.synusb, %struct.synusb* %61, i32 0, i32 3, !dbg !5735
  %62 = load i8*, i8** %data34, align 8, !dbg !5735
  %arrayidx35 = getelementptr i8, i8* %62, i64 1, !dbg !5734
  %63 = load i8, i8* %arrayidx35, align 1, !dbg !5734
  %conv36 = zext i8 %63 to i32, !dbg !5734
  %and37 = and i32 %conv36, 8, !dbg !5736
  call void @input_report_key(%struct.input_dev* %60, i32 274, i32 %and37) #8, !dbg !5737
  br label %if.end38, !dbg !5737

if.end38:                                         ; preds = %if.then33, %if.end25
  %64 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5738
  call void @input_sync(%struct.input_dev* %64) #8, !dbg !5739
  ret void, !dbg !5740
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_mark_last_busy(%struct.device* %dev) #2 !dbg !5741 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  br label %do.body, !dbg !5745

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5746

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5748

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5746

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #8, !dbg !5750
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5750
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5750
  %last_busy = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 21, !dbg !5750
  store volatile i64 %call, i64* %last_busy, align 8, !dbg !5750
  br label %do.end3, !dbg !5750

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5746

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5752
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_mono_fast_ns() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_rel(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5753 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5756, metadata !DIExpression()), !dbg !5757
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5758, metadata !DIExpression()), !dbg !5759
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5762
  %1 = load i32, i32* %code.addr, align 4, !dbg !5763
  %2 = load i32, i32* %value.addr, align 4, !dbg !5764
  call void @input_event(%struct.input_dev* %0, i32 2, i32 %1, i32 %2) #8, !dbg !5765
  ret void, !dbg !5766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5767 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5774
  %1 = load i32, i32* %code.addr, align 4, !dbg !5775
  %2 = load i32, i32* %value.addr, align 4, !dbg !5776
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #8, !dbg !5777
  ret void, !dbg !5778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @synusb_report_buttons(%struct.synusb* %synusb) #2 !dbg !5779 {
entry:
  %synusb.addr = alloca %struct.synusb*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  store %struct.synusb* %synusb, %struct.synusb** %synusb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.synusb** %synusb.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !5782, metadata !DIExpression()), !dbg !5783
  %0 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5784
  %input = getelementptr inbounds %struct.synusb, %struct.synusb* %0, i32 0, i32 6, !dbg !5785
  %1 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5785
  store %struct.input_dev* %1, %struct.input_dev** %input_dev, align 8, !dbg !5783
  %2 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5786
  %3 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5787
  %data = getelementptr inbounds %struct.synusb, %struct.synusb* %3, i32 0, i32 3, !dbg !5788
  %4 = load i8*, i8** %data, align 8, !dbg !5788
  %arrayidx = getelementptr i8, i8* %4, i64 1, !dbg !5787
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5787
  %conv = zext i8 %5 to i32, !dbg !5787
  %and = and i32 %conv, 4, !dbg !5789
  call void @input_report_key(%struct.input_dev* %2, i32 272, i32 %and) #8, !dbg !5790
  %6 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5791
  %7 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5792
  %data1 = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 3, !dbg !5793
  %8 = load i8*, i8** %data1, align 8, !dbg !5793
  %arrayidx2 = getelementptr i8, i8* %8, i64 1, !dbg !5792
  %9 = load i8, i8* %arrayidx2, align 1, !dbg !5792
  %conv3 = zext i8 %9 to i32, !dbg !5792
  %and4 = and i32 %conv3, 1, !dbg !5794
  call void @input_report_key(%struct.input_dev* %6, i32 273, i32 %and4) #8, !dbg !5795
  %10 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5796
  %11 = load %struct.synusb*, %struct.synusb** %synusb.addr, align 8, !dbg !5797
  %data5 = getelementptr inbounds %struct.synusb, %struct.synusb* %11, i32 0, i32 3, !dbg !5798
  %12 = load i8*, i8** %data5, align 8, !dbg !5798
  %arrayidx6 = getelementptr i8, i8* %12, i64 1, !dbg !5797
  %13 = load i8, i8* %arrayidx6, align 1, !dbg !5797
  %conv7 = zext i8 %13 to i32, !dbg !5797
  %and8 = and i32 %conv7, 2, !dbg !5799
  call void @input_report_key(%struct.input_dev* %10, i32 274, i32 %and8) #8, !dbg !5800
  ret void, !dbg !5801
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !5802 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5805
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #8, !dbg !5806
  ret void, !dbg !5807
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #7 !dbg !5808 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  %0 = load i16, i16* %val.addr, align 2, !dbg !5813
  %conv = zext i16 %0 to i32, !dbg !5813
  %and = and i32 %conv, 255, !dbg !5813
  %shl = shl i32 %and, 8, !dbg !5813
  %1 = load i16, i16* %val.addr, align 2, !dbg !5813
  %conv1 = zext i16 %1 to i32, !dbg !5813
  %and2 = and i32 %conv1, 65280, !dbg !5813
  %shr = ashr i32 %and2, 8, !dbg !5813
  %or = or i32 %shl, %shr, !dbg !5813
  %conv3 = trunc i32 %or to i16, !dbg !5813
  ret i16 %conv3, !dbg !5814
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5815 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5822
  %1 = load i32, i32* %code.addr, align 4, !dbg !5823
  %2 = load i32, i32* %value.addr, align 4, !dbg !5824
  %tobool = icmp ne i32 %2, 0, !dbg !5825
  %lnot = xor i1 %tobool, true, !dbg !5825
  %lnot1 = xor i1 %lnot, true, !dbg !5826
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5826
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #8, !dbg !5827
  ret void, !dbg !5828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !5829 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5834
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5835
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #8, !dbg !5836
  ret i8* %call, !dbg !5837
}

; Function Attrs: noredzone
declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @usb_autopm_put_interface(%struct.usb_interface*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5838 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5845
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5846
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5846
  ret i8* %1, !dbg !5847
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5848 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5855
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5856
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5857
  store i8* %0, i8** %driver_data, align 8, !dbg !5858
  ret void, !dbg !5859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5860 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5864, metadata !DIExpression()), !dbg !5865
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  ret i1 true, !dbg !5868
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5869 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  ret void, !dbg !5879
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !5880 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5885
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5886
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5887
  ret i8* %call, !dbg !5888
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3912, !3913, !3914, !3915}
!llvm.ident = !{!3916}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_synusb_driver_init214", scope: !2, file: !3, line: 559, type: !136, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !3817, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/synaptics_usb.c", directory: "/home/lizy2001/genbc/linux")
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
!125 = !{!126, !129, !131, !134, !136, !137, !141, !3811, !1077, !3813, !3815, !3816}
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
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !7)
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
!306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !302, file: !259, line: 171, baseType: !136, size: 64, offset: 192)
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
!425 = !{null, !136}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !419, file: !420, line: 12, baseType: !136, size: 64, offset: 64)
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
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !488)
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
!582 = !{!341, !563, !141, !177, !136}
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
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !694, file: !695, line: 296, baseType: !136, size: 64, offset: 64)
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
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !743, file: !38, line: 388, baseType: !778, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!141, !311, !689, !486, !7, !7, !676, !136}
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
!811 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !803, file: !38, line: 328, baseType: !136, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !803, file: !38, line: 329, baseType: !141, size: 32, offset: 256)
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
!867 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !690, file: !38, line: 470, baseType: !136, size: 64, offset: 1152)
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
!891 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !876, file: !678, line: 119, baseType: !136, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !678, line: 120, baseType: !893, size: 64, offset: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !678, line: 120, size: 64, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !893, file: !678, line: 121, baseType: !136, size: 64)
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
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !936, file: !678, line: 362, baseType: !136, size: 64, offset: 1344)
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
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1037, file: !1036, line: 37, baseType: !133, size: 16, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1036, line: 40, baseType: !1047, size: 192, offset: 512)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1048, line: 53, size: 192, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1047, file: !1048, line: 54, baseType: !726, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1047, file: !1048, line: 55, baseType: !193, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1047, file: !1048, line: 59, baseType: !180, size: 128, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1037, file: !1036, line: 41, baseType: !136, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1037, file: !1036, line: 42, baseType: !1055, size: 64, offset: 768)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1058, line: 13, size: 896, elements: !1059)
!1058 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1057, file: !1058, line: 14, baseType: !136, size: 64)
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
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1091, file: !1092, line: 657, baseType: !136, size: 64, offset: 192)
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
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !382)
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
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !141)
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
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1450, file: !1451, line: 201, baseType: !136, size: 64, offset: 576)
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
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1523, file: !1451, line: 129, baseType: !136, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !1451, line: 130, baseType: !1527, size: 256)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !1029)
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
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !678, line: 516, flags: DIFlagFwdDecl)
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
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1091, file: !1092, line: 1043, baseType: !136, size: 64, offset: 10560)
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
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1871, file: !1856, line: 10, baseType: !136, size: 64)
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
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1892, file: !1856, line: 65, baseType: !136, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1856, line: 77, baseType: !1896, size: 192, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1856, line: 77, size: 192, elements: !1897)
!1897 = !{!1898, !1899, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1896, file: !1856, line: 82, baseType: !1079, size: 16)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1896, file: !1856, line: 88, baseType: !1900, size: 192)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1856, line: 84, size: 192, elements: !1901)
!1901 = !{!1902, !1904, !1905}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1900, file: !1856, line: 85, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !1204)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1900, file: !1856, line: 86, baseType: !136, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1900, file: !1856, line: 87, baseType: !136, size: 64, offset: 128)
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
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1917, file: !1856, line: 105, baseType: !136, size: 64)
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
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1091, file: !1092, line: 1342, baseType: !136, size: 64, offset: 13248)
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
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2195, file: !678, line: 162, baseType: !136, size: 64, offset: 64)
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
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2430, file: !32, line: 232, baseType: !136, size: 64, offset: 512)
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
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !555, file: !38, line: 1465, baseType: !136, size: 64, offset: 6400)
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
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !136)
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
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !385, file: !38, line: 720, baseType: !136, size: 64, offset: 4160)
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
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !342, file: !339, line: 105, baseType: !136, size: 64, offset: 960)
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
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !312, file: !38, line: 945, baseType: !136, size: 64, offset: 1408)
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
!2998 = !{!136}
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
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3099, file: !574, line: 202, baseType: !136, size: 64, offset: 192)
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
!3121 = !{!141, !666, !136}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3092, file: !574, line: 238, baseType: !3123, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!136, !666, !2674}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3092, file: !574, line: 239, baseType: !3127, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!136, !666, !136, !2674}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3092, file: !574, line: 240, baseType: !3131, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !666, !136}
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
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3024, file: !574, line: 148, baseType: !136, size: 64, offset: 768)
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
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !170, file: !67, line: 473, baseType: !136, size: 64, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !170, file: !67, line: 475, baseType: !136, size: 64, offset: 960)
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
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3554, file: !6, line: 72, baseType: !136, size: 64, offset: 320)
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
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !138, file: !6, line: 653, baseType: !3673, size: 64, offset: 7104)
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
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !138, file: !6, line: 661, baseType: !133, size: 16, offset: 9344)
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
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !135, line: 30, baseType: !131)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!3817 = !{!0, !3818, !3823, !3828, !3833, !3838, !3843, !3904, !3907}
!3818 = !DIGlobalVariableExpression(var: !3819, expr: !DIExpression())
!3819 = distinct !DIGlobalVariable(name: "__exitcall_synusb_driver_exit", scope: !2, file: !3, line: 559, type: !3820, isLocal: true, isDefinition: true)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3821, line: 117, baseType: !3822)
!3821 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!3823 = !DIGlobalVariableExpression(var: !3824, expr: !DIExpression())
!3824 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author215", scope: !2, file: !3, line: 561, type: !3825, isLocal: true, isDefinition: true, align: 8)
!3825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 976, elements: !3826)
!3826 = !{!3827}
!3827 = !DISubrange(count: 122)
!3828 = !DIGlobalVariableExpression(var: !3829, expr: !DIExpression())
!3829 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description216", scope: !2, file: !3, line: 564, type: !3830, isLocal: true, isDefinition: true, align: 8)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 432, elements: !3831)
!3831 = !{!3832}
!3832 = !DISubrange(count: 54)
!3833 = !DIGlobalVariableExpression(var: !3834, expr: !DIExpression())
!3834 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file217", scope: !2, file: !3, line: 565, type: !3835, isLocal: true, isDefinition: true, align: 8)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 424, elements: !3836)
!3836 = !{!3837}
!3837 = !DISubrange(count: 53)
!3838 = !DIGlobalVariableExpression(var: !3839, expr: !DIExpression())
!3839 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license218", scope: !2, file: !3, line: 565, type: !3840, isLocal: true, isDefinition: true, align: 8)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 208, elements: !3841)
!3841 = !{!3842}
!3842 = !DISubrange(count: 26)
!3843 = !DIGlobalVariableExpression(var: !3844, expr: !DIExpression())
!3844 = distinct !DIGlobalVariable(name: "synusb_driver", scope: !2, file: !3, line: 546, type: !3845, isLocal: true, isDefinition: true)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3846)
!3846 = !{!3847, !3848, !3869, !3873, !3877, !3881, !3885, !3886, !3887, !3888, !3889, !3890, !3895, !3900, !3901, !3902, !3903}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3845, file: !6, line: 1185, baseType: !177, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3845, file: !6, line: 1187, baseType: !3849, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!141, !3703, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3255, line: 121, size: 256, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3854, file: !3255, line: 123, baseType: !131, size: 16)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3854, file: !3255, line: 126, baseType: !131, size: 16, offset: 16)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3854, file: !3255, line: 127, baseType: !131, size: 16, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3854, file: !3255, line: 128, baseType: !131, size: 16, offset: 48)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3854, file: !3255, line: 129, baseType: !131, size: 16, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3854, file: !3255, line: 132, baseType: !1227, size: 8, offset: 80)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3854, file: !3255, line: 133, baseType: !1227, size: 8, offset: 88)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3854, file: !3255, line: 134, baseType: !1227, size: 8, offset: 96)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3854, file: !3255, line: 137, baseType: !1227, size: 8, offset: 104)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3854, file: !3255, line: 138, baseType: !1227, size: 8, offset: 112)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3854, file: !3255, line: 139, baseType: !1227, size: 8, offset: 120)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3854, file: !3255, line: 142, baseType: !1227, size: 8, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3854, file: !3255, line: 145, baseType: !3274, size: 64, align: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3845, file: !6, line: 1190, baseType: !3870, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !3703}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3845, file: !6, line: 1192, baseType: !3874, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!141, !3703, !7, !136}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3845, file: !6, line: 1195, baseType: !3878, size: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!141, !3703, !3285}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3845, file: !6, line: 1196, baseType: !3882, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!141, !3703}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3845, file: !6, line: 1197, baseType: !3882, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3845, file: !6, line: 1199, baseType: !3882, size: 64, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3845, file: !6, line: 1200, baseType: !3882, size: 64, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3845, file: !6, line: 1202, baseType: !3852, size: 64, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3845, file: !6, line: 1203, baseType: !287, size: 64, offset: 640)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3845, file: !6, line: 1205, baseType: !3891, size: 128, offset: 704)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3891, file: !6, line: 1092, baseType: !193)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3891, file: !6, line: 1093, baseType: !180, size: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3845, file: !6, line: 1206, baseType: !3896, size: 1216, offset: 832)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3896, file: !6, line: 1114, baseType: !3243, size: 1152)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3896, file: !6, line: 1115, baseType: !141, size: 32, offset: 1152)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3845, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3845, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3845, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3845, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3904 = !DIGlobalVariableExpression(var: !3905, expr: !DIExpression())
!3905 = distinct !DIGlobalVariable(name: "__key", scope: !3906, file: !3, line: 324, type: !600, isLocal: true, isDefinition: true)
!3906 = distinct !DISubprogram(name: "synusb_probe", scope: !3, file: !3, line: 291, type: !3850, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!3907 = !DIGlobalVariableExpression(var: !3908, expr: !DIExpression())
!3908 = distinct !DIGlobalVariable(name: "synusb_idtable", scope: !2, file: !3, line: 531, type: !3909, isLocal: true, isDefinition: true)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3853, size: 2560, elements: !3910)
!3910 = !{!3911}
!3911 = !DISubrange(count: 10)
!3912 = !{i32 7, !"Dwarf Version", i32 4}
!3913 = !{i32 2, !"Debug Info Version", i32 3}
!3914 = !{i32 1, !"wchar_size", i32 2}
!3915 = !{i32 1, !"Code Model", i32 2}
!3916 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3917 = distinct !DISubprogram(name: "synusb_driver_init", scope: !3, file: !3, line: 559, type: !3918, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!141}
!3920 = !DILocation(line: 559, column: 1, scope: !3917)
!3921 = distinct !DISubprogram(name: "synusb_driver_exit", scope: !3, file: !3, line: 559, type: !1749, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!3922 = !DILocation(line: 559, column: 1, scope: !3921)
!3923 = !DILocalVariable(name: "intf", arg: 1, scope: !3906, file: !3, line: 291, type: !3703)
!3924 = !DILocation(line: 291, column: 47, scope: !3906)
!3925 = !DILocalVariable(name: "id", arg: 2, scope: !3906, file: !3, line: 292, type: !3852)
!3926 = !DILocation(line: 292, column: 32, scope: !3906)
!3927 = !DILocalVariable(name: "udev", scope: !3906, file: !3, line: 294, type: !137)
!3928 = !DILocation(line: 294, column: 21, scope: !3906)
!3929 = !DILocation(line: 294, column: 48, scope: !3906)
!3930 = !DILocation(line: 294, column: 28, scope: !3906)
!3931 = !DILocalVariable(name: "ep", scope: !3906, file: !3, line: 295, type: !3932)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3933 = !DILocation(line: 295, column: 34, scope: !3906)
!3934 = !DILocalVariable(name: "synusb", scope: !3906, file: !3, line: 296, type: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "synusb", file: !3, line: 75, size: 2176, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3995, !3996, !3997, !3998, !4273, !4274, !4276}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3936, file: !3, line: 76, baseType: !137, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3936, file: !3, line: 77, baseType: !3703, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !3936, file: !3, line: 78, baseType: !3941, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !3943)
!3943 = !{!3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3987}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3942, file: !6, line: 1563, baseType: !3162, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !3942, file: !6, line: 1564, baseType: !141, size: 32, offset: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3942, file: !6, line: 1565, baseType: !136, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3942, file: !6, line: 1566, baseType: !702, size: 32, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !3942, file: !6, line: 1567, baseType: !702, size: 32, offset: 160)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3942, file: !6, line: 1570, baseType: !180, size: 128, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !3942, file: !6, line: 1572, baseType: !180, size: 128, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !3942, file: !6, line: 1573, baseType: !3952, size: 64, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3953, file: !6, line: 1361, baseType: !180, size: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3953, file: !6, line: 1362, baseType: !1355, size: 128, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3953, file: !6, line: 1363, baseType: !193, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3953, file: !6, line: 1364, baseType: !702, size: 32, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3953, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3942, file: !6, line: 1574, baseType: !137, size: 64, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3942, file: !6, line: 1575, baseType: !3725, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3942, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3942, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3942, file: !6, line: 1578, baseType: !141, size: 32, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !3942, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !3942, file: !6, line: 1580, baseType: !136, size: 64, offset: 768)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !3942, file: !6, line: 1581, baseType: !874, size: 64, offset: 832)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3942, file: !6, line: 1582, baseType: !3969, size: 64, offset: 896)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !3942, file: !6, line: 1583, baseType: !141, size: 32, offset: 960)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !3942, file: !6, line: 1584, baseType: !141, size: 32, offset: 992)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !3942, file: !6, line: 1585, baseType: !148, size: 32, offset: 1024)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3942, file: !6, line: 1586, baseType: !148, size: 32, offset: 1056)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !3942, file: !6, line: 1587, baseType: !3589, size: 64, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !3942, file: !6, line: 1588, baseType: !874, size: 64, offset: 1152)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !3942, file: !6, line: 1589, baseType: !141, size: 32, offset: 1216)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !3942, file: !6, line: 1590, baseType: !141, size: 32, offset: 1248)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3942, file: !6, line: 1591, baseType: !141, size: 32, offset: 1280)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !3942, file: !6, line: 1593, baseType: !141, size: 32, offset: 1312)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3942, file: !6, line: 1594, baseType: !136, size: 64, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3942, file: !6, line: 1595, baseType: !3983, size: 64, offset: 1408)
!3983 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !3984)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{null, !3941}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !3942, file: !6, line: 1596, baseType: !3988, offset: 1472)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3989, elements: !2190)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3994}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3989, file: !6, line: 1352, baseType: !7, size: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3989, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3989, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3989, file: !6, line: 1355, baseType: !141, size: 32, offset: 96)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3936, file: !3, line: 79, baseType: !3589, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pm_mutex", scope: !3936, file: !3, line: 82, baseType: !1047, size: 192, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "is_open", scope: !3936, file: !3, line: 83, baseType: !445, size: 8, offset: 448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !3936, file: !3, line: 86, baseType: !3999, size: 64, offset: 512)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4001, line: 131, size: 10432, elements: !4002)
!4001 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4002 = !{!4003, !4004, !4005, !4006, !4014, !4015, !4016, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4043, !4048, !4143, !4146, !4147, !4148, !4150, !4153, !4163, !4164, !4165, !4166, !4167, !4171, !4175, !4179, !4183, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4270, !4271}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4000, file: !4001, line: 132, baseType: !177, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4000, file: !4001, line: 133, baseType: !177, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4000, file: !4001, line: 134, baseType: !177, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4000, file: !4001, line: 135, baseType: !4007, size: 64, offset: 192)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4008, line: 59, size: 64, elements: !4009)
!4008 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4009 = !{!4010, !4011, !4012, !4013}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4007, file: !4008, line: 60, baseType: !131, size: 16)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4007, file: !4008, line: 61, baseType: !131, size: 16, offset: 16)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4007, file: !4008, line: 62, baseType: !131, size: 16, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4007, file: !4008, line: 63, baseType: !131, size: 16, offset: 48)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4000, file: !4001, line: 137, baseType: !1244, size: 64, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4000, file: !4001, line: 139, baseType: !1244, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4000, file: !4001, line: 140, baseType: !4017, size: 768, offset: 384)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 768, elements: !2095)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4000, file: !4001, line: 141, baseType: !1244, size: 64, offset: 1152)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4000, file: !4001, line: 142, baseType: !1244, size: 64, offset: 1216)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4000, file: !4001, line: 143, baseType: !1244, size: 64, offset: 1280)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4000, file: !4001, line: 144, baseType: !1244, size: 64, offset: 1344)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4000, file: !4001, line: 145, baseType: !1244, size: 64, offset: 1408)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4000, file: !4001, line: 146, baseType: !3546, size: 128, offset: 1472)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4000, file: !4001, line: 147, baseType: !1244, size: 64, offset: 1600)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4000, file: !4001, line: 149, baseType: !7, size: 32, offset: 1664)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4000, file: !4001, line: 151, baseType: !7, size: 32, offset: 1696)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4000, file: !4001, line: 152, baseType: !7, size: 32, offset: 1728)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4000, file: !4001, line: 153, baseType: !136, size: 64, offset: 1792)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4000, file: !4001, line: 155, baseType: !4030, size: 64, offset: 1856)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!141, !3999, !4033, !2481}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4035)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4008, line: 114, size: 320, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4041}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4035, file: !4008, line: 116, baseType: !1227, size: 8)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4035, file: !4008, line: 117, baseType: !1227, size: 8, offset: 8)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4035, file: !4008, line: 118, baseType: !131, size: 16, offset: 16)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4035, file: !4008, line: 119, baseType: !150, size: 32, offset: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4035, file: !4008, line: 120, baseType: !4042, size: 256, offset: 64)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 256, elements: !2089)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4000, file: !4001, line: 158, baseType: !4044, size: 64, offset: 1920)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!141, !3999, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4000, file: !4001, line: 161, baseType: !4049, size: 64, offset: 1984)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4001, line: 534, size: 896, elements: !4051)
!4051 = !{!4052, !4119, !4123, !4127, !4131, !4132, !4136, !4137, !4138, !4139, !4140, !4141}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4050, file: !4001, line: 535, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!141, !3999, !4056, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4008, line: 450, size: 384, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4067, !4072}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4057, file: !4008, line: 451, baseType: !131, size: 16)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4057, file: !4008, line: 452, baseType: !1078, size: 16, offset: 16)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4057, file: !4008, line: 453, baseType: !131, size: 16, offset: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4057, file: !4008, line: 454, baseType: !4063, size: 32, offset: 48)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4008, line: 316, size: 32, elements: !4064)
!4064 = !{!4065, !4066}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4063, file: !4008, line: 317, baseType: !131, size: 16)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4063, file: !4008, line: 318, baseType: !131, size: 16, offset: 16)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4057, file: !4008, line: 455, baseType: !4068, size: 32, offset: 80)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4008, line: 306, size: 32, elements: !4069)
!4069 = !{!4070, !4071}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4068, file: !4008, line: 307, baseType: !131, size: 16)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4068, file: !4008, line: 308, baseType: !131, size: 16, offset: 16)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4057, file: !4008, line: 463, baseType: !4073, size: 256, offset: 128)
!4073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4057, file: !4008, line: 457, size: 256, elements: !4074)
!4074 = !{!4075, !4086, !4092, !4104, !4114}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4073, file: !4008, line: 458, baseType: !4076, size: 80)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4008, line: 345, size: 80, elements: !4077)
!4077 = !{!4078, !4079}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4076, file: !4008, line: 346, baseType: !1078, size: 16)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4076, file: !4008, line: 347, baseType: !4080, size: 64, offset: 16)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4008, line: 333, size: 64, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4080, file: !4008, line: 334, baseType: !131, size: 16)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4080, file: !4008, line: 335, baseType: !131, size: 16, offset: 16)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4080, file: !4008, line: 336, baseType: !131, size: 16, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4080, file: !4008, line: 337, baseType: !131, size: 16, offset: 48)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4073, file: !4008, line: 459, baseType: !4087, size: 96)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4008, line: 356, size: 96, elements: !4088)
!4088 = !{!4089, !4090, !4091}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4087, file: !4008, line: 357, baseType: !1078, size: 16)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4087, file: !4008, line: 358, baseType: !1078, size: 16, offset: 16)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4087, file: !4008, line: 359, baseType: !4080, size: 64, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4073, file: !4008, line: 460, baseType: !4093, size: 256)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4008, line: 401, size: 256, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4093, file: !4008, line: 402, baseType: !131, size: 16)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4093, file: !4008, line: 403, baseType: !131, size: 16, offset: 16)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4093, file: !4008, line: 404, baseType: !1078, size: 16, offset: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4093, file: !4008, line: 405, baseType: !1078, size: 16, offset: 48)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4093, file: !4008, line: 406, baseType: !131, size: 16, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4093, file: !4008, line: 408, baseType: !4080, size: 64, offset: 80)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4093, file: !4008, line: 410, baseType: !150, size: 32, offset: 160)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4093, file: !4008, line: 411, baseType: !4103, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4073, file: !4008, line: 461, baseType: !4105, size: 192)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4106, size: 192, elements: !161)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4008, line: 372, size: 96, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4112, !4113}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4106, file: !4008, line: 373, baseType: !131, size: 16)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4106, file: !4008, line: 374, baseType: !131, size: 16, offset: 16)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4106, file: !4008, line: 376, baseType: !1078, size: 16, offset: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4106, file: !4008, line: 377, baseType: !1078, size: 16, offset: 48)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4106, file: !4008, line: 379, baseType: !131, size: 16, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4106, file: !4008, line: 380, baseType: !1078, size: 16, offset: 80)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4073, file: !4008, line: 462, baseType: !4115, size: 32)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4008, line: 422, size: 32, elements: !4116)
!4116 = !{!4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4115, file: !4008, line: 423, baseType: !131, size: 16)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4115, file: !4008, line: 424, baseType: !131, size: 16, offset: 16)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4050, file: !4001, line: 537, baseType: !4120, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!141, !3999, !141}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4050, file: !4001, line: 539, baseType: !4124, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!141, !3999, !141, !141}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4050, file: !4001, line: 540, baseType: !4128, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !3999, !814}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4050, file: !4001, line: 541, baseType: !4128, size: 64, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4050, file: !4001, line: 543, baseType: !4133, size: 64, offset: 320)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !4049}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4050, file: !4001, line: 545, baseType: !136, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4050, file: !4001, line: 547, baseType: !3546, size: 128, offset: 448)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4050, file: !4001, line: 549, baseType: !1047, size: 192, offset: 576)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4050, file: !4001, line: 551, baseType: !141, size: 32, offset: 768)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4050, file: !4001, line: 552, baseType: !4056, size: 64, offset: 832)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4050, file: !4001, line: 553, baseType: !4142, offset: 896)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, elements: !2190)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4000, file: !4001, line: 163, baseType: !4144, size: 64, offset: 2048)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4001, line: 24, flags: DIFlagFwdDecl)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4000, file: !4001, line: 165, baseType: !7, size: 32, offset: 2112)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4000, file: !4001, line: 166, baseType: !3362, size: 320, offset: 2176)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4000, file: !4001, line: 168, baseType: !4149, size: 64, offset: 2496)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !161)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4000, file: !4001, line: 170, baseType: !4151, size: 64, offset: 2560)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4001, line: 170, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4000, file: !4001, line: 172, baseType: !4154, size: 64, offset: 2624)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4008, line: 90, size: 192, elements: !4156)
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4162}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4155, file: !4008, line: 91, baseType: !1319, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4155, file: !4008, line: 92, baseType: !1319, size: 32, offset: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4155, file: !4008, line: 93, baseType: !1319, size: 32, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4155, file: !4008, line: 94, baseType: !1319, size: 32, offset: 96)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4155, file: !4008, line: 95, baseType: !1319, size: 32, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4155, file: !4008, line: 96, baseType: !1319, size: 32, offset: 160)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4000, file: !4001, line: 174, baseType: !4017, size: 768, offset: 2688)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4000, file: !4001, line: 175, baseType: !1244, size: 64, offset: 3456)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4000, file: !4001, line: 176, baseType: !1244, size: 64, offset: 3520)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4000, file: !4001, line: 177, baseType: !1244, size: 64, offset: 3584)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4000, file: !4001, line: 179, baseType: !4168, size: 64, offset: 3648)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!141, !3999}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4000, file: !4001, line: 180, baseType: !4172, size: 64, offset: 3712)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !3999}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4000, file: !4001, line: 181, baseType: !4176, size: 64, offset: 3776)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!141, !3999, !311}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4000, file: !4001, line: 182, baseType: !4180, size: 64, offset: 3840)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!141, !3999, !7, !7, !141}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4000, file: !4001, line: 184, baseType: !4184, size: 64, offset: 3904)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4001, line: 337, size: 576, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4257, !4258}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4185, file: !4001, line: 339, baseType: !136, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4185, file: !4001, line: 341, baseType: !141, size: 32, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4185, file: !4001, line: 342, baseType: !177, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4185, file: !4001, line: 344, baseType: !3999, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4185, file: !4001, line: 345, baseType: !4192, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4001, line: 302, size: 960, elements: !4194)
!4194 = !{!4195, !4196, !4200, !4211, !4215, !4219, !4246, !4250, !4251, !4252, !4253, !4254, !4255, !4256}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4193, file: !4001, line: 304, baseType: !136, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4193, file: !4001, line: 306, baseType: !4197, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !4184, !7, !7, !141}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4193, file: !4001, line: 307, baseType: !4201, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !4184, !4204, !7}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4206)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4001, line: 32, size: 64, elements: !4207)
!4207 = !{!4208, !4209, !4210}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4206, file: !4001, line: 33, baseType: !131, size: 16)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4206, file: !4001, line: 34, baseType: !131, size: 16, offset: 16)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4206, file: !4001, line: 35, baseType: !1319, size: 32, offset: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4193, file: !4001, line: 309, baseType: !4212, size: 64, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!445, !4184, !7, !7, !141}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4193, file: !4001, line: 310, baseType: !4216, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!445, !4192, !3999}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4193, file: !4001, line: 311, baseType: !4220, size: 64, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!141, !4192, !3999, !4223}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3255, line: 342, size: 1600, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230, !4231, !4232, !4234, !4236, !4237, !4238, !4239, !4240, !4241, !4243, !4244, !4245}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4225, file: !3255, line: 344, baseType: !3274, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4225, file: !3255, line: 346, baseType: !131, size: 16, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4225, file: !3255, line: 347, baseType: !131, size: 16, offset: 80)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4225, file: !3255, line: 348, baseType: !131, size: 16, offset: 96)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4225, file: !3255, line: 349, baseType: !131, size: 16, offset: 112)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4225, file: !3255, line: 351, baseType: !4233, size: 64, offset: 128)
!4233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3274, size: 64, elements: !1245)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4225, file: !3255, line: 352, baseType: !4235, size: 768, offset: 192)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3274, size: 768, elements: !2095)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4225, file: !3255, line: 353, baseType: !4233, size: 64, offset: 960)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4225, file: !3255, line: 354, baseType: !4233, size: 64, offset: 1024)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4225, file: !3255, line: 355, baseType: !4233, size: 64, offset: 1088)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4225, file: !3255, line: 356, baseType: !4233, size: 64, offset: 1152)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4225, file: !3255, line: 357, baseType: !4233, size: 64, offset: 1216)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4225, file: !3255, line: 358, baseType: !4242, size: 128, offset: 1280)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3274, size: 128, elements: !161)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4225, file: !3255, line: 359, baseType: !4233, size: 64, offset: 1408)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4225, file: !3255, line: 360, baseType: !4233, size: 64, offset: 1472)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4225, file: !3255, line: 362, baseType: !3274, size: 64, offset: 1536)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4193, file: !4001, line: 312, baseType: !4247, size: 64, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !4184}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4193, file: !4001, line: 313, baseType: !4247, size: 64, offset: 448)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4193, file: !4001, line: 315, baseType: !445, size: 8, offset: 512)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4193, file: !4001, line: 316, baseType: !141, size: 32, offset: 544)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4193, file: !4001, line: 317, baseType: !177, size: 64, offset: 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4193, file: !4001, line: 319, baseType: !4223, size: 64, offset: 640)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4193, file: !4001, line: 321, baseType: !180, size: 128, offset: 704)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4193, file: !4001, line: 322, baseType: !180, size: 128, offset: 832)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4185, file: !4001, line: 347, baseType: !180, size: 128, offset: 320)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4185, file: !4001, line: 348, baseType: !180, size: 128, offset: 448)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4000, file: !4001, line: 186, baseType: !193, offset: 3968)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4000, file: !4001, line: 187, baseType: !1047, size: 192, offset: 3968)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4000, file: !4001, line: 189, baseType: !7, size: 32, offset: 4160)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4000, file: !4001, line: 190, baseType: !445, size: 8, offset: 4192)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4000, file: !4001, line: 192, baseType: !170, size: 5568, offset: 4224)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4000, file: !4001, line: 194, baseType: !180, size: 128, offset: 9792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4000, file: !4001, line: 195, baseType: !180, size: 128, offset: 9920)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4000, file: !4001, line: 197, baseType: !7, size: 32, offset: 10048)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4000, file: !4001, line: 198, baseType: !7, size: 32, offset: 10080)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4000, file: !4001, line: 199, baseType: !4269, size: 64, offset: 10112)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4000, file: !4001, line: 201, baseType: !445, size: 8, offset: 10176)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4000, file: !4001, line: 203, baseType: !4272, size: 192, offset: 10240)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 192, elements: !235)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3936, file: !3, line: 87, baseType: !3260, size: 1024, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3936, file: !3, line: 88, baseType: !4275, size: 512, offset: 1600)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 512, elements: !239)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3936, file: !3, line: 91, baseType: !283, size: 64, offset: 2112)
!4277 = !DILocation(line: 296, column: 17, scope: !3906)
!4278 = !DILocalVariable(name: "input_dev", scope: !3906, file: !3, line: 297, type: !3999)
!4279 = !DILocation(line: 297, column: 20, scope: !3906)
!4280 = !DILocalVariable(name: "intf_num", scope: !3906, file: !3, line: 298, type: !7)
!4281 = !DILocation(line: 298, column: 15, scope: !3906)
!4282 = !DILocation(line: 298, column: 26, scope: !3906)
!4283 = !DILocation(line: 298, column: 32, scope: !3906)
!4284 = !DILocation(line: 298, column: 48, scope: !3906)
!4285 = !DILocation(line: 298, column: 53, scope: !3906)
!4286 = !DILocalVariable(name: "altsetting", scope: !3906, file: !3, line: 299, type: !7)
!4287 = !DILocation(line: 299, column: 15, scope: !3906)
!4288 = !DILocalVariable(name: "__UNIQUE_ID___x212", scope: !4289, file: !3, line: 299, type: !7)
!4289 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 299, column: 28)
!4290 = !DILocation(line: 299, column: 28, scope: !4289)
!4291 = !DILocalVariable(name: "__UNIQUE_ID___y213", scope: !4289, file: !3, line: 299, type: !7)
!4292 = !DILocalVariable(name: "error", scope: !3906, file: !3, line: 300, type: !141)
!4293 = !DILocation(line: 300, column: 6, scope: !3906)
!4294 = !DILocation(line: 302, column: 28, scope: !3906)
!4295 = !DILocation(line: 302, column: 34, scope: !3906)
!4296 = !DILocation(line: 302, column: 44, scope: !3906)
!4297 = !DILocation(line: 302, column: 10, scope: !3906)
!4298 = !DILocation(line: 302, column: 8, scope: !3906)
!4299 = !DILocation(line: 303, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 303, column: 6)
!4301 = !DILocation(line: 303, column: 6, scope: !3906)
!4302 = !DILocation(line: 304, column: 3, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 303, column: 13)
!4304 = !DILocation(line: 307, column: 10, scope: !4303)
!4305 = !DILocation(line: 307, column: 3, scope: !4303)
!4306 = !DILocation(line: 310, column: 30, scope: !3906)
!4307 = !DILocation(line: 310, column: 36, scope: !3906)
!4308 = !DILocation(line: 310, column: 7, scope: !3906)
!4309 = !DILocation(line: 310, column: 5, scope: !3906)
!4310 = !DILocation(line: 311, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 311, column: 6)
!4312 = !DILocation(line: 311, column: 6, scope: !3906)
!4313 = !DILocation(line: 312, column: 3, scope: !4311)
!4314 = !DILocation(line: 314, column: 11, scope: !3906)
!4315 = !DILocation(line: 314, column: 9, scope: !3906)
!4316 = !DILocation(line: 315, column: 14, scope: !3906)
!4317 = !DILocation(line: 315, column: 12, scope: !3906)
!4318 = !DILocation(line: 316, column: 7, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 316, column: 6)
!4320 = !DILocation(line: 316, column: 14, scope: !4319)
!4321 = !DILocation(line: 316, column: 18, scope: !4319)
!4322 = !DILocation(line: 316, column: 6, scope: !3906)
!4323 = !DILocation(line: 317, column: 9, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 316, column: 29)
!4325 = !DILocation(line: 318, column: 3, scope: !4324)
!4326 = !DILocation(line: 321, column: 17, scope: !3906)
!4327 = !DILocation(line: 321, column: 2, scope: !3906)
!4328 = !DILocation(line: 321, column: 10, scope: !3906)
!4329 = !DILocation(line: 321, column: 15, scope: !3906)
!4330 = !DILocation(line: 322, column: 17, scope: !3906)
!4331 = !DILocation(line: 322, column: 2, scope: !3906)
!4332 = !DILocation(line: 322, column: 10, scope: !3906)
!4333 = !DILocation(line: 322, column: 15, scope: !3906)
!4334 = !DILocation(line: 323, column: 18, scope: !3906)
!4335 = !DILocation(line: 323, column: 2, scope: !3906)
!4336 = !DILocation(line: 323, column: 10, scope: !3906)
!4337 = !DILocation(line: 323, column: 16, scope: !3906)
!4338 = !DILocation(line: 324, column: 2, scope: !3906)
!4339 = !DILocation(line: 324, column: 2, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 324, column: 2)
!4341 = !DILocation(line: 326, column: 18, scope: !3906)
!4342 = !DILocation(line: 326, column: 22, scope: !3906)
!4343 = !DILocation(line: 326, column: 2, scope: !3906)
!4344 = !DILocation(line: 326, column: 10, scope: !3906)
!4345 = !DILocation(line: 326, column: 16, scope: !3906)
!4346 = !DILocation(line: 327, column: 6, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 327, column: 6)
!4348 = !DILocation(line: 327, column: 14, scope: !4347)
!4349 = !DILocation(line: 327, column: 20, scope: !4347)
!4350 = !DILocation(line: 327, column: 6, scope: !3906)
!4351 = !DILocation(line: 332, column: 20, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 327, column: 36)
!4353 = !DILocation(line: 332, column: 29, scope: !4352)
!4354 = !DILocation(line: 332, column: 3, scope: !4352)
!4355 = !DILocation(line: 332, column: 11, scope: !4352)
!4356 = !DILocation(line: 332, column: 17, scope: !4352)
!4357 = !DILocation(line: 334, column: 2, scope: !4352)
!4358 = !DILocation(line: 336, column: 16, scope: !3906)
!4359 = !DILocation(line: 336, column: 2, scope: !3906)
!4360 = !DILocation(line: 336, column: 10, scope: !3906)
!4361 = !DILocation(line: 336, column: 14, scope: !3906)
!4362 = !DILocation(line: 337, column: 7, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 337, column: 6)
!4364 = !DILocation(line: 337, column: 15, scope: !4363)
!4365 = !DILocation(line: 337, column: 6, scope: !3906)
!4366 = !DILocation(line: 338, column: 9, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 337, column: 20)
!4368 = !DILocation(line: 339, column: 3, scope: !4367)
!4369 = !DILocation(line: 342, column: 36, scope: !3906)
!4370 = !DILocation(line: 343, column: 9, scope: !3906)
!4371 = !DILocation(line: 343, column: 17, scope: !3906)
!4372 = !DILocation(line: 343, column: 22, scope: !3906)
!4373 = !DILocation(line: 342, column: 17, scope: !3906)
!4374 = !DILocation(line: 342, column: 2, scope: !3906)
!4375 = !DILocation(line: 342, column: 10, scope: !3906)
!4376 = !DILocation(line: 342, column: 15, scope: !3906)
!4377 = !DILocation(line: 344, column: 7, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 344, column: 6)
!4379 = !DILocation(line: 344, column: 15, scope: !4378)
!4380 = !DILocation(line: 344, column: 6, scope: !3906)
!4381 = !DILocation(line: 345, column: 9, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 344, column: 21)
!4383 = !DILocation(line: 346, column: 3, scope: !4382)
!4384 = !DILocation(line: 349, column: 19, scope: !3906)
!4385 = !DILocation(line: 349, column: 27, scope: !3906)
!4386 = !DILocation(line: 349, column: 32, scope: !3906)
!4387 = !DILocation(line: 350, column: 5, scope: !3906)
!4388 = !DILocation(line: 351, column: 5, scope: !3906)
!4389 = !DILocation(line: 351, column: 13, scope: !3906)
!4390 = !DILocation(line: 352, column: 17, scope: !3906)
!4391 = !DILocation(line: 353, column: 5, scope: !3906)
!4392 = !DILocation(line: 353, column: 9, scope: !3906)
!4393 = !DILocation(line: 349, column: 2, scope: !3906)
!4394 = !DILocation(line: 354, column: 2, scope: !3906)
!4395 = !DILocation(line: 354, column: 10, scope: !3906)
!4396 = !DILocation(line: 354, column: 15, scope: !3906)
!4397 = !DILocation(line: 354, column: 30, scope: !3906)
!4398 = !DILocation(line: 356, column: 6, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 356, column: 6)
!4400 = !DILocation(line: 356, column: 12, scope: !4399)
!4401 = !DILocation(line: 356, column: 6, scope: !3906)
!4402 = !DILocation(line: 357, column: 11, scope: !4399)
!4403 = !DILocation(line: 357, column: 19, scope: !4399)
!4404 = !DILocation(line: 357, column: 25, scope: !4399)
!4405 = !DILocation(line: 357, column: 31, scope: !4399)
!4406 = !DILocation(line: 357, column: 3, scope: !4399)
!4407 = !DILocation(line: 360, column: 6, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 360, column: 6)
!4409 = !DILocation(line: 360, column: 12, scope: !4408)
!4410 = !DILocation(line: 360, column: 6, scope: !3906)
!4411 = !DILocation(line: 361, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 361, column: 7)
!4413 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 360, column: 21)
!4414 = !DILocation(line: 361, column: 13, scope: !4412)
!4415 = !DILocation(line: 361, column: 7, scope: !4413)
!4416 = !DILocation(line: 362, column: 12, scope: !4412)
!4417 = !DILocation(line: 362, column: 20, scope: !4412)
!4418 = !DILocation(line: 362, column: 4, scope: !4412)
!4419 = !DILocation(line: 363, column: 11, scope: !4413)
!4420 = !DILocation(line: 363, column: 19, scope: !4413)
!4421 = !DILocation(line: 363, column: 25, scope: !4413)
!4422 = !DILocation(line: 363, column: 31, scope: !4413)
!4423 = !DILocation(line: 363, column: 3, scope: !4413)
!4424 = !DILocation(line: 364, column: 2, scope: !4413)
!4425 = !DILocation(line: 366, column: 14, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 366, column: 6)
!4427 = !DILocation(line: 366, column: 22, scope: !4426)
!4428 = !DILocation(line: 366, column: 7, scope: !4426)
!4429 = !DILocation(line: 366, column: 6, scope: !3906)
!4430 = !DILocation(line: 367, column: 12, scope: !4426)
!4431 = !DILocation(line: 367, column: 20, scope: !4426)
!4432 = !DILocation(line: 369, column: 5, scope: !4426)
!4433 = !DILocation(line: 370, column: 5, scope: !4426)
!4434 = !DILocation(line: 367, column: 3, scope: !4426)
!4435 = !DILocation(line: 372, column: 6, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 372, column: 6)
!4437 = !DILocation(line: 372, column: 14, scope: !4436)
!4438 = !DILocation(line: 372, column: 20, scope: !4436)
!4439 = !DILocation(line: 372, column: 6, scope: !3906)
!4440 = !DILocation(line: 373, column: 11, scope: !4436)
!4441 = !DILocation(line: 373, column: 19, scope: !4436)
!4442 = !DILocation(line: 373, column: 3, scope: !4436)
!4443 = !DILocation(line: 375, column: 16, scope: !3906)
!4444 = !DILocation(line: 375, column: 22, scope: !3906)
!4445 = !DILocation(line: 375, column: 30, scope: !3906)
!4446 = !DILocation(line: 375, column: 2, scope: !3906)
!4447 = !DILocation(line: 376, column: 10, scope: !3906)
!4448 = !DILocation(line: 376, column: 18, scope: !3906)
!4449 = !DILocation(line: 376, column: 2, scope: !3906)
!4450 = !DILocation(line: 378, column: 20, scope: !3906)
!4451 = !DILocation(line: 378, column: 28, scope: !3906)
!4452 = !DILocation(line: 378, column: 2, scope: !3906)
!4453 = !DILocation(line: 378, column: 13, scope: !3906)
!4454 = !DILocation(line: 378, column: 18, scope: !3906)
!4455 = !DILocation(line: 379, column: 20, scope: !3906)
!4456 = !DILocation(line: 379, column: 28, scope: !3906)
!4457 = !DILocation(line: 379, column: 2, scope: !3906)
!4458 = !DILocation(line: 379, column: 13, scope: !3906)
!4459 = !DILocation(line: 379, column: 18, scope: !3906)
!4460 = !DILocation(line: 380, column: 18, scope: !3906)
!4461 = !DILocation(line: 380, column: 25, scope: !3906)
!4462 = !DILocation(line: 380, column: 36, scope: !3906)
!4463 = !DILocation(line: 380, column: 2, scope: !3906)
!4464 = !DILocation(line: 381, column: 27, scope: !3906)
!4465 = !DILocation(line: 381, column: 35, scope: !3906)
!4466 = !DILocation(line: 381, column: 41, scope: !3906)
!4467 = !DILocation(line: 381, column: 2, scope: !3906)
!4468 = !DILocation(line: 381, column: 13, scope: !3906)
!4469 = !DILocation(line: 381, column: 17, scope: !3906)
!4470 = !DILocation(line: 381, column: 24, scope: !3906)
!4471 = !DILocation(line: 383, column: 8, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 383, column: 6)
!4473 = !DILocation(line: 383, column: 16, scope: !4472)
!4474 = !DILocation(line: 383, column: 22, scope: !4472)
!4475 = !DILocation(line: 383, column: 6, scope: !3906)
!4476 = !DILocation(line: 384, column: 3, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 383, column: 43)
!4478 = !DILocation(line: 384, column: 14, scope: !4477)
!4479 = !DILocation(line: 384, column: 19, scope: !4477)
!4480 = !DILocation(line: 385, column: 3, scope: !4477)
!4481 = !DILocation(line: 385, column: 14, scope: !4477)
!4482 = !DILocation(line: 385, column: 20, scope: !4477)
!4483 = !DILocation(line: 386, column: 2, scope: !4477)
!4484 = !DILocation(line: 388, column: 20, scope: !3906)
!4485 = !DILocation(line: 388, column: 31, scope: !3906)
!4486 = !DILocation(line: 388, column: 2, scope: !3906)
!4487 = !DILocation(line: 390, column: 20, scope: !3906)
!4488 = !DILocation(line: 390, column: 31, scope: !3906)
!4489 = !DILocation(line: 390, column: 2, scope: !3906)
!4490 = !DILocation(line: 391, column: 20, scope: !3906)
!4491 = !DILocation(line: 391, column: 31, scope: !3906)
!4492 = !DILocation(line: 391, column: 2, scope: !3906)
!4493 = !DILocation(line: 393, column: 6, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 393, column: 6)
!4495 = !DILocation(line: 393, column: 14, scope: !4494)
!4496 = !DILocation(line: 393, column: 20, scope: !4494)
!4497 = !DILocation(line: 393, column: 6, scope: !3906)
!4498 = !DILocation(line: 394, column: 21, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 393, column: 36)
!4500 = !DILocation(line: 394, column: 32, scope: !4499)
!4501 = !DILocation(line: 394, column: 3, scope: !4499)
!4502 = !DILocation(line: 395, column: 20, scope: !4499)
!4503 = !DILocation(line: 395, column: 31, scope: !4499)
!4504 = !DILocation(line: 395, column: 3, scope: !4499)
!4505 = !DILocation(line: 396, column: 20, scope: !4499)
!4506 = !DILocation(line: 396, column: 31, scope: !4499)
!4507 = !DILocation(line: 396, column: 3, scope: !4499)
!4508 = !DILocation(line: 397, column: 40, scope: !4499)
!4509 = !DILocation(line: 397, column: 51, scope: !4499)
!4510 = !DILocation(line: 397, column: 3, scope: !4499)
!4511 = !DILocation(line: 398, column: 24, scope: !4499)
!4512 = !DILocation(line: 398, column: 3, scope: !4499)
!4513 = !DILocation(line: 399, column: 2, scope: !4499)
!4514 = !DILocation(line: 400, column: 24, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 399, column: 9)
!4516 = !DILocation(line: 400, column: 3, scope: !4515)
!4517 = !DILocation(line: 402, column: 24, scope: !4515)
!4518 = !DILocation(line: 402, column: 3, scope: !4515)
!4519 = !DILocation(line: 404, column: 24, scope: !4515)
!4520 = !DILocation(line: 404, column: 3, scope: !4515)
!4521 = !DILocation(line: 405, column: 24, scope: !4515)
!4522 = !DILocation(line: 405, column: 3, scope: !4515)
!4523 = !DILocation(line: 406, column: 24, scope: !4515)
!4524 = !DILocation(line: 406, column: 35, scope: !4515)
!4525 = !DILocation(line: 406, column: 3, scope: !4515)
!4526 = !DILocation(line: 407, column: 30, scope: !4515)
!4527 = !DILocation(line: 407, column: 41, scope: !4515)
!4528 = !DILocation(line: 407, column: 3, scope: !4515)
!4529 = !DILocation(line: 408, column: 33, scope: !4515)
!4530 = !DILocation(line: 408, column: 44, scope: !4515)
!4531 = !DILocation(line: 408, column: 3, scope: !4515)
!4532 = !DILocation(line: 409, column: 33, scope: !4515)
!4533 = !DILocation(line: 409, column: 44, scope: !4515)
!4534 = !DILocation(line: 409, column: 3, scope: !4515)
!4535 = !DILocation(line: 412, column: 6, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 412, column: 6)
!4537 = !DILocation(line: 412, column: 14, scope: !4536)
!4538 = !DILocation(line: 412, column: 20, scope: !4536)
!4539 = !DILocation(line: 412, column: 6, scope: !3906)
!4540 = !DILocation(line: 413, column: 32, scope: !4536)
!4541 = !DILocation(line: 413, column: 43, scope: !4536)
!4542 = !DILocation(line: 413, column: 3, scope: !4536)
!4543 = !DILocation(line: 415, column: 33, scope: !4536)
!4544 = !DILocation(line: 415, column: 44, scope: !4536)
!4545 = !DILocation(line: 415, column: 3, scope: !4536)
!4546 = !DILocation(line: 417, column: 22, scope: !3906)
!4547 = !DILocation(line: 417, column: 33, scope: !3906)
!4548 = !DILocation(line: 417, column: 2, scope: !3906)
!4549 = !DILocation(line: 418, column: 23, scope: !3906)
!4550 = !DILocation(line: 418, column: 34, scope: !3906)
!4551 = !DILocation(line: 418, column: 2, scope: !3906)
!4552 = !DILocation(line: 419, column: 24, scope: !3906)
!4553 = !DILocation(line: 419, column: 35, scope: !3906)
!4554 = !DILocation(line: 419, column: 2, scope: !3906)
!4555 = !DILocation(line: 421, column: 19, scope: !3906)
!4556 = !DILocation(line: 421, column: 25, scope: !3906)
!4557 = !DILocation(line: 421, column: 2, scope: !3906)
!4558 = !DILocation(line: 423, column: 6, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 423, column: 6)
!4560 = !DILocation(line: 423, column: 14, scope: !4559)
!4561 = !DILocation(line: 423, column: 20, scope: !4559)
!4562 = !DILocation(line: 423, column: 6, scope: !3906)
!4563 = !DILocation(line: 424, column: 23, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 423, column: 40)
!4565 = !DILocation(line: 424, column: 11, scope: !4564)
!4566 = !DILocation(line: 424, column: 9, scope: !4564)
!4567 = !DILocation(line: 425, column: 7, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 425, column: 7)
!4569 = !DILocation(line: 425, column: 7, scope: !4564)
!4570 = !DILocation(line: 426, column: 4, scope: !4568)
!4571 = !DILocation(line: 427, column: 2, scope: !4564)
!4572 = !DILocation(line: 429, column: 32, scope: !3906)
!4573 = !DILocation(line: 429, column: 10, scope: !3906)
!4574 = !DILocation(line: 429, column: 8, scope: !3906)
!4575 = !DILocation(line: 430, column: 6, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 430, column: 6)
!4577 = !DILocation(line: 430, column: 6, scope: !3906)
!4578 = !DILocation(line: 431, column: 3, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 430, column: 13)
!4580 = !DILocation(line: 434, column: 3, scope: !4579)
!4581 = !DILocation(line: 437, column: 2, scope: !3906)
!4582 = !DILabel(scope: !3906, name: "err_stop_io", file: !3, line: 439)
!4583 = !DILocation(line: 439, column: 1, scope: !3906)
!4584 = !DILocation(line: 440, column: 6, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 440, column: 6)
!4586 = !DILocation(line: 440, column: 14, scope: !4585)
!4587 = !DILocation(line: 440, column: 20, scope: !4585)
!4588 = !DILocation(line: 440, column: 6, scope: !3906)
!4589 = !DILocation(line: 441, column: 16, scope: !4585)
!4590 = !DILocation(line: 441, column: 24, scope: !4585)
!4591 = !DILocation(line: 441, column: 3, scope: !4585)
!4592 = !DILocation(line: 440, column: 22, scope: !4585)
!4593 = !DILabel(scope: !3906, name: "err_free_dma", file: !3, line: 442)
!4594 = !DILocation(line: 442, column: 1, scope: !3906)
!4595 = !DILocation(line: 443, column: 20, scope: !3906)
!4596 = !DILocation(line: 443, column: 44, scope: !3906)
!4597 = !DILocation(line: 443, column: 52, scope: !3906)
!4598 = !DILocation(line: 444, column: 6, scope: !3906)
!4599 = !DILocation(line: 444, column: 14, scope: !3906)
!4600 = !DILocation(line: 444, column: 19, scope: !3906)
!4601 = !DILocation(line: 443, column: 2, scope: !3906)
!4602 = !DILabel(scope: !3906, name: "err_free_urb", file: !3, line: 445)
!4603 = !DILocation(line: 445, column: 1, scope: !3906)
!4604 = !DILocation(line: 446, column: 15, scope: !3906)
!4605 = !DILocation(line: 446, column: 23, scope: !3906)
!4606 = !DILocation(line: 446, column: 2, scope: !3906)
!4607 = !DILabel(scope: !3906, name: "err_free_mem", file: !3, line: 447)
!4608 = !DILocation(line: 447, column: 1, scope: !3906)
!4609 = !DILocation(line: 448, column: 20, scope: !3906)
!4610 = !DILocation(line: 448, column: 2, scope: !3906)
!4611 = !DILocation(line: 449, column: 8, scope: !3906)
!4612 = !DILocation(line: 449, column: 2, scope: !3906)
!4613 = !DILocation(line: 450, column: 19, scope: !3906)
!4614 = !DILocation(line: 450, column: 2, scope: !3906)
!4615 = !DILocation(line: 452, column: 9, scope: !3906)
!4616 = !DILocation(line: 452, column: 2, scope: !3906)
!4617 = !DILocation(line: 453, column: 1, scope: !3906)
!4618 = distinct !DISubprogram(name: "synusb_disconnect", scope: !3, file: !3, line: 455, type: !3871, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4619 = !DILocalVariable(name: "intf", arg: 1, scope: !4618, file: !3, line: 455, type: !3703)
!4620 = !DILocation(line: 455, column: 53, scope: !4618)
!4621 = !DILocalVariable(name: "synusb", scope: !4618, file: !3, line: 457, type: !3935)
!4622 = !DILocation(line: 457, column: 17, scope: !4618)
!4623 = !DILocation(line: 457, column: 43, scope: !4618)
!4624 = !DILocation(line: 457, column: 26, scope: !4618)
!4625 = !DILocalVariable(name: "udev", scope: !4618, file: !3, line: 458, type: !137)
!4626 = !DILocation(line: 458, column: 21, scope: !4618)
!4627 = !DILocation(line: 458, column: 48, scope: !4618)
!4628 = !DILocation(line: 458, column: 28, scope: !4618)
!4629 = !DILocation(line: 460, column: 6, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 460, column: 6)
!4631 = !DILocation(line: 460, column: 14, scope: !4630)
!4632 = !DILocation(line: 460, column: 20, scope: !4630)
!4633 = !DILocation(line: 460, column: 6, scope: !4618)
!4634 = !DILocation(line: 461, column: 16, scope: !4630)
!4635 = !DILocation(line: 461, column: 24, scope: !4630)
!4636 = !DILocation(line: 461, column: 3, scope: !4630)
!4637 = !DILocation(line: 463, column: 26, scope: !4618)
!4638 = !DILocation(line: 463, column: 34, scope: !4618)
!4639 = !DILocation(line: 463, column: 2, scope: !4618)
!4640 = !DILocation(line: 465, column: 20, scope: !4618)
!4641 = !DILocation(line: 465, column: 44, scope: !4618)
!4642 = !DILocation(line: 465, column: 52, scope: !4618)
!4643 = !DILocation(line: 466, column: 6, scope: !4618)
!4644 = !DILocation(line: 466, column: 14, scope: !4618)
!4645 = !DILocation(line: 466, column: 19, scope: !4618)
!4646 = !DILocation(line: 465, column: 2, scope: !4618)
!4647 = !DILocation(line: 467, column: 15, scope: !4618)
!4648 = !DILocation(line: 467, column: 23, scope: !4618)
!4649 = !DILocation(line: 467, column: 2, scope: !4618)
!4650 = !DILocation(line: 468, column: 8, scope: !4618)
!4651 = !DILocation(line: 468, column: 2, scope: !4618)
!4652 = !DILocation(line: 470, column: 19, scope: !4618)
!4653 = !DILocation(line: 470, column: 2, scope: !4618)
!4654 = !DILocation(line: 471, column: 1, scope: !4618)
!4655 = distinct !DISubprogram(name: "synusb_suspend", scope: !3, file: !3, line: 473, type: !3879, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4656 = !DILocalVariable(name: "intf", arg: 1, scope: !4655, file: !3, line: 473, type: !3703)
!4657 = !DILocation(line: 473, column: 49, scope: !4655)
!4658 = !DILocalVariable(name: "message", arg: 2, scope: !4655, file: !3, line: 473, type: !3285)
!4659 = !DILocation(line: 473, column: 68, scope: !4655)
!4660 = !DILocalVariable(name: "synusb", scope: !4655, file: !3, line: 475, type: !3935)
!4661 = !DILocation(line: 475, column: 17, scope: !4655)
!4662 = !DILocation(line: 475, column: 43, scope: !4655)
!4663 = !DILocation(line: 475, column: 26, scope: !4655)
!4664 = !DILocation(line: 477, column: 14, scope: !4655)
!4665 = !DILocation(line: 477, column: 22, scope: !4655)
!4666 = !DILocation(line: 477, column: 2, scope: !4655)
!4667 = !DILocation(line: 478, column: 15, scope: !4655)
!4668 = !DILocation(line: 478, column: 23, scope: !4655)
!4669 = !DILocation(line: 478, column: 2, scope: !4655)
!4670 = !DILocation(line: 479, column: 16, scope: !4655)
!4671 = !DILocation(line: 479, column: 24, scope: !4655)
!4672 = !DILocation(line: 479, column: 2, scope: !4655)
!4673 = !DILocation(line: 481, column: 2, scope: !4655)
!4674 = distinct !DISubprogram(name: "synusb_resume", scope: !3, file: !3, line: 484, type: !3883, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4675 = !DILocalVariable(name: "intf", arg: 1, scope: !4674, file: !3, line: 484, type: !3703)
!4676 = !DILocation(line: 484, column: 48, scope: !4674)
!4677 = !DILocalVariable(name: "synusb", scope: !4674, file: !3, line: 486, type: !3935)
!4678 = !DILocation(line: 486, column: 17, scope: !4674)
!4679 = !DILocation(line: 486, column: 43, scope: !4674)
!4680 = !DILocation(line: 486, column: 26, scope: !4674)
!4681 = !DILocalVariable(name: "retval", scope: !4674, file: !3, line: 487, type: !141)
!4682 = !DILocation(line: 487, column: 6, scope: !4674)
!4683 = !DILocation(line: 489, column: 14, scope: !4674)
!4684 = !DILocation(line: 489, column: 22, scope: !4674)
!4685 = !DILocation(line: 489, column: 2, scope: !4674)
!4686 = !DILocation(line: 491, column: 7, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 491, column: 6)
!4688 = !DILocation(line: 491, column: 15, scope: !4687)
!4689 = !DILocation(line: 491, column: 23, scope: !4687)
!4690 = !DILocation(line: 491, column: 27, scope: !4687)
!4691 = !DILocation(line: 491, column: 35, scope: !4687)
!4692 = !DILocation(line: 491, column: 41, scope: !4687)
!4693 = !DILocation(line: 491, column: 62, scope: !4687)
!4694 = !DILocation(line: 492, column: 21, scope: !4687)
!4695 = !DILocation(line: 492, column: 29, scope: !4687)
!4696 = !DILocation(line: 492, column: 6, scope: !4687)
!4697 = !DILocation(line: 492, column: 44, scope: !4687)
!4698 = !DILocation(line: 491, column: 6, scope: !4674)
!4699 = !DILocation(line: 493, column: 10, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 492, column: 49)
!4701 = !DILocation(line: 494, column: 2, scope: !4700)
!4702 = !DILocation(line: 496, column: 16, scope: !4674)
!4703 = !DILocation(line: 496, column: 24, scope: !4674)
!4704 = !DILocation(line: 496, column: 2, scope: !4674)
!4705 = !DILocation(line: 498, column: 9, scope: !4674)
!4706 = !DILocation(line: 498, column: 2, scope: !4674)
!4707 = distinct !DISubprogram(name: "synusb_reset_resume", scope: !3, file: !3, line: 526, type: !3883, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4708 = !DILocalVariable(name: "intf", arg: 1, scope: !4707, file: !3, line: 526, type: !3703)
!4709 = !DILocation(line: 526, column: 54, scope: !4707)
!4710 = !DILocation(line: 528, column: 23, scope: !4707)
!4711 = !DILocation(line: 528, column: 9, scope: !4707)
!4712 = !DILocation(line: 528, column: 2, scope: !4707)
!4713 = distinct !DISubprogram(name: "synusb_pre_reset", scope: !3, file: !3, line: 501, type: !3883, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4714 = !DILocalVariable(name: "intf", arg: 1, scope: !4713, file: !3, line: 501, type: !3703)
!4715 = !DILocation(line: 501, column: 51, scope: !4713)
!4716 = !DILocalVariable(name: "synusb", scope: !4713, file: !3, line: 503, type: !3935)
!4717 = !DILocation(line: 503, column: 17, scope: !4713)
!4718 = !DILocation(line: 503, column: 43, scope: !4713)
!4719 = !DILocation(line: 503, column: 26, scope: !4713)
!4720 = !DILocation(line: 505, column: 14, scope: !4713)
!4721 = !DILocation(line: 505, column: 22, scope: !4713)
!4722 = !DILocation(line: 505, column: 2, scope: !4713)
!4723 = !DILocation(line: 506, column: 15, scope: !4713)
!4724 = !DILocation(line: 506, column: 23, scope: !4713)
!4725 = !DILocation(line: 506, column: 2, scope: !4713)
!4726 = !DILocation(line: 508, column: 2, scope: !4713)
!4727 = distinct !DISubprogram(name: "synusb_post_reset", scope: !3, file: !3, line: 511, type: !3883, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4728 = !DILocalVariable(name: "intf", arg: 1, scope: !4727, file: !3, line: 511, type: !3703)
!4729 = !DILocation(line: 511, column: 52, scope: !4727)
!4730 = !DILocalVariable(name: "synusb", scope: !4727, file: !3, line: 513, type: !3935)
!4731 = !DILocation(line: 513, column: 17, scope: !4727)
!4732 = !DILocation(line: 513, column: 43, scope: !4727)
!4733 = !DILocation(line: 513, column: 26, scope: !4727)
!4734 = !DILocalVariable(name: "retval", scope: !4727, file: !3, line: 514, type: !141)
!4735 = !DILocation(line: 514, column: 6, scope: !4727)
!4736 = !DILocation(line: 516, column: 7, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 516, column: 6)
!4738 = !DILocation(line: 516, column: 15, scope: !4737)
!4739 = !DILocation(line: 516, column: 23, scope: !4737)
!4740 = !DILocation(line: 516, column: 27, scope: !4737)
!4741 = !DILocation(line: 516, column: 35, scope: !4737)
!4742 = !DILocation(line: 516, column: 41, scope: !4737)
!4743 = !DILocation(line: 516, column: 62, scope: !4737)
!4744 = !DILocation(line: 517, column: 21, scope: !4737)
!4745 = !DILocation(line: 517, column: 29, scope: !4737)
!4746 = !DILocation(line: 517, column: 6, scope: !4737)
!4747 = !DILocation(line: 517, column: 44, scope: !4737)
!4748 = !DILocation(line: 516, column: 6, scope: !4727)
!4749 = !DILocation(line: 518, column: 10, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 517, column: 49)
!4751 = !DILocation(line: 519, column: 2, scope: !4750)
!4752 = !DILocation(line: 521, column: 16, scope: !4727)
!4753 = !DILocation(line: 521, column: 24, scope: !4727)
!4754 = !DILocation(line: 521, column: 2, scope: !4727)
!4755 = !DILocation(line: 523, column: 9, scope: !4727)
!4756 = !DILocation(line: 523, column: 2, scope: !4727)
!4757 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4758, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!137, !3703}
!4760 = !DILocalVariable(name: "intf", arg: 1, scope: !4757, file: !6, line: 715, type: !3703)
!4761 = !DILocation(line: 715, column: 76, scope: !4757)
!4762 = !DILocalVariable(name: "__mptr", scope: !4763, file: !6, line: 717, type: !136)
!4763 = distinct !DILexicalBlock(scope: !4757, file: !6, line: 717, column: 9)
!4764 = !DILocation(line: 717, column: 9, scope: !4763)
!4765 = !DILocation(line: 717, column: 9, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4763, file: !6, line: 717, column: 9)
!4767 = !DILocation(line: 717, column: 2, scope: !4757)
!4768 = distinct !DISubprogram(name: "synusb_get_in_endpoint", scope: !3, file: !3, line: 224, type: !4769, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!3932, !3707}
!4771 = !DILocalVariable(name: "iface", arg: 1, scope: !4768, file: !3, line: 224, type: !3707)
!4772 = !DILocation(line: 224, column: 51, scope: !4768)
!4773 = !DILocalVariable(name: "endpoint", scope: !4768, file: !3, line: 227, type: !3932)
!4774 = !DILocation(line: 227, column: 34, scope: !4768)
!4775 = !DILocalVariable(name: "i", scope: !4768, file: !3, line: 228, type: !141)
!4776 = !DILocation(line: 228, column: 6, scope: !4768)
!4777 = !DILocation(line: 230, column: 9, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 230, column: 2)
!4779 = !DILocation(line: 230, column: 7, scope: !4778)
!4780 = !DILocation(line: 230, column: 14, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 230, column: 2)
!4782 = !DILocation(line: 230, column: 18, scope: !4781)
!4783 = !DILocation(line: 230, column: 25, scope: !4781)
!4784 = !DILocation(line: 230, column: 30, scope: !4781)
!4785 = !DILocation(line: 230, column: 16, scope: !4781)
!4786 = !DILocation(line: 230, column: 2, scope: !4778)
!4787 = !DILocation(line: 231, column: 15, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 230, column: 50)
!4789 = !DILocation(line: 231, column: 22, scope: !4788)
!4790 = !DILocation(line: 231, column: 31, scope: !4788)
!4791 = !DILocation(line: 231, column: 34, scope: !4788)
!4792 = !DILocation(line: 231, column: 12, scope: !4788)
!4793 = !DILocation(line: 233, column: 30, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 233, column: 7)
!4795 = !DILocation(line: 233, column: 7, scope: !4794)
!4796 = !DILocation(line: 233, column: 7, scope: !4788)
!4797 = !DILocation(line: 235, column: 11, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 233, column: 41)
!4799 = !DILocation(line: 235, column: 4, scope: !4798)
!4800 = !DILocation(line: 237, column: 2, scope: !4788)
!4801 = !DILocation(line: 230, column: 45, scope: !4781)
!4802 = !DILocation(line: 230, column: 2, scope: !4781)
!4803 = distinct !{!4803, !4786, !4804}
!4804 = !DILocation(line: 237, column: 2, scope: !4778)
!4805 = !DILocation(line: 239, column: 2, scope: !4768)
!4806 = !DILocation(line: 240, column: 1, scope: !4768)
!4807 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !4808, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!136, !280, !129}
!4810 = !DILocalVariable(name: "s", arg: 1, scope: !4811, file: !114, line: 445, type: !889)
!4811 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !4812, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!136, !889, !129, !280}
!4814 = !DILocation(line: 445, column: 72, scope: !4811, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 552, column: 10, scope: !4816, inlinedAt: !4819)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !114, line: 540, column: 34)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !114, line: 540, column: 6)
!4818 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !4808, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4819 = distinct !DILocation(line: 664, column: 9, scope: !4807)
!4820 = !DILocalVariable(name: "flags", arg: 2, scope: !4811, file: !114, line: 446, type: !129)
!4821 = !DILocation(line: 446, column: 9, scope: !4811, inlinedAt: !4815)
!4822 = !DILocalVariable(name: "size", arg: 3, scope: !4811, file: !114, line: 446, type: !280)
!4823 = !DILocation(line: 446, column: 23, scope: !4811, inlinedAt: !4815)
!4824 = !DILocalVariable(name: "ret", scope: !4811, file: !114, line: 448, type: !136)
!4825 = !DILocation(line: 448, column: 8, scope: !4811, inlinedAt: !4815)
!4826 = !DILocalVariable(name: "flags", arg: 1, scope: !4827, file: !114, line: 318, type: !129)
!4827 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !4828, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!113, !129}
!4830 = !DILocation(line: 318, column: 67, scope: !4827, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 553, column: 20, scope: !4816, inlinedAt: !4819)
!4832 = !DILocalVariable(name: "size", arg: 1, scope: !4833, file: !114, line: 346, type: !280)
!4833 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !4834, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!7, !280}
!4836 = !DILocation(line: 346, column: 58, scope: !4833, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 547, column: 11, scope: !4816, inlinedAt: !4819)
!4838 = !DILocalVariable(name: "size", arg: 1, scope: !4839, file: !114, line: 472, type: !280)
!4839 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !4840, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!136, !280, !129, !7}
!4842 = !DILocation(line: 472, column: 28, scope: !4839, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 481, column: 9, scope: !4844, inlinedAt: !4845)
!4844 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !4808, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4845 = distinct !DILocation(line: 545, column: 11, scope: !4846, inlinedAt: !4819)
!4846 = distinct !DILexicalBlock(scope: !4816, file: !114, line: 544, column: 7)
!4847 = !DILocalVariable(name: "flags", arg: 2, scope: !4839, file: !114, line: 472, type: !129)
!4848 = !DILocation(line: 472, column: 40, scope: !4839, inlinedAt: !4843)
!4849 = !DILocalVariable(name: "order", arg: 3, scope: !4839, file: !114, line: 472, type: !7)
!4850 = !DILocation(line: 472, column: 60, scope: !4839, inlinedAt: !4843)
!4851 = !DILocalVariable(name: "size", arg: 1, scope: !4844, file: !114, line: 478, type: !280)
!4852 = !DILocation(line: 478, column: 51, scope: !4844, inlinedAt: !4845)
!4853 = !DILocalVariable(name: "flags", arg: 2, scope: !4844, file: !114, line: 478, type: !129)
!4854 = !DILocation(line: 478, column: 63, scope: !4844, inlinedAt: !4845)
!4855 = !DILocalVariable(name: "order", scope: !4844, file: !114, line: 480, type: !7)
!4856 = !DILocation(line: 480, column: 15, scope: !4844, inlinedAt: !4845)
!4857 = !DILocalVariable(name: "size", arg: 1, scope: !4818, file: !114, line: 538, type: !280)
!4858 = !DILocation(line: 538, column: 45, scope: !4818, inlinedAt: !4819)
!4859 = !DILocalVariable(name: "flags", arg: 2, scope: !4818, file: !114, line: 538, type: !129)
!4860 = !DILocation(line: 538, column: 57, scope: !4818, inlinedAt: !4819)
!4861 = !DILocalVariable(name: "index", scope: !4816, file: !114, line: 542, type: !7)
!4862 = !DILocation(line: 542, column: 16, scope: !4816, inlinedAt: !4819)
!4863 = !DILocalVariable(name: "size", arg: 1, scope: !4807, file: !114, line: 662, type: !280)
!4864 = !DILocation(line: 662, column: 36, scope: !4807)
!4865 = !DILocalVariable(name: "flags", arg: 2, scope: !4807, file: !114, line: 662, type: !129)
!4866 = !DILocation(line: 662, column: 48, scope: !4807)
!4867 = !DILocation(line: 664, column: 17, scope: !4807)
!4868 = !DILocation(line: 664, column: 23, scope: !4807)
!4869 = !DILocation(line: 664, column: 29, scope: !4807)
!4870 = !DILocation(line: 540, column: 27, scope: !4817, inlinedAt: !4819)
!4871 = !DILocation(line: 540, column: 6, scope: !4817, inlinedAt: !4819)
!4872 = !DILocation(line: 540, column: 6, scope: !4818, inlinedAt: !4819)
!4873 = !DILocation(line: 544, column: 7, scope: !4846, inlinedAt: !4819)
!4874 = !DILocation(line: 544, column: 12, scope: !4846, inlinedAt: !4819)
!4875 = !DILocation(line: 544, column: 7, scope: !4816, inlinedAt: !4819)
!4876 = !DILocation(line: 545, column: 25, scope: !4846, inlinedAt: !4819)
!4877 = !DILocation(line: 545, column: 31, scope: !4846, inlinedAt: !4819)
!4878 = !DILocation(line: 480, column: 33, scope: !4844, inlinedAt: !4845)
!4879 = !DILocation(line: 480, column: 23, scope: !4844, inlinedAt: !4845)
!4880 = !DILocation(line: 481, column: 29, scope: !4844, inlinedAt: !4845)
!4881 = !DILocation(line: 481, column: 35, scope: !4844, inlinedAt: !4845)
!4882 = !DILocation(line: 481, column: 42, scope: !4844, inlinedAt: !4845)
!4883 = !DILocation(line: 474, column: 23, scope: !4839, inlinedAt: !4843)
!4884 = !DILocation(line: 474, column: 29, scope: !4839, inlinedAt: !4843)
!4885 = !DILocation(line: 474, column: 36, scope: !4839, inlinedAt: !4843)
!4886 = !DILocation(line: 474, column: 9, scope: !4839, inlinedAt: !4843)
!4887 = !DILocation(line: 545, column: 4, scope: !4846, inlinedAt: !4819)
!4888 = !DILocation(line: 547, column: 25, scope: !4816, inlinedAt: !4819)
!4889 = !DILocation(line: 348, column: 7, scope: !4890, inlinedAt: !4837)
!4890 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 348, column: 6)
!4891 = !DILocation(line: 348, column: 6, scope: !4833, inlinedAt: !4837)
!4892 = !DILocation(line: 349, column: 3, scope: !4890, inlinedAt: !4837)
!4893 = !DILocation(line: 351, column: 6, scope: !4894, inlinedAt: !4837)
!4894 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 351, column: 6)
!4895 = !DILocation(line: 351, column: 11, scope: !4894, inlinedAt: !4837)
!4896 = !DILocation(line: 351, column: 6, scope: !4833, inlinedAt: !4837)
!4897 = !DILocation(line: 352, column: 3, scope: !4894, inlinedAt: !4837)
!4898 = !DILocation(line: 354, column: 32, scope: !4899, inlinedAt: !4837)
!4899 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 354, column: 6)
!4900 = !DILocation(line: 354, column: 37, scope: !4899, inlinedAt: !4837)
!4901 = !DILocation(line: 354, column: 42, scope: !4899, inlinedAt: !4837)
!4902 = !DILocation(line: 354, column: 45, scope: !4899, inlinedAt: !4837)
!4903 = !DILocation(line: 354, column: 50, scope: !4899, inlinedAt: !4837)
!4904 = !DILocation(line: 354, column: 6, scope: !4833, inlinedAt: !4837)
!4905 = !DILocation(line: 355, column: 3, scope: !4899, inlinedAt: !4837)
!4906 = !DILocation(line: 356, column: 32, scope: !4907, inlinedAt: !4837)
!4907 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 356, column: 6)
!4908 = !DILocation(line: 356, column: 37, scope: !4907, inlinedAt: !4837)
!4909 = !DILocation(line: 356, column: 43, scope: !4907, inlinedAt: !4837)
!4910 = !DILocation(line: 356, column: 46, scope: !4907, inlinedAt: !4837)
!4911 = !DILocation(line: 356, column: 51, scope: !4907, inlinedAt: !4837)
!4912 = !DILocation(line: 356, column: 6, scope: !4833, inlinedAt: !4837)
!4913 = !DILocation(line: 357, column: 3, scope: !4907, inlinedAt: !4837)
!4914 = !DILocation(line: 358, column: 6, scope: !4915, inlinedAt: !4837)
!4915 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 358, column: 6)
!4916 = !DILocation(line: 358, column: 11, scope: !4915, inlinedAt: !4837)
!4917 = !DILocation(line: 358, column: 6, scope: !4833, inlinedAt: !4837)
!4918 = !DILocation(line: 358, column: 26, scope: !4915, inlinedAt: !4837)
!4919 = !DILocation(line: 359, column: 6, scope: !4920, inlinedAt: !4837)
!4920 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 359, column: 6)
!4921 = !DILocation(line: 359, column: 11, scope: !4920, inlinedAt: !4837)
!4922 = !DILocation(line: 359, column: 6, scope: !4833, inlinedAt: !4837)
!4923 = !DILocation(line: 359, column: 26, scope: !4920, inlinedAt: !4837)
!4924 = !DILocation(line: 360, column: 6, scope: !4925, inlinedAt: !4837)
!4925 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 360, column: 6)
!4926 = !DILocation(line: 360, column: 11, scope: !4925, inlinedAt: !4837)
!4927 = !DILocation(line: 360, column: 6, scope: !4833, inlinedAt: !4837)
!4928 = !DILocation(line: 360, column: 26, scope: !4925, inlinedAt: !4837)
!4929 = !DILocation(line: 361, column: 6, scope: !4930, inlinedAt: !4837)
!4930 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 361, column: 6)
!4931 = !DILocation(line: 361, column: 11, scope: !4930, inlinedAt: !4837)
!4932 = !DILocation(line: 361, column: 6, scope: !4833, inlinedAt: !4837)
!4933 = !DILocation(line: 361, column: 26, scope: !4930, inlinedAt: !4837)
!4934 = !DILocation(line: 362, column: 6, scope: !4935, inlinedAt: !4837)
!4935 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 362, column: 6)
!4936 = !DILocation(line: 362, column: 11, scope: !4935, inlinedAt: !4837)
!4937 = !DILocation(line: 362, column: 6, scope: !4833, inlinedAt: !4837)
!4938 = !DILocation(line: 362, column: 26, scope: !4935, inlinedAt: !4837)
!4939 = !DILocation(line: 363, column: 6, scope: !4940, inlinedAt: !4837)
!4940 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 363, column: 6)
!4941 = !DILocation(line: 363, column: 11, scope: !4940, inlinedAt: !4837)
!4942 = !DILocation(line: 363, column: 6, scope: !4833, inlinedAt: !4837)
!4943 = !DILocation(line: 363, column: 26, scope: !4940, inlinedAt: !4837)
!4944 = !DILocation(line: 364, column: 6, scope: !4945, inlinedAt: !4837)
!4945 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 364, column: 6)
!4946 = !DILocation(line: 364, column: 11, scope: !4945, inlinedAt: !4837)
!4947 = !DILocation(line: 364, column: 6, scope: !4833, inlinedAt: !4837)
!4948 = !DILocation(line: 364, column: 26, scope: !4945, inlinedAt: !4837)
!4949 = !DILocation(line: 365, column: 6, scope: !4950, inlinedAt: !4837)
!4950 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 365, column: 6)
!4951 = !DILocation(line: 365, column: 11, scope: !4950, inlinedAt: !4837)
!4952 = !DILocation(line: 365, column: 6, scope: !4833, inlinedAt: !4837)
!4953 = !DILocation(line: 365, column: 26, scope: !4950, inlinedAt: !4837)
!4954 = !DILocation(line: 366, column: 6, scope: !4955, inlinedAt: !4837)
!4955 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 366, column: 6)
!4956 = !DILocation(line: 366, column: 11, scope: !4955, inlinedAt: !4837)
!4957 = !DILocation(line: 366, column: 6, scope: !4833, inlinedAt: !4837)
!4958 = !DILocation(line: 366, column: 26, scope: !4955, inlinedAt: !4837)
!4959 = !DILocation(line: 367, column: 6, scope: !4960, inlinedAt: !4837)
!4960 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 367, column: 6)
!4961 = !DILocation(line: 367, column: 11, scope: !4960, inlinedAt: !4837)
!4962 = !DILocation(line: 367, column: 6, scope: !4833, inlinedAt: !4837)
!4963 = !DILocation(line: 367, column: 26, scope: !4960, inlinedAt: !4837)
!4964 = !DILocation(line: 368, column: 6, scope: !4965, inlinedAt: !4837)
!4965 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 368, column: 6)
!4966 = !DILocation(line: 368, column: 11, scope: !4965, inlinedAt: !4837)
!4967 = !DILocation(line: 368, column: 6, scope: !4833, inlinedAt: !4837)
!4968 = !DILocation(line: 368, column: 26, scope: !4965, inlinedAt: !4837)
!4969 = !DILocation(line: 369, column: 6, scope: !4970, inlinedAt: !4837)
!4970 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 369, column: 6)
!4971 = !DILocation(line: 369, column: 11, scope: !4970, inlinedAt: !4837)
!4972 = !DILocation(line: 369, column: 6, scope: !4833, inlinedAt: !4837)
!4973 = !DILocation(line: 369, column: 26, scope: !4970, inlinedAt: !4837)
!4974 = !DILocation(line: 370, column: 6, scope: !4975, inlinedAt: !4837)
!4975 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 370, column: 6)
!4976 = !DILocation(line: 370, column: 11, scope: !4975, inlinedAt: !4837)
!4977 = !DILocation(line: 370, column: 6, scope: !4833, inlinedAt: !4837)
!4978 = !DILocation(line: 370, column: 26, scope: !4975, inlinedAt: !4837)
!4979 = !DILocation(line: 371, column: 6, scope: !4980, inlinedAt: !4837)
!4980 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 371, column: 6)
!4981 = !DILocation(line: 371, column: 11, scope: !4980, inlinedAt: !4837)
!4982 = !DILocation(line: 371, column: 6, scope: !4833, inlinedAt: !4837)
!4983 = !DILocation(line: 371, column: 26, scope: !4980, inlinedAt: !4837)
!4984 = !DILocation(line: 372, column: 6, scope: !4985, inlinedAt: !4837)
!4985 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 372, column: 6)
!4986 = !DILocation(line: 372, column: 11, scope: !4985, inlinedAt: !4837)
!4987 = !DILocation(line: 372, column: 6, scope: !4833, inlinedAt: !4837)
!4988 = !DILocation(line: 372, column: 26, scope: !4985, inlinedAt: !4837)
!4989 = !DILocation(line: 373, column: 6, scope: !4990, inlinedAt: !4837)
!4990 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 373, column: 6)
!4991 = !DILocation(line: 373, column: 11, scope: !4990, inlinedAt: !4837)
!4992 = !DILocation(line: 373, column: 6, scope: !4833, inlinedAt: !4837)
!4993 = !DILocation(line: 373, column: 26, scope: !4990, inlinedAt: !4837)
!4994 = !DILocation(line: 374, column: 6, scope: !4995, inlinedAt: !4837)
!4995 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 374, column: 6)
!4996 = !DILocation(line: 374, column: 11, scope: !4995, inlinedAt: !4837)
!4997 = !DILocation(line: 374, column: 6, scope: !4833, inlinedAt: !4837)
!4998 = !DILocation(line: 374, column: 26, scope: !4995, inlinedAt: !4837)
!4999 = !DILocation(line: 375, column: 6, scope: !5000, inlinedAt: !4837)
!5000 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 375, column: 6)
!5001 = !DILocation(line: 375, column: 11, scope: !5000, inlinedAt: !4837)
!5002 = !DILocation(line: 375, column: 6, scope: !4833, inlinedAt: !4837)
!5003 = !DILocation(line: 375, column: 27, scope: !5000, inlinedAt: !4837)
!5004 = !DILocation(line: 376, column: 6, scope: !5005, inlinedAt: !4837)
!5005 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 376, column: 6)
!5006 = !DILocation(line: 376, column: 11, scope: !5005, inlinedAt: !4837)
!5007 = !DILocation(line: 376, column: 6, scope: !4833, inlinedAt: !4837)
!5008 = !DILocation(line: 376, column: 32, scope: !5005, inlinedAt: !4837)
!5009 = !DILocation(line: 377, column: 6, scope: !5010, inlinedAt: !4837)
!5010 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 377, column: 6)
!5011 = !DILocation(line: 377, column: 11, scope: !5010, inlinedAt: !4837)
!5012 = !DILocation(line: 377, column: 6, scope: !4833, inlinedAt: !4837)
!5013 = !DILocation(line: 377, column: 32, scope: !5010, inlinedAt: !4837)
!5014 = !DILocation(line: 378, column: 6, scope: !5015, inlinedAt: !4837)
!5015 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 378, column: 6)
!5016 = !DILocation(line: 378, column: 11, scope: !5015, inlinedAt: !4837)
!5017 = !DILocation(line: 378, column: 6, scope: !4833, inlinedAt: !4837)
!5018 = !DILocation(line: 378, column: 32, scope: !5015, inlinedAt: !4837)
!5019 = !DILocation(line: 379, column: 6, scope: !5020, inlinedAt: !4837)
!5020 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 379, column: 6)
!5021 = !DILocation(line: 379, column: 11, scope: !5020, inlinedAt: !4837)
!5022 = !DILocation(line: 379, column: 6, scope: !4833, inlinedAt: !4837)
!5023 = !DILocation(line: 379, column: 33, scope: !5020, inlinedAt: !4837)
!5024 = !DILocation(line: 380, column: 6, scope: !5025, inlinedAt: !4837)
!5025 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 380, column: 6)
!5026 = !DILocation(line: 380, column: 11, scope: !5025, inlinedAt: !4837)
!5027 = !DILocation(line: 380, column: 6, scope: !4833, inlinedAt: !4837)
!5028 = !DILocation(line: 380, column: 33, scope: !5025, inlinedAt: !4837)
!5029 = !DILocation(line: 381, column: 6, scope: !5030, inlinedAt: !4837)
!5030 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 381, column: 6)
!5031 = !DILocation(line: 381, column: 11, scope: !5030, inlinedAt: !4837)
!5032 = !DILocation(line: 381, column: 6, scope: !4833, inlinedAt: !4837)
!5033 = !DILocation(line: 381, column: 33, scope: !5030, inlinedAt: !4837)
!5034 = !DILocation(line: 382, column: 2, scope: !5035, inlinedAt: !4837)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !114, line: 382, column: 2)
!5036 = distinct !DILexicalBlock(scope: !4833, file: !114, line: 382, column: 2)
!5037 = !{i32 -2144640335, i32 -2144640306, i32 -2144640260, i32 -2144640202, i32 -2144640148, i32 -2144640094, i32 -2144640039, i32 -2144640008}
!5038 = !DILocation(line: 382, column: 2, scope: !5039, inlinedAt: !4837)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !114, line: 382, column: 2)
!5040 = distinct !DILexicalBlock(scope: !5036, file: !114, line: 382, column: 2)
!5041 = !{i32 -2144639565, i32 -2144639558, i32 -2144639504, i32 -2144639473, i32 -2144639443}
!5042 = !DILocation(line: 382, column: 2, scope: !5040, inlinedAt: !4837)
!5043 = !DILocation(line: 386, column: 1, scope: !4833, inlinedAt: !4837)
!5044 = !DILocation(line: 547, column: 9, scope: !4816, inlinedAt: !4819)
!5045 = !DILocation(line: 549, column: 8, scope: !5046, inlinedAt: !4819)
!5046 = distinct !DILexicalBlock(scope: !4816, file: !114, line: 549, column: 7)
!5047 = !DILocation(line: 549, column: 7, scope: !4816, inlinedAt: !4819)
!5048 = !DILocation(line: 550, column: 4, scope: !5046, inlinedAt: !4819)
!5049 = !DILocation(line: 553, column: 33, scope: !4816, inlinedAt: !4819)
!5050 = !DILocation(line: 325, column: 6, scope: !5051, inlinedAt: !4831)
!5051 = distinct !DILexicalBlock(scope: !4827, file: !114, line: 325, column: 6)
!5052 = !DILocation(line: 325, column: 6, scope: !4827, inlinedAt: !4831)
!5053 = !DILocation(line: 326, column: 3, scope: !5051, inlinedAt: !4831)
!5054 = !DILocation(line: 332, column: 9, scope: !4827, inlinedAt: !4831)
!5055 = !DILocation(line: 332, column: 15, scope: !4827, inlinedAt: !4831)
!5056 = !DILocation(line: 332, column: 2, scope: !4827, inlinedAt: !4831)
!5057 = !DILocation(line: 336, column: 1, scope: !4827, inlinedAt: !4831)
!5058 = !DILocation(line: 553, column: 5, scope: !4816, inlinedAt: !4819)
!5059 = !DILocation(line: 553, column: 41, scope: !4816, inlinedAt: !4819)
!5060 = !DILocation(line: 554, column: 5, scope: !4816, inlinedAt: !4819)
!5061 = !DILocation(line: 554, column: 12, scope: !4816, inlinedAt: !4819)
!5062 = !DILocation(line: 448, column: 31, scope: !4811, inlinedAt: !4815)
!5063 = !DILocation(line: 448, column: 34, scope: !4811, inlinedAt: !4815)
!5064 = !DILocation(line: 448, column: 14, scope: !4811, inlinedAt: !4815)
!5065 = !DILocation(line: 450, column: 22, scope: !4811, inlinedAt: !4815)
!5066 = !DILocation(line: 450, column: 25, scope: !4811, inlinedAt: !4815)
!5067 = !DILocation(line: 450, column: 30, scope: !4811, inlinedAt: !4815)
!5068 = !DILocation(line: 450, column: 36, scope: !4811, inlinedAt: !4815)
!5069 = !DILocation(line: 450, column: 8, scope: !4811, inlinedAt: !4815)
!5070 = !DILocation(line: 450, column: 6, scope: !4811, inlinedAt: !4815)
!5071 = !DILocation(line: 451, column: 9, scope: !4811, inlinedAt: !4815)
!5072 = !DILocation(line: 552, column: 3, scope: !4816, inlinedAt: !4819)
!5073 = !DILocation(line: 557, column: 19, scope: !4818, inlinedAt: !4819)
!5074 = !DILocation(line: 557, column: 25, scope: !4818, inlinedAt: !4819)
!5075 = !DILocation(line: 557, column: 9, scope: !4818, inlinedAt: !4819)
!5076 = !DILocation(line: 557, column: 2, scope: !4818, inlinedAt: !4819)
!5077 = !DILocation(line: 558, column: 1, scope: !4818, inlinedAt: !4819)
!5078 = !DILocation(line: 664, column: 2, scope: !4807)
!5079 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5080, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{null, !3941, !137, !7, !136, !141, !3983, !136, !141}
!5082 = !DILocalVariable(name: "urb", arg: 1, scope: !5079, file: !6, line: 1688, type: !3941)
!5083 = !DILocation(line: 1688, column: 49, scope: !5079)
!5084 = !DILocalVariable(name: "dev", arg: 2, scope: !5079, file: !6, line: 1689, type: !137)
!5085 = !DILocation(line: 1689, column: 28, scope: !5079)
!5086 = !DILocalVariable(name: "pipe", arg: 3, scope: !5079, file: !6, line: 1690, type: !7)
!5087 = !DILocation(line: 1690, column: 22, scope: !5079)
!5088 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5079, file: !6, line: 1691, type: !136)
!5089 = !DILocation(line: 1691, column: 15, scope: !5079)
!5090 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5079, file: !6, line: 1692, type: !141)
!5091 = !DILocation(line: 1692, column: 13, scope: !5079)
!5092 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5079, file: !6, line: 1693, type: !3983)
!5093 = !DILocation(line: 1693, column: 24, scope: !5079)
!5094 = !DILocalVariable(name: "context", arg: 7, scope: !5079, file: !6, line: 1694, type: !136)
!5095 = !DILocation(line: 1694, column: 15, scope: !5079)
!5096 = !DILocalVariable(name: "interval", arg: 8, scope: !5079, file: !6, line: 1695, type: !141)
!5097 = !DILocation(line: 1695, column: 13, scope: !5079)
!5098 = !DILocation(line: 1697, column: 13, scope: !5079)
!5099 = !DILocation(line: 1697, column: 2, scope: !5079)
!5100 = !DILocation(line: 1697, column: 7, scope: !5079)
!5101 = !DILocation(line: 1697, column: 11, scope: !5079)
!5102 = !DILocation(line: 1698, column: 14, scope: !5079)
!5103 = !DILocation(line: 1698, column: 2, scope: !5079)
!5104 = !DILocation(line: 1698, column: 7, scope: !5079)
!5105 = !DILocation(line: 1698, column: 12, scope: !5079)
!5106 = !DILocation(line: 1699, column: 25, scope: !5079)
!5107 = !DILocation(line: 1699, column: 2, scope: !5079)
!5108 = !DILocation(line: 1699, column: 7, scope: !5079)
!5109 = !DILocation(line: 1699, column: 23, scope: !5079)
!5110 = !DILocation(line: 1700, column: 32, scope: !5079)
!5111 = !DILocation(line: 1700, column: 2, scope: !5079)
!5112 = !DILocation(line: 1700, column: 7, scope: !5079)
!5113 = !DILocation(line: 1700, column: 30, scope: !5079)
!5114 = !DILocation(line: 1701, column: 18, scope: !5079)
!5115 = !DILocation(line: 1701, column: 2, scope: !5079)
!5116 = !DILocation(line: 1701, column: 7, scope: !5079)
!5117 = !DILocation(line: 1701, column: 16, scope: !5079)
!5118 = !DILocation(line: 1702, column: 17, scope: !5079)
!5119 = !DILocation(line: 1702, column: 2, scope: !5079)
!5120 = !DILocation(line: 1702, column: 7, scope: !5079)
!5121 = !DILocation(line: 1702, column: 15, scope: !5079)
!5122 = !DILocation(line: 1704, column: 6, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5079, file: !6, line: 1704, column: 6)
!5124 = !DILocation(line: 1704, column: 11, scope: !5123)
!5125 = !DILocation(line: 1704, column: 17, scope: !5123)
!5126 = !DILocation(line: 1704, column: 35, scope: !5123)
!5127 = !DILocation(line: 1704, column: 38, scope: !5123)
!5128 = !DILocation(line: 1704, column: 43, scope: !5123)
!5129 = !DILocation(line: 1704, column: 49, scope: !5123)
!5130 = !DILocation(line: 1704, column: 6, scope: !5079)
!5131 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5132, file: !6, line: 1706, type: !141)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !6, line: 1706, column: 14)
!5133 = distinct !DILexicalBlock(scope: !5123, file: !6, line: 1704, column: 69)
!5134 = !DILocation(line: 1706, column: 14, scope: !5132)
!5135 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5136, file: !6, line: 1706, type: !141)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !6, line: 1706, column: 14)
!5137 = !DILocation(line: 1706, column: 14, scope: !5136)
!5138 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5136, file: !6, line: 1706, type: !141)
!5139 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5132, file: !6, line: 1706, type: !141)
!5140 = !DILocation(line: 1706, column: 12, scope: !5133)
!5141 = !DILocation(line: 1708, column: 25, scope: !5133)
!5142 = !DILocation(line: 1708, column: 34, scope: !5133)
!5143 = !DILocation(line: 1708, column: 21, scope: !5133)
!5144 = !DILocation(line: 1708, column: 3, scope: !5133)
!5145 = !DILocation(line: 1708, column: 8, scope: !5133)
!5146 = !DILocation(line: 1708, column: 17, scope: !5133)
!5147 = !DILocation(line: 1709, column: 2, scope: !5133)
!5148 = !DILocation(line: 1710, column: 19, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5123, file: !6, line: 1709, column: 9)
!5150 = !DILocation(line: 1710, column: 3, scope: !5149)
!5151 = !DILocation(line: 1710, column: 8, scope: !5149)
!5152 = !DILocation(line: 1710, column: 17, scope: !5149)
!5153 = !DILocation(line: 1713, column: 2, scope: !5079)
!5154 = !DILocation(line: 1713, column: 7, scope: !5079)
!5155 = !DILocation(line: 1713, column: 19, scope: !5079)
!5156 = !DILocation(line: 1714, column: 1, scope: !5079)
!5157 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5158, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!7, !137, !7}
!5160 = !DILocalVariable(name: "dev", arg: 1, scope: !5157, file: !6, line: 1945, type: !137)
!5161 = !DILocation(line: 1945, column: 61, scope: !5157)
!5162 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5157, file: !6, line: 1946, type: !7)
!5163 = !DILocation(line: 1946, column: 16, scope: !5157)
!5164 = !DILocation(line: 1948, column: 10, scope: !5157)
!5165 = !DILocation(line: 1948, column: 15, scope: !5157)
!5166 = !DILocation(line: 1948, column: 22, scope: !5157)
!5167 = !DILocation(line: 1948, column: 31, scope: !5157)
!5168 = !DILocation(line: 1948, column: 40, scope: !5157)
!5169 = !DILocation(line: 1948, column: 28, scope: !5157)
!5170 = !DILocation(line: 1948, column: 2, scope: !5157)
!5171 = distinct !DISubprogram(name: "synusb_irq", scope: !3, file: !3, line: 188, type: !3985, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5172 = !DILocalVariable(name: "urb", arg: 1, scope: !5171, file: !3, line: 188, type: !3941)
!5173 = !DILocation(line: 188, column: 36, scope: !5171)
!5174 = !DILocalVariable(name: "synusb", scope: !5171, file: !3, line: 190, type: !3935)
!5175 = !DILocation(line: 190, column: 17, scope: !5171)
!5176 = !DILocation(line: 190, column: 26, scope: !5171)
!5177 = !DILocation(line: 190, column: 31, scope: !5171)
!5178 = !DILocalVariable(name: "error", scope: !5171, file: !3, line: 191, type: !141)
!5179 = !DILocation(line: 191, column: 6, scope: !5171)
!5180 = !DILocation(line: 194, column: 10, scope: !5171)
!5181 = !DILocation(line: 194, column: 15, scope: !5171)
!5182 = !DILocation(line: 194, column: 2, scope: !5171)
!5183 = !DILocation(line: 196, column: 22, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 194, column: 23)
!5185 = !DILocation(line: 196, column: 30, scope: !5184)
!5186 = !DILocation(line: 196, column: 3, scope: !5184)
!5187 = !DILocation(line: 197, column: 3, scope: !5184)
!5188 = !DILocation(line: 203, column: 3, scope: !5184)
!5189 = !DILocation(line: 206, column: 3, scope: !5184)
!5190 = !DILocation(line: 210, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 210, column: 6)
!5192 = !DILocation(line: 210, column: 14, scope: !5191)
!5193 = !DILocation(line: 210, column: 20, scope: !5191)
!5194 = !DILocation(line: 210, column: 6, scope: !5171)
!5195 = !DILocation(line: 211, column: 23, scope: !5191)
!5196 = !DILocation(line: 211, column: 3, scope: !5191)
!5197 = !DILocation(line: 213, column: 26, scope: !5191)
!5198 = !DILocation(line: 213, column: 3, scope: !5191)
!5199 = !DILocation(line: 210, column: 22, scope: !5191)
!5200 = !DILabel(scope: !5171, name: "resubmit", file: !3, line: 215)
!5201 = !DILocation(line: 215, column: 1, scope: !5171)
!5202 = !DILocation(line: 216, column: 25, scope: !5171)
!5203 = !DILocation(line: 216, column: 10, scope: !5171)
!5204 = !DILocation(line: 216, column: 8, scope: !5171)
!5205 = !DILocation(line: 217, column: 6, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 217, column: 6)
!5207 = !DILocation(line: 217, column: 12, scope: !5206)
!5208 = !DILocation(line: 217, column: 15, scope: !5206)
!5209 = !DILocation(line: 217, column: 21, scope: !5206)
!5210 = !DILocation(line: 217, column: 6, scope: !5171)
!5211 = !DILocation(line: 218, column: 3, scope: !5206)
!5212 = !DILocation(line: 221, column: 1, scope: !5171)
!5213 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5214, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{!141, !137, !234, !280}
!5216 = !DILocalVariable(name: "dev", arg: 1, scope: !5213, file: !6, line: 912, type: !137)
!5217 = !DILocation(line: 912, column: 52, scope: !5213)
!5218 = !DILocalVariable(name: "buf", arg: 2, scope: !5213, file: !6, line: 912, type: !234)
!5219 = !DILocation(line: 912, column: 63, scope: !5213)
!5220 = !DILocalVariable(name: "size", arg: 3, scope: !5213, file: !6, line: 912, type: !280)
!5221 = !DILocation(line: 912, column: 75, scope: !5213)
!5222 = !DILocalVariable(name: "actual", scope: !5213, file: !6, line: 914, type: !141)
!5223 = !DILocation(line: 914, column: 6, scope: !5213)
!5224 = !DILocation(line: 915, column: 20, scope: !5213)
!5225 = !DILocation(line: 915, column: 25, scope: !5213)
!5226 = !DILocation(line: 915, column: 44, scope: !5213)
!5227 = !DILocation(line: 915, column: 49, scope: !5213)
!5228 = !DILocation(line: 915, column: 54, scope: !5213)
!5229 = !DILocation(line: 916, column: 6, scope: !5213)
!5230 = !DILocation(line: 916, column: 11, scope: !5213)
!5231 = !DILocation(line: 915, column: 11, scope: !5213)
!5232 = !DILocation(line: 915, column: 9, scope: !5213)
!5233 = !DILocation(line: 917, column: 10, scope: !5213)
!5234 = !DILocation(line: 917, column: 25, scope: !5213)
!5235 = !DILocation(line: 917, column: 20, scope: !5213)
!5236 = !DILocation(line: 917, column: 17, scope: !5213)
!5237 = !DILocation(line: 917, column: 9, scope: !5213)
!5238 = !DILocation(line: 917, column: 38, scope: !5213)
!5239 = !DILocation(line: 917, column: 2, scope: !5213)
!5240 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5241, file: !5241, line: 18, type: !5242, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5241 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5242 = !DISubroutineType(types: !5243)
!5243 = !{null, !5244, !5246}
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!5247 = !DILocalVariable(name: "dev", arg: 1, scope: !5240, file: !5241, line: 18, type: !5244)
!5248 = !DILocation(line: 18, column: 42, scope: !5240)
!5249 = !DILocalVariable(name: "id", arg: 2, scope: !5240, file: !5241, line: 18, type: !5246)
!5250 = !DILocation(line: 18, column: 64, scope: !5240)
!5251 = !DILocation(line: 20, column: 2, scope: !5240)
!5252 = !DILocation(line: 20, column: 6, scope: !5240)
!5253 = !DILocation(line: 20, column: 14, scope: !5240)
!5254 = !DILocation(line: 21, column: 15, scope: !5240)
!5255 = !DILocation(line: 21, column: 2, scope: !5240)
!5256 = !DILocation(line: 21, column: 6, scope: !5240)
!5257 = !DILocation(line: 21, column: 13, scope: !5240)
!5258 = !DILocation(line: 22, column: 16, scope: !5240)
!5259 = !DILocation(line: 22, column: 2, scope: !5240)
!5260 = !DILocation(line: 22, column: 6, scope: !5240)
!5261 = !DILocation(line: 22, column: 14, scope: !5240)
!5262 = !DILocation(line: 23, column: 16, scope: !5240)
!5263 = !DILocation(line: 23, column: 2, scope: !5240)
!5264 = !DILocation(line: 23, column: 6, scope: !5240)
!5265 = !DILocation(line: 23, column: 14, scope: !5240)
!5266 = !DILocation(line: 24, column: 1, scope: !5240)
!5267 = distinct !DISubprogram(name: "synusb_open", scope: !3, file: !3, line: 242, type: !4169, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5268 = !DILocalVariable(name: "dev", arg: 1, scope: !5267, file: !3, line: 242, type: !3999)
!5269 = !DILocation(line: 242, column: 42, scope: !5267)
!5270 = !DILocalVariable(name: "synusb", scope: !5267, file: !3, line: 244, type: !3935)
!5271 = !DILocation(line: 244, column: 17, scope: !5267)
!5272 = !DILocation(line: 244, column: 44, scope: !5267)
!5273 = !DILocation(line: 244, column: 26, scope: !5267)
!5274 = !DILocalVariable(name: "retval", scope: !5267, file: !3, line: 245, type: !141)
!5275 = !DILocation(line: 245, column: 6, scope: !5267)
!5276 = !DILocation(line: 247, column: 36, scope: !5267)
!5277 = !DILocation(line: 247, column: 44, scope: !5267)
!5278 = !DILocation(line: 247, column: 11, scope: !5267)
!5279 = !DILocation(line: 247, column: 9, scope: !5267)
!5280 = !DILocation(line: 248, column: 6, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 248, column: 6)
!5282 = !DILocation(line: 248, column: 6, scope: !5267)
!5283 = !DILocation(line: 249, column: 3, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 248, column: 14)
!5285 = !DILocation(line: 252, column: 10, scope: !5284)
!5286 = !DILocation(line: 252, column: 3, scope: !5284)
!5287 = !DILocation(line: 255, column: 14, scope: !5267)
!5288 = !DILocation(line: 255, column: 22, scope: !5267)
!5289 = !DILocation(line: 255, column: 2, scope: !5267)
!5290 = !DILocation(line: 256, column: 26, scope: !5267)
!5291 = !DILocation(line: 256, column: 34, scope: !5267)
!5292 = !DILocation(line: 256, column: 11, scope: !5267)
!5293 = !DILocation(line: 256, column: 9, scope: !5267)
!5294 = !DILocation(line: 257, column: 6, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 257, column: 6)
!5296 = !DILocation(line: 257, column: 6, scope: !5267)
!5297 = !DILocation(line: 258, column: 3, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 257, column: 14)
!5299 = !DILocation(line: 261, column: 10, scope: !5298)
!5300 = !DILocation(line: 262, column: 3, scope: !5298)
!5301 = !DILocation(line: 265, column: 2, scope: !5267)
!5302 = !DILocation(line: 265, column: 10, scope: !5267)
!5303 = !DILocation(line: 265, column: 16, scope: !5267)
!5304 = !DILocation(line: 265, column: 36, scope: !5267)
!5305 = !DILocation(line: 266, column: 2, scope: !5267)
!5306 = !DILocation(line: 266, column: 10, scope: !5267)
!5307 = !DILocation(line: 266, column: 18, scope: !5267)
!5308 = !DILabel(scope: !5267, name: "out", file: !3, line: 268)
!5309 = !DILocation(line: 268, column: 1, scope: !5267)
!5310 = !DILocation(line: 269, column: 16, scope: !5267)
!5311 = !DILocation(line: 269, column: 24, scope: !5267)
!5312 = !DILocation(line: 269, column: 2, scope: !5267)
!5313 = !DILocation(line: 270, column: 27, scope: !5267)
!5314 = !DILocation(line: 270, column: 35, scope: !5267)
!5315 = !DILocation(line: 270, column: 2, scope: !5267)
!5316 = !DILocation(line: 271, column: 9, scope: !5267)
!5317 = !DILocation(line: 271, column: 2, scope: !5267)
!5318 = !DILocation(line: 272, column: 1, scope: !5267)
!5319 = distinct !DISubprogram(name: "synusb_close", scope: !3, file: !3, line: 274, type: !4173, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5320 = !DILocalVariable(name: "dev", arg: 1, scope: !5319, file: !3, line: 274, type: !3999)
!5321 = !DILocation(line: 274, column: 44, scope: !5319)
!5322 = !DILocalVariable(name: "synusb", scope: !5319, file: !3, line: 276, type: !3935)
!5323 = !DILocation(line: 276, column: 17, scope: !5319)
!5324 = !DILocation(line: 276, column: 44, scope: !5319)
!5325 = !DILocation(line: 276, column: 26, scope: !5319)
!5326 = !DILocalVariable(name: "autopm_error", scope: !5319, file: !3, line: 277, type: !141)
!5327 = !DILocation(line: 277, column: 6, scope: !5319)
!5328 = !DILocation(line: 279, column: 42, scope: !5319)
!5329 = !DILocation(line: 279, column: 50, scope: !5319)
!5330 = !DILocation(line: 279, column: 17, scope: !5319)
!5331 = !DILocation(line: 279, column: 15, scope: !5319)
!5332 = !DILocation(line: 281, column: 14, scope: !5319)
!5333 = !DILocation(line: 281, column: 22, scope: !5319)
!5334 = !DILocation(line: 281, column: 2, scope: !5319)
!5335 = !DILocation(line: 282, column: 15, scope: !5319)
!5336 = !DILocation(line: 282, column: 23, scope: !5319)
!5337 = !DILocation(line: 282, column: 2, scope: !5319)
!5338 = !DILocation(line: 283, column: 2, scope: !5319)
!5339 = !DILocation(line: 283, column: 10, scope: !5319)
!5340 = !DILocation(line: 283, column: 16, scope: !5319)
!5341 = !DILocation(line: 283, column: 36, scope: !5319)
!5342 = !DILocation(line: 284, column: 2, scope: !5319)
!5343 = !DILocation(line: 284, column: 10, scope: !5319)
!5344 = !DILocation(line: 284, column: 18, scope: !5319)
!5345 = !DILocation(line: 285, column: 16, scope: !5319)
!5346 = !DILocation(line: 285, column: 24, scope: !5319)
!5347 = !DILocation(line: 285, column: 2, scope: !5319)
!5348 = !DILocation(line: 287, column: 7, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 287, column: 6)
!5350 = !DILocation(line: 287, column: 6, scope: !5319)
!5351 = !DILocation(line: 288, column: 28, scope: !5349)
!5352 = !DILocation(line: 288, column: 36, scope: !5349)
!5353 = !DILocation(line: 288, column: 3, scope: !5349)
!5354 = !DILocation(line: 289, column: 1, scope: !5319)
!5355 = distinct !DISubprogram(name: "input_set_drvdata", scope: !4001, file: !4001, line: 371, type: !5356, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{null, !3999, !136}
!5358 = !DILocalVariable(name: "dev", arg: 1, scope: !5355, file: !4001, line: 371, type: !3999)
!5359 = !DILocation(line: 371, column: 56, scope: !5355)
!5360 = !DILocalVariable(name: "data", arg: 2, scope: !5355, file: !4001, line: 371, type: !136)
!5361 = !DILocation(line: 371, column: 67, scope: !5355)
!5362 = !DILocation(line: 373, column: 19, scope: !5355)
!5363 = !DILocation(line: 373, column: 24, scope: !5355)
!5364 = !DILocation(line: 373, column: 29, scope: !5355)
!5365 = !DILocation(line: 373, column: 2, scope: !5355)
!5366 = !DILocation(line: 374, column: 1, scope: !5355)
!5367 = distinct !DISubprogram(name: "__set_bit", scope: !5368, file: !5368, line: 25, type: !5369, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5368 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5369 = !DISubroutineType(types: !5370)
!5370 = !{null, !269, !5371}
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !283)
!5373 = !DILocalVariable(name: "nr", arg: 1, scope: !5374, file: !5375, line: 66, type: !269)
!5374 = distinct !DISubprogram(name: "arch___set_bit", scope: !5375, file: !5375, line: 66, type: !5369, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5375 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5376 = !DILocation(line: 66, column: 21, scope: !5374, inlinedAt: !5377)
!5377 = distinct !DILocation(line: 28, column: 2, scope: !5367)
!5378 = !DILocalVariable(name: "addr", arg: 2, scope: !5374, file: !5375, line: 66, type: !5371)
!5379 = !DILocation(line: 66, column: 49, scope: !5374, inlinedAt: !5377)
!5380 = !DILocalVariable(name: "v", arg: 1, scope: !5381, file: !5382, line: 39, type: !5385)
!5381 = distinct !DISubprogram(name: "instrument_write", scope: !5382, file: !5382, line: 39, type: !5383, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5382 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5383 = !DISubroutineType(types: !5384)
!5384 = !{null, !5385, !280}
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5387)
!5387 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5388 = !DILocation(line: 39, column: 67, scope: !5381, inlinedAt: !5389)
!5389 = distinct !DILocation(line: 27, column: 2, scope: !5367)
!5390 = !DILocalVariable(name: "size", arg: 2, scope: !5381, file: !5382, line: 39, type: !280)
!5391 = !DILocation(line: 39, column: 77, scope: !5381, inlinedAt: !5389)
!5392 = !DILocalVariable(name: "nr", arg: 1, scope: !5367, file: !5368, line: 25, type: !269)
!5393 = !DILocation(line: 25, column: 35, scope: !5367)
!5394 = !DILocalVariable(name: "addr", arg: 2, scope: !5367, file: !5368, line: 25, type: !5371)
!5395 = !DILocation(line: 25, column: 63, scope: !5367)
!5396 = !DILocation(line: 27, column: 19, scope: !5367)
!5397 = !DILocation(line: 27, column: 26, scope: !5367)
!5398 = !DILocation(line: 27, column: 24, scope: !5367)
!5399 = !DILocation(line: 41, column: 20, scope: !5381, inlinedAt: !5389)
!5400 = !DILocation(line: 41, column: 23, scope: !5381, inlinedAt: !5389)
!5401 = !DILocation(line: 41, column: 2, scope: !5381, inlinedAt: !5389)
!5402 = !DILocation(line: 42, column: 2, scope: !5381, inlinedAt: !5389)
!5403 = !DILocation(line: 28, column: 17, scope: !5367)
!5404 = !DILocation(line: 28, column: 21, scope: !5367)
!5405 = !DILocation(line: 68, column: 44, scope: !5374, inlinedAt: !5377)
!5406 = !DILocation(line: 68, column: 56, scope: !5374, inlinedAt: !5377)
!5407 = !DILocation(line: 68, column: 2, scope: !5374, inlinedAt: !5377)
!5408 = !{i32 -2147197662}
!5409 = !DILocation(line: 29, column: 1, scope: !5367)
!5410 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5411, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{null, !3703, !136}
!5413 = !DILocalVariable(name: "intf", arg: 1, scope: !5410, file: !6, line: 268, type: !3703)
!5414 = !DILocation(line: 268, column: 59, scope: !5410)
!5415 = !DILocalVariable(name: "data", arg: 2, scope: !5410, file: !6, line: 268, type: !136)
!5416 = !DILocation(line: 268, column: 71, scope: !5410)
!5417 = !DILocation(line: 270, column: 19, scope: !5410)
!5418 = !DILocation(line: 270, column: 25, scope: !5410)
!5419 = !DILocation(line: 270, column: 30, scope: !5410)
!5420 = !DILocation(line: 270, column: 2, scope: !5410)
!5421 = !DILocation(line: 271, column: 1, scope: !5410)
!5422 = distinct !DISubprogram(name: "usb_endpoint_is_int_in", scope: !88, file: !88, line: 596, type: !5423, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!141, !5425}
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!5427 = !DILocalVariable(name: "epd", arg: 1, scope: !5422, file: !88, line: 597, type: !5425)
!5428 = !DILocation(line: 597, column: 43, scope: !5422)
!5429 = !DILocation(line: 599, column: 31, scope: !5422)
!5430 = !DILocation(line: 599, column: 9, scope: !5422)
!5431 = !DILocation(line: 599, column: 36, scope: !5422)
!5432 = !DILocation(line: 599, column: 59, scope: !5422)
!5433 = !DILocation(line: 599, column: 39, scope: !5422)
!5434 = !DILocation(line: 0, scope: !5422)
!5435 = !DILocation(line: 599, column: 2, scope: !5422)
!5436 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !88, file: !88, line: 542, type: !5423, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5437 = !DILocalVariable(name: "epd", arg: 1, scope: !5436, file: !88, line: 543, type: !5425)
!5438 = !DILocation(line: 543, column: 43, scope: !5436)
!5439 = !DILocation(line: 545, column: 11, scope: !5436)
!5440 = !DILocation(line: 545, column: 16, scope: !5436)
!5441 = !DILocation(line: 545, column: 29, scope: !5436)
!5442 = !DILocation(line: 545, column: 59, scope: !5436)
!5443 = !DILocation(line: 545, column: 2, scope: !5436)
!5444 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !88, file: !88, line: 492, type: !5423, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5445 = !DILocalVariable(name: "epd", arg: 1, scope: !5444, file: !88, line: 492, type: !5425)
!5446 = !DILocation(line: 492, column: 77, scope: !5444)
!5447 = !DILocation(line: 494, column: 11, scope: !5444)
!5448 = !DILocation(line: 494, column: 16, scope: !5444)
!5449 = !DILocation(line: 494, column: 33, scope: !5444)
!5450 = !DILocation(line: 494, column: 58, scope: !5444)
!5451 = !DILocation(line: 494, column: 2, scope: !5444)
!5452 = distinct !DISubprogram(name: "get_order", scope: !5453, file: !5453, line: 29, type: !5454, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5453 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!141, !283}
!5456 = !DILocalVariable(name: "x", arg: 1, scope: !5457, file: !5375, line: 366, type: !377)
!5457 = distinct !DISubprogram(name: "fls64", scope: !5375, file: !5375, line: 366, type: !5458, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!141, !377}
!5460 = !DILocation(line: 366, column: 40, scope: !5457, inlinedAt: !5461)
!5461 = distinct !DILocation(line: 46, column: 9, scope: !5452)
!5462 = !DILocalVariable(name: "bitpos", scope: !5457, file: !5375, line: 368, type: !141)
!5463 = !DILocation(line: 368, column: 6, scope: !5457, inlinedAt: !5461)
!5464 = !DILocalVariable(name: "size", arg: 1, scope: !5452, file: !5453, line: 29, type: !283)
!5465 = !DILocation(line: 29, column: 63, scope: !5452)
!5466 = !DILocation(line: 31, column: 27, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5452, file: !5453, line: 31, column: 6)
!5468 = !DILocation(line: 31, column: 6, scope: !5467)
!5469 = !DILocation(line: 31, column: 6, scope: !5452)
!5470 = !DILocation(line: 32, column: 8, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5472, file: !5453, line: 32, column: 7)
!5472 = distinct !DILexicalBlock(scope: !5467, file: !5453, line: 31, column: 34)
!5473 = !DILocation(line: 32, column: 7, scope: !5472)
!5474 = !DILocation(line: 33, column: 4, scope: !5471)
!5475 = !DILocation(line: 35, column: 7, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5472, file: !5453, line: 35, column: 7)
!5477 = !DILocation(line: 35, column: 12, scope: !5476)
!5478 = !DILocation(line: 35, column: 7, scope: !5472)
!5479 = !DILocation(line: 36, column: 4, scope: !5476)
!5480 = !DILocation(line: 38, column: 10, scope: !5472)
!5481 = !DILocation(line: 38, column: 28, scope: !5472)
!5482 = !DILocation(line: 38, column: 41, scope: !5472)
!5483 = !DILocation(line: 38, column: 3, scope: !5472)
!5484 = !DILocation(line: 41, column: 6, scope: !5452)
!5485 = !DILocation(line: 42, column: 7, scope: !5452)
!5486 = !DILocation(line: 46, column: 15, scope: !5452)
!5487 = !DILocation(line: 374, column: 2, scope: !5457, inlinedAt: !5461)
!5488 = !DILocation(line: 376, column: 14, scope: !5457, inlinedAt: !5461)
!5489 = !{i32 253923}
!5490 = !DILocation(line: 377, column: 9, scope: !5457, inlinedAt: !5461)
!5491 = !DILocation(line: 377, column: 16, scope: !5457, inlinedAt: !5461)
!5492 = !DILocation(line: 46, column: 2, scope: !5452)
!5493 = !DILocation(line: 48, column: 1, scope: !5452)
!5494 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5495, file: !5495, line: 30, type: !5496, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5495 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!141, !376}
!5498 = !DILocation(line: 366, column: 40, scope: !5457, inlinedAt: !5499)
!5499 = distinct !DILocation(line: 32, column: 9, scope: !5494)
!5500 = !DILocation(line: 368, column: 6, scope: !5457, inlinedAt: !5499)
!5501 = !DILocalVariable(name: "n", arg: 1, scope: !5494, file: !5495, line: 30, type: !376)
!5502 = !DILocation(line: 30, column: 21, scope: !5494)
!5503 = !DILocation(line: 32, column: 15, scope: !5494)
!5504 = !DILocation(line: 374, column: 2, scope: !5457, inlinedAt: !5499)
!5505 = !DILocation(line: 376, column: 14, scope: !5457, inlinedAt: !5499)
!5506 = !DILocation(line: 377, column: 9, scope: !5457, inlinedAt: !5499)
!5507 = !DILocation(line: 377, column: 16, scope: !5457, inlinedAt: !5499)
!5508 = !DILocation(line: 32, column: 18, scope: !5494)
!5509 = !DILocation(line: 32, column: 2, scope: !5494)
!5510 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1987, file: !1987, line: 137, type: !5511, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!136, !889, !3003, !280, !129}
!5513 = !DILocalVariable(name: "s", arg: 1, scope: !5510, file: !1987, line: 137, type: !889)
!5514 = !DILocation(line: 137, column: 54, scope: !5510)
!5515 = !DILocalVariable(name: "object", arg: 2, scope: !5510, file: !1987, line: 137, type: !3003)
!5516 = !DILocation(line: 137, column: 69, scope: !5510)
!5517 = !DILocalVariable(name: "size", arg: 3, scope: !5510, file: !1987, line: 138, type: !280)
!5518 = !DILocation(line: 138, column: 12, scope: !5510)
!5519 = !DILocalVariable(name: "flags", arg: 4, scope: !5510, file: !1987, line: 138, type: !129)
!5520 = !DILocation(line: 138, column: 24, scope: !5510)
!5521 = !DILocation(line: 140, column: 17, scope: !5510)
!5522 = !DILocation(line: 140, column: 2, scope: !5510)
!5523 = distinct !DISubprogram(name: "usb_mark_last_busy", scope: !6, file: !6, line: 772, type: !5524, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{null, !137}
!5526 = !DILocalVariable(name: "udev", arg: 1, scope: !5523, file: !6, line: 772, type: !137)
!5527 = !DILocation(line: 772, column: 58, scope: !5523)
!5528 = !DILocation(line: 774, column: 29, scope: !5523)
!5529 = !DILocation(line: 774, column: 35, scope: !5523)
!5530 = !DILocation(line: 774, column: 2, scope: !5523)
!5531 = !DILocation(line: 775, column: 1, scope: !5523)
!5532 = distinct !DISubprogram(name: "synusb_report_stick", scope: !3, file: !3, line: 103, type: !5533, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5533 = !DISubroutineType(types: !5534)
!5534 = !{null, !3935}
!5535 = !DILocalVariable(name: "p", arg: 1, scope: !5536, file: !5537, line: 171, type: !5540)
!5536 = distinct !DISubprogram(name: "__swab16p", scope: !5537, file: !5537, line: 171, type: !5538, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5537 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!5538 = !DISubroutineType(types: !5539)
!5539 = !{!131, !5540}
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!5542 = !DILocation(line: 171, column: 53, scope: !5536, inlinedAt: !5543)
!5543 = distinct !DILocation(line: 90, column: 9, scope: !5544, inlinedAt: !5550)
!5544 = distinct !DISubprogram(name: "__be16_to_cpup", scope: !5545, file: !5545, line: 88, type: !5546, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5545 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!131, !5548}
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!5550 = distinct !DILocation(line: 111, column: 12, scope: !5532)
!5551 = !DILocalVariable(name: "p", arg: 1, scope: !5544, file: !5545, line: 88, type: !5548)
!5552 = !DILocation(line: 88, column: 59, scope: !5544, inlinedAt: !5550)
!5553 = !DILocation(line: 171, column: 53, scope: !5536, inlinedAt: !5554)
!5554 = distinct !DILocation(line: 90, column: 9, scope: !5544, inlinedAt: !5555)
!5555 = distinct !DILocation(line: 110, column: 12, scope: !5532)
!5556 = !DILocation(line: 88, column: 59, scope: !5544, inlinedAt: !5555)
!5557 = !DILocalVariable(name: "synusb", arg: 1, scope: !5532, file: !3, line: 103, type: !3935)
!5558 = !DILocation(line: 103, column: 48, scope: !5532)
!5559 = !DILocalVariable(name: "input_dev", scope: !5532, file: !3, line: 105, type: !3999)
!5560 = !DILocation(line: 105, column: 20, scope: !5532)
!5561 = !DILocation(line: 105, column: 32, scope: !5532)
!5562 = !DILocation(line: 105, column: 40, scope: !5532)
!5563 = !DILocalVariable(name: "x", scope: !5532, file: !3, line: 106, type: !141)
!5564 = !DILocation(line: 106, column: 6, scope: !5532)
!5565 = !DILocalVariable(name: "y", scope: !5532, file: !3, line: 106, type: !141)
!5566 = !DILocation(line: 106, column: 9, scope: !5532)
!5567 = !DILocalVariable(name: "pressure", scope: !5532, file: !3, line: 107, type: !7)
!5568 = !DILocation(line: 107, column: 15, scope: !5532)
!5569 = !DILocation(line: 109, column: 13, scope: !5532)
!5570 = !DILocation(line: 109, column: 21, scope: !5532)
!5571 = !DILocation(line: 109, column: 11, scope: !5532)
!5572 = !DILocation(line: 110, column: 36, scope: !5532)
!5573 = !DILocation(line: 110, column: 44, scope: !5532)
!5574 = !DILocation(line: 110, column: 25, scope: !5532)
!5575 = !DILocation(line: 90, column: 28, scope: !5544, inlinedAt: !5555)
!5576 = !DILocation(line: 176, column: 9, scope: !5536, inlinedAt: !5554)
!5577 = !DILocation(line: 110, column: 12, scope: !5532)
!5578 = !DILocation(line: 110, column: 53, scope: !5532)
!5579 = !DILocation(line: 110, column: 6, scope: !5532)
!5580 = !DILocation(line: 110, column: 59, scope: !5532)
!5581 = !DILocation(line: 110, column: 4, scope: !5532)
!5582 = !DILocation(line: 111, column: 36, scope: !5532)
!5583 = !DILocation(line: 111, column: 44, scope: !5532)
!5584 = !DILocation(line: 111, column: 25, scope: !5532)
!5585 = !DILocation(line: 90, column: 28, scope: !5544, inlinedAt: !5550)
!5586 = !DILocation(line: 176, column: 9, scope: !5536, inlinedAt: !5543)
!5587 = !DILocation(line: 111, column: 12, scope: !5532)
!5588 = !DILocation(line: 111, column: 53, scope: !5532)
!5589 = !DILocation(line: 111, column: 6, scope: !5532)
!5590 = !DILocation(line: 111, column: 59, scope: !5532)
!5591 = !DILocation(line: 111, column: 4, scope: !5532)
!5592 = !DILocation(line: 113, column: 6, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 113, column: 6)
!5594 = !DILocation(line: 113, column: 15, scope: !5593)
!5595 = !DILocation(line: 113, column: 6, scope: !5532)
!5596 = !DILocation(line: 114, column: 20, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 113, column: 20)
!5598 = !DILocation(line: 114, column: 38, scope: !5597)
!5599 = !DILocation(line: 114, column: 3, scope: !5597)
!5600 = !DILocation(line: 115, column: 20, scope: !5597)
!5601 = !DILocation(line: 115, column: 39, scope: !5597)
!5602 = !DILocation(line: 115, column: 38, scope: !5597)
!5603 = !DILocation(line: 115, column: 3, scope: !5597)
!5604 = !DILocation(line: 116, column: 2, scope: !5597)
!5605 = !DILocation(line: 118, column: 19, scope: !5532)
!5606 = !DILocation(line: 118, column: 44, scope: !5532)
!5607 = !DILocation(line: 118, column: 2, scope: !5532)
!5608 = !DILocation(line: 120, column: 24, scope: !5532)
!5609 = !DILocation(line: 120, column: 2, scope: !5532)
!5610 = !DILocation(line: 122, column: 13, scope: !5532)
!5611 = !DILocation(line: 122, column: 2, scope: !5532)
!5612 = !DILocation(line: 123, column: 1, scope: !5532)
!5613 = distinct !DISubprogram(name: "synusb_report_touchpad", scope: !3, file: !3, line: 125, type: !5533, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5614 = !DILocation(line: 171, column: 53, scope: !5536, inlinedAt: !5615)
!5615 = distinct !DILocation(line: 90, column: 9, scope: !5544, inlinedAt: !5616)
!5616 = distinct !DILocation(line: 134, column: 6, scope: !5613)
!5617 = !DILocation(line: 88, column: 59, scope: !5544, inlinedAt: !5616)
!5618 = !DILocation(line: 171, column: 53, scope: !5536, inlinedAt: !5619)
!5619 = distinct !DILocation(line: 90, column: 9, scope: !5544, inlinedAt: !5620)
!5620 = distinct !DILocation(line: 133, column: 6, scope: !5613)
!5621 = !DILocation(line: 88, column: 59, scope: !5544, inlinedAt: !5620)
!5622 = !DILocalVariable(name: "synusb", arg: 1, scope: !5613, file: !3, line: 125, type: !3935)
!5623 = !DILocation(line: 125, column: 51, scope: !5613)
!5624 = !DILocalVariable(name: "input_dev", scope: !5613, file: !3, line: 127, type: !3999)
!5625 = !DILocation(line: 127, column: 20, scope: !5613)
!5626 = !DILocation(line: 127, column: 32, scope: !5613)
!5627 = !DILocation(line: 127, column: 40, scope: !5613)
!5628 = !DILocalVariable(name: "num_fingers", scope: !5613, file: !3, line: 128, type: !7)
!5629 = !DILocation(line: 128, column: 15, scope: !5613)
!5630 = !DILocalVariable(name: "tool_width", scope: !5613, file: !3, line: 128, type: !7)
!5631 = !DILocation(line: 128, column: 28, scope: !5613)
!5632 = !DILocalVariable(name: "x", scope: !5613, file: !3, line: 129, type: !7)
!5633 = !DILocation(line: 129, column: 15, scope: !5613)
!5634 = !DILocalVariable(name: "y", scope: !5613, file: !3, line: 129, type: !7)
!5635 = !DILocation(line: 129, column: 18, scope: !5613)
!5636 = !DILocalVariable(name: "pressure", scope: !5613, file: !3, line: 130, type: !7)
!5637 = !DILocation(line: 130, column: 15, scope: !5613)
!5638 = !DILocalVariable(name: "w", scope: !5613, file: !3, line: 130, type: !7)
!5639 = !DILocation(line: 130, column: 25, scope: !5613)
!5640 = !DILocation(line: 132, column: 13, scope: !5613)
!5641 = !DILocation(line: 132, column: 21, scope: !5613)
!5642 = !DILocation(line: 132, column: 11, scope: !5613)
!5643 = !DILocation(line: 133, column: 30, scope: !5613)
!5644 = !DILocation(line: 133, column: 38, scope: !5613)
!5645 = !DILocation(line: 133, column: 19, scope: !5613)
!5646 = !DILocation(line: 90, column: 28, scope: !5544, inlinedAt: !5620)
!5647 = !DILocation(line: 176, column: 9, scope: !5536, inlinedAt: !5619)
!5648 = !DILocation(line: 133, column: 6, scope: !5613)
!5649 = !DILocation(line: 133, column: 4, scope: !5613)
!5650 = !DILocation(line: 134, column: 30, scope: !5613)
!5651 = !DILocation(line: 134, column: 38, scope: !5613)
!5652 = !DILocation(line: 134, column: 19, scope: !5613)
!5653 = !DILocation(line: 90, column: 28, scope: !5544, inlinedAt: !5616)
!5654 = !DILocation(line: 176, column: 9, scope: !5536, inlinedAt: !5615)
!5655 = !DILocation(line: 134, column: 6, scope: !5613)
!5656 = !DILocation(line: 134, column: 4, scope: !5613)
!5657 = !DILocation(line: 135, column: 6, scope: !5613)
!5658 = !DILocation(line: 135, column: 14, scope: !5613)
!5659 = !DILocation(line: 135, column: 22, scope: !5613)
!5660 = !DILocation(line: 135, column: 4, scope: !5613)
!5661 = !DILocation(line: 137, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 137, column: 6)
!5663 = !DILocation(line: 137, column: 15, scope: !5662)
!5664 = !DILocation(line: 137, column: 6, scope: !5613)
!5665 = !DILocation(line: 138, column: 15, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 137, column: 20)
!5667 = !DILocation(line: 139, column: 14, scope: !5666)
!5668 = !DILocation(line: 140, column: 11, scope: !5666)
!5669 = !DILocation(line: 140, column: 3, scope: !5666)
!5670 = !DILocation(line: 142, column: 22, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 140, column: 14)
!5672 = !DILocation(line: 142, column: 20, scope: !5671)
!5673 = !DILocation(line: 142, column: 16, scope: !5671)
!5674 = !DILocation(line: 143, column: 4, scope: !5671)
!5675 = !DILocation(line: 146, column: 4, scope: !5671)
!5676 = !DILocation(line: 149, column: 17, scope: !5671)
!5677 = !DILocation(line: 149, column: 15, scope: !5671)
!5678 = !DILocation(line: 150, column: 4, scope: !5671)
!5679 = !DILocation(line: 152, column: 2, scope: !5666)
!5680 = !DILocation(line: 153, column: 15, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 152, column: 9)
!5682 = !DILocation(line: 154, column: 14, scope: !5681)
!5683 = !DILocation(line: 163, column: 6, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 163, column: 6)
!5685 = !DILocation(line: 163, column: 15, scope: !5684)
!5686 = !DILocation(line: 163, column: 6, scope: !5613)
!5687 = !DILocation(line: 164, column: 20, scope: !5684)
!5688 = !DILocation(line: 164, column: 3, scope: !5684)
!5689 = !DILocation(line: 165, column: 6, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 165, column: 6)
!5691 = !DILocation(line: 165, column: 15, scope: !5690)
!5692 = !DILocation(line: 165, column: 6, scope: !5613)
!5693 = !DILocation(line: 166, column: 20, scope: !5690)
!5694 = !DILocation(line: 166, column: 3, scope: !5690)
!5695 = !DILocation(line: 168, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 168, column: 6)
!5697 = !DILocation(line: 168, column: 18, scope: !5696)
!5698 = !DILocation(line: 168, column: 6, scope: !5613)
!5699 = !DILocation(line: 169, column: 20, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 168, column: 23)
!5701 = !DILocation(line: 169, column: 38, scope: !5700)
!5702 = !DILocation(line: 169, column: 3, scope: !5700)
!5703 = !DILocation(line: 170, column: 20, scope: !5700)
!5704 = !DILocation(line: 171, column: 36, scope: !5700)
!5705 = !DILocation(line: 171, column: 34, scope: !5700)
!5706 = !DILocation(line: 170, column: 3, scope: !5700)
!5707 = !DILocation(line: 172, column: 2, scope: !5700)
!5708 = !DILocation(line: 174, column: 19, scope: !5613)
!5709 = !DILocation(line: 174, column: 44, scope: !5613)
!5710 = !DILocation(line: 174, column: 2, scope: !5613)
!5711 = !DILocation(line: 175, column: 19, scope: !5613)
!5712 = !DILocation(line: 175, column: 46, scope: !5613)
!5713 = !DILocation(line: 175, column: 2, scope: !5613)
!5714 = !DILocation(line: 177, column: 19, scope: !5613)
!5715 = !DILocation(line: 177, column: 47, scope: !5613)
!5716 = !DILocation(line: 177, column: 59, scope: !5613)
!5717 = !DILocation(line: 177, column: 2, scope: !5613)
!5718 = !DILocation(line: 178, column: 19, scope: !5613)
!5719 = !DILocation(line: 178, column: 50, scope: !5613)
!5720 = !DILocation(line: 178, column: 62, scope: !5613)
!5721 = !DILocation(line: 178, column: 2, scope: !5613)
!5722 = !DILocation(line: 179, column: 19, scope: !5613)
!5723 = !DILocation(line: 179, column: 50, scope: !5613)
!5724 = !DILocation(line: 179, column: 62, scope: !5613)
!5725 = !DILocation(line: 179, column: 2, scope: !5613)
!5726 = !DILocation(line: 181, column: 24, scope: !5613)
!5727 = !DILocation(line: 181, column: 2, scope: !5613)
!5728 = !DILocation(line: 182, column: 6, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 182, column: 6)
!5730 = !DILocation(line: 182, column: 14, scope: !5729)
!5731 = !DILocation(line: 182, column: 20, scope: !5729)
!5732 = !DILocation(line: 182, column: 6, scope: !5613)
!5733 = !DILocation(line: 183, column: 20, scope: !5729)
!5734 = !DILocation(line: 183, column: 43, scope: !5729)
!5735 = !DILocation(line: 183, column: 51, scope: !5729)
!5736 = !DILocation(line: 183, column: 59, scope: !5729)
!5737 = !DILocation(line: 183, column: 3, scope: !5729)
!5738 = !DILocation(line: 185, column: 13, scope: !5613)
!5739 = !DILocation(line: 185, column: 2, scope: !5613)
!5740 = !DILocation(line: 186, column: 1, scope: !5613)
!5741 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !5742, file: !5742, line: 194, type: !3194, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5742 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5743 = !DILocalVariable(name: "dev", arg: 1, scope: !5741, file: !5742, line: 194, type: !169)
!5744 = !DILocation(line: 194, column: 61, scope: !5741)
!5745 = !DILocation(line: 196, column: 2, scope: !5741)
!5746 = !DILocation(line: 196, column: 2, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5741, file: !5742, line: 196, column: 2)
!5748 = !DILocation(line: 196, column: 2, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5747, file: !5742, line: 196, column: 2)
!5750 = !DILocation(line: 196, column: 2, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5747, file: !5742, line: 196, column: 2)
!5752 = !DILocation(line: 197, column: 1, scope: !5741)
!5753 = distinct !DISubprogram(name: "input_report_rel", scope: !4001, file: !4001, line: 420, type: !5754, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{null, !3999, !7, !141}
!5756 = !DILocalVariable(name: "dev", arg: 1, scope: !5753, file: !4001, line: 420, type: !3999)
!5757 = !DILocation(line: 420, column: 55, scope: !5753)
!5758 = !DILocalVariable(name: "code", arg: 2, scope: !5753, file: !4001, line: 420, type: !7)
!5759 = !DILocation(line: 420, column: 73, scope: !5753)
!5760 = !DILocalVariable(name: "value", arg: 3, scope: !5753, file: !4001, line: 420, type: !141)
!5761 = !DILocation(line: 420, column: 83, scope: !5753)
!5762 = !DILocation(line: 422, column: 14, scope: !5753)
!5763 = !DILocation(line: 422, column: 27, scope: !5753)
!5764 = !DILocation(line: 422, column: 33, scope: !5753)
!5765 = !DILocation(line: 422, column: 2, scope: !5753)
!5766 = !DILocation(line: 423, column: 1, scope: !5753)
!5767 = distinct !DISubprogram(name: "input_report_abs", scope: !4001, file: !4001, line: 425, type: !5754, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5768 = !DILocalVariable(name: "dev", arg: 1, scope: !5767, file: !4001, line: 425, type: !3999)
!5769 = !DILocation(line: 425, column: 55, scope: !5767)
!5770 = !DILocalVariable(name: "code", arg: 2, scope: !5767, file: !4001, line: 425, type: !7)
!5771 = !DILocation(line: 425, column: 73, scope: !5767)
!5772 = !DILocalVariable(name: "value", arg: 3, scope: !5767, file: !4001, line: 425, type: !141)
!5773 = !DILocation(line: 425, column: 83, scope: !5767)
!5774 = !DILocation(line: 427, column: 14, scope: !5767)
!5775 = !DILocation(line: 427, column: 27, scope: !5767)
!5776 = !DILocation(line: 427, column: 33, scope: !5767)
!5777 = !DILocation(line: 427, column: 2, scope: !5767)
!5778 = !DILocation(line: 428, column: 1, scope: !5767)
!5779 = distinct !DISubprogram(name: "synusb_report_buttons", scope: !3, file: !3, line: 94, type: !5533, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5780 = !DILocalVariable(name: "synusb", arg: 1, scope: !5779, file: !3, line: 94, type: !3935)
!5781 = !DILocation(line: 94, column: 50, scope: !5779)
!5782 = !DILocalVariable(name: "input_dev", scope: !5779, file: !3, line: 96, type: !3999)
!5783 = !DILocation(line: 96, column: 20, scope: !5779)
!5784 = !DILocation(line: 96, column: 32, scope: !5779)
!5785 = !DILocation(line: 96, column: 40, scope: !5779)
!5786 = !DILocation(line: 98, column: 19, scope: !5779)
!5787 = !DILocation(line: 98, column: 40, scope: !5779)
!5788 = !DILocation(line: 98, column: 48, scope: !5779)
!5789 = !DILocation(line: 98, column: 56, scope: !5779)
!5790 = !DILocation(line: 98, column: 2, scope: !5779)
!5791 = !DILocation(line: 99, column: 19, scope: !5779)
!5792 = !DILocation(line: 99, column: 41, scope: !5779)
!5793 = !DILocation(line: 99, column: 49, scope: !5779)
!5794 = !DILocation(line: 99, column: 57, scope: !5779)
!5795 = !DILocation(line: 99, column: 2, scope: !5779)
!5796 = !DILocation(line: 100, column: 19, scope: !5779)
!5797 = !DILocation(line: 100, column: 42, scope: !5779)
!5798 = !DILocation(line: 100, column: 50, scope: !5779)
!5799 = !DILocation(line: 100, column: 58, scope: !5779)
!5800 = !DILocation(line: 100, column: 2, scope: !5779)
!5801 = !DILocation(line: 101, column: 1, scope: !5779)
!5802 = distinct !DISubprogram(name: "input_sync", scope: !4001, file: !4001, line: 440, type: !4173, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5803 = !DILocalVariable(name: "dev", arg: 1, scope: !5802, file: !4001, line: 440, type: !3999)
!5804 = !DILocation(line: 440, column: 49, scope: !5802)
!5805 = !DILocation(line: 442, column: 14, scope: !5802)
!5806 = !DILocation(line: 442, column: 2, scope: !5802)
!5807 = !DILocation(line: 443, column: 1, scope: !5802)
!5808 = distinct !DISubprogram(name: "__fswab16", scope: !5537, file: !5537, line: 48, type: !5809, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!131, !131}
!5811 = !DILocalVariable(name: "val", arg: 1, scope: !5808, file: !5537, line: 48, type: !131)
!5812 = !DILocation(line: 48, column: 57, scope: !5808)
!5813 = !DILocation(line: 53, column: 9, scope: !5808)
!5814 = !DILocation(line: 53, column: 2, scope: !5808)
!5815 = distinct !DISubprogram(name: "input_report_key", scope: !4001, file: !4001, line: 415, type: !5754, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5816 = !DILocalVariable(name: "dev", arg: 1, scope: !5815, file: !4001, line: 415, type: !3999)
!5817 = !DILocation(line: 415, column: 55, scope: !5815)
!5818 = !DILocalVariable(name: "code", arg: 2, scope: !5815, file: !4001, line: 415, type: !7)
!5819 = !DILocation(line: 415, column: 73, scope: !5815)
!5820 = !DILocalVariable(name: "value", arg: 3, scope: !5815, file: !4001, line: 415, type: !141)
!5821 = !DILocation(line: 415, column: 83, scope: !5815)
!5822 = !DILocation(line: 417, column: 14, scope: !5815)
!5823 = !DILocation(line: 417, column: 27, scope: !5815)
!5824 = !DILocation(line: 417, column: 35, scope: !5815)
!5825 = !DILocation(line: 417, column: 34, scope: !5815)
!5826 = !DILocation(line: 417, column: 33, scope: !5815)
!5827 = !DILocation(line: 417, column: 2, scope: !5815)
!5828 = !DILocation(line: 418, column: 1, scope: !5815)
!5829 = distinct !DISubprogram(name: "input_get_drvdata", scope: !4001, file: !4001, line: 366, type: !5830, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!136, !3999}
!5832 = !DILocalVariable(name: "dev", arg: 1, scope: !5829, file: !4001, line: 366, type: !3999)
!5833 = !DILocation(line: 366, column: 57, scope: !5829)
!5834 = !DILocation(line: 368, column: 26, scope: !5829)
!5835 = !DILocation(line: 368, column: 31, scope: !5829)
!5836 = !DILocation(line: 368, column: 9, scope: !5829)
!5837 = !DILocation(line: 368, column: 2, scope: !5829)
!5838 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5839, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!136, !5841}
!5841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5842, size: 64)
!5842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!5843 = !DILocalVariable(name: "dev", arg: 1, scope: !5838, file: !67, line: 655, type: !5841)
!5844 = !DILocation(line: 655, column: 58, scope: !5838)
!5845 = !DILocation(line: 657, column: 9, scope: !5838)
!5846 = !DILocation(line: 657, column: 14, scope: !5838)
!5847 = !DILocation(line: 657, column: 2, scope: !5838)
!5848 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !5849, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{null, !169, !136}
!5851 = !DILocalVariable(name: "dev", arg: 1, scope: !5848, file: !67, line: 660, type: !169)
!5852 = !DILocation(line: 660, column: 51, scope: !5848)
!5853 = !DILocalVariable(name: "data", arg: 2, scope: !5848, file: !67, line: 660, type: !136)
!5854 = !DILocation(line: 660, column: 62, scope: !5848)
!5855 = !DILocation(line: 662, column: 21, scope: !5848)
!5856 = !DILocation(line: 662, column: 2, scope: !5848)
!5857 = !DILocation(line: 662, column: 7, scope: !5848)
!5858 = !DILocation(line: 662, column: 19, scope: !5848)
!5859 = !DILocation(line: 663, column: 1, scope: !5848)
!5860 = distinct !DISubprogram(name: "kasan_check_write", scope: !5861, file: !5861, line: 38, type: !5862, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5861 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5862 = !DISubroutineType(types: !5863)
!5863 = !{!445, !5385, !7}
!5864 = !DILocalVariable(name: "p", arg: 1, scope: !5860, file: !5861, line: 38, type: !5385)
!5865 = !DILocation(line: 38, column: 59, scope: !5860)
!5866 = !DILocalVariable(name: "size", arg: 2, scope: !5860, file: !5861, line: 38, type: !7)
!5867 = !DILocation(line: 38, column: 75, scope: !5860)
!5868 = !DILocation(line: 40, column: 2, scope: !5860)
!5869 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5870, file: !5870, line: 178, type: !5871, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5870 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5871 = !DISubroutineType(types: !5872)
!5872 = !{null, !5385, !280, !141}
!5873 = !DILocalVariable(name: "ptr", arg: 1, scope: !5869, file: !5870, line: 178, type: !5385)
!5874 = !DILocation(line: 178, column: 60, scope: !5869)
!5875 = !DILocalVariable(name: "size", arg: 2, scope: !5869, file: !5870, line: 178, type: !280)
!5876 = !DILocation(line: 178, column: 72, scope: !5869)
!5877 = !DILocalVariable(name: "type", arg: 3, scope: !5869, file: !5870, line: 179, type: !141)
!5878 = !DILocation(line: 179, column: 15, scope: !5869)
!5879 = !DILocation(line: 179, column: 23, scope: !5869)
!5880 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !5881, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!136, !3703}
!5883 = !DILocalVariable(name: "intf", arg: 1, scope: !5880, file: !6, line: 263, type: !3703)
!5884 = !DILocation(line: 263, column: 60, scope: !5880)
!5885 = !DILocation(line: 265, column: 26, scope: !5880)
!5886 = !DILocation(line: 265, column: 32, scope: !5880)
!5887 = !DILocation(line: 265, column: 9, scope: !5880)
!5888 = !DILocation(line: 265, column: 2, scope: !5880)
