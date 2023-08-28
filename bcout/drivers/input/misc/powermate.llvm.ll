; ModuleID = '../bcout/drivers/input/misc/powermate.llvm.bc'
source_filename = "drivers/input/misc/powermate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_powermate_driver_init6:\09\09\09"
module asm ".long\09powermate_driver_init - .\09\09\09"
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
%struct.powermate_device = type { i8*, i64, %struct.urb*, %struct.urb*, %struct.usb_ctrlrequest*, %struct.usb_device*, %struct.usb_interface*, %struct.input_dev*, %struct.spinlock, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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

@__UNIQUE_ID___addressable_powermate_driver_init212 = internal global i8* bitcast (i32 ()* @powermate_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@powermate_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @powermate_probe, void (%struct.usb_interface*)* @powermate_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([4 x %struct.usb_device_id], [4 x %struct.usb_device_id]* @powermate_devices, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !3830
@__exitcall_powermate_driver_exit = internal global void ()* @powermate_driver_exit, section ".exitcall.exit", align 8, !dbg !3807
@__UNIQUE_ID_author213 = internal constant [38 x i8] c"powermate.author=William R Sowerbutts\00", section ".modinfo", align 1, !dbg !3812
@__UNIQUE_ID_description214 = internal constant [63 x i8] c"powermate.description=Griffin Technology, Inc PowerMate driver\00", section ".modinfo", align 1, !dbg !3817
@__UNIQUE_ID_file215 = internal constant [44 x i8] c"powermate.file=drivers/input/misc/powermate\00", section ".modinfo", align 1, !dbg !3822
@__UNIQUE_ID_license216 = internal constant [22 x i8] c"powermate.license=GPL\00", section ".modinfo", align 1, !dbg !3825
@.str = private unnamed_addr constant [10 x i8] c"powermate\00", align 1
@powermate_devices = internal constant [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1917, i16 1040, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1917, i16 1194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1523, i16 576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3898
@.str.1 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@pm_name_powermate = internal global [18 x i8] c"Griffin PowerMate\00", align 16, !dbg !3891
@pm_name_soundknob = internal global [18 x i8] c"Griffin SoundKnob\00", align 16, !dbg !3896
@.str.2 = private unnamed_addr constant [38 x i8] c"\014powermate: unknown product id %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\014powermate: Expected payload of %d--%d bytes, found %d bytes!\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s - usb_submit_urb failed with result: %d\0A\00", align 1
@__func__.powermate_irq = private unnamed_addr constant [14 x i8] c"powermate_irq\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"\013powermate: unknown update required\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\013powermate: usb_submit_urb(config) failed\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\013powermate: config urb returned %d\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_powermate_driver_init212 to i8*), i8* bitcast (void ()* @powermate_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_powermate_driver_exit to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_author213, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_description214, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_file215, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license216, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @powermate_driver_init() #0 section ".init.text" !dbg !3907 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @powermate_driver, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #11, !dbg !3910
  ret i32 %call, !dbg !3910
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @powermate_driver_exit() #0 section ".exit.text" !dbg !3911 {
entry:
  call void @usb_deregister(%struct.usb_driver* @powermate_driver) #11, !dbg !3912
  ret void, !dbg !3912
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @powermate_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !3913 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3914, metadata !DIExpression()), !dbg !3921
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %interface = alloca %struct.usb_host_interface*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %pm = alloca %struct.powermate_device*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %pipe = alloca i32, align 4
  %maxp = alloca i32, align 4
  %error = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !3924, metadata !DIExpression()), !dbg !3925
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !3926, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !3928, metadata !DIExpression()), !dbg !3929
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3930
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #11, !dbg !3931
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !3929
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %interface, metadata !3932, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !3934, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm, metadata !3937, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.declare(metadata i32* %maxp, metadata !4301, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4303, metadata !DIExpression()), !dbg !4304
  store i32 -12, i32* %error, align 4, !dbg !4304
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4305
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4306
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4306
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %interface, align 8, !dbg !4307
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %interface, align 8, !dbg !4308
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %3, i32 0, i32 0, !dbg !4310
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4311
  %4 = load i8, i8* %bNumEndpoints, align 4, !dbg !4311
  %conv = zext i8 %4 to i32, !dbg !4308
  %cmp = icmp slt i32 %conv, 1, !dbg !4312
  br i1 %cmp, label %if.then, label %if.end, !dbg !4313

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4314
  br label %return, !dbg !4314

if.end:                                           ; preds = %entry
  %5 = load %struct.usb_host_interface*, %struct.usb_host_interface** %interface, align 8, !dbg !4315
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %5, i32 0, i32 3, !dbg !4316
  %6 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint2, align 8, !dbg !4316
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %6, i64 0, !dbg !4315
  %desc3 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4317
  store %struct.usb_endpoint_descriptor* %desc3, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4318
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4319
  %call4 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %7) #11, !dbg !4321
  %tobool = icmp ne i32 %call4, 0, !dbg !4321
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !4322

if.then5:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !4323
  br label %return, !dbg !4323

if.end6:                                          ; preds = %if.end
  %8 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4324
  %9 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4325
  %call7 = call i32 @__create_pipe(%struct.usb_device* %9, i32 0) #11, !dbg !4325
  %or = or i32 -2147483648, %call7, !dbg !4325
  %10 = load %struct.usb_host_interface*, %struct.usb_host_interface** %interface, align 8, !dbg !4326
  %desc8 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %10, i32 0, i32 0, !dbg !4327
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc8, i32 0, i32 2, !dbg !4328
  %11 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4328
  %conv9 = zext i8 %11 to i16, !dbg !4326
  %call10 = call i32 @usb_control_msg(%struct.usb_device* %8, i32 %or, i8 zeroext 10, i8 zeroext 33, i16 zeroext 0, i16 zeroext %conv9, i8* null, i16 zeroext 0, i32 5000) #11, !dbg !4329
  %call11 = call i8* @kzalloc(i64 152, i32 3264) #11, !dbg !4330
  %12 = bitcast i8* %call11 to %struct.powermate_device*, !dbg !4330
  store %struct.powermate_device* %12, %struct.powermate_device** %pm, align 8, !dbg !4331
  %call12 = call %struct.input_dev* @input_allocate_device() #11, !dbg !4332
  store %struct.input_dev* %call12, %struct.input_dev** %input_dev, align 8, !dbg !4333
  %13 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4334
  %tobool13 = icmp ne %struct.powermate_device* %13, null, !dbg !4334
  br i1 %tobool13, label %lor.lhs.false, label %if.then15, !dbg !4336

lor.lhs.false:                                    ; preds = %if.end6
  %14 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4337
  %tobool14 = icmp ne %struct.input_dev* %14, null, !dbg !4337
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !4338

if.then15:                                        ; preds = %lor.lhs.false, %if.end6
  br label %fail1, !dbg !4339

if.end16:                                         ; preds = %lor.lhs.false
  %15 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4340
  %16 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4342
  %call17 = call i32 @powermate_alloc_buffers(%struct.usb_device* %15, %struct.powermate_device* %16) #11, !dbg !4343
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4343
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4344

if.then19:                                        ; preds = %if.end16
  br label %fail2, !dbg !4345

if.end20:                                         ; preds = %if.end16
  %call21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4346
  %17 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4347
  %irq = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %17, i32 0, i32 2, !dbg !4348
  store %struct.urb* %call21, %struct.urb** %irq, align 8, !dbg !4349
  %18 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4350
  %irq22 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %18, i32 0, i32 2, !dbg !4352
  %19 = load %struct.urb*, %struct.urb** %irq22, align 8, !dbg !4352
  %tobool23 = icmp ne %struct.urb* %19, null, !dbg !4350
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !4353

if.then24:                                        ; preds = %if.end20
  br label %fail2, !dbg !4354

if.end25:                                         ; preds = %if.end20
  %call26 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4355
  %20 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4356
  %config = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %20, i32 0, i32 3, !dbg !4357
  store %struct.urb* %call26, %struct.urb** %config, align 8, !dbg !4358
  %21 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4359
  %config27 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %21, i32 0, i32 3, !dbg !4361
  %22 = load %struct.urb*, %struct.urb** %config27, align 8, !dbg !4361
  %tobool28 = icmp ne %struct.urb* %22, null, !dbg !4359
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4362

if.then29:                                        ; preds = %if.end25
  br label %fail3, !dbg !4363

if.end30:                                         ; preds = %if.end25
  %23 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4364
  %24 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4365
  %udev31 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %24, i32 0, i32 5, !dbg !4366
  store %struct.usb_device* %23, %struct.usb_device** %udev31, align 8, !dbg !4367
  %25 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4368
  %26 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4369
  %intf32 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %26, i32 0, i32 6, !dbg !4370
  store %struct.usb_interface* %25, %struct.usb_interface** %intf32, align 8, !dbg !4371
  %27 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4372
  %28 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4373
  %input = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %28, i32 0, i32 7, !dbg !4374
  store %struct.input_dev* %27, %struct.input_dev** %input, align 8, !dbg !4375
  %29 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4376
  %30 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4377
  %phys = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %30, i32 0, i32 15, !dbg !4378
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !4377
  %call33 = call i32 @usb_make_path(%struct.usb_device* %29, i8* %arraydecay, i64 64) #11, !dbg !4379
  %31 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4380
  %phys34 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %31, i32 0, i32 15, !dbg !4381
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %phys34, i64 0, i64 0, !dbg !4380
  %call36 = call i64 @strlcat(i8* %arraydecay35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 64) #11, !dbg !4382
  br label %do.body, !dbg !4383

do.body:                                          ; preds = %if.end30
  %32 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4384
  %lock = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %32, i32 0, i32 8, !dbg !4384
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4385
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4386
  %rlock.i = bitcast %union.anon.3* %34 to %struct.raw_spinlock*, !dbg !4386
  %35 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4384
  %lock38 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %35, i32 0, i32 8, !dbg !4384
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4384
  %rlock = bitcast %union.anon.3* %36 to %struct.raw_spinlock*, !dbg !4384
  %37 = bitcast %struct.spinlock* %lock38 to i8*, !dbg !4384
  %38 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 1 %38, i64 0, i1 false), !dbg !4384
  br label %do.end, !dbg !4384

do.end:                                           ; preds = %do.body
  %39 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4387
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 15, !dbg !4387
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 8, !dbg !4387
  %40 = load i16, i16* %idProduct, align 2, !dbg !4387
  %conv39 = zext i16 %40 to i32, !dbg !4387
  switch i32 %conv39, label %sw.default [
    i32 1040, label %sw.bb
    i32 1194, label %sw.bb40
  ], !dbg !4388

sw.bb:                                            ; preds = %do.end
  %41 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4389
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 0, !dbg !4391
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @pm_name_powermate, i64 0, i64 0), i8** %name, align 8, !dbg !4392
  br label %sw.epilog, !dbg !4393

sw.bb40:                                          ; preds = %do.end
  %42 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4394
  %name41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0, !dbg !4395
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @pm_name_soundknob, i64 0, i64 0), i8** %name41, align 8, !dbg !4396
  br label %sw.epilog, !dbg !4397

sw.default:                                       ; preds = %do.end
  %43 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4398
  %name42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 0, !dbg !4399
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @pm_name_soundknob, i64 0, i64 0), i8** %name42, align 8, !dbg !4400
  %44 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4401
  %descriptor43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 15, !dbg !4401
  %idProduct44 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor43, i32 0, i32 8, !dbg !4401
  %45 = load i16, i16* %idProduct44, align 2, !dbg !4401
  %conv45 = zext i16 %45 to i32, !dbg !4401
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %conv45) #12, !dbg !4402
  br label %sw.epilog, !dbg !4403

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb
  %46 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4404
  %phys47 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %46, i32 0, i32 15, !dbg !4405
  %arraydecay48 = getelementptr inbounds [64 x i8], [64 x i8]* %phys47, i64 0, i64 0, !dbg !4404
  %47 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4406
  %phys49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 1, !dbg !4407
  store i8* %arraydecay48, i8** %phys49, align 8, !dbg !4408
  %48 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4409
  %49 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4410
  %id50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 3, !dbg !4411
  call void @usb_to_input_id(%struct.usb_device* %48, %struct.input_id* %id50) #11, !dbg !4412
  %50 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4413
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 7, !dbg !4414
  %51 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4415
  %dev51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 40, !dbg !4416
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev51, i32 0, i32 1, !dbg !4417
  store %struct.device* %dev, %struct.device** %parent, align 8, !dbg !4418
  %52 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4419
  %53 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4420
  %54 = bitcast %struct.powermate_device* %53 to i8*, !dbg !4420
  call void @input_set_drvdata(%struct.input_dev* %52, i8* %54) #11, !dbg !4421
  %55 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4422
  %event = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 34, !dbg !4423
  store i32 (%struct.input_dev*, i32, i32, i32)* @powermate_input_event, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8, !dbg !4424
  %56 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4425
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 5, !dbg !4426
  %arrayidx52 = getelementptr [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4425
  store i64 22, i64* %arrayidx52, align 8, !dbg !4427
  %57 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4428
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 6, !dbg !4429
  %arrayidx53 = getelementptr [12 x i64], [12 x i64]* %keybit, i64 0, i64 4, !dbg !4428
  store i64 1, i64* %arrayidx53, align 8, !dbg !4430
  %58 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4431
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 7, !dbg !4432
  %arrayidx54 = getelementptr [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !4431
  store i64 128, i64* %arrayidx54, align 8, !dbg !4433
  %59 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4434
  %mscbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 9, !dbg !4435
  %arrayidx55 = getelementptr [1 x i64], [1 x i64]* %mscbit, i64 0, i64 0, !dbg !4434
  store i64 2, i64* %arrayidx55, align 8, !dbg !4436
  %60 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4437
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4437
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 2, !dbg !4437
  %62 = load i8, i8* %bEndpointAddress, align 1, !dbg !4437
  %conv56 = zext i8 %62 to i32, !dbg !4437
  %call57 = call i32 @__create_pipe(%struct.usb_device* %60, i32 %conv56) #11, !dbg !4437
  %or58 = or i32 1073741824, %call57, !dbg !4437
  %or59 = or i32 %or58, 128, !dbg !4437
  store i32 %or59, i32* %pipe, align 4, !dbg !4438
  %63 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4439
  %64 = load i32, i32* %pipe, align 4, !dbg !4440
  %65 = load i32, i32* %pipe, align 4, !dbg !4441
  %and = and i32 %65, 128, !dbg !4441
  %tobool60 = icmp ne i32 %and, 0, !dbg !4441
  %lnot = xor i1 %tobool60, true, !dbg !4441
  %lnot.ext = zext i1 %lnot to i32, !dbg !4441
  %call61 = call zeroext i16 @usb_maxpacket(%struct.usb_device* %63, i32 %64, i32 %lnot.ext) #11, !dbg !4442
  %conv62 = zext i16 %call61 to i32, !dbg !4442
  store i32 %conv62, i32* %maxp, align 4, !dbg !4443
  %66 = load i32, i32* %maxp, align 4, !dbg !4444
  %cmp63 = icmp slt i32 %66, 3, !dbg !4446
  br i1 %cmp63, label %if.then68, label %lor.lhs.false65, !dbg !4447

lor.lhs.false65:                                  ; preds = %sw.epilog
  %67 = load i32, i32* %maxp, align 4, !dbg !4448
  %cmp66 = icmp sgt i32 %67, 6, !dbg !4449
  br i1 %cmp66, label %if.then68, label %if.end70, !dbg !4450

if.then68:                                        ; preds = %lor.lhs.false65, %sw.epilog
  %68 = load i32, i32* %maxp, align 4, !dbg !4451
  %call69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 6, i32 %68) #12, !dbg !4453
  store i32 6, i32* %maxp, align 4, !dbg !4454
  br label %if.end70, !dbg !4455

if.end70:                                         ; preds = %if.then68, %lor.lhs.false65
  %69 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4456
  %irq71 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %69, i32 0, i32 2, !dbg !4457
  %70 = load %struct.urb*, %struct.urb** %irq71, align 8, !dbg !4457
  %71 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4458
  %72 = load i32, i32* %pipe, align 4, !dbg !4459
  %73 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4460
  %data = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %73, i32 0, i32 0, !dbg !4461
  %74 = load i8*, i8** %data, align 8, !dbg !4461
  %75 = load i32, i32* %maxp, align 4, !dbg !4462
  %76 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4463
  %77 = bitcast %struct.powermate_device* %76 to i8*, !dbg !4463
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4464
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %78, i32 0, i32 5, !dbg !4465
  %79 = load i8, i8* %bInterval, align 1, !dbg !4465
  %conv72 = zext i8 %79 to i32, !dbg !4464
  call void @usb_fill_int_urb(%struct.urb* %70, %struct.usb_device* %71, i32 %72, i8* %74, i32 %75, void (%struct.urb*)* @powermate_irq, i8* %77, i32 %conv72) #11, !dbg !4466
  %80 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4467
  %data_dma = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %80, i32 0, i32 1, !dbg !4468
  %81 = load i64, i64* %data_dma, align 8, !dbg !4468
  %82 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4469
  %irq73 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %82, i32 0, i32 2, !dbg !4470
  %83 = load %struct.urb*, %struct.urb** %irq73, align 8, !dbg !4470
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 15, !dbg !4471
  store i64 %81, i64* %transfer_dma, align 8, !dbg !4472
  %84 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4473
  %irq74 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %84, i32 0, i32 2, !dbg !4474
  %85 = load %struct.urb*, %struct.urb** %irq74, align 8, !dbg !4474
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 13, !dbg !4475
  %86 = load i32, i32* %transfer_flags, align 4, !dbg !4476
  %or75 = or i32 %86, 4, !dbg !4476
  store i32 %or75, i32* %transfer_flags, align 4, !dbg !4476
  %87 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4477
  %irq76 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %87, i32 0, i32 2, !dbg !4479
  %88 = load %struct.urb*, %struct.urb** %irq76, align 8, !dbg !4479
  %call77 = call i32 @usb_submit_urb(%struct.urb* %88, i32 3264) #11, !dbg !4480
  %tobool78 = icmp ne i32 %call77, 0, !dbg !4480
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !4481

if.then79:                                        ; preds = %if.end70
  store i32 -5, i32* %error, align 4, !dbg !4482
  br label %fail4, !dbg !4484

if.end80:                                         ; preds = %if.end70
  %89 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4485
  %input81 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %89, i32 0, i32 7, !dbg !4486
  %90 = load %struct.input_dev*, %struct.input_dev** %input81, align 8, !dbg !4486
  %call82 = call i32 @input_register_device(%struct.input_dev* %90) #11, !dbg !4487
  store i32 %call82, i32* %error, align 4, !dbg !4488
  %91 = load i32, i32* %error, align 4, !dbg !4489
  %tobool83 = icmp ne i32 %91, 0, !dbg !4489
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !4491

if.then84:                                        ; preds = %if.end80
  br label %fail5, !dbg !4492

if.end85:                                         ; preds = %if.end80
  %92 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4493
  %requires_update = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %92, i32 0, i32 14, !dbg !4494
  store i32 15, i32* %requires_update, align 4, !dbg !4495
  %93 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4496
  call void @powermate_pulse_led(%struct.powermate_device* %93, i32 128, i32 255, i32 0, i32 1, i32 0) #11, !dbg !4497
  %94 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4498
  %95 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4499
  %96 = bitcast %struct.powermate_device* %95 to i8*, !dbg !4499
  call void @usb_set_intfdata(%struct.usb_interface* %94, i8* %96) #11, !dbg !4500
  store i32 0, i32* %retval, align 4, !dbg !4501
  br label %return, !dbg !4501

fail5:                                            ; preds = %if.then84
  call void @llvm.dbg.label(metadata !4502), !dbg !4503
  %97 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4504
  %irq86 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %97, i32 0, i32 2, !dbg !4505
  %98 = load %struct.urb*, %struct.urb** %irq86, align 8, !dbg !4505
  call void @usb_kill_urb(%struct.urb* %98) #11, !dbg !4506
  br label %fail4, !dbg !4506

fail4:                                            ; preds = %fail5, %if.then79
  call void @llvm.dbg.label(metadata !4507), !dbg !4508
  %99 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4509
  %config87 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %99, i32 0, i32 3, !dbg !4510
  %100 = load %struct.urb*, %struct.urb** %config87, align 8, !dbg !4510
  call void @usb_free_urb(%struct.urb* %100) #11, !dbg !4511
  br label %fail3, !dbg !4511

fail3:                                            ; preds = %fail4, %if.then29
  call void @llvm.dbg.label(metadata !4512), !dbg !4513
  %101 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4514
  %irq88 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %101, i32 0, i32 2, !dbg !4515
  %102 = load %struct.urb*, %struct.urb** %irq88, align 8, !dbg !4515
  call void @usb_free_urb(%struct.urb* %102) #11, !dbg !4516
  br label %fail2, !dbg !4516

fail2:                                            ; preds = %fail3, %if.then24, %if.then19
  call void @llvm.dbg.label(metadata !4517), !dbg !4518
  %103 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4519
  %104 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4520
  call void @powermate_free_buffers(%struct.usb_device* %103, %struct.powermate_device* %104) #11, !dbg !4521
  br label %fail1, !dbg !4521

fail1:                                            ; preds = %fail2, %if.then15
  call void @llvm.dbg.label(metadata !4522), !dbg !4523
  %105 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4524
  call void @input_free_device(%struct.input_dev* %105) #11, !dbg !4525
  %106 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4526
  %107 = bitcast %struct.powermate_device* %106 to i8*, !dbg !4526
  call void @kfree(i8* %107) #11, !dbg !4527
  %108 = load i32, i32* %error, align 4, !dbg !4528
  store i32 %108, i32* %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

return:                                           ; preds = %fail1, %if.end85, %if.then5, %if.then
  %109 = load i32, i32* %retval, align 4, !dbg !4530
  ret i32 %109, !dbg !4530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @powermate_disconnect(%struct.usb_interface* %intf) #2 !dbg !4531 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %pm = alloca %struct.powermate_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm, metadata !4534, metadata !DIExpression()), !dbg !4535
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4536
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #11, !dbg !4537
  %1 = bitcast i8* %call to %struct.powermate_device*, !dbg !4537
  store %struct.powermate_device* %1, %struct.powermate_device** %pm, align 8, !dbg !4535
  %2 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4538
  call void @usb_set_intfdata(%struct.usb_interface* %2, i8* null) #11, !dbg !4539
  %3 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4540
  %tobool = icmp ne %struct.powermate_device* %3, null, !dbg !4540
  br i1 %tobool, label %if.then, label %if.end, !dbg !4542

if.then:                                          ; preds = %entry
  %4 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4543
  %requires_update = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %4, i32 0, i32 14, !dbg !4545
  store i32 0, i32* %requires_update, align 4, !dbg !4546
  %5 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4547
  %irq = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %5, i32 0, i32 2, !dbg !4548
  %6 = load %struct.urb*, %struct.urb** %irq, align 8, !dbg !4548
  call void @usb_kill_urb(%struct.urb* %6) #11, !dbg !4549
  %7 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4550
  %input = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %7, i32 0, i32 7, !dbg !4551
  %8 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4551
  call void @input_unregister_device(%struct.input_dev* %8) #11, !dbg !4552
  %9 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4553
  %irq1 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %9, i32 0, i32 2, !dbg !4554
  %10 = load %struct.urb*, %struct.urb** %irq1, align 8, !dbg !4554
  call void @usb_free_urb(%struct.urb* %10) #11, !dbg !4555
  %11 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4556
  %config = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %11, i32 0, i32 3, !dbg !4557
  %12 = load %struct.urb*, %struct.urb** %config, align 8, !dbg !4557
  call void @usb_free_urb(%struct.urb* %12) #11, !dbg !4558
  %13 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4559
  %call2 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13) #11, !dbg !4560
  %14 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4561
  call void @powermate_free_buffers(%struct.usb_device* %call2, %struct.powermate_device* %14) #11, !dbg !4562
  %15 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !4563
  %16 = bitcast %struct.powermate_device* %15 to i8*, !dbg !4563
  call void @kfree(i8* %16) #11, !dbg !4564
  br label %if.end, !dbg !4565

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4566
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
define internal i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4578 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4585
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #11, !dbg !4586
  %tobool = icmp ne i32 %call, 0, !dbg !4586
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4587

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4588
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #11, !dbg !4589
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4587
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4590
  %land.ext = zext i1 %2 to i32, !dbg !4587
  ret i32 %land.ext, !dbg !4591
}

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !4592 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !4597, metadata !DIExpression()), !dbg !4598
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4599
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !4600
  %1 = load i32, i32* %devnum, align 8, !dbg !4600
  %shl = shl i32 %1, 8, !dbg !4601
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !4602
  %shl1 = shl i32 %2, 15, !dbg !4603
  %or = or i32 %shl, %shl1, !dbg !4604
  ret i32 %or, !dbg !4605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4606 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4609, metadata !DIExpression()), !dbg !4613
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4619, metadata !DIExpression()), !dbg !4620
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4621, metadata !DIExpression()), !dbg !4622
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4623, metadata !DIExpression()), !dbg !4624
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4625, metadata !DIExpression()), !dbg !4629
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4631, metadata !DIExpression()), !dbg !4635
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4637, metadata !DIExpression()), !dbg !4641
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4646, metadata !DIExpression()), !dbg !4647
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4648, metadata !DIExpression()), !dbg !4649
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4650, metadata !DIExpression()), !dbg !4651
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4652, metadata !DIExpression()), !dbg !4653
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4654, metadata !DIExpression()), !dbg !4655
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4656, metadata !DIExpression()), !dbg !4657
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4658, metadata !DIExpression()), !dbg !4659
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4660, metadata !DIExpression()), !dbg !4661
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  %0 = load i64, i64* %size.addr, align 8, !dbg !4666
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4667
  %or = or i32 %1, 256, !dbg !4668
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4669
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4670
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4671

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4672
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4673
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4674

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4675
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4676
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4677
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4678
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4655
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4679
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4680
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4681
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4682
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4683
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4684
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !4685
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4685
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4685
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4685
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4685
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4686
  br label %kmalloc.exit, !dbg !4686

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4687
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4688
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4690

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4691
  br label %kmalloc_index.exit.i, !dbg !4691

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4694
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4695

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4696
  br label %kmalloc_index.exit.i, !dbg !4696

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4699
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4700

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4702
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4703

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4704
  br label %kmalloc_index.exit.i, !dbg !4704

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4705
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4707
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4708

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4709
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4710
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4711

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4715
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4716

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4720
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4721

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4725
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4726

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4730
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4731

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4735
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4736

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4740
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4741

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4745
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4746

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4750
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4751

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4755
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4756

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4760
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4761

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4765
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4766

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4770
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4771

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4775
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4776

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4780
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4781

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4785
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4786

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4790
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4791

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4795
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4796

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4800
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4801

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4805
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4806

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4810
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4811

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4815
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4816

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4820
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4821

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4825
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4826

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4830
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4831

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4833, !srcloc !4836
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4837, !srcloc !4840
  unreachable, !dbg !4841

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4842
  store i32 %45, i32* %index.i, align 4, !dbg !4843
  %46 = load i32, i32* %index.i, align 4, !dbg !4844
  %tobool.i = icmp ne i32 %46, 0, !dbg !4844
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4846

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4847
  br label %kmalloc.exit, !dbg !4847

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4848
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4849
  %and.i.i = and i32 %48, 17, !dbg !4849
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4849
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4849
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4849
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4849
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4851

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4852
  br label %kmalloc_type.exit.i, !dbg !4852

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4853
  %and2.i.i = and i32 %49, 1, !dbg !4854
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4853
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4853
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4853
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4855
  br label %kmalloc_type.exit.i, !dbg !4855

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4856
  %idxprom.i = zext i32 %51 to i64, !dbg !4857
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4857
  %52 = load i32, i32* %index.i, align 4, !dbg !4858
  %idxprom6.i = zext i32 %52 to i64, !dbg !4857
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4857
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4857
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4859
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4860
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4861
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4862
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !4863
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4863
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4863
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4863
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4863
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4624
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4864
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4865
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4866
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4867
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !4868
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4869
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4870
  store i8* %62, i8** %retval.i, align 8, !dbg !4871
  br label %kmalloc.exit, !dbg !4871

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4872
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4873
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !4874
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4874
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4874
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4874
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4874
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4875
  br label %kmalloc.exit, !dbg !4875

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4876
  ret i8* %65, !dbg !4877
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @powermate_alloc_buffers(%struct.usb_device* %udev, %struct.powermate_device* %pm) #2 !dbg !4878 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4609, metadata !DIExpression()), !dbg !4881
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4619, metadata !DIExpression()), !dbg !4884
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4621, metadata !DIExpression()), !dbg !4885
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4623, metadata !DIExpression()), !dbg !4886
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4625, metadata !DIExpression()), !dbg !4887
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4631, metadata !DIExpression()), !dbg !4889
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4637, metadata !DIExpression()), !dbg !4891
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4646, metadata !DIExpression()), !dbg !4894
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4648, metadata !DIExpression()), !dbg !4895
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4650, metadata !DIExpression()), !dbg !4896
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4652, metadata !DIExpression()), !dbg !4897
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4654, metadata !DIExpression()), !dbg !4898
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4656, metadata !DIExpression()), !dbg !4899
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4658, metadata !DIExpression()), !dbg !4900
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4660, metadata !DIExpression()), !dbg !4901
  %retval = alloca i32, align 4
  %udev.addr = alloca %struct.usb_device*, align 8
  %pm.addr = alloca %struct.powermate_device*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store %struct.powermate_device* %pm, %struct.powermate_device** %pm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4906
  %1 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !4907
  %data_dma = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %1, i32 0, i32 1, !dbg !4908
  %call = call i8* @usb_alloc_coherent(%struct.usb_device* %0, i64 6, i32 3264, i64* %data_dma) #11, !dbg !4909
  %2 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !4910
  %data = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %2, i32 0, i32 0, !dbg !4911
  store i8* %call, i8** %data, align 8, !dbg !4912
  %3 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !4913
  %data1 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %3, i32 0, i32 0, !dbg !4915
  %4 = load i8*, i8** %data1, align 8, !dbg !4915
  %tobool = icmp ne i8* %4, null, !dbg !4913
  br i1 %tobool, label %if.end, label %if.then, !dbg !4916

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4917
  br label %return, !dbg !4917

if.end:                                           ; preds = %entry
  store i64 8, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4918
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #10, !dbg !4919
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !4920

if.then.i:                                        ; preds = %if.end
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !4921
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !4922
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4923

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !4924
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !4925
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !4926
  %call.i.i = call i32 @get_order(i64 %10) #13, !dbg !4927
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4898
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !4928
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4929
  %13 = load i32, i32* %order.i.i, align 4, !dbg !4930
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4931
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4932
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4933
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #14, !dbg !4934
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4934
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4934
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4934
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4934
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4935
  br label %kmalloc.exit, !dbg !4935

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !4936
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4937
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !4937
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4938

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4939
  br label %kmalloc_index.exit.i, !dbg !4939

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4940
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !4941
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4942

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4943
  br label %kmalloc_index.exit.i, !dbg !4943

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4944
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !4945
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4946

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !4948
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4949

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4950
  br label %kmalloc_index.exit.i, !dbg !4950

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4951
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !4952
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4953

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4954
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !4955
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4956

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4957
  br label %kmalloc_index.exit.i, !dbg !4957

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4958
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !4959
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4960

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4961
  br label %kmalloc_index.exit.i, !dbg !4961

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4962
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !4963
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4964

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4965
  br label %kmalloc_index.exit.i, !dbg !4965

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4966
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !4967
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4968

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4969
  br label %kmalloc_index.exit.i, !dbg !4969

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4970
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !4971
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4972

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4973
  br label %kmalloc_index.exit.i, !dbg !4973

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !4975
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4976

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4977
  br label %kmalloc_index.exit.i, !dbg !4977

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4978
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !4979
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4980

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4981
  br label %kmalloc_index.exit.i, !dbg !4981

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !4983
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4984

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4985
  br label %kmalloc_index.exit.i, !dbg !4985

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4986
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !4987
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4988

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4989
  br label %kmalloc_index.exit.i, !dbg !4989

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4990
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !4991
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4992

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4993
  br label %kmalloc_index.exit.i, !dbg !4993

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4994
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !4995
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4996

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4997
  br label %kmalloc_index.exit.i, !dbg !4997

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4998
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !4999
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5000

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5001
  br label %kmalloc_index.exit.i, !dbg !5001

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5002
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !5003
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5004

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5005
  br label %kmalloc_index.exit.i, !dbg !5005

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5006
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !5007
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5008

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5009
  br label %kmalloc_index.exit.i, !dbg !5009

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5010
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !5011
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5012

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5013
  br label %kmalloc_index.exit.i, !dbg !5013

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5014
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !5015
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5016

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5017
  br label %kmalloc_index.exit.i, !dbg !5017

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5018
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !5019
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5020

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5021
  br label %kmalloc_index.exit.i, !dbg !5021

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5022
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !5023
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5024

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5025
  br label %kmalloc_index.exit.i, !dbg !5025

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5026
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !5027
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5028

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5029
  br label %kmalloc_index.exit.i, !dbg !5029

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5030
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !5031
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5032

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !5035
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5036

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5037
  br label %kmalloc_index.exit.i, !dbg !5037

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5038
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !5039
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5040

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !5043
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5044

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5045
  br label %kmalloc_index.exit.i, !dbg !5045

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5046
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !5047
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5048

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5049
  br label %kmalloc_index.exit.i, !dbg !5049

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5050
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !5051
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5052

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5053
  br label %kmalloc_index.exit.i, !dbg !5053

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5054, !srcloc !4836
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !5055, !srcloc !4840
  unreachable, !dbg !5056

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !5057
  store i32 %48, i32* %index.i, align 4, !dbg !5058
  %49 = load i32, i32* %index.i, align 4, !dbg !5059
  %tobool.i = icmp ne i32 %49, 0, !dbg !5059
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5060

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5061
  br label %kmalloc.exit, !dbg !5061

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !5062
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5063
  %and.i.i = and i32 %51, 17, !dbg !5063
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5063
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5063
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5063
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5063
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5064

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5065
  br label %kmalloc_type.exit.i, !dbg !5065

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5066
  %and2.i.i = and i32 %52, 1, !dbg !5067
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5066
  %53 = zext i1 %tobool3.i.i to i64, !dbg !5066
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5066
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5068
  br label %kmalloc_type.exit.i, !dbg !5068

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !5069
  %idxprom.i = zext i32 %54 to i64, !dbg !5070
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5070
  %55 = load i32, i32* %index.i, align 4, !dbg !5071
  %idxprom6.i = zext i32 %55 to i64, !dbg !5070
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5070
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5070
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !5072
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !5073
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5074
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5075
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #14, !dbg !5076
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5076
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5076
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5076
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5076
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4886
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5077
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5078
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5079
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5080
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #14, !dbg !5081
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5082
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !5083
  store i8* %65, i8** %retval.i, align 8, !dbg !5084
  br label %kmalloc.exit, !dbg !5084

if.end9.i:                                        ; preds = %if.end
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !5085
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !5086
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #14, !dbg !5087
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5087
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5087
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5087
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5087
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5088
  br label %kmalloc.exit, !dbg !5088

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !5089
  %69 = bitcast i8* %68 to %struct.usb_ctrlrequest*, !dbg !5090
  %70 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5091
  %configcr = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %70, i32 0, i32 4, !dbg !5092
  store %struct.usb_ctrlrequest* %69, %struct.usb_ctrlrequest** %configcr, align 8, !dbg !5093
  %71 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5094
  %configcr3 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %71, i32 0, i32 4, !dbg !5096
  %72 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr3, align 8, !dbg !5096
  %tobool4 = icmp ne %struct.usb_ctrlrequest* %72, null, !dbg !5094
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5097

if.then5:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !5098
  br label %return, !dbg !5098

if.end6:                                          ; preds = %kmalloc.exit
  store i32 0, i32* %retval, align 4, !dbg !5099
  br label %return, !dbg !5099

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %73 = load i32, i32* %retval, align 4, !dbg !5100
  ret i32 %73, !dbg !5100
}

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5101 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5110, metadata !DIExpression()), !dbg !5111
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5112
  %1 = load i64, i64* %size.addr, align 8, !dbg !5113
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5114
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5115
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5115
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5116
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5116
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5117
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5118
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5117
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %4, i8* %arraydecay) #11, !dbg !5119
  store i32 %call, i32* %actual, align 4, !dbg !5120
  %6 = load i32, i32* %actual, align 4, !dbg !5121
  %7 = load i64, i64* %size.addr, align 8, !dbg !5122
  %conv = trunc i64 %7 to i32, !dbg !5123
  %cmp = icmp sge i32 %6, %conv, !dbg !5124
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5125

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5125

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5126
  br label %cond.end, !dbg !5125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5125
  ret i32 %cond, !dbg !5127
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5128 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5139
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5140
  store i16 3, i16* %bustype, align 2, !dbg !5141
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5142
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5142
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5142
  %2 = load i16, i16* %idVendor, align 8, !dbg !5142
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5143
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5144
  store i16 %2, i16* %vendor, align 2, !dbg !5145
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5146
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5146
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5146
  %5 = load i16, i16* %idProduct, align 2, !dbg !5146
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5147
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5148
  store i16 %5, i16* %product, align 2, !dbg !5149
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5150
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5150
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5150
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5150
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5151
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5152
  store i16 %8, i16* %version, align 2, !dbg !5153
  ret void, !dbg !5154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #2 !dbg !5155 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5162
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5163
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5164
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #11, !dbg !5165
  ret void, !dbg !5166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @powermate_input_event(%struct.input_dev* %dev, i32 %type, i32 %code, i32 %_value) #2 !dbg !5167 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %_value.addr = alloca i32, align 4
  %command = alloca i32, align 4
  %pm = alloca %struct.powermate_device*, align 8
  %static_brightness = alloca i32, align 4
  %pulse_speed = alloca i32, align 4
  %pulse_table = alloca i32, align 4
  %pulse_asleep = alloca i32, align 4
  %pulse_awake = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  store i32 %_value, i32* %_value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_value.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.declare(metadata i32* %command, metadata !5176, metadata !DIExpression()), !dbg !5177
  %0 = load i32, i32* %_value.addr, align 4, !dbg !5178
  store i32 %0, i32* %command, align 4, !dbg !5177
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm, metadata !5179, metadata !DIExpression()), !dbg !5180
  %1 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5181
  %call = call i8* @input_get_drvdata(%struct.input_dev* %1) #11, !dbg !5182
  %2 = bitcast i8* %call to %struct.powermate_device*, !dbg !5182
  store %struct.powermate_device* %2, %struct.powermate_device** %pm, align 8, !dbg !5180
  %3 = load i32, i32* %type.addr, align 4, !dbg !5183
  %cmp = icmp eq i32 %3, 4, !dbg !5185
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5186

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %code.addr, align 4, !dbg !5187
  %cmp1 = icmp eq i32 %4, 1, !dbg !5188
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5189

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %static_brightness, metadata !5190, metadata !DIExpression()), !dbg !5192
  %5 = load i32, i32* %command, align 4, !dbg !5193
  %and = and i32 %5, 255, !dbg !5194
  store i32 %and, i32* %static_brightness, align 4, !dbg !5192
  call void @llvm.dbg.declare(metadata i32* %pulse_speed, metadata !5195, metadata !DIExpression()), !dbg !5196
  %6 = load i32, i32* %command, align 4, !dbg !5197
  %shr = lshr i32 %6, 8, !dbg !5198
  %and2 = and i32 %shr, 511, !dbg !5199
  store i32 %and2, i32* %pulse_speed, align 4, !dbg !5196
  call void @llvm.dbg.declare(metadata i32* %pulse_table, metadata !5200, metadata !DIExpression()), !dbg !5201
  %7 = load i32, i32* %command, align 4, !dbg !5202
  %shr3 = lshr i32 %7, 17, !dbg !5203
  %and4 = and i32 %shr3, 3, !dbg !5204
  store i32 %and4, i32* %pulse_table, align 4, !dbg !5201
  call void @llvm.dbg.declare(metadata i32* %pulse_asleep, metadata !5205, metadata !DIExpression()), !dbg !5206
  %8 = load i32, i32* %command, align 4, !dbg !5207
  %shr5 = lshr i32 %8, 19, !dbg !5208
  %and6 = and i32 %shr5, 1, !dbg !5209
  store i32 %and6, i32* %pulse_asleep, align 4, !dbg !5206
  call void @llvm.dbg.declare(metadata i32* %pulse_awake, metadata !5210, metadata !DIExpression()), !dbg !5211
  %9 = load i32, i32* %command, align 4, !dbg !5212
  %shr7 = lshr i32 %9, 20, !dbg !5213
  %and8 = and i32 %shr7, 1, !dbg !5214
  store i32 %and8, i32* %pulse_awake, align 4, !dbg !5211
  %10 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !5215
  %11 = load i32, i32* %static_brightness, align 4, !dbg !5216
  %12 = load i32, i32* %pulse_speed, align 4, !dbg !5217
  %13 = load i32, i32* %pulse_table, align 4, !dbg !5218
  %14 = load i32, i32* %pulse_asleep, align 4, !dbg !5219
  %15 = load i32, i32* %pulse_awake, align 4, !dbg !5220
  call void @powermate_pulse_led(%struct.powermate_device* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15) #11, !dbg !5221
  br label %if.end, !dbg !5222

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0, !dbg !5223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @usb_maxpacket(%struct.usb_device* %udev, i32 %pipe, i32 %is_out) #2 !dbg !5224 {
entry:
  %retval = alloca i16, align 2
  %udev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %is_out.addr = alloca i32, align 4
  %ep = alloca %struct.usb_host_endpoint*, align 8
  %epnum = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on23 = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  store i32 %is_out, i32* %is_out.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_out.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata %struct.usb_host_endpoint** %ep, metadata !5233, metadata !DIExpression()), !dbg !5234
  call void @llvm.dbg.declare(metadata i32* %epnum, metadata !5235, metadata !DIExpression()), !dbg !5236
  %0 = load i32, i32* %pipe.addr, align 4, !dbg !5237
  %shr = ashr i32 %0, 15, !dbg !5237
  %and = and i32 %shr, 15, !dbg !5237
  store i32 %and, i32* %epnum, align 4, !dbg !5236
  %1 = load i32, i32* %is_out.addr, align 4, !dbg !5238
  %tobool = icmp ne i32 %1, 0, !dbg !5238
  br i1 %tobool, label %if.then, label %if.else, !dbg !5240

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5241, metadata !DIExpression()), !dbg !5244
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5244
  %and1 = and i32 %2, 128, !dbg !5244
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5244
  %lnot = xor i1 %tobool2, true, !dbg !5244
  %lnot3 = xor i1 %lnot, true, !dbg !5244
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5244
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5244
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5245
  %tobool4 = icmp ne i32 %3, 0, !dbg !5245
  %lnot5 = xor i1 %tobool4, true, !dbg !5245
  %lnot7 = xor i1 %lnot5, true, !dbg !5245
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5245
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5245
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5245
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !5244

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !5245

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !5247

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !5249

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !5247

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 1986, i32 2305, i64 12) #10, !dbg !5251, !srcloc !5253
  br label %do.end13, !dbg !5251

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #10, !dbg !5254, !srcloc !5256
  br label %do.body14, !dbg !5247

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5257

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !5247

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !5247

if.end:                                           ; preds = %do.end16, %if.then
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5244
  %tobool17 = icmp ne i32 %4, 0, !dbg !5244
  %lnot18 = xor i1 %tobool17, true, !dbg !5244
  %lnot20 = xor i1 %lnot18, true, !dbg !5244
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5244
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5244
  store i64 %conv22, i64* %tmp, align 8, !dbg !5245
  %5 = load i64, i64* %tmp, align 8, !dbg !5244
  %6 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5259
  %ep_out = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 21, !dbg !5260
  %7 = load i32, i32* %epnum, align 4, !dbg !5261
  %idxprom = zext i32 %7 to i64, !dbg !5259
  %arrayidx = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_out, i64 0, i64 %idxprom, !dbg !5259
  %8 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx, align 8, !dbg !5259
  store %struct.usb_host_endpoint* %8, %struct.usb_host_endpoint** %ep, align 8, !dbg !5262
  br label %if.end58, !dbg !5263

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on23, metadata !5264, metadata !DIExpression()), !dbg !5267
  %9 = load i32, i32* %pipe.addr, align 4, !dbg !5267
  %and24 = and i32 %9, 128, !dbg !5267
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5267
  %lnot26 = xor i1 %tobool25, true, !dbg !5267
  %lnot28 = xor i1 %lnot26, true, !dbg !5267
  %lnot30 = xor i1 %lnot28, true, !dbg !5267
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5267
  store i32 %lnot.ext31, i32* %__ret_warn_on23, align 4, !dbg !5267
  %10 = load i32, i32* %__ret_warn_on23, align 4, !dbg !5268
  %tobool32 = icmp ne i32 %10, 0, !dbg !5268
  %lnot33 = xor i1 %tobool32, true, !dbg !5268
  %lnot35 = xor i1 %lnot33, true, !dbg !5268
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !5268
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !5268
  %tobool38 = icmp ne i64 %conv37, 0, !dbg !5268
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !5267

if.then39:                                        ; preds = %if.else
  br label %do.body40, !dbg !5268

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !5270

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !5272

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !5270

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 1989, i32 2305, i64 12) #10, !dbg !5274, !srcloc !5276
  br label %do.end44, !dbg !5274

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #10, !dbg !5277, !srcloc !5279
  br label %do.body45, !dbg !5270

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5280

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !5270

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !5270

if.end48:                                         ; preds = %do.end47, %if.else
  %11 = load i32, i32* %__ret_warn_on23, align 4, !dbg !5267
  %tobool50 = icmp ne i32 %11, 0, !dbg !5267
  %lnot51 = xor i1 %tobool50, true, !dbg !5267
  %lnot53 = xor i1 %lnot51, true, !dbg !5267
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5267
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !5267
  store i64 %conv55, i64* %tmp49, align 8, !dbg !5268
  %12 = load i64, i64* %tmp49, align 8, !dbg !5267
  %13 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5282
  %ep_in = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 20, !dbg !5283
  %14 = load i32, i32* %epnum, align 4, !dbg !5284
  %idxprom56 = zext i32 %14 to i64, !dbg !5282
  %arrayidx57 = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_in, i64 0, i64 %idxprom56, !dbg !5282
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx57, align 8, !dbg !5282
  store %struct.usb_host_endpoint* %15, %struct.usb_host_endpoint** %ep, align 8, !dbg !5285
  br label %if.end58

if.end58:                                         ; preds = %if.end48, %if.end
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !5286
  %tobool59 = icmp ne %struct.usb_host_endpoint* %16, null, !dbg !5286
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !5288

if.then60:                                        ; preds = %if.end58
  store i16 0, i16* %retval, align 2, !dbg !5289
  br label %return, !dbg !5289

if.end61:                                         ; preds = %if.end58
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !5290
  %desc = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 0, !dbg !5291
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %desc) #11, !dbg !5292
  %conv62 = trunc i32 %call to i16, !dbg !5292
  store i16 %conv62, i16* %retval, align 2, !dbg !5293
  br label %return, !dbg !5293

return:                                           ; preds = %if.end61, %if.then60
  %18 = load i16, i16* %retval, align 2, !dbg !5294
  ret i16 %18, !dbg !5294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5295 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5300, metadata !DIExpression()), !dbg !5301
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5314
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5315
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5316
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5317
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5318
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5319
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5320
  store i32 %2, i32* %pipe2, align 8, !dbg !5321
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5322
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5323
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5324
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5325
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5326
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5327
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5328
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5329
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5330
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5331
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5332
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5333
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5334
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5335
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5336
  store i8* %10, i8** %context4, align 8, !dbg !5337
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5338
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5340
  %13 = load i32, i32* %speed, align 4, !dbg !5340
  %cmp = icmp eq i32 %13, 3, !dbg !5341
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5342

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5343
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5344
  %15 = load i32, i32* %speed5, align 4, !dbg !5344
  %cmp6 = icmp uge i32 %15, 5, !dbg !5345
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5346

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5347, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5351, metadata !DIExpression()), !dbg !5353
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5353
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5353
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5354, metadata !DIExpression()), !dbg !5353
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5353
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5353
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5353
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5353
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5353

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5353
  br label %cond.end, !dbg !5353

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5353
  br label %cond.end, !dbg !5353

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5353
  store i32 %cond, i32* %tmp, align 4, !dbg !5353
  %21 = load i32, i32* %tmp, align 4, !dbg !5353
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5350
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5355, metadata !DIExpression()), !dbg !5350
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5350
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5350
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5350
  %cmp9 = icmp slt i32 %22, %23, !dbg !5350
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5350

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5350
  br label %cond.end12, !dbg !5350

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5350
  br label %cond.end12, !dbg !5350

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5350
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5350
  %26 = load i32, i32* %tmp8, align 4, !dbg !5350
  store i32 %26, i32* %interval.addr, align 4, !dbg !5356
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5357
  %sub = sub i32 %27, 1, !dbg !5358
  %shl = shl i32 1, %sub, !dbg !5359
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5360
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5361
  store i32 %shl, i32* %interval14, align 8, !dbg !5362
  br label %if.end, !dbg !5363

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5364
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5366
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5367
  store i32 %29, i32* %interval15, align 8, !dbg !5368
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5369
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5370
  store i32 -1, i32* %start_frame, align 8, !dbg !5371
  ret void, !dbg !5372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @powermate_irq(%struct.urb* %urb) #2 !dbg !5373 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %pm = alloca %struct.powermate_device*, align 8
  %dev = alloca %struct.device*, align 8
  %retval = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5378
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5379
  %1 = load i8*, i8** %context, align 8, !dbg !5379
  %2 = bitcast i8* %1 to %struct.powermate_device*, !dbg !5378
  store %struct.powermate_device* %2, %struct.powermate_device** %pm, align 8, !dbg !5377
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5380, metadata !DIExpression()), !dbg !5381
  %3 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !5382
  %intf = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %3, i32 0, i32 6, !dbg !5383
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5383
  %dev1 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 7, !dbg !5384
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5381
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !5385, metadata !DIExpression()), !dbg !5386
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5387
  %status = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !5388
  %6 = load i32, i32* %status, align 8, !dbg !5388
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb2
    i32 -2, label %sw.bb2
    i32 -108, label %sw.bb2
  ], !dbg !5389

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5390

sw.bb2:                                           ; preds = %entry, %entry, %entry
  br label %if.end, !dbg !5392

sw.default:                                       ; preds = %entry
  br label %exit, !dbg !5393

sw.epilog:                                        ; preds = %sw.bb
  %7 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !5394
  %input = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %7, i32 0, i32 7, !dbg !5395
  %8 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5395
  %9 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !5396
  %data = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %9, i32 0, i32 0, !dbg !5397
  %10 = load i8*, i8** %data, align 8, !dbg !5397
  %arrayidx = getelementptr i8, i8* %10, i64 0, !dbg !5396
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5396
  %conv = sext i8 %11 to i32, !dbg !5396
  %and = and i32 %conv, 1, !dbg !5398
  call void @input_report_key(%struct.input_dev* %8, i32 256, i32 %and) #11, !dbg !5399
  %12 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !5400
  %input3 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %12, i32 0, i32 7, !dbg !5401
  %13 = load %struct.input_dev*, %struct.input_dev** %input3, align 8, !dbg !5401
  %14 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !5402
  %data4 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %14, i32 0, i32 0, !dbg !5403
  %15 = load i8*, i8** %data4, align 8, !dbg !5403
  %arrayidx5 = getelementptr i8, i8* %15, i64 1, !dbg !5402
  %16 = load i8, i8* %arrayidx5, align 1, !dbg !5402
  %conv6 = sext i8 %16 to i32, !dbg !5402
  call void @input_report_rel(%struct.input_dev* %13, i32 7, i32 %conv6) #11, !dbg !5404
  %17 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !5405
  %input7 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %17, i32 0, i32 7, !dbg !5406
  %18 = load %struct.input_dev*, %struct.input_dev** %input7, align 8, !dbg !5406
  call void @input_sync(%struct.input_dev* %18) #11, !dbg !5407
  br label %exit, !dbg !5407

exit:                                             ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !5408), !dbg !5409
  %19 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5410
  %call = call i32 @usb_submit_urb(%struct.urb* %19, i32 2592) #11, !dbg !5411
  store i32 %call, i32* %retval, align 4, !dbg !5412
  %20 = load i32, i32* %retval, align 4, !dbg !5413
  %tobool = icmp ne i32 %20, 0, !dbg !5413
  br i1 %tobool, label %if.then, label %if.end, !dbg !5415

if.then:                                          ; preds = %exit
  %21 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5416
  %22 = load i32, i32* %retval, align 4, !dbg !5416
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.powermate_irq, i64 0, i64 0), i32 %22) #12, !dbg !5416
  br label %if.end, !dbg !5416

if.end:                                           ; preds = %sw.bb2, %if.then, %exit
  ret void, !dbg !5417
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @powermate_pulse_led(%struct.powermate_device* %pm, i32 %static_brightness, i32 %pulse_speed, i32 %pulse_table, i32 %pulse_asleep, i32 %pulse_awake) #2 !dbg !5418 {
entry:
  %lock.addr.i70 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i70, metadata !5421, metadata !DIExpression()), !dbg !5425
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5427, metadata !DIExpression()), !dbg !5428
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3914, metadata !DIExpression()), !dbg !5429
  %pm.addr = alloca %struct.powermate_device*, align 8
  %static_brightness.addr = alloca i32, align 4
  %pulse_speed.addr = alloca i32, align 4
  %pulse_table.addr = alloca i32, align 4
  %pulse_asleep.addr = alloca i32, align 4
  %pulse_awake.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy21 = alloca i64, align 8
  %__dummy222 = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  store %struct.powermate_device* %pm, %struct.powermate_device** %pm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  store i32 %static_brightness, i32* %static_brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %static_brightness.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  store i32 %pulse_speed, i32* %pulse_speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pulse_speed.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i32 %pulse_table, i32* %pulse_table.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pulse_table.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  store i32 %pulse_asleep, i32* %pulse_asleep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pulse_asleep.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  store i32 %pulse_awake, i32* %pulse_awake.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pulse_awake.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5448, metadata !DIExpression()), !dbg !5449
  %0 = load i32, i32* %pulse_speed.addr, align 4, !dbg !5450
  %cmp = icmp slt i32 %0, 0, !dbg !5452
  br i1 %cmp, label %if.then, label %if.end, !dbg !5453

if.then:                                          ; preds = %entry
  store i32 0, i32* %pulse_speed.addr, align 4, !dbg !5454
  br label %if.end, !dbg !5455

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %pulse_table.addr, align 4, !dbg !5456
  %cmp1 = icmp slt i32 %1, 0, !dbg !5458
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5459

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %pulse_table.addr, align 4, !dbg !5460
  br label %if.end3, !dbg !5461

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, i32* %pulse_speed.addr, align 4, !dbg !5462
  %cmp4 = icmp sgt i32 %2, 510, !dbg !5464
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5465

if.then5:                                         ; preds = %if.end3
  store i32 510, i32* %pulse_speed.addr, align 4, !dbg !5466
  br label %if.end6, !dbg !5467

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load i32, i32* %pulse_table.addr, align 4, !dbg !5468
  %cmp7 = icmp sgt i32 %3, 2, !dbg !5470
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5471

if.then8:                                         ; preds = %if.end6
  store i32 2, i32* %pulse_table.addr, align 4, !dbg !5472
  br label %if.end9, !dbg !5473

if.end9:                                          ; preds = %if.then8, %if.end6
  %4 = load i32, i32* %pulse_asleep.addr, align 4, !dbg !5474
  %tobool = icmp ne i32 %4, 0, !dbg !5475
  %lnot = xor i1 %tobool, true, !dbg !5475
  %lnot10 = xor i1 %lnot, true, !dbg !5476
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !5476
  store i32 %lnot.ext, i32* %pulse_asleep.addr, align 4, !dbg !5477
  %5 = load i32, i32* %pulse_awake.addr, align 4, !dbg !5478
  %tobool11 = icmp ne i32 %5, 0, !dbg !5479
  %lnot12 = xor i1 %tobool11, true, !dbg !5479
  %lnot14 = xor i1 %lnot12, true, !dbg !5480
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !5480
  store i32 %lnot.ext15, i32* %pulse_awake.addr, align 4, !dbg !5481
  br label %do.body, !dbg !5482

do.body:                                          ; preds = %if.end9
  br label %do.body16, !dbg !5483

do.body16:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5484, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5487, metadata !DIExpression()), !dbg !5486
  %cmp17 = icmp eq i64* %__dummy, %__dummy2, !dbg !5486
  %conv = zext i1 %cmp17 to i32, !dbg !5486
  store i32 1, i32* %tmp, align 4, !dbg !5486
  %6 = load i32, i32* %tmp, align 4, !dbg !5486
  br label %do.body18, !dbg !5488

do.body18:                                        ; preds = %do.body16
  br label %do.body19, !dbg !5489

do.body19:                                        ; preds = %do.body18
  br label %do.body20, !dbg !5490

do.body20:                                        ; preds = %do.body19
  call void @llvm.dbg.declare(metadata i64* %__dummy21, metadata !5492, metadata !DIExpression()), !dbg !5495
  call void @llvm.dbg.declare(metadata i64* %__dummy222, metadata !5496, metadata !DIExpression()), !dbg !5495
  %cmp23 = icmp eq i64* %__dummy21, %__dummy222, !dbg !5495
  %conv24 = zext i1 %cmp23 to i32, !dbg !5495
  store i32 1, i32* %tmp25, align 4, !dbg !5495
  %7 = load i32, i32* %tmp25, align 4, !dbg !5495
  %call = call i64 @arch_local_irq_save() #11, !dbg !5497
  store i64 %call, i64* %flags, align 8, !dbg !5497
  br label %do.end, !dbg !5497

do.end:                                           ; preds = %do.body20
  br label %do.end26, !dbg !5490

do.end26:                                         ; preds = %do.end
  br label %do.body27, !dbg !5489

do.body27:                                        ; preds = %do.end26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5498, !srcloc !5499
  br label %do.body28, !dbg !5498

do.body28:                                        ; preds = %do.body27
  %8 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5500
  %lock = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %8, i32 0, i32 8, !dbg !5500
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5501
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5502
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !5502
  br label %do.end30, !dbg !5500

do.end30:                                         ; preds = %do.body28
  br label %do.end31, !dbg !5498

do.end31:                                         ; preds = %do.end30
  br label %do.end32, !dbg !5489

do.end32:                                         ; preds = %do.end31
  br label %do.end33, !dbg !5488

do.end33:                                         ; preds = %do.end32
  br label %do.end34, !dbg !5483

do.end34:                                         ; preds = %do.end33
  %11 = load i32, i32* %static_brightness.addr, align 4, !dbg !5503
  %12 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5505
  %static_brightness35 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %12, i32 0, i32 9, !dbg !5506
  %13 = load i32, i32* %static_brightness35, align 8, !dbg !5506
  %cmp36 = icmp ne i32 %11, %13, !dbg !5507
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !5508

if.then38:                                        ; preds = %do.end34
  %14 = load i32, i32* %static_brightness.addr, align 4, !dbg !5509
  %15 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5511
  %static_brightness39 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %15, i32 0, i32 9, !dbg !5512
  store i32 %14, i32* %static_brightness39, align 8, !dbg !5513
  %16 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5514
  %requires_update = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %16, i32 0, i32 14, !dbg !5515
  %17 = load i32, i32* %requires_update, align 4, !dbg !5516
  %or = or i32 %17, 1, !dbg !5516
  store i32 %or, i32* %requires_update, align 4, !dbg !5516
  br label %if.end40, !dbg !5517

if.end40:                                         ; preds = %if.then38, %do.end34
  %18 = load i32, i32* %pulse_asleep.addr, align 4, !dbg !5518
  %19 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5520
  %pulse_asleep41 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %19, i32 0, i32 12, !dbg !5521
  %20 = load i32, i32* %pulse_asleep41, align 4, !dbg !5521
  %cmp42 = icmp ne i32 %18, %20, !dbg !5522
  br i1 %cmp42, label %if.then44, label %if.end48, !dbg !5523

if.then44:                                        ; preds = %if.end40
  %21 = load i32, i32* %pulse_asleep.addr, align 4, !dbg !5524
  %22 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5526
  %pulse_asleep45 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %22, i32 0, i32 12, !dbg !5527
  store i32 %21, i32* %pulse_asleep45, align 4, !dbg !5528
  %23 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5529
  %requires_update46 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %23, i32 0, i32 14, !dbg !5530
  %24 = load i32, i32* %requires_update46, align 4, !dbg !5531
  %or47 = or i32 %24, 3, !dbg !5531
  store i32 %or47, i32* %requires_update46, align 4, !dbg !5531
  br label %if.end48, !dbg !5532

if.end48:                                         ; preds = %if.then44, %if.end40
  %25 = load i32, i32* %pulse_awake.addr, align 4, !dbg !5533
  %26 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5535
  %pulse_awake49 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %26, i32 0, i32 13, !dbg !5536
  %27 = load i32, i32* %pulse_awake49, align 8, !dbg !5536
  %cmp50 = icmp ne i32 %25, %27, !dbg !5537
  br i1 %cmp50, label %if.then52, label %if.end56, !dbg !5538

if.then52:                                        ; preds = %if.end48
  %28 = load i32, i32* %pulse_awake.addr, align 4, !dbg !5539
  %29 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5541
  %pulse_awake53 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %29, i32 0, i32 13, !dbg !5542
  store i32 %28, i32* %pulse_awake53, align 8, !dbg !5543
  %30 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5544
  %requires_update54 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %30, i32 0, i32 14, !dbg !5545
  %31 = load i32, i32* %requires_update54, align 4, !dbg !5546
  %or55 = or i32 %31, 5, !dbg !5546
  store i32 %or55, i32* %requires_update54, align 4, !dbg !5546
  br label %if.end56, !dbg !5547

if.end56:                                         ; preds = %if.then52, %if.end48
  %32 = load i32, i32* %pulse_speed.addr, align 4, !dbg !5548
  %33 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5550
  %pulse_speed57 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %33, i32 0, i32 10, !dbg !5551
  %34 = load i32, i32* %pulse_speed57, align 4, !dbg !5551
  %cmp58 = icmp ne i32 %32, %34, !dbg !5552
  br i1 %cmp58, label %if.then63, label %lor.lhs.false, !dbg !5553

lor.lhs.false:                                    ; preds = %if.end56
  %35 = load i32, i32* %pulse_table.addr, align 4, !dbg !5554
  %36 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5555
  %pulse_table60 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %36, i32 0, i32 11, !dbg !5556
  %37 = load i32, i32* %pulse_table60, align 8, !dbg !5556
  %cmp61 = icmp ne i32 %35, %37, !dbg !5557
  br i1 %cmp61, label %if.then63, label %if.end68, !dbg !5558

if.then63:                                        ; preds = %lor.lhs.false, %if.end56
  %38 = load i32, i32* %pulse_speed.addr, align 4, !dbg !5559
  %39 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5561
  %pulse_speed64 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %39, i32 0, i32 10, !dbg !5562
  store i32 %38, i32* %pulse_speed64, align 4, !dbg !5563
  %40 = load i32, i32* %pulse_table.addr, align 4, !dbg !5564
  %41 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5565
  %pulse_table65 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %41, i32 0, i32 11, !dbg !5566
  store i32 %40, i32* %pulse_table65, align 8, !dbg !5567
  %42 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5568
  %requires_update66 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %42, i32 0, i32 14, !dbg !5569
  %43 = load i32, i32* %requires_update66, align 4, !dbg !5570
  %or67 = or i32 %43, 8, !dbg !5570
  store i32 %or67, i32* %requires_update66, align 4, !dbg !5570
  br label %if.end68, !dbg !5571

if.end68:                                         ; preds = %if.then63, %lor.lhs.false
  %44 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5572
  call void @powermate_sync_state(%struct.powermate_device* %44) #11, !dbg !5573
  %45 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5574
  %lock69 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %45, i32 0, i32 8, !dbg !5575
  %46 = load i64, i64* %flags, align 8, !dbg !5576
  store %struct.spinlock* %lock69, %struct.spinlock** %lock.addr.i70, align 8
  store i64 %46, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !202, metadata !5577, metadata !DIExpression()) #10, !dbg !5580
  call void @llvm.dbg.declare(metadata !202, metadata !5581, metadata !DIExpression()) #10, !dbg !5580
  store i32 1, i32* %tmp.i, align 4, !dbg !5580
  %47 = load i32, i32* %tmp.i, align 4, !dbg !5580
  call void @llvm.dbg.declare(metadata !202, metadata !5582, metadata !DIExpression()) #10, !dbg !5587
  call void @llvm.dbg.declare(metadata !202, metadata !5588, metadata !DIExpression()) #10, !dbg !5587
  store i32 1, i32* %tmp8.i, align 4, !dbg !5587
  %48 = load i32, i32* %tmp8.i, align 4, !dbg !5587
  %49 = load i64, i64* %flags.addr.i, align 8, !dbg !5589
  call void @arch_local_irq_restore(i64 %49) #14, !dbg !5589
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5590, !srcloc !5592
  %50 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i70, align 8, !dbg !5593
  %51 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %50, i32 0, i32 0, !dbg !5593
  %rlock.i71 = bitcast %union.anon.3* %51 to %struct.raw_spinlock*, !dbg !5593
  ret void, !dbg !5595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5596 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5603
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5604
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5605
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #11, !dbg !5606
  ret void, !dbg !5607
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @powermate_free_buffers(%struct.usb_device* %udev, %struct.powermate_device* %pm) #2 !dbg !5608 {
entry:
  %udev.addr = alloca %struct.usb_device*, align 8
  %pm.addr = alloca %struct.powermate_device*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  store %struct.powermate_device* %pm, %struct.powermate_device** %pm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm.addr, metadata !5613, metadata !DIExpression()), !dbg !5614
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5615
  %1 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5616
  %data = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %1, i32 0, i32 0, !dbg !5617
  %2 = load i8*, i8** %data, align 8, !dbg !5617
  %3 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5618
  %data_dma = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %3, i32 0, i32 1, !dbg !5619
  %4 = load i64, i64* %data_dma, align 8, !dbg !5619
  call void @usb_free_coherent(%struct.usb_device* %0, i64 6, i8* %2, i64 %4) #11, !dbg !5620
  %5 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5621
  %configcr = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %5, i32 0, i32 4, !dbg !5622
  %6 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr, align 8, !dbg !5622
  %7 = bitcast %struct.usb_ctrlrequest* %6 to i8*, !dbg !5621
  call void @kfree(i8* %7) #11, !dbg !5623
  ret void, !dbg !5624
}

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5625 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5628
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5629
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5629
  %conv = zext i8 %1 to i32, !dbg !5628
  %and = and i32 %conv, 3, !dbg !5630
  %cmp = icmp eq i32 %and, 3, !dbg !5631
  %conv1 = zext i1 %cmp to i32, !dbg !5631
  ret i32 %conv1, !dbg !5632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5633 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5636
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5637
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5637
  %conv = zext i8 %1 to i32, !dbg !5636
  %and = and i32 %conv, 128, !dbg !5638
  %cmp = icmp eq i32 %and, 128, !dbg !5639
  %conv1 = zext i1 %cmp to i32, !dbg !5639
  ret i32 %conv1, !dbg !5640
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5641 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5645, metadata !DIExpression()), !dbg !5650
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5652, metadata !DIExpression()), !dbg !5653
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  %0 = load i64, i64* %size.addr, align 8, !dbg !5656
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5658
  br i1 %1, label %if.then, label %if.end447, !dbg !5659

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5660
  %tobool = icmp ne i64 %2, 0, !dbg !5660
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5663

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5664
  br label %return, !dbg !5664

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5665
  %cmp = icmp ult i64 %3, 4096, !dbg !5667
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5668

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5669
  br label %return, !dbg !5669

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub = sub i64 %4, 1, !dbg !5670
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5670
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5670

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub4 = sub i64 %6, 1, !dbg !5670
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5670
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5670

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub6 = sub i64 %8, 1, !dbg !5670
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5670
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5670

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5670

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub9 = sub i64 %9, 1, !dbg !5670
  %and = and i64 %sub9, -9223372036854775808, !dbg !5670
  %tobool10 = icmp ne i64 %and, 0, !dbg !5670
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5670

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5670

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub13 = sub i64 %10, 1, !dbg !5670
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5670
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5670
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5670

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5670

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub18 = sub i64 %11, 1, !dbg !5670
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5670
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5670
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5670

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5670

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub23 = sub i64 %12, 1, !dbg !5670
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5670
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5670
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5670

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5670

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub28 = sub i64 %13, 1, !dbg !5670
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5670
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5670
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5670

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5670

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub33 = sub i64 %14, 1, !dbg !5670
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5670
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5670
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5670

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5670

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub38 = sub i64 %15, 1, !dbg !5670
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5670
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5670
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5670

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5670

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub43 = sub i64 %16, 1, !dbg !5670
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5670
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5670
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5670

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5670

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub48 = sub i64 %17, 1, !dbg !5670
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5670
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5670
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5670

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5670

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub53 = sub i64 %18, 1, !dbg !5670
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5670
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5670
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5670

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5670

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub58 = sub i64 %19, 1, !dbg !5670
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5670
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5670
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5670

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5670

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub63 = sub i64 %20, 1, !dbg !5670
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5670
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5670
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5670

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5670

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub68 = sub i64 %21, 1, !dbg !5670
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5670
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5670
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5670

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5670

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub73 = sub i64 %22, 1, !dbg !5670
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5670
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5670
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5670

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5670

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub78 = sub i64 %23, 1, !dbg !5670
  %and79 = and i64 %sub78, 562949953421312, !dbg !5670
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5670
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5670

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5670

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub83 = sub i64 %24, 1, !dbg !5670
  %and84 = and i64 %sub83, 281474976710656, !dbg !5670
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5670
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5670

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5670

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub88 = sub i64 %25, 1, !dbg !5670
  %and89 = and i64 %sub88, 140737488355328, !dbg !5670
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5670
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5670

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5670

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub93 = sub i64 %26, 1, !dbg !5670
  %and94 = and i64 %sub93, 70368744177664, !dbg !5670
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5670
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5670

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5670

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub98 = sub i64 %27, 1, !dbg !5670
  %and99 = and i64 %sub98, 35184372088832, !dbg !5670
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5670
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5670

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5670

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub103 = sub i64 %28, 1, !dbg !5670
  %and104 = and i64 %sub103, 17592186044416, !dbg !5670
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5670
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5670

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5670

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub108 = sub i64 %29, 1, !dbg !5670
  %and109 = and i64 %sub108, 8796093022208, !dbg !5670
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5670
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5670

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5670

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub113 = sub i64 %30, 1, !dbg !5670
  %and114 = and i64 %sub113, 4398046511104, !dbg !5670
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5670
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5670

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5670

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub118 = sub i64 %31, 1, !dbg !5670
  %and119 = and i64 %sub118, 2199023255552, !dbg !5670
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5670
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5670

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5670

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub123 = sub i64 %32, 1, !dbg !5670
  %and124 = and i64 %sub123, 1099511627776, !dbg !5670
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5670
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5670

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5670

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub128 = sub i64 %33, 1, !dbg !5670
  %and129 = and i64 %sub128, 549755813888, !dbg !5670
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5670
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5670

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5670

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub133 = sub i64 %34, 1, !dbg !5670
  %and134 = and i64 %sub133, 274877906944, !dbg !5670
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5670
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5670

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5670

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub138 = sub i64 %35, 1, !dbg !5670
  %and139 = and i64 %sub138, 137438953472, !dbg !5670
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5670
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5670

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5670

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub143 = sub i64 %36, 1, !dbg !5670
  %and144 = and i64 %sub143, 68719476736, !dbg !5670
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5670
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5670

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5670

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub148 = sub i64 %37, 1, !dbg !5670
  %and149 = and i64 %sub148, 34359738368, !dbg !5670
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5670
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5670

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5670

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub153 = sub i64 %38, 1, !dbg !5670
  %and154 = and i64 %sub153, 17179869184, !dbg !5670
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5670
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5670

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5670

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub158 = sub i64 %39, 1, !dbg !5670
  %and159 = and i64 %sub158, 8589934592, !dbg !5670
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5670
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5670

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5670

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub163 = sub i64 %40, 1, !dbg !5670
  %and164 = and i64 %sub163, 4294967296, !dbg !5670
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5670
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5670

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5670

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub168 = sub i64 %41, 1, !dbg !5670
  %and169 = and i64 %sub168, 2147483648, !dbg !5670
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5670
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5670

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5670

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub173 = sub i64 %42, 1, !dbg !5670
  %and174 = and i64 %sub173, 1073741824, !dbg !5670
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5670
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5670

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5670

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub178 = sub i64 %43, 1, !dbg !5670
  %and179 = and i64 %sub178, 536870912, !dbg !5670
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5670
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5670

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5670

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub183 = sub i64 %44, 1, !dbg !5670
  %and184 = and i64 %sub183, 268435456, !dbg !5670
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5670
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5670

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5670

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub188 = sub i64 %45, 1, !dbg !5670
  %and189 = and i64 %sub188, 134217728, !dbg !5670
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5670
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5670

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5670

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub193 = sub i64 %46, 1, !dbg !5670
  %and194 = and i64 %sub193, 67108864, !dbg !5670
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5670
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5670

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5670

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub198 = sub i64 %47, 1, !dbg !5670
  %and199 = and i64 %sub198, 33554432, !dbg !5670
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5670
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5670

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5670

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub203 = sub i64 %48, 1, !dbg !5670
  %and204 = and i64 %sub203, 16777216, !dbg !5670
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5670
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5670

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5670

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub208 = sub i64 %49, 1, !dbg !5670
  %and209 = and i64 %sub208, 8388608, !dbg !5670
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5670
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5670

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5670

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub213 = sub i64 %50, 1, !dbg !5670
  %and214 = and i64 %sub213, 4194304, !dbg !5670
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5670
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5670

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5670

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub218 = sub i64 %51, 1, !dbg !5670
  %and219 = and i64 %sub218, 2097152, !dbg !5670
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5670
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5670

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5670

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub223 = sub i64 %52, 1, !dbg !5670
  %and224 = and i64 %sub223, 1048576, !dbg !5670
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5670
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5670

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5670

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub228 = sub i64 %53, 1, !dbg !5670
  %and229 = and i64 %sub228, 524288, !dbg !5670
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5670
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5670

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5670

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub233 = sub i64 %54, 1, !dbg !5670
  %and234 = and i64 %sub233, 262144, !dbg !5670
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5670
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5670

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5670

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub238 = sub i64 %55, 1, !dbg !5670
  %and239 = and i64 %sub238, 131072, !dbg !5670
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5670
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5670

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5670

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub243 = sub i64 %56, 1, !dbg !5670
  %and244 = and i64 %sub243, 65536, !dbg !5670
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5670
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5670

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5670

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub248 = sub i64 %57, 1, !dbg !5670
  %and249 = and i64 %sub248, 32768, !dbg !5670
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5670
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5670

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5670

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub253 = sub i64 %58, 1, !dbg !5670
  %and254 = and i64 %sub253, 16384, !dbg !5670
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5670
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5670

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5670

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub258 = sub i64 %59, 1, !dbg !5670
  %and259 = and i64 %sub258, 8192, !dbg !5670
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5670
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5670

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5670

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub263 = sub i64 %60, 1, !dbg !5670
  %and264 = and i64 %sub263, 4096, !dbg !5670
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5670
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5670

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5670

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub268 = sub i64 %61, 1, !dbg !5670
  %and269 = and i64 %sub268, 2048, !dbg !5670
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5670
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5670

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5670

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub273 = sub i64 %62, 1, !dbg !5670
  %and274 = and i64 %sub273, 1024, !dbg !5670
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5670
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5670

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5670

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub278 = sub i64 %63, 1, !dbg !5670
  %and279 = and i64 %sub278, 512, !dbg !5670
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5670
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5670

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5670

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub283 = sub i64 %64, 1, !dbg !5670
  %and284 = and i64 %sub283, 256, !dbg !5670
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5670
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5670

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5670

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub288 = sub i64 %65, 1, !dbg !5670
  %and289 = and i64 %sub288, 128, !dbg !5670
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5670
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5670

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5670

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub293 = sub i64 %66, 1, !dbg !5670
  %and294 = and i64 %sub293, 64, !dbg !5670
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5670
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5670

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5670

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub298 = sub i64 %67, 1, !dbg !5670
  %and299 = and i64 %sub298, 32, !dbg !5670
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5670
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5670

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5670

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub303 = sub i64 %68, 1, !dbg !5670
  %and304 = and i64 %sub303, 16, !dbg !5670
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5670
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5670

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5670

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub308 = sub i64 %69, 1, !dbg !5670
  %and309 = and i64 %sub308, 8, !dbg !5670
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5670
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5670

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5670

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub313 = sub i64 %70, 1, !dbg !5670
  %and314 = and i64 %sub313, 4, !dbg !5670
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5670
  %71 = zext i1 %tobool315 to i64, !dbg !5670
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5670
  br label %cond.end, !dbg !5670

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5670
  br label %cond.end317, !dbg !5670

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5670
  br label %cond.end319, !dbg !5670

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5670
  br label %cond.end321, !dbg !5670

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5670
  br label %cond.end323, !dbg !5670

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5670
  br label %cond.end325, !dbg !5670

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5670
  br label %cond.end327, !dbg !5670

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5670
  br label %cond.end329, !dbg !5670

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5670
  br label %cond.end331, !dbg !5670

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5670
  br label %cond.end333, !dbg !5670

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5670
  br label %cond.end335, !dbg !5670

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5670
  br label %cond.end337, !dbg !5670

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5670
  br label %cond.end339, !dbg !5670

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5670
  br label %cond.end341, !dbg !5670

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5670
  br label %cond.end343, !dbg !5670

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5670
  br label %cond.end345, !dbg !5670

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5670
  br label %cond.end347, !dbg !5670

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5670
  br label %cond.end349, !dbg !5670

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5670
  br label %cond.end351, !dbg !5670

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5670
  br label %cond.end353, !dbg !5670

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5670
  br label %cond.end355, !dbg !5670

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5670
  br label %cond.end357, !dbg !5670

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5670
  br label %cond.end359, !dbg !5670

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5670
  br label %cond.end361, !dbg !5670

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5670
  br label %cond.end363, !dbg !5670

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5670
  br label %cond.end365, !dbg !5670

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5670
  br label %cond.end367, !dbg !5670

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5670
  br label %cond.end369, !dbg !5670

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5670
  br label %cond.end371, !dbg !5670

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5670
  br label %cond.end373, !dbg !5670

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5670
  br label %cond.end375, !dbg !5670

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5670
  br label %cond.end377, !dbg !5670

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5670
  br label %cond.end379, !dbg !5670

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5670
  br label %cond.end381, !dbg !5670

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5670
  br label %cond.end383, !dbg !5670

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5670
  br label %cond.end385, !dbg !5670

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5670
  br label %cond.end387, !dbg !5670

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5670
  br label %cond.end389, !dbg !5670

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5670
  br label %cond.end391, !dbg !5670

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5670
  br label %cond.end393, !dbg !5670

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5670
  br label %cond.end395, !dbg !5670

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5670
  br label %cond.end397, !dbg !5670

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5670
  br label %cond.end399, !dbg !5670

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5670
  br label %cond.end401, !dbg !5670

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5670
  br label %cond.end403, !dbg !5670

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5670
  br label %cond.end405, !dbg !5670

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5670
  br label %cond.end407, !dbg !5670

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5670
  br label %cond.end409, !dbg !5670

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5670
  br label %cond.end411, !dbg !5670

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5670
  br label %cond.end413, !dbg !5670

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5670
  br label %cond.end415, !dbg !5670

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5670
  br label %cond.end417, !dbg !5670

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5670
  br label %cond.end419, !dbg !5670

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5670
  br label %cond.end421, !dbg !5670

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5670
  br label %cond.end423, !dbg !5670

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5670
  br label %cond.end425, !dbg !5670

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5670
  br label %cond.end427, !dbg !5670

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5670
  br label %cond.end429, !dbg !5670

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5670
  br label %cond.end431, !dbg !5670

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5670
  br label %cond.end433, !dbg !5670

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5670
  br label %cond.end435, !dbg !5670

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5670
  br label %cond.end437, !dbg !5670

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5670
  br label %cond.end440, !dbg !5670

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5670

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5670
  br label %cond.end444, !dbg !5670

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5670
  %sub443 = sub i64 %72, 1, !dbg !5670
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5670
  br label %cond.end444, !dbg !5670

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5670
  %sub446 = sub i32 %cond445, 12, !dbg !5671
  %add = add i32 %sub446, 1, !dbg !5672
  store i32 %add, i32* %retval, align 4, !dbg !5673
  br label %return, !dbg !5673

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5674
  %dec = add i64 %73, -1, !dbg !5674
  store i64 %dec, i64* %size.addr, align 8, !dbg !5674
  %74 = load i64, i64* %size.addr, align 8, !dbg !5675
  %shr = lshr i64 %74, 12, !dbg !5675
  store i64 %shr, i64* %size.addr, align 8, !dbg !5675
  %75 = load i64, i64* %size.addr, align 8, !dbg !5676
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5653
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5677
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5678
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5677, !srcloc !5679
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5677
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5680
  %add.i = add i32 %79, 1, !dbg !5681
  store i32 %add.i, i32* %retval, align 4, !dbg !5682
  br label %return, !dbg !5682

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5683
  ret i32 %80, !dbg !5683
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5684 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5645, metadata !DIExpression()), !dbg !5688
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5652, metadata !DIExpression()), !dbg !5690
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5691, metadata !DIExpression()), !dbg !5692
  %0 = load i64, i64* %n.addr, align 8, !dbg !5693
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5690
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5694
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5695
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5694, !srcloc !5679
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5694
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5696
  %add.i = add i32 %4, 1, !dbg !5697
  %sub = sub i32 %add.i, 1, !dbg !5698
  ret i32 %sub, !dbg !5699
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5700 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5711
  ret i8* %0, !dbg !5712
}

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5713 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5720
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5721
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5722
  store i8* %0, i8** %driver_data, align 8, !dbg !5723
  ret void, !dbg !5724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !5725 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5728, metadata !DIExpression()), !dbg !5729
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5730
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5731
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #11, !dbg !5732
  ret i8* %call, !dbg !5733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5734 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5741
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5742
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5742
  ret i8* %1, !dbg !5743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5744 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5745, metadata !DIExpression()), !dbg !5746
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5747
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5747
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5747
  %conv = zext i16 %1 to i32, !dbg !5747
  %and = and i32 %conv, 2047, !dbg !5748
  ret i32 %and, !dbg !5749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5750 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5759
  %1 = load i32, i32* %code.addr, align 4, !dbg !5760
  %2 = load i32, i32* %value.addr, align 4, !dbg !5761
  %tobool = icmp ne i32 %2, 0, !dbg !5762
  %lnot = xor i1 %tobool, true, !dbg !5762
  %lnot1 = xor i1 %lnot, true, !dbg !5763
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5763
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #11, !dbg !5764
  ret void, !dbg !5765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_rel(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5766 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5773
  %1 = load i32, i32* %code.addr, align 4, !dbg !5774
  %2 = load i32, i32* %value.addr, align 4, !dbg !5775
  call void @input_event(%struct.input_dev* %0, i32 2, i32 %1, i32 %2) #11, !dbg !5776
  ret void, !dbg !5777
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !5778 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5779, metadata !DIExpression()), !dbg !5780
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5781
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #11, !dbg !5782
  ret void, !dbg !5783
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5784 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5788, metadata !DIExpression()), !dbg !5789
  %call = call i64 @arch_local_save_flags() #11, !dbg !5790
  store i64 %call, i64* %f, align 8, !dbg !5791
  call void @arch_local_irq_disable() #11, !dbg !5792
  %0 = load i64, i64* %f, align 8, !dbg !5793
  ret i64 %0, !dbg !5794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @powermate_sync_state(%struct.powermate_device* %pm) #2 !dbg !5795 {
entry:
  %pm.addr = alloca %struct.powermate_device*, align 8
  %op = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.powermate_device* %pm, %struct.powermate_device** %pm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  %0 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5800
  %requires_update = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %0, i32 0, i32 14, !dbg !5802
  %1 = load i32, i32* %requires_update, align 4, !dbg !5802
  %cmp = icmp eq i32 %1, 0, !dbg !5803
  br i1 %cmp, label %if.then, label %if.end, !dbg !5804

if.then:                                          ; preds = %entry
  br label %if.end83, !dbg !5805

if.end:                                           ; preds = %entry
  %2 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5806
  %config = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %2, i32 0, i32 3, !dbg !5808
  %3 = load %struct.urb*, %struct.urb** %config, align 8, !dbg !5808
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5809
  %4 = load i32, i32* %status, align 8, !dbg !5809
  %cmp1 = icmp eq i32 %4, -115, !dbg !5810
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5811

if.then2:                                         ; preds = %if.end
  br label %if.end83, !dbg !5812

if.end3:                                          ; preds = %if.end
  %5 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5813
  %requires_update4 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %5, i32 0, i32 14, !dbg !5815
  %6 = load i32, i32* %requires_update4, align 4, !dbg !5815
  %and = and i32 %6, 2, !dbg !5816
  %tobool = icmp ne i32 %and, 0, !dbg !5816
  br i1 %tobool, label %if.then5, label %if.else, !dbg !5817

if.then5:                                         ; preds = %if.end3
  %7 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5818
  %configcr = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %7, i32 0, i32 4, !dbg !5820
  %8 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr, align 8, !dbg !5820
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %8, i32 0, i32 2, !dbg !5821
  store i16 2, i16* %wValue, align 1, !dbg !5822
  %9 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5823
  %pulse_asleep = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %9, i32 0, i32 12, !dbg !5823
  %10 = load i32, i32* %pulse_asleep, align 4, !dbg !5823
  %tobool6 = icmp ne i32 %10, 0, !dbg !5823
  %11 = zext i1 %tobool6 to i64, !dbg !5823
  %cond = select i1 %tobool6, i32 1, i32 0, !dbg !5823
  %conv = trunc i32 %cond to i16, !dbg !5823
  %12 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5824
  %configcr7 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %12, i32 0, i32 4, !dbg !5825
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr7, align 8, !dbg !5825
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 3, !dbg !5826
  store i16 %conv, i16* %wIndex, align 1, !dbg !5827
  %14 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5828
  %requires_update8 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %14, i32 0, i32 14, !dbg !5829
  %15 = load i32, i32* %requires_update8, align 4, !dbg !5830
  %and9 = and i32 %15, -3, !dbg !5830
  store i32 %and9, i32* %requires_update8, align 4, !dbg !5830
  br label %if.end69, !dbg !5831

if.else:                                          ; preds = %if.end3
  %16 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5832
  %requires_update10 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %16, i32 0, i32 14, !dbg !5834
  %17 = load i32, i32* %requires_update10, align 4, !dbg !5834
  %and11 = and i32 %17, 4, !dbg !5835
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5835
  br i1 %tobool12, label %if.then13, label %if.else23, !dbg !5836

if.then13:                                        ; preds = %if.else
  %18 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5837
  %configcr14 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %18, i32 0, i32 4, !dbg !5839
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr14, align 8, !dbg !5839
  %wValue15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 2, !dbg !5840
  store i16 3, i16* %wValue15, align 1, !dbg !5841
  %20 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5842
  %pulse_awake = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %20, i32 0, i32 13, !dbg !5842
  %21 = load i32, i32* %pulse_awake, align 8, !dbg !5842
  %tobool16 = icmp ne i32 %21, 0, !dbg !5842
  %22 = zext i1 %tobool16 to i64, !dbg !5842
  %cond17 = select i1 %tobool16, i32 1, i32 0, !dbg !5842
  %conv18 = trunc i32 %cond17 to i16, !dbg !5842
  %23 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5843
  %configcr19 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %23, i32 0, i32 4, !dbg !5844
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr19, align 8, !dbg !5844
  %wIndex20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %24, i32 0, i32 3, !dbg !5845
  store i16 %conv18, i16* %wIndex20, align 1, !dbg !5846
  %25 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5847
  %requires_update21 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %25, i32 0, i32 14, !dbg !5848
  %26 = load i32, i32* %requires_update21, align 4, !dbg !5849
  %and22 = and i32 %26, -5, !dbg !5849
  store i32 %and22, i32* %requires_update21, align 4, !dbg !5849
  br label %if.end68, !dbg !5850

if.else23:                                        ; preds = %if.else
  %27 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5851
  %requires_update24 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %27, i32 0, i32 14, !dbg !5853
  %28 = load i32, i32* %requires_update24, align 4, !dbg !5853
  %and25 = and i32 %28, 8, !dbg !5854
  %tobool26 = icmp ne i32 %and25, 0, !dbg !5854
  br i1 %tobool26, label %if.then27, label %if.else52, !dbg !5855

if.then27:                                        ; preds = %if.else23
  call void @llvm.dbg.declare(metadata i32* %op, metadata !5856, metadata !DIExpression()), !dbg !5858
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5859, metadata !DIExpression()), !dbg !5860
  %29 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5861
  %pulse_speed = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %29, i32 0, i32 10, !dbg !5863
  %30 = load i32, i32* %pulse_speed, align 4, !dbg !5863
  %cmp28 = icmp slt i32 %30, 255, !dbg !5864
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !5865

if.then30:                                        ; preds = %if.then27
  store i32 0, i32* %op, align 4, !dbg !5866
  %31 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5868
  %pulse_speed31 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %31, i32 0, i32 10, !dbg !5869
  %32 = load i32, i32* %pulse_speed31, align 4, !dbg !5869
  %sub = sub i32 255, %32, !dbg !5870
  store i32 %sub, i32* %arg, align 4, !dbg !5871
  br label %if.end41, !dbg !5872

if.else32:                                        ; preds = %if.then27
  %33 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5873
  %pulse_speed33 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %33, i32 0, i32 10, !dbg !5875
  %34 = load i32, i32* %pulse_speed33, align 4, !dbg !5875
  %cmp34 = icmp sgt i32 %34, 255, !dbg !5876
  br i1 %cmp34, label %if.then36, label %if.else39, !dbg !5877

if.then36:                                        ; preds = %if.else32
  store i32 2, i32* %op, align 4, !dbg !5878
  %35 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5880
  %pulse_speed37 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %35, i32 0, i32 10, !dbg !5881
  %36 = load i32, i32* %pulse_speed37, align 4, !dbg !5881
  %sub38 = sub i32 %36, 255, !dbg !5882
  store i32 %sub38, i32* %arg, align 4, !dbg !5883
  br label %if.end40, !dbg !5884

if.else39:                                        ; preds = %if.else32
  store i32 1, i32* %op, align 4, !dbg !5885
  store i32 0, i32* %arg, align 4, !dbg !5887
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then30
  %37 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5888
  %pulse_table = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %37, i32 0, i32 11, !dbg !5888
  %38 = load i32, i32* %pulse_table, align 8, !dbg !5888
  %shl = shl i32 %38, 8, !dbg !5888
  %or = or i32 %shl, 4, !dbg !5888
  %conv42 = trunc i32 %or to i16, !dbg !5888
  %39 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5889
  %configcr43 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %39, i32 0, i32 4, !dbg !5890
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr43, align 8, !dbg !5890
  %wValue44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 2, !dbg !5891
  store i16 %conv42, i16* %wValue44, align 1, !dbg !5892
  %41 = load i32, i32* %arg, align 4, !dbg !5893
  %shl45 = shl i32 %41, 8, !dbg !5893
  %42 = load i32, i32* %op, align 4, !dbg !5893
  %or46 = or i32 %shl45, %42, !dbg !5893
  %conv47 = trunc i32 %or46 to i16, !dbg !5893
  %43 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5894
  %configcr48 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %43, i32 0, i32 4, !dbg !5895
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr48, align 8, !dbg !5895
  %wIndex49 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 3, !dbg !5896
  store i16 %conv47, i16* %wIndex49, align 1, !dbg !5897
  %45 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5898
  %requires_update50 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %45, i32 0, i32 14, !dbg !5899
  %46 = load i32, i32* %requires_update50, align 4, !dbg !5900
  %and51 = and i32 %46, -9, !dbg !5900
  store i32 %and51, i32* %requires_update50, align 4, !dbg !5900
  br label %if.end67, !dbg !5901

if.else52:                                        ; preds = %if.else23
  %47 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5902
  %requires_update53 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %47, i32 0, i32 14, !dbg !5904
  %48 = load i32, i32* %requires_update53, align 4, !dbg !5904
  %and54 = and i32 %48, 1, !dbg !5905
  %tobool55 = icmp ne i32 %and54, 0, !dbg !5905
  br i1 %tobool55, label %if.then56, label %if.else64, !dbg !5906

if.then56:                                        ; preds = %if.else52
  %49 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5907
  %configcr57 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %49, i32 0, i32 4, !dbg !5909
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr57, align 8, !dbg !5909
  %wValue58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %50, i32 0, i32 2, !dbg !5910
  store i16 1, i16* %wValue58, align 1, !dbg !5911
  %51 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5912
  %static_brightness = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %51, i32 0, i32 9, !dbg !5912
  %52 = load i32, i32* %static_brightness, align 8, !dbg !5912
  %conv59 = trunc i32 %52 to i16, !dbg !5912
  %53 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5913
  %configcr60 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %53, i32 0, i32 4, !dbg !5914
  %54 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr60, align 8, !dbg !5914
  %wIndex61 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %54, i32 0, i32 3, !dbg !5915
  store i16 %conv59, i16* %wIndex61, align 1, !dbg !5916
  %55 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5917
  %requires_update62 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %55, i32 0, i32 14, !dbg !5918
  %56 = load i32, i32* %requires_update62, align 4, !dbg !5919
  %and63 = and i32 %56, -2, !dbg !5919
  store i32 %and63, i32* %requires_update62, align 4, !dbg !5919
  br label %if.end66, !dbg !5920

if.else64:                                        ; preds = %if.else52
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !5921
  %57 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5923
  %requires_update65 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %57, i32 0, i32 14, !dbg !5924
  store i32 0, i32* %requires_update65, align 4, !dbg !5925
  br label %if.end83, !dbg !5926

if.end66:                                         ; preds = %if.then56
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end41
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then13
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then5
  %58 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5927
  %configcr70 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %58, i32 0, i32 4, !dbg !5928
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr70, align 8, !dbg !5928
  %bRequestType = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %59, i32 0, i32 0, !dbg !5929
  store i8 65, i8* %bRequestType, align 1, !dbg !5930
  %60 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5931
  %configcr71 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %60, i32 0, i32 4, !dbg !5932
  %61 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr71, align 8, !dbg !5932
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %61, i32 0, i32 1, !dbg !5933
  store i8 1, i8* %bRequest, align 1, !dbg !5934
  %62 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5935
  %configcr72 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %62, i32 0, i32 4, !dbg !5936
  %63 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr72, align 8, !dbg !5936
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %63, i32 0, i32 4, !dbg !5937
  store i16 0, i16* %wLength, align 1, !dbg !5938
  %64 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5939
  %config73 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %64, i32 0, i32 3, !dbg !5940
  %65 = load %struct.urb*, %struct.urb** %config73, align 8, !dbg !5940
  %66 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5941
  %udev = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %66, i32 0, i32 5, !dbg !5942
  %67 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5942
  %68 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5943
  %udev74 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %68, i32 0, i32 5, !dbg !5943
  %69 = load %struct.usb_device*, %struct.usb_device** %udev74, align 8, !dbg !5943
  %call75 = call i32 @__create_pipe(%struct.usb_device* %69, i32 0) #11, !dbg !5943
  %or76 = or i32 -2147483648, %call75, !dbg !5943
  %70 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5944
  %configcr77 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %70, i32 0, i32 4, !dbg !5945
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %configcr77, align 8, !dbg !5945
  %72 = bitcast %struct.usb_ctrlrequest* %71 to i8*, !dbg !5946
  %73 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5947
  %74 = bitcast %struct.powermate_device* %73 to i8*, !dbg !5947
  call void @usb_fill_control_urb(%struct.urb* %65, %struct.usb_device* %67, i32 %or76, i8* %72, i8* null, i32 0, void (%struct.urb*)* @powermate_config_complete, i8* %74) #11, !dbg !5948
  %75 = load %struct.powermate_device*, %struct.powermate_device** %pm.addr, align 8, !dbg !5949
  %config78 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %75, i32 0, i32 3, !dbg !5951
  %76 = load %struct.urb*, %struct.urb** %config78, align 8, !dbg !5951
  %call79 = call i32 @usb_submit_urb(%struct.urb* %76, i32 2592) #11, !dbg !5952
  %tobool80 = icmp ne i32 %call79, 0, !dbg !5952
  br i1 %tobool80, label %if.then81, label %if.end83, !dbg !5953

if.then81:                                        ; preds = %if.end69
  %call82 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !5954
  br label %if.end83, !dbg !5954

if.end83:                                         ; preds = %if.then, %if.then2, %if.else64, %if.then81, %if.end69
  ret void, !dbg !5955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !5956 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5957, metadata !DIExpression()), !dbg !5959
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5960, metadata !DIExpression()), !dbg !5959
  %0 = load i64, i64* %__edi, align 8, !dbg !5959
  store i64 %0, i64* %__edi, align 8, !dbg !5959
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5961, metadata !DIExpression()), !dbg !5959
  %1 = load i64, i64* %__esi, align 8, !dbg !5959
  store i64 %1, i64* %__esi, align 8, !dbg !5959
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5962, metadata !DIExpression()), !dbg !5959
  %2 = load i64, i64* %__edx, align 8, !dbg !5959
  store i64 %2, i64* %__edx, align 8, !dbg !5959
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5963, metadata !DIExpression()), !dbg !5959
  %3 = load i64, i64* %__ecx, align 8, !dbg !5959
  store i64 %3, i64* %__ecx, align 8, !dbg !5959
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5964, metadata !DIExpression()), !dbg !5959
  %4 = load i64, i64* %__eax, align 8, !dbg !5959
  store i64 %4, i64* %__eax, align 8, !dbg !5959
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5959
  %6 = call i64 @llvm.read_register.i64(metadata !3901), !dbg !5965
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #10, !dbg !5965, !srcloc !5968
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5965
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5965
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5965
  call void @llvm.write_register.i64(metadata !3901, i64 %asmresult1), !dbg !5965
  %8 = load i64, i64* %__eax, align 8, !dbg !5965
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5969, metadata !DIExpression()), !dbg !5971
  store i64 -1, i64* %__mask, align 8, !dbg !5971
  %9 = load i64, i64* %__mask, align 8, !dbg !5971
  store i64 %9, i64* %tmp, align 8, !dbg !5971
  %10 = load i64, i64* %tmp, align 8, !dbg !5971
  %and = and i64 %8, %10, !dbg !5965
  store i64 %and, i64* %__ret, align 8, !dbg !5965
  %11 = load i64, i64* %__ret, align 8, !dbg !5959
  store i64 %11, i64* %tmp2, align 8, !dbg !5972
  %12 = load i64, i64* %tmp2, align 8, !dbg !5959
  ret i64 %12, !dbg !5973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !5974 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5975, metadata !DIExpression()), !dbg !5977
  %0 = load i64, i64* %__edi, align 8, !dbg !5977
  store i64 %0, i64* %__edi, align 8, !dbg !5977
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5978, metadata !DIExpression()), !dbg !5977
  %1 = load i64, i64* %__esi, align 8, !dbg !5977
  store i64 %1, i64* %__esi, align 8, !dbg !5977
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5979, metadata !DIExpression()), !dbg !5977
  %2 = load i64, i64* %__edx, align 8, !dbg !5977
  store i64 %2, i64* %__edx, align 8, !dbg !5977
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5980, metadata !DIExpression()), !dbg !5977
  %3 = load i64, i64* %__ecx, align 8, !dbg !5977
  store i64 %3, i64* %__ecx, align 8, !dbg !5977
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5981, metadata !DIExpression()), !dbg !5977
  %4 = load i64, i64* %__eax, align 8, !dbg !5977
  store i64 %4, i64* %__eax, align 8, !dbg !5977
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5977
  %6 = call i64 @llvm.read_register.i64(metadata !3901), !dbg !5977
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #10, !dbg !5977, !srcloc !5982
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5977
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5977
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5977
  call void @llvm.write_register.i64(metadata !3901, i64 %asmresult1), !dbg !5977
  ret void, !dbg !5983
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_control_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %setup_packet, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !5984 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5991, metadata !DIExpression()), !dbg !5992
  store i8* %setup_packet, i8** %setup_packet.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %setup_packet.addr, metadata !5993, metadata !DIExpression()), !dbg !5994
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !6003
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6004
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !6005
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !6006
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !6007
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6008
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !6009
  store i32 %2, i32* %pipe2, align 8, !dbg !6010
  %4 = load i8*, i8** %setup_packet.addr, align 8, !dbg !6011
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6012
  %setup_packet3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 21, !dbg !6013
  store i8* %4, i8** %setup_packet3, align 8, !dbg !6014
  %6 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !6015
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6016
  %transfer_buffer4 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 14, !dbg !6017
  store i8* %6, i8** %transfer_buffer4, align 8, !dbg !6018
  %8 = load i32, i32* %buffer_length.addr, align 4, !dbg !6019
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6020
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 19, !dbg !6021
  store i32 %8, i32* %transfer_buffer_length, align 8, !dbg !6022
  %10 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !6023
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6024
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 28, !dbg !6025
  store void (%struct.urb*)* %10, void (%struct.urb*)** %complete, align 8, !dbg !6026
  %12 = load i8*, i8** %context.addr, align 8, !dbg !6027
  %13 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6028
  %context5 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 27, !dbg !6029
  store i8* %12, i8** %context5, align 8, !dbg !6030
  ret void, !dbg !6031
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @powermate_config_complete(%struct.urb* %urb) #2 !dbg !6032 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !5421, metadata !DIExpression()), !dbg !6033
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5427, metadata !DIExpression()), !dbg !6035
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3914, metadata !DIExpression()), !dbg !6036
  %urb.addr = alloca %struct.urb*, align 8
  %pm = alloca %struct.powermate_device*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  call void @llvm.dbg.declare(metadata %struct.powermate_device** %pm, metadata !6045, metadata !DIExpression()), !dbg !6046
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6047
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !6048
  %1 = load i8*, i8** %context, align 8, !dbg !6048
  %2 = bitcast i8* %1 to %struct.powermate_device*, !dbg !6047
  store %struct.powermate_device* %2, %struct.powermate_device** %pm, align 8, !dbg !6046
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6049, metadata !DIExpression()), !dbg !6050
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6051
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !6053
  %4 = load i32, i32* %status, align 8, !dbg !6053
  %tobool = icmp ne i32 %4, 0, !dbg !6051
  br i1 %tobool, label %if.then, label %if.end, !dbg !6054

if.then:                                          ; preds = %entry
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6055
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !6056
  %6 = load i32, i32* %status1, align 8, !dbg !6056
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %6) #12, !dbg !6057
  br label %if.end, !dbg !6057

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !6058

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !6059

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6060, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6063, metadata !DIExpression()), !dbg !6062
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6062
  %conv = zext i1 %cmp to i32, !dbg !6062
  store i32 1, i32* %tmp, align 4, !dbg !6062
  %7 = load i32, i32* %tmp, align 4, !dbg !6062
  br label %do.body3, !dbg !6064

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6065

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !6066

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !6068, metadata !DIExpression()), !dbg !6071
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !6072, metadata !DIExpression()), !dbg !6071
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !6071
  %conv9 = zext i1 %cmp8 to i32, !dbg !6071
  store i32 1, i32* %tmp10, align 4, !dbg !6071
  %8 = load i32, i32* %tmp10, align 4, !dbg !6071
  %call11 = call i64 @arch_local_irq_save() #11, !dbg !6073
  store i64 %call11, i64* %flags, align 8, !dbg !6073
  br label %do.end, !dbg !6073

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !6066

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !6065

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6074, !srcloc !6075
  br label %do.body14, !dbg !6074

do.body14:                                        ; preds = %do.body13
  %9 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !6076
  %lock = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %9, i32 0, i32 8, !dbg !6076
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6077
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !6078
  %rlock.i = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !6078
  br label %do.end16, !dbg !6076

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !6074

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6065

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6064

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6059

do.end20:                                         ; preds = %do.end19
  %12 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !6079
  call void @powermate_sync_state(%struct.powermate_device* %12) #11, !dbg !6080
  %13 = load %struct.powermate_device*, %struct.powermate_device** %pm, align 8, !dbg !6081
  %lock21 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %13, i32 0, i32 8, !dbg !6082
  %14 = load i64, i64* %flags, align 8, !dbg !6083
  store %struct.spinlock* %lock21, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !202, metadata !5577, metadata !DIExpression()) #10, !dbg !6084
  call void @llvm.dbg.declare(metadata !202, metadata !5581, metadata !DIExpression()) #10, !dbg !6084
  store i32 1, i32* %tmp.i, align 4, !dbg !6084
  %15 = load i32, i32* %tmp.i, align 4, !dbg !6084
  call void @llvm.dbg.declare(metadata !202, metadata !5582, metadata !DIExpression()) #10, !dbg !6085
  call void @llvm.dbg.declare(metadata !202, metadata !5588, metadata !DIExpression()) #10, !dbg !6085
  store i32 1, i32* %tmp8.i, align 4, !dbg !6085
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !6085
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !6086
  call void @arch_local_irq_restore(i64 %17) #14, !dbg !6086
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6087, !srcloc !5592
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !6088
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !6088
  %rlock.i23 = bitcast %union.anon.3* %19 to %struct.raw_spinlock*, !dbg !6088
  ret void, !dbg !6089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !6090 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6095, metadata !DIExpression()), !dbg !6097
  %0 = load i64, i64* %__edi, align 8, !dbg !6097
  store i64 %0, i64* %__edi, align 8, !dbg !6097
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6098, metadata !DIExpression()), !dbg !6097
  %1 = load i64, i64* %__esi, align 8, !dbg !6097
  store i64 %1, i64* %__esi, align 8, !dbg !6097
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6099, metadata !DIExpression()), !dbg !6097
  %2 = load i64, i64* %__edx, align 8, !dbg !6097
  store i64 %2, i64* %__edx, align 8, !dbg !6097
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6100, metadata !DIExpression()), !dbg !6097
  %3 = load i64, i64* %__ecx, align 8, !dbg !6097
  store i64 %3, i64* %__ecx, align 8, !dbg !6097
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6101, metadata !DIExpression()), !dbg !6097
  %4 = load i64, i64* %__eax, align 8, !dbg !6097
  store i64 %4, i64* %__eax, align 8, !dbg !6097
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6097
  %6 = call i64 @llvm.read_register.i64(metadata !3901), !dbg !6097
  %7 = load i64, i64* %f.addr, align 8, !dbg !6097
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #10, !dbg !6097, !srcloc !6102
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6097
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6097
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6097
  call void @llvm.write_register.i64(metadata !3901, i64 %asmresult1), !dbg !6097
  ret void, !dbg !6103
}

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6104 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6107, metadata !DIExpression()), !dbg !6108
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6109
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6110
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #11, !dbg !6111
  ret i8* %call, !dbg !6112
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

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
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3901}
!llvm.module.flags = !{!3902, !3903, !3904, !3905}
!llvm.ident = !{!3906}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_powermate_driver_init212", scope: !2, file: !3, line: 452, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !120, globals: !3806, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/misc/powermate.c", directory: "/home/lizy2001/genbc/linux")
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
!120 = !{!121, !124, !125, !127, !130, !132, !136, !7, !278}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !123, line: 76, flags: DIFlagFwdDecl)
!123 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !126, line: 148, baseType: !7)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !128, line: 24, baseType: !129)
!128 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !131, line: 29, baseType: !127)
!131 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !134)
!134 = !{!135, !137, !142, !146, !147, !148, !149, !150, !153, !154, !158, !159, !3548, !3588, !3589, !3606, !3667, !3749, !3750, !3752, !3753, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3788, !3789, !3790, !3795, !3802, !3803, !3804, !3805}
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
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !128, line: 27, baseType: !7)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !133, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !133, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !133, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !133, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !133, file: !6, line: 640, baseType: !151, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !133, file: !6, line: 641, baseType: !136, size: 32, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !133, file: !6, line: 643, baseType: !155, size: 64, offset: 416)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 2)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !6, line: 645, baseType: !132, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !133, file: !6, line: 646, baseType: !160, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !162)
!162 = !{!163, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3542, !3543, !3544, !3545, !3546, !3547}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !161, file: !6, line: 425, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !166)
!166 = !{!167, !3166, !3167, !3170, !3171, !3222, !3313, !3314, !3315, !3316, !3317, !3326, !3431, !3444, !3447, !3448, !3452, !3454, !3455, !3456, !3460, !3466, !3467, !3470, !3474, !3477, !3478, !3479, !3480, !3481, !3513, !3514, !3515, !3518, !3521, !3522, !3523, !3524}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !67, line: 462, baseType: !168, size: 512)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !169, line: 64, size: 512, elements: !170)
!169 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !174, !180, !182, !242, !3017, !3156, !3161, !3162, !3163, !3164, !3165}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !169, line: 65, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !168, file: !169, line: 66, baseType: !175, size: 128, offset: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !126, line: 178, size: 128, elements: !176)
!176 = !{!177, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !126, line: 179, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !126, line: 179, baseType: !178, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !169, line: 67, baseType: !181, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !168, file: !169, line: 68, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !169, line: 192, size: 704, elements: !185)
!185 = !{!186, !187, !203, !204}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !184, file: !169, line: 193, baseType: !175, size: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !184, file: !169, line: 194, baseType: !188, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !189, line: 83, baseType: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !189, line: 71, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !189, line: 72, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !189, line: 72, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !193, file: !189, line: 73, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !189, line: 20, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !196, file: !189, line: 21, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !200, line: 25, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 25, elements: !202)
!202 = !{}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !184, file: !169, line: 195, baseType: !168, size: 512, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !184, file: !169, line: 196, baseType: !205, size: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !169, line: 156, size: 192, elements: !208)
!208 = !{!209, !214, !219}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !207, file: !169, line: 157, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!136, !183, !181}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !169, line: 158, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!172, !183, !181}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !207, file: !169, line: 159, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!136, !183, !181, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !169, line: 148, size: 20736, elements: !226)
!226 = !{!227, !232, !236, !237, !241}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !225, file: !169, line: 149, baseType: !228, size: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 192, elements: !230)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!230 = !{!231}
!231 = !DISubrange(count: 3)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !225, file: !169, line: 150, baseType: !233, size: 4096, offset: 192)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4096, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !225, file: !169, line: 151, baseType: !136, size: 32, offset: 4288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !225, file: !169, line: 152, baseType: !238, size: 16384, offset: 4320)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16384, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 2048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !225, file: !169, line: 153, baseType: !136, size: 32, offset: 20704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !168, file: !169, line: 69, baseType: !243, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !169, line: 138, size: 448, elements: !245)
!245 = !{!246, !250, !279, !281, !2977, !3007, !3011}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !244, file: !169, line: 139, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !181}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !244, file: !169, line: 140, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !254, line: 230, size: 128, elements: !255)
!254 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256, !271}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !253, file: !254, line: 231, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !181, !265, !229}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !126, line: 60, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !262, line: 73, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !262, line: 15, baseType: !264)
!264 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !254, line: 30, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !254, line: 31, baseType: !172, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !266, file: !254, line: 32, baseType: !270, size: 16, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !126, line: 19, baseType: !129)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !253, file: !254, line: 232, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!260, !181, !265, !172, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 55, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !262, line: 72, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !262, line: 16, baseType: !278)
!278 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !244, file: !169, line: 141, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !244, file: !169, line: 142, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !254, line: 84, size: 320, elements: !286)
!286 = !{!287, !288, !292, !2974, !2975}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !254, line: 85, baseType: !172, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !285, file: !254, line: 86, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!270, !181, !265, !136}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !285, file: !254, line: 88, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!270, !181, !296, !136}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !254, line: 168, size: 448, elements: !298)
!298 = !{!299, !300, !301, !302, !2969, !2970}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !297, file: !254, line: 169, baseType: !266, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !254, line: 170, baseType: !275, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !297, file: !254, line: 171, baseType: !124, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !297, file: !254, line: 172, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!260, !306, !181, !296, !229, !481, !275}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !308)
!308 = !{!309, !327, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2952, !2953, !2962, !2963, !2964, !2965, !2966, !2967, !2968}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !307, file: !38, line: 920, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !38, line: 917, size: 128, elements: !311)
!311 = !{!312, !318}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !310, file: !38, line: 918, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !314, line: 58, size: 64, elements: !315)
!314 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !314, line: 59, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !310, file: !38, line: 919, baseType: !319, size: 128, align: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !126, line: 216, size: 128, align: 64, elements: !320)
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !126, line: 217, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !319, file: !126, line: 218, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !322}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !307, file: !38, line: 921, baseType: !328, size: 128, offset: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !329, line: 8, size: 128, elements: !330)
!329 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !328, file: !329, line: 9, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !334, line: 18, flags: DIFlagFwdDecl)
!334 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !328, file: !329, line: 10, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !334, line: 89, size: 1536, elements: !338)
!338 = !{!339, !340, !350, !358, !359, !378, !2902, !2904, !2916, !2917, !2918, !2919, !2920, !2926, !2927, !2928}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !337, file: !334, line: 91, baseType: !7, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !337, file: !334, line: 92, baseType: !341, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !342, line: 277, baseType: !343)
!342 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !342, line: 277, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !343, file: !342, line: 277, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !342, line: 70, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !342, line: 65, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !347, file: !342, line: 66, baseType: !7, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !337, file: !334, line: 93, baseType: !351, size: 128, offset: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !352, line: 38, size: 128, elements: !353)
!352 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !352, line: 39, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !351, file: !352, line: 39, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !337, file: !334, line: 94, baseType: !336, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !337, file: !334, line: 95, baseType: !360, size: 128, offset: 256)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !334, line: 47, size: 128, elements: !361)
!361 = !{!362, !374}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !334, line: 48, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !334, line: 48, size: 64, elements: !364)
!364 = !{!365, !370}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !334, line: 49, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !334, line: 49, size: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !366, file: !334, line: 50, baseType: !143, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !366, file: !334, line: 50, baseType: !143, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !363, file: !334, line: 52, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !144, line: 23, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !128, line: 31, baseType: !373)
!373 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !360, file: !334, line: 54, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !337, file: !334, line: 96, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !381)
!381 = !{!382, !383, !384, !392, !399, !400, !548, !2614, !2615, !2616, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2878, !2886, !2887, !2888, !2898, !2899, !2900, !2901}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !380, file: !38, line: 611, baseType: !270, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !380, file: !38, line: 612, baseType: !129, size: 16, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !380, file: !38, line: 613, baseType: !385, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !386, line: 23, baseType: !387)
!386 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 21, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !387, file: !386, line: 22, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !126, line: 32, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !262, line: 49, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !380, file: !38, line: 614, baseType: !393, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !386, line: 28, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 26, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !394, file: !386, line: 27, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !126, line: 33, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !262, line: 50, baseType: !7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !380, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !380, file: !38, line: 622, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !404)
!404 = !{!405, !409, !422, !426, !432, !436, !442, !446, !450, !454, !458, !459, !465, !469, !495, !524, !528, !534, !539, !543, !544}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !403, file: !38, line: 1865, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!336, !379, !336, !7}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !403, file: !38, line: 1866, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!172, !336, !379, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !415, line: 10, size: 128, elements: !416)
!415 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !414, file: !415, line: 11, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !124}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !414, file: !415, line: 12, baseType: !124, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !403, file: !38, line: 1867, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!136, !379, !136}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !403, file: !38, line: 1868, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!430, !379, !136}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !403, file: !38, line: 1870, baseType: !433, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!136, !336, !229, !136}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !403, file: !38, line: 1872, baseType: !437, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!136, !379, !336, !270, !440}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 30, baseType: !441)
!441 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !403, file: !38, line: 1873, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!136, !336, !379, !336}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !403, file: !38, line: 1874, baseType: !447, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!136, !379, !336}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !403, file: !38, line: 1875, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!136, !379, !336, !172}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !403, file: !38, line: 1876, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!136, !379, !336, !270}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !403, file: !38, line: 1877, baseType: !447, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !403, file: !38, line: 1878, baseType: !460, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!136, !379, !336, !270, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !126, line: 16, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !126, line: 13, baseType: !143)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !403, file: !38, line: 1879, baseType: !466, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!136, !379, !336, !379, !336, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !403, file: !38, line: 1881, baseType: !470, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!136, !336, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !484, !492, !493, !494}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !474, file: !38, line: 220, baseType: !7, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !474, file: !38, line: 221, baseType: !270, size: 16, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !474, file: !38, line: 222, baseType: !385, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !474, file: !38, line: 223, baseType: !393, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !474, file: !38, line: 224, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !126, line: 46, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !262, line: 88, baseType: !483)
!483 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !474, file: !38, line: 225, baseType: !485, size: 128, offset: 192)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !486, line: 13, size: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !485, file: !486, line: 14, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !486, line: 8, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !128, line: 30, baseType: !483)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !485, file: !486, line: 15, baseType: !264, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !474, file: !38, line: 226, baseType: !485, size: 128, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !474, file: !38, line: 227, baseType: !485, size: 128, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !474, file: !38, line: 234, baseType: !306, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !403, file: !38, line: 1882, baseType: !496, size: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!136, !499, !501, !143, !7}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !503, line: 22, size: 1152, elements: !504)
!503 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !506, !507, !508, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !502, file: !503, line: 23, baseType: !143, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !502, file: !503, line: 24, baseType: !270, size: 16, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !502, file: !503, line: 25, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !502, file: !503, line: 26, baseType: !509, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 104, baseType: !143)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !502, file: !503, line: 27, baseType: !371, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !502, file: !503, line: 28, baseType: !371, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !502, file: !503, line: 37, baseType: !371, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !502, file: !503, line: 38, baseType: !463, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !502, file: !503, line: 39, baseType: !463, size: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !502, file: !503, line: 40, baseType: !385, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !502, file: !503, line: 41, baseType: !393, size: 32, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !502, file: !503, line: 42, baseType: !481, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !502, file: !503, line: 43, baseType: !485, size: 128, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !502, file: !503, line: 44, baseType: !485, size: 128, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !502, file: !503, line: 45, baseType: !485, size: 128, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !502, file: !503, line: 46, baseType: !485, size: 128, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !502, file: !503, line: 47, baseType: !371, size: 64, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !502, file: !503, line: 48, baseType: !371, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !403, file: !38, line: 1883, baseType: !525, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!260, !336, !229, !275}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !403, file: !38, line: 1884, baseType: !529, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!136, !379, !532, !371, !371}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !403, file: !38, line: 1886, baseType: !535, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!136, !379, !538, !136}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !403, file: !38, line: 1887, baseType: !540, size: 64, offset: 1152)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!136, !379, !336, !306, !7, !270}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !403, file: !38, line: 1890, baseType: !455, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !403, file: !38, line: 1891, baseType: !545, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!136, !379, !430, !136}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !380, file: !38, line: 623, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !604, !2221, !2303, !2386, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2402, !2406, !2407, !2410, !2411, !2414, !2415, !2416, !2457, !2484, !2485, !2486, !2487, !2488, !2489, !2492, !2494, !2501, !2502, !2504, !2505, !2506, !2565, !2566, !2581, !2582, !2583, !2584, !2585, !2588, !2589, !2590, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !550, file: !38, line: 1417, baseType: !175, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !550, file: !38, line: 1418, baseType: !463, size: 32, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !550, file: !38, line: 1419, baseType: !377, size: 8, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !550, file: !38, line: 1420, baseType: !278, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !550, file: !38, line: 1421, baseType: !481, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !550, file: !38, line: 1422, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !560)
!560 = !{!561, !562, !563, !570, !574, !578, !582, !583, !584, !594, !597, !598, !599, !601, !602, !603}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !38, line: 2229, baseType: !172, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !559, file: !38, line: 2230, baseType: !136, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !559, file: !38, line: 2238, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!136, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !569, line: 28, flags: DIFlagFwdDecl)
!569 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!570 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !559, file: !38, line: 2239, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !559, file: !38, line: 2240, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!336, !558, !136, !172, !124}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !559, file: !38, line: 2242, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !549}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !559, file: !38, line: 2243, baseType: !121, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !38, line: 2244, baseType: !558, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !559, file: !38, line: 2245, baseType: !585, size: 64, offset: 512)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !126, line: 182, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !585, file: !126, line: 183, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !126, line: 186, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !126, line: 187, baseType: !588, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !589, file: !126, line: 187, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !559, file: !38, line: 2247, baseType: !595, offset: 576)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !596, line: 187, elements: !202)
!596 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !559, file: !38, line: 2248, baseType: !595, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !559, file: !38, line: 2249, baseType: !595, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !559, file: !38, line: 2250, baseType: !600, offset: 576)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, elements: !230)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !559, file: !38, line: 2252, baseType: !595, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !559, file: !38, line: 2253, baseType: !595, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !559, file: !38, line: 2254, baseType: !595, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !550, file: !38, line: 1423, baseType: !605, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !608)
!608 = !{!609, !613, !617, !618, !622, !628, !632, !633, !634, !638, !642, !643, !644, !645, !651, !656, !657, !664, !665, !666, !667, !2205, !2220}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !607, file: !38, line: 1936, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!379, !549}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !607, file: !38, line: 1937, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !379}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !607, file: !38, line: 1938, baseType: !614, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !607, file: !38, line: 1940, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !379, !136}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !607, file: !38, line: 1941, baseType: !623, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!136, !379, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !607, file: !38, line: 1942, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!136, !379}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !607, file: !38, line: 1943, baseType: !614, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !607, file: !38, line: 1944, baseType: !579, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !607, file: !38, line: 1945, baseType: !635, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!136, !549, !136}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !607, file: !38, line: 1946, baseType: !639, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!136, !549}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !607, file: !38, line: 1947, baseType: !639, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !607, file: !38, line: 1948, baseType: !639, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !607, file: !38, line: 1949, baseType: !639, size: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !607, file: !38, line: 1950, baseType: !646, size: 64, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!136, !336, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !607, file: !38, line: 1951, baseType: !652, size: 64, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!136, !549, !655, !229}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !607, file: !38, line: 1952, baseType: !579, size: 64, offset: 960)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !607, file: !38, line: 1954, baseType: !658, size: 64, offset: 1024)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!136, !661, !336}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !663, line: 539, flags: DIFlagFwdDecl)
!663 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !607, file: !38, line: 1955, baseType: !658, size: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !607, file: !38, line: 1956, baseType: !658, size: 64, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !607, file: !38, line: 1957, baseType: !658, size: 64, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !607, file: !38, line: 1963, baseType: !668, size: 64, offset: 1280)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!136, !549, !671, !125}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !673, line: 68, size: 512, align: 128, elements: !674)
!673 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!674 = !{!675, !676, !2197, !2204}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !673, line: 69, baseType: !278, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 77, baseType: !677, size: 320, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 77, size: 320, elements: !678)
!678 = !{!679, !865, !870, !898, !906, !912, !2189, !2196}
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 78, baseType: !680, size: 320)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 78, size: 320, elements: !681)
!681 = !{!682, !683, !863, !864}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !680, file: !673, line: 84, baseType: !175, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !680, file: !673, line: 86, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !686)
!686 = !{!687, !688, !695, !696, !701, !716, !732, !733, !734, !735, !856, !857, !860, !861, !862}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !685, file: !38, line: 452, baseType: !379, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !685, file: !38, line: 453, baseType: !689, size: 128, offset: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !690, line: 292, size: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !693, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !689, file: !690, line: 293, baseType: !188)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !689, file: !690, line: 295, baseType: !125, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !689, file: !690, line: 296, baseType: !124, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !685, file: !38, line: 454, baseType: !125, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !685, file: !38, line: 455, baseType: !697, size: 32, offset: 224)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !126, line: 168, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 166, size: 32, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !698, file: !126, line: 167, baseType: !136, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !685, file: !38, line: 460, baseType: !702, size: 128, offset: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !703, line: 125, size: 128, elements: !704)
!703 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!704 = !{!705, !715}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !702, file: !703, line: 126, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !703, line: 31, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !706, file: !703, line: 32, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !703, line: 24, size: 192, align: 64, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !710, file: !703, line: 25, baseType: !278, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !710, file: !703, line: 26, baseType: !709, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !710, file: !703, line: 27, baseType: !709, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !702, file: !703, line: 127, baseType: !709, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !685, file: !38, line: 461, baseType: !717, size: 256, offset: 384)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !718, line: 35, size: 256, elements: !719)
!718 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !728, !729, !731}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !717, file: !718, line: 36, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !722, line: 13, baseType: !723)
!722 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !126, line: 175, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 173, size: 64, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !724, file: !126, line: 174, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !144, line: 22, baseType: !490)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !717, file: !718, line: 42, baseType: !721, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !717, file: !718, line: 46, baseType: !730, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !189, line: 29, baseType: !196)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !717, file: !718, line: 47, baseType: !175, size: 128, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !685, file: !38, line: 462, baseType: !278, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !685, file: !38, line: 463, baseType: !278, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !685, file: !38, line: 464, baseType: !278, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !685, file: !38, line: 465, baseType: !736, size: 64, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !739)
!739 = !{!740, !744, !748, !752, !756, !760, !766, !772, !776, !781, !785, !789, !793, !820, !824, !830, !831, !832, !836, !841, !845, !852}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !738, file: !38, line: 368, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!136, !671, !626}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !738, file: !38, line: 369, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!136, !306, !671}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !738, file: !38, line: 372, baseType: !749, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!136, !684, !626}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !738, file: !38, line: 375, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!136, !671}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !738, file: !38, line: 381, baseType: !757, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!136, !306, !684, !178, !7}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !738, file: !38, line: 383, baseType: !761, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !738, file: !38, line: 385, baseType: !767, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!136, !306, !684, !481, !7, !7, !770, !771}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !738, file: !38, line: 388, baseType: !773, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!136, !306, !684, !481, !7, !7, !671, !124}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !738, file: !38, line: 393, baseType: !777, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !684, !780}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !126, line: 125, baseType: !371)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !738, file: !38, line: 394, baseType: !782, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !671, !7, !7}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !738, file: !38, line: 395, baseType: !786, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!136, !671, !125}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !738, file: !38, line: 396, baseType: !790, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !671}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !738, file: !38, line: 397, baseType: !794, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!260, !797, !818}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !799)
!799 = !{!800, !801, !802, !806, !807, !808, !810, !811}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !798, file: !38, line: 321, baseType: !306, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !798, file: !38, line: 326, baseType: !481, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !798, file: !38, line: 327, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !797, !264, !264}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !798, file: !38, line: 328, baseType: !124, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !798, file: !38, line: 329, baseType: !136, size: 32, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !798, file: !38, line: 330, baseType: !809, size: 16, offset: 288)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !144, line: 19, baseType: !127)
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
!820 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !738, file: !38, line: 402, baseType: !821, size: 64, offset: 832)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!136, !684, !671, !671, !13}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !738, file: !38, line: 404, baseType: !825, size: 64, offset: 896)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!440, !671, !828}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !829, line: 305, baseType: !7)
!829 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !738, file: !38, line: 405, baseType: !790, size: 64, offset: 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !738, file: !38, line: 406, baseType: !753, size: 64, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !738, file: !38, line: 407, baseType: !833, size: 64, offset: 1088)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!136, !671, !278, !278}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !738, file: !38, line: 409, baseType: !837, size: 64, offset: 1152)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !671, !840, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !738, file: !38, line: 410, baseType: !842, size: 64, offset: 1216)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!136, !684, !671}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !738, file: !38, line: 413, baseType: !846, size: 64, offset: 1280)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!136, !849, !306, !851}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !738, file: !38, line: 415, baseType: !853, size: 64, offset: 1344)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !306}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !38, line: 466, baseType: !278, size: 64, offset: 896)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !685, file: !38, line: 467, baseType: !858, size: 32, offset: 960)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !859, line: 8, baseType: !143)
!859 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !685, file: !38, line: 468, baseType: !188, offset: 992)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !685, file: !38, line: 469, baseType: !175, size: 128, offset: 1024)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !685, file: !38, line: 470, baseType: !124, size: 64, offset: 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !680, file: !673, line: 87, baseType: !278, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !680, file: !673, line: 94, baseType: !278, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 96, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 96, size: 64, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !866, file: !673, line: 101, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !126, line: 143, baseType: !371)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 103, baseType: !871, size: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 103, size: 320, elements: !872)
!872 = !{!873, !883, !886, !887}
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !673, line: 104, baseType: !874, size: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !673, line: 104, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !874, file: !673, line: 105, baseType: !175, size: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !673, line: 106, baseType: !878, size: 128)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !673, line: 106, size: 128, elements: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !673, line: 107, baseType: !671, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !878, file: !673, line: 109, baseType: !136, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !878, file: !673, line: 110, baseType: !136, size: 32, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !871, file: !673, line: 117, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !673, line: 117, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !871, file: !673, line: 119, baseType: !124, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !673, line: 120, baseType: !888, size: 64, offset: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !673, line: 120, size: 64, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !888, file: !673, line: 121, baseType: !124, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !888, file: !673, line: 122, baseType: !278, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !673, line: 123, baseType: !893, size: 32)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !673, line: 123, size: 32, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !893, file: !673, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !893, file: !673, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !893, file: !673, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 130, baseType: !899, size: 192)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 130, size: 192, elements: !900)
!900 = !{!901, !902, !903, !904, !905}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !899, file: !673, line: 131, baseType: !278, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !899, file: !673, line: 134, baseType: !377, size: 8, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !899, file: !673, line: 135, baseType: !377, size: 8, offset: 72)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !899, file: !673, line: 136, baseType: !697, size: 32, offset: 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !899, file: !673, line: 137, baseType: !7, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 139, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 139, size: 256, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !907, file: !673, line: 140, baseType: !278, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !907, file: !673, line: 141, baseType: !697, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !907, file: !673, line: 143, baseType: !175, size: 128, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 145, baseType: !913, size: 256)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 145, size: 256, elements: !914)
!914 = !{!915, !916, !918, !919, !2188}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !913, file: !673, line: 146, baseType: !278, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !913, file: !673, line: 147, baseType: !917, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !663, line: 509, baseType: !671)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !913, file: !673, line: 148, baseType: !278, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !673, line: 149, baseType: !920, size: 64, offset: 192)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !673, line: 149, size: 64, elements: !921)
!921 = !{!922, !2187}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !920, file: !673, line: 150, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !673, line: 388, size: 7296, elements: !925)
!925 = !{!926, !2183}
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !673, line: 389, baseType: !927, size: 7296)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !673, line: 389, size: 7296, elements: !928)
!928 = !{!929, !967, !968, !969, !973, !974, !975, !976, !977, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1018, !1026, !1029, !1075, !1076, !2167, !2168, !2171, !2172, !2173, !2176, !2177, !2178, !2181, !2182}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !927, file: !673, line: 390, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !673, line: 305, size: 1472, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !947, !948, !953, !954, !957, !961, !962, !963, !964, !965}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !931, file: !673, line: 308, baseType: !278, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !931, file: !673, line: 309, baseType: !278, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !931, file: !673, line: 313, baseType: !930, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !931, file: !673, line: 313, baseType: !930, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !931, file: !673, line: 315, baseType: !710, size: 192, align: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !931, file: !673, line: 323, baseType: !278, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !931, file: !673, line: 327, baseType: !923, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !931, file: !673, line: 333, baseType: !941, size: 64, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !663, line: 284, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !663, line: 284, size: 64, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !942, file: !663, line: 284, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !946, line: 19, baseType: !278)
!946 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !931, file: !673, line: 334, baseType: !278, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !931, file: !673, line: 343, baseType: !949, size: 256, offset: 704)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !673, line: 340, size: 256, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !949, file: !673, line: 341, baseType: !710, size: 192, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !949, file: !673, line: 342, baseType: !278, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !931, file: !673, line: 351, baseType: !175, size: 128, offset: 960)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !931, file: !673, line: 353, baseType: !955, size: 64, offset: 1088)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !673, line: 353, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !931, file: !673, line: 356, baseType: !958, size: 64, offset: 1152)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !673, line: 356, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !931, file: !673, line: 359, baseType: !278, size: 64, offset: 1216)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !931, file: !673, line: 361, baseType: !306, size: 64, offset: 1280)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !931, file: !673, line: 362, baseType: !124, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !931, file: !673, line: 365, baseType: !721, size: 64, offset: 1408)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !931, file: !673, line: 373, baseType: !966, offset: 1472)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !673, line: 296, elements: !202)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !927, file: !673, line: 391, baseType: !706, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !927, file: !673, line: 392, baseType: !371, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !927, file: !673, line: 394, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!278, !306, !278, !278, !278, !278}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !927, file: !673, line: 398, baseType: !278, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !927, file: !673, line: 399, baseType: !278, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !927, file: !673, line: 405, baseType: !278, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !927, file: !673, line: 406, baseType: !278, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !927, file: !673, line: 407, baseType: !978, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !663, line: 286, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !663, line: 286, size: 64, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !980, file: !663, line: 286, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !946, line: 18, baseType: !278)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !927, file: !673, line: 416, baseType: !697, size: 32, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !927, file: !673, line: 428, baseType: !697, size: 32, offset: 608)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !927, file: !673, line: 437, baseType: !697, size: 32, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !927, file: !673, line: 447, baseType: !697, size: 32, offset: 672)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !927, file: !673, line: 450, baseType: !721, size: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !927, file: !673, line: 452, baseType: !136, size: 32, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !927, file: !673, line: 454, baseType: !188, offset: 800)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !927, file: !673, line: 457, baseType: !717, size: 256, offset: 832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !927, file: !673, line: 459, baseType: !175, size: 128, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !927, file: !673, line: 466, baseType: !278, size: 64, offset: 1216)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !927, file: !673, line: 467, baseType: !278, size: 64, offset: 1280)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !927, file: !673, line: 469, baseType: !278, size: 64, offset: 1344)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !927, file: !673, line: 470, baseType: !278, size: 64, offset: 1408)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !927, file: !673, line: 471, baseType: !723, size: 64, offset: 1472)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !927, file: !673, line: 472, baseType: !278, size: 64, offset: 1536)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !927, file: !673, line: 473, baseType: !278, size: 64, offset: 1600)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !927, file: !673, line: 474, baseType: !278, size: 64, offset: 1664)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !927, file: !673, line: 475, baseType: !278, size: 64, offset: 1728)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !927, file: !673, line: 477, baseType: !188, offset: 1792)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !927, file: !673, line: 478, baseType: !278, size: 64, offset: 1792)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !927, file: !673, line: 478, baseType: !278, size: 64, offset: 1856)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !927, file: !673, line: 478, baseType: !278, size: 64, offset: 1920)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !927, file: !673, line: 478, baseType: !278, size: 64, offset: 1984)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !927, file: !673, line: 479, baseType: !278, size: 64, offset: 2048)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !927, file: !673, line: 479, baseType: !278, size: 64, offset: 2112)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !927, file: !673, line: 479, baseType: !278, size: 64, offset: 2176)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !927, file: !673, line: 480, baseType: !278, size: 64, offset: 2240)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !927, file: !673, line: 480, baseType: !278, size: 64, offset: 2304)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !927, file: !673, line: 480, baseType: !278, size: 64, offset: 2368)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !927, file: !673, line: 480, baseType: !278, size: 64, offset: 2432)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !927, file: !673, line: 482, baseType: !1015, size: 2816, offset: 2496)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 2816, elements: !1016)
!1016 = !{!1017}
!1017 = !DISubrange(count: 44)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !927, file: !673, line: 488, baseType: !1019, size: 256, offset: 5312)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1020, line: 60, size: 256, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1019, file: !1020, line: 61, baseType: !1023, size: 256)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 256, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 4)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !927, file: !673, line: 490, baseType: !1027, size: 64, offset: 5568)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !673, line: 490, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !927, file: !673, line: 493, baseType: !1030, size: 896, offset: 5632)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1031, line: 53, baseType: !1032)
!1031 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 13, size: 896, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1040, !1041, !1048, !1049, !1069, !1070, !1071}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1032, file: !1031, line: 18, baseType: !371, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1032, file: !1031, line: 28, baseType: !723, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1032, file: !1031, line: 31, baseType: !717, size: 256, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1032, file: !1031, line: 32, baseType: !1038, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1031, line: 32, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1032, file: !1031, line: 37, baseType: !129, size: 16, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1032, file: !1031, line: 40, baseType: !1042, size: 192, offset: 512)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1043, line: 53, size: 192, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1042, file: !1043, line: 54, baseType: !721, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1042, file: !1043, line: 55, baseType: !188, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1042, file: !1043, line: 59, baseType: !175, size: 128, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1032, file: !1031, line: 41, baseType: !124, size: 64, offset: 704)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1032, file: !1031, line: 42, baseType: !1050, size: 64, offset: 768)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1053, line: 13, size: 896, elements: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1052, file: !1053, line: 14, baseType: !124, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1052, file: !1053, line: 15, baseType: !278, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1052, file: !1053, line: 17, baseType: !278, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1052, file: !1053, line: 17, baseType: !278, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1052, file: !1053, line: 19, baseType: !264, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1052, file: !1053, line: 21, baseType: !264, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1052, file: !1053, line: 22, baseType: !264, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1052, file: !1053, line: 23, baseType: !264, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1052, file: !1053, line: 24, baseType: !264, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1052, file: !1053, line: 25, baseType: !264, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1052, file: !1053, line: 26, baseType: !264, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1052, file: !1053, line: 27, baseType: !264, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1052, file: !1053, line: 28, baseType: !264, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1052, file: !1053, line: 29, baseType: !264, size: 64, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1032, file: !1031, line: 44, baseType: !697, size: 32, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1032, file: !1031, line: 50, baseType: !809, size: 16, offset: 864)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1032, file: !1031, line: 51, baseType: !1072, size: 16, offset: 880)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !144, line: 18, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !128, line: 23, baseType: !1074)
!1074 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !673, line: 495, baseType: !278, size: 64, offset: 6528)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !927, file: !673, line: 497, baseType: !1077, size: 64, offset: 6592)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !673, line: 381, size: 384, elements: !1079)
!1079 = !{!1080, !1081, !2166}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1078, file: !673, line: 382, baseType: !697, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1078, file: !673, line: 383, baseType: !1082, size: 128, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !673, line: 376, size: 128, elements: !1083)
!1083 = !{!1084, !2164}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1082, file: !673, line: 377, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1087, line: 640, size: 48640, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089, !1095, !1097, !1098, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1115, !1133, !1144, !1229, !1230, !1231, !1242, !1243, !1245, !1246, !1247, !1248, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1327, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1365, !1367, !1368, !1369, !1381, !1382, !1383, !1384, !1385, !1386, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1410, !1415, !1597, !1598, !1599, !1600, !1601, !1604, !1607, !1610, !1613, !1617, !1718, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1764, !1765, !1766, !1767, !1768, !1773, !1774, !1775, !1778, !1779, !1782, !1785, !1788, !1791, !1834, !1837, !1838, !1917, !1918, !1921, !1922, !1925, !1926, !1927, !1931, !1932, !1933, !1946, !1947, !1948, !1958, !1963, !1966, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1086, file: !1087, line: 646, baseType: !1090, size: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1091, line: 56, size: 128, elements: !1092)
!1091 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !1091, line: 57, baseType: !278, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1090, file: !1091, line: 58, baseType: !143, size: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1086, file: !1087, line: 649, baseType: !1096, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !264)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1086, file: !1087, line: 657, baseType: !124, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1086, file: !1087, line: 658, baseType: !1099, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1100, line: 113, baseType: !1101)
!1100 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1100, line: 111, size: 32, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1101, file: !1100, line: 112, baseType: !697, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !1087, line: 660, baseType: !7, size: 32, offset: 288)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1086, file: !1087, line: 661, baseType: !7, size: 32, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1086, file: !1087, line: 684, baseType: !136, size: 32, offset: 352)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1086, file: !1087, line: 686, baseType: !136, size: 32, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1086, file: !1087, line: 687, baseType: !136, size: 32, offset: 416)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1086, file: !1087, line: 688, baseType: !136, size: 32, offset: 448)
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
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1119, file: !1087, line: 326, baseType: !278, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1119, file: !1087, line: 327, baseType: !143, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1116, file: !1087, line: 454, baseType: !710, size: 192, align: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1116, file: !1087, line: 455, baseType: !175, size: 128, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1116, file: !1087, line: 456, baseType: !7, size: 32, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1116, file: !1087, line: 458, baseType: !371, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1116, file: !1087, line: 459, baseType: !371, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1116, file: !1087, line: 460, baseType: !371, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1116, file: !1087, line: 461, baseType: !371, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1116, file: !1087, line: 463, baseType: !371, size: 64, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1116, file: !1087, line: 465, baseType: !1132, offset: 832)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1087, line: 415, elements: !202)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1086, file: !1087, line: 693, baseType: !1134, size: 384, offset: 1408)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1087, line: 489, size: 384, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1134, file: !1087, line: 490, baseType: !175, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1134, file: !1087, line: 491, baseType: !278, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1134, file: !1087, line: 492, baseType: !278, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1134, file: !1087, line: 493, baseType: !7, size: 32, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1134, file: !1087, line: 494, baseType: !129, size: 16, offset: 288)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1134, file: !1087, line: 495, baseType: !129, size: 16, offset: 304)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1134, file: !1087, line: 497, baseType: !1143, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1086, file: !1087, line: 697, baseType: !1145, size: 1792, offset: 1792)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1087, line: 507, size: 1792, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1226, !1227}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1145, file: !1087, line: 508, baseType: !710, size: 192, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1145, file: !1087, line: 515, baseType: !371, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1145, file: !1087, line: 516, baseType: !371, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1145, file: !1087, line: 517, baseType: !371, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1145, file: !1087, line: 518, baseType: !371, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1145, file: !1087, line: 519, baseType: !371, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1145, file: !1087, line: 526, baseType: !727, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1145, file: !1087, line: 527, baseType: !371, size: 64, offset: 576)
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
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1164, file: !1165, line: 10, baseType: !710, size: 192, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1164, file: !1165, line: 11, baseType: !1169, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1170, line: 29, baseType: !727)
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
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !21, line: 215, baseType: !730)
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
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !126, line: 27, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !262, line: 96, baseType: !136)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1179, file: !21, line: 163, baseType: !1206, size: 32, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !342, line: 276, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !342, line: 276, size: 32, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1207, file: !342, line: 276, baseType: !346, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1179, file: !21, line: 164, baseType: !1176, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1179, file: !21, line: 165, baseType: !1212, size: 128, offset: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1165, line: 14, size: 128, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1212, file: !1165, line: 15, baseType: !702, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1179, file: !21, line: 166, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1169}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1179, file: !21, line: 167, baseType: !1169, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !21, line: 123, baseType: !1221, size: 8, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !144, line: 17, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !128, line: 21, baseType: !377)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1161, file: !21, line: 124, baseType: !1221, size: 8, offset: 456)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1161, file: !21, line: 125, baseType: !1221, size: 8, offset: 464)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1161, file: !21, line: 126, baseType: !1221, size: 8, offset: 472)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1145, file: !1087, line: 572, baseType: !1161, size: 512, offset: 1216)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1145, file: !1087, line: 580, baseType: !1228, size: 64, offset: 1728)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1086, file: !1087, line: 721, baseType: !7, size: 32, offset: 3584)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1086, file: !1087, line: 722, baseType: !136, size: 32, offset: 3616)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1086, file: !1087, line: 723, baseType: !1232, size: 64, offset: 3648)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1235, line: 17, baseType: !1236)
!1235 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1235, line: 17, size: 64, elements: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1236, file: !1235, line: 17, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 1)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1086, file: !1087, line: 724, baseType: !1234, size: 64, offset: 3712)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1086, file: !1087, line: 749, baseType: !1244, offset: 3776)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1087, line: 290, elements: !202)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1086, file: !1087, line: 751, baseType: !175, size: 128, offset: 3776)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1086, file: !1087, line: 757, baseType: !923, size: 64, offset: 3904)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1086, file: !1087, line: 758, baseType: !923, size: 64, offset: 3968)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1086, file: !1087, line: 761, baseType: !1249, size: 320, offset: 4032)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1020, line: 34, size: 320, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1249, file: !1020, line: 35, baseType: !371, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1249, file: !1020, line: 36, baseType: !1253, size: 256, offset: 64)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 256, elements: !1024)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1086, file: !1087, line: 766, baseType: !136, size: 32, offset: 4352)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1086, file: !1087, line: 767, baseType: !136, size: 32, offset: 4384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1086, file: !1087, line: 768, baseType: !136, size: 32, offset: 4416)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1086, file: !1087, line: 770, baseType: !136, size: 32, offset: 4448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1086, file: !1087, line: 772, baseType: !278, size: 64, offset: 4480)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1086, file: !1087, line: 775, baseType: !7, size: 32, offset: 4544)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1086, file: !1087, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1086, file: !1087, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1086, file: !1087, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1086, file: !1087, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1086, file: !1087, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1086, file: !1087, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1086, file: !1087, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1086, file: !1087, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1086, file: !1087, line: 831, baseType: !278, size: 64, offset: 4672)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1086, file: !1087, line: 833, baseType: !1270, size: 384, offset: 4736)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1271)
!1271 = !{!1272, !1277}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1270, file: !26, line: 26, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!264, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !26, line: 27, baseType: !1278, size: 320, offset: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !26, line: 27, size: 320, elements: !1279)
!1279 = !{!1280, !1290, !1317}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1278, file: !26, line: 36, baseType: !1281, size: 320)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !26, line: 29, size: 320, elements: !1282)
!1282 = !{!1283, !1285, !1286, !1287, !1288, !1289}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1281, file: !26, line: 30, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1281, file: !26, line: 31, baseType: !143, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !26, line: 32, baseType: !143, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1281, file: !26, line: 33, baseType: !143, size: 32, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1281, file: !26, line: 34, baseType: !371, size: 64, offset: 192)
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
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !262, line: 93, baseType: !483)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1300, file: !1301, line: 9, baseType: !483, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1296, file: !26, line: 43, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1309, line: 7, size: 64, elements: !1310)
!1309 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1315}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1308, file: !1309, line: 8, baseType: !1312, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1309, line: 5, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !144, line: 20, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !128, line: 26, baseType: !136)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1308, file: !1309, line: 9, baseType: !1313, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1291, file: !26, line: 45, baseType: !371, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1278, file: !26, line: 54, baseType: !1318, size: 256)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !26, line: 48, size: 256, elements: !1319)
!1319 = !{!1320, !1323, !1324, !1325, !1326}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1318, file: !26, line: 49, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1318, file: !26, line: 50, baseType: !136, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1318, file: !26, line: 51, baseType: !136, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1318, file: !26, line: 52, baseType: !278, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1318, file: !26, line: 53, baseType: !278, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1086, file: !1087, line: 835, baseType: !1328, size: 32, offset: 5120)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !126, line: 22, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !262, line: 28, baseType: !136)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1086, file: !1087, line: 836, baseType: !1328, size: 32, offset: 5152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1086, file: !1087, line: 840, baseType: !278, size: 64, offset: 5184)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1086, file: !1087, line: 849, baseType: !1085, size: 64, offset: 5248)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1086, file: !1087, line: 852, baseType: !1085, size: 64, offset: 5312)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1086, file: !1087, line: 857, baseType: !175, size: 128, offset: 5376)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1086, file: !1087, line: 858, baseType: !175, size: 128, offset: 5504)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1086, file: !1087, line: 859, baseType: !1085, size: 64, offset: 5632)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1086, file: !1087, line: 867, baseType: !175, size: 128, offset: 5696)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1086, file: !1087, line: 868, baseType: !175, size: 128, offset: 5824)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1086, file: !1087, line: 871, baseType: !1340, size: 64, offset: 5952)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1348, !1349, !1356, !1357}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1341, file: !47, line: 61, baseType: !1099, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1341, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !47, line: 63, baseType: !188, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1341, file: !47, line: 65, baseType: !1347, size: 256, offset: 64)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 256, elements: !1024)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1341, file: !47, line: 66, baseType: !585, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1341, file: !47, line: 68, baseType: !1350, size: 128, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1351, line: 40, baseType: !1352)
!1351 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1351, line: 36, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !1351, line: 37, baseType: !188)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1352, file: !1351, line: 38, baseType: !175, size: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1341, file: !47, line: 69, baseType: !319, size: 128, align: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1341, file: !47, line: 70, baseType: !1358, size: 128, offset: 640)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 128, elements: !1240)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1359, file: !47, line: 55, baseType: !136, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1359, file: !47, line: 56, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1086, file: !1087, line: 872, baseType: !1366, size: 512, offset: 6016)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 512, elements: !1024)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1086, file: !1087, line: 873, baseType: !175, size: 128, offset: 6528)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1086, file: !1087, line: 874, baseType: !175, size: 128, offset: 6656)
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
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1376, file: !1377, line: 44, baseType: !730)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1376, file: !1377, line: 45, baseType: !175, size: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1086, file: !1087, line: 879, baseType: !655, size: 64, offset: 6848)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1086, file: !1087, line: 882, baseType: !655, size: 64, offset: 6912)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1086, file: !1087, line: 884, baseType: !371, size: 64, offset: 6976)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1086, file: !1087, line: 885, baseType: !371, size: 64, offset: 7040)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1086, file: !1087, line: 890, baseType: !371, size: 64, offset: 7104)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1086, file: !1087, line: 891, baseType: !1387, size: 128, offset: 7168)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1087, line: 242, size: 128, elements: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1387, file: !1087, line: 244, baseType: !371, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1387, file: !1087, line: 245, baseType: !371, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !1087, line: 246, baseType: !730, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1086, file: !1087, line: 900, baseType: !278, size: 64, offset: 7296)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1086, file: !1087, line: 901, baseType: !278, size: 64, offset: 7360)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1086, file: !1087, line: 904, baseType: !371, size: 64, offset: 7424)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1086, file: !1087, line: 907, baseType: !371, size: 64, offset: 7488)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1086, file: !1087, line: 910, baseType: !278, size: 64, offset: 7552)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1086, file: !1087, line: 911, baseType: !278, size: 64, offset: 7616)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1086, file: !1087, line: 914, baseType: !1399, size: 640, offset: 7680)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1400, line: 123, size: 640, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !{!1402, !1408, !1409}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1399, file: !1400, line: 124, baseType: !1403, size: 576)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 576, elements: !230)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1400, line: 108, size: 192, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1404, file: !1400, line: 109, baseType: !371, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1404, file: !1400, line: 110, baseType: !1212, size: 128, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1399, file: !1400, line: 125, baseType: !7, size: 32, offset: 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1399, file: !1400, line: 126, baseType: !7, size: 32, offset: 608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1086, file: !1087, line: 917, baseType: !1411, size: 192, offset: 8320)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1400, line: 134, size: 192, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1411, file: !1400, line: 135, baseType: !319, size: 128, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1411, file: !1400, line: 136, baseType: !7, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1086, file: !1087, line: 923, baseType: !1416, size: 64, offset: 8512)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1419, line: 111, size: 1280, elements: !1420)
!1419 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1438, !1439, !1440, !1441, !1442, !1443, !1550, !1551, !1552, !1553, !1579, !1582, !1592}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1418, file: !1419, line: 112, baseType: !697, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1418, file: !1419, line: 120, baseType: !385, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1418, file: !1419, line: 121, baseType: !393, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1418, file: !1419, line: 122, baseType: !385, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1418, file: !1419, line: 123, baseType: !393, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1418, file: !1419, line: 124, baseType: !385, size: 32, offset: 160)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1418, file: !1419, line: 125, baseType: !393, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1418, file: !1419, line: 126, baseType: !385, size: 32, offset: 224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1418, file: !1419, line: 127, baseType: !393, size: 32, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1418, file: !1419, line: 128, baseType: !7, size: 32, offset: 288)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1418, file: !1419, line: 129, baseType: !1432, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1433, line: 26, baseType: !1434)
!1433 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1433, line: 24, size: 64, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1434, file: !1433, line: 25, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !156)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1418, file: !1419, line: 130, baseType: !1432, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1418, file: !1419, line: 131, baseType: !1432, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1418, file: !1419, line: 132, baseType: !1432, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1418, file: !1419, line: 133, baseType: !1432, size: 64, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1418, file: !1419, line: 135, baseType: !377, size: 8, offset: 640)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1418, file: !1419, line: 137, baseType: !1444, size: 64, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1446, line: 189, size: 1664, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1449, !1452, !1457, !1458, !1461, !1462, !1467, !1468, !1469, !1470, !1472, !1473, !1474, !1475, !1476, !1514, !1535}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1445, file: !1446, line: 190, baseType: !1099, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1445, file: !1446, line: 191, baseType: !1450, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1446, line: 28, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !126, line: 98, baseType: !1313)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 192, baseType: !1453, size: 192, offset: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 192, size: 192, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1453, file: !1446, line: 193, baseType: !175, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1453, file: !1446, line: 194, baseType: !710, size: 192, align: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1445, file: !1446, line: 199, baseType: !717, size: 256, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1445, file: !1446, line: 200, baseType: !1459, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1446, line: 200, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1445, file: !1446, line: 201, baseType: !124, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 202, baseType: !1463, size: 64, offset: 640)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 202, size: 64, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1463, file: !1446, line: 203, baseType: !489, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1463, file: !1446, line: 204, baseType: !489, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1445, file: !1446, line: 206, baseType: !489, size: 64, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1445, file: !1446, line: 207, baseType: !385, size: 32, offset: 768)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1445, file: !1446, line: 208, baseType: !393, size: 32, offset: 800)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1445, file: !1446, line: 209, baseType: !1471, size: 32, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1446, line: 31, baseType: !509)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1445, file: !1446, line: 210, baseType: !129, size: 16, offset: 864)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1445, file: !1446, line: 211, baseType: !129, size: 16, offset: 880)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1445, file: !1446, line: 215, baseType: !1074, size: 16, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1445, file: !1446, line: 222, baseType: !278, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 239, baseType: !1477, size: 320, offset: 1024)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 239, size: 320, elements: !1478)
!1478 = !{!1479, !1506}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1477, file: !1446, line: 240, baseType: !1480, size: 320)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1446, line: 108, size: 320, elements: !1481)
!1481 = !{!1482, !1483, !1495, !1498, !1505}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1480, file: !1446, line: 110, baseType: !278, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1446, line: 111, baseType: !1484, size: 64, offset: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1446, line: 111, size: 64, elements: !1485)
!1485 = !{!1486, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1446, line: 112, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !1446, line: 112, size: 64, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1487, file: !1446, line: 114, baseType: !809, size: 16)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1487, file: !1446, line: 115, baseType: !1491, size: 48, offset: 16)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 48, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 6)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1484, file: !1446, line: 121, baseType: !278, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1480, file: !1446, line: 123, baseType: !1496, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1446, line: 96, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1480, file: !1446, line: 124, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1446, line: 102, size: 192, elements: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1500, file: !1446, line: 103, baseType: !319, size: 128, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1500, file: !1446, line: 104, baseType: !1099, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1500, file: !1446, line: 105, baseType: !440, size: 8, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1480, file: !1446, line: 125, baseType: !172, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1446, line: 241, baseType: !1507, size: 320)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !1446, line: 241, size: 320, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1507, file: !1446, line: 242, baseType: !278, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1507, file: !1446, line: 243, baseType: !278, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1507, file: !1446, line: 244, baseType: !1496, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1507, file: !1446, line: 245, baseType: !1499, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1507, file: !1446, line: 246, baseType: !229, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 254, baseType: !1515, size: 256, offset: 1344)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 254, size: 256, elements: !1516)
!1516 = !{!1517, !1523}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1515, file: !1446, line: 255, baseType: !1518, size: 256)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1446, line: 128, size: 256, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1518, file: !1446, line: 129, baseType: !124, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1518, file: !1446, line: 130, baseType: !1522, size: 256)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1446, line: 256, baseType: !1524, size: 256)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !1446, line: 256, size: 256, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1524, file: !1446, line: 258, baseType: !175, size: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1524, file: !1446, line: 259, baseType: !1528, size: 128, offset: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1529, line: 22, size: 128, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1528, file: !1529, line: 23, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1529, line: 23, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1528, file: !1529, line: 24, baseType: !278, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1445, file: !1446, line: 274, baseType: !1536, size: 64, offset: 1600)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1446, line: 170, size: 192, elements: !1538)
!1538 = !{!1539, !1548, !1549}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1537, file: !1446, line: 171, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1446, line: 165, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!136, !1444, !1544, !1546, !1444}
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
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1555, file: !1556, line: 15, baseType: !697, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1555, file: !1556, line: 16, baseType: !697, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1555, file: !1556, line: 21, baseType: !721, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1555, file: !1556, line: 27, baseType: !278, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1555, file: !1556, line: 28, baseType: !278, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1555, file: !1556, line: 29, baseType: !721, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1555, file: !1556, line: 32, baseType: !589, size: 128, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1555, file: !1556, line: 33, baseType: !385, size: 32, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1555, file: !1556, line: 37, baseType: !721, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1555, file: !1556, line: 44, baseType: !1569, size: 256, offset: 640)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1570, line: 15, size: 256, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1569, file: !1570, line: 16, baseType: !730)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1569, file: !1570, line: 18, baseType: !136, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1569, file: !1570, line: 19, baseType: !136, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1569, file: !1570, line: 20, baseType: !136, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1569, file: !1570, line: 21, baseType: !136, size: 32, offset: 96)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1569, file: !1570, line: 22, baseType: !278, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1569, file: !1570, line: 23, baseType: !278, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1418, file: !1419, line: 146, baseType: !1580, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !673, line: 516, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1418, file: !1419, line: 147, baseType: !1583, size: 64, offset: 1088)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1419, line: 25, size: 64, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1584, file: !1419, line: 26, baseType: !697, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1584, file: !1419, line: 27, baseType: !136, size: 32, offset: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1584, file: !1419, line: 28, baseType: !1589, offset: 64)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, elements: !1590)
!1590 = !{!1591}
!1591 = !DISubrange(count: 0)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !1419, line: 149, baseType: !1593, size: 128, offset: 1152)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !1419, line: 149, size: 128, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1593, file: !1419, line: 150, baseType: !136, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1593, file: !1419, line: 151, baseType: !319, size: 128, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1086, file: !1087, line: 926, baseType: !1416, size: 64, offset: 8576)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1086, file: !1087, line: 929, baseType: !1416, size: 64, offset: 8640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1086, file: !1087, line: 933, baseType: !1444, size: 64, offset: 8704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1086, file: !1087, line: 943, baseType: !138, size: 128, offset: 8768)
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
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1619, file: !1620, line: 84, baseType: !697, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1619, file: !1620, line: 85, baseType: !136, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1619, file: !1620, line: 86, baseType: !175, size: 128, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1619, file: !1620, line: 88, baseType: !1350, size: 128, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1619, file: !1620, line: 91, baseType: !1085, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1619, file: !1620, line: 94, baseType: !1629, size: 192, offset: 448)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1630, line: 30, size: 192, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1629, file: !1630, line: 31, baseType: !175, size: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1629, file: !1630, line: 32, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1635, line: 25, baseType: !1636)
!1635 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1635, line: 23, size: 64, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1636, file: !1635, line: 24, baseType: !1239, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1619, file: !1620, line: 97, baseType: !585, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1619, file: !1620, line: 100, baseType: !136, size: 32, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1619, file: !1620, line: 106, baseType: !136, size: 32, offset: 736)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1619, file: !1620, line: 107, baseType: !1085, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1619, file: !1620, line: 110, baseType: !136, size: 32, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1619, file: !1620, line: 111, baseType: !7, size: 32, offset: 864)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1619, file: !1620, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1619, file: !1620, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1619, file: !1620, line: 128, baseType: !136, size: 32, offset: 928)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1619, file: !1620, line: 129, baseType: !175, size: 128, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1619, file: !1620, line: 132, baseType: !1161, size: 512, offset: 1088)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1619, file: !1620, line: 133, baseType: !1169, size: 64, offset: 1600)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1619, file: !1620, line: 140, baseType: !1652, size: 256, offset: 1664)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 256, elements: !156)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1620, line: 38, size: 128, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1653, file: !1620, line: 39, baseType: !371, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1653, file: !1620, line: 40, baseType: !371, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1619, file: !1620, line: 146, baseType: !1658, size: 192, offset: 1920)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1620, line: 66, size: 192, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1658, file: !1620, line: 67, baseType: !1661, size: 192)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1620, line: 47, size: 192, elements: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1661, file: !1620, line: 48, baseType: !723, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1661, file: !1620, line: 49, baseType: !723, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1661, file: !1620, line: 50, baseType: !723, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1619, file: !1620, line: 150, baseType: !1399, size: 640, offset: 2112)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1619, file: !1620, line: 153, baseType: !1668, size: 256, offset: 2752)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 256, elements: !1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1619, file: !1620, line: 159, baseType: !1340, size: 64, offset: 3008)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1619, file: !1620, line: 162, baseType: !136, size: 32, offset: 3072)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1619, file: !1620, line: 164, baseType: !1672, size: 64, offset: 3136)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1620, line: 164, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1619, file: !1620, line: 175, baseType: !1675, size: 32, offset: 3200)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !342, line: 805, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 798, size: 32, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1676, file: !342, line: 803, baseType: !341, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1676, file: !342, line: 804, baseType: !188, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1619, file: !1620, line: 176, baseType: !371, size: 64, offset: 3264)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1619, file: !1620, line: 176, baseType: !371, size: 64, offset: 3328)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1619, file: !1620, line: 176, baseType: !371, size: 64, offset: 3392)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1619, file: !1620, line: 176, baseType: !371, size: 64, offset: 3456)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1619, file: !1620, line: 177, baseType: !371, size: 64, offset: 3520)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1619, file: !1620, line: 178, baseType: !371, size: 64, offset: 3584)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1619, file: !1620, line: 179, baseType: !1387, size: 128, offset: 3648)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1619, file: !1620, line: 180, baseType: !278, size: 64, offset: 3776)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1619, file: !1620, line: 180, baseType: !278, size: 64, offset: 3840)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1619, file: !1620, line: 180, baseType: !278, size: 64, offset: 3904)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1619, file: !1620, line: 180, baseType: !278, size: 64, offset: 3968)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1619, file: !1620, line: 181, baseType: !278, size: 64, offset: 4032)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1619, file: !1620, line: 181, baseType: !278, size: 64, offset: 4096)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1619, file: !1620, line: 181, baseType: !278, size: 64, offset: 4160)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1619, file: !1620, line: 181, baseType: !278, size: 64, offset: 4224)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1619, file: !1620, line: 182, baseType: !278, size: 64, offset: 4288)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1619, file: !1620, line: 182, baseType: !278, size: 64, offset: 4352)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1619, file: !1620, line: 182, baseType: !278, size: 64, offset: 4416)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1619, file: !1620, line: 182, baseType: !278, size: 64, offset: 4480)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1619, file: !1620, line: 183, baseType: !278, size: 64, offset: 4544)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1619, file: !1620, line: 183, baseType: !278, size: 64, offset: 4608)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1619, file: !1620, line: 184, baseType: !1702, offset: 4672)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1703, line: 12, elements: !202)
!1703 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1619, file: !1620, line: 192, baseType: !373, size: 64, offset: 4672)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1619, file: !1620, line: 203, baseType: !1706, size: 2048, offset: 4736)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1707, size: 2048, elements: !140)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1708, line: 43, size: 128, elements: !1709)
!1708 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1707, file: !1708, line: 44, baseType: !277, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1707, file: !1708, line: 45, baseType: !277, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1619, file: !1620, line: 220, baseType: !440, size: 8, offset: 6784)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1619, file: !1620, line: 221, baseType: !1074, size: 16, offset: 6800)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1619, file: !1620, line: 222, baseType: !1074, size: 16, offset: 6816)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1619, file: !1620, line: 224, baseType: !923, size: 64, offset: 6848)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1619, file: !1620, line: 227, baseType: !1042, size: 192, offset: 6912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1619, file: !1620, line: 233, baseType: !1042, size: 192, offset: 7104)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1086, file: !1087, line: 970, baseType: !1719, size: 64, offset: 9280)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1620, line: 20, size: 16576, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1720, file: !1620, line: 21, baseType: !188)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1720, file: !1620, line: 22, baseType: !1099, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1720, file: !1620, line: 23, baseType: !1350, size: 128, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1720, file: !1620, line: 24, baseType: !1726, size: 16384, offset: 192)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1727, size: 16384, elements: !234)
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
!1738 = !{null, !136}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1730, file: !1630, line: 38, baseType: !278, size: 64, offset: 64)
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
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1086, file: !1087, line: 976, baseType: !278, size: 64, offset: 9728)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1086, file: !1087, line: 977, baseType: !275, size: 64, offset: 9792)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1086, file: !1087, line: 978, baseType: !7, size: 32, offset: 9856)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1086, file: !1087, line: 980, baseType: !322, size: 64, offset: 9920)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1086, file: !1087, line: 989, baseType: !1756, size: 128, offset: 9984)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1757, line: 35, size: 128, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1756, file: !1757, line: 36, baseType: !136, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1756, file: !1757, line: 37, baseType: !697, size: 32, offset: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1756, file: !1757, line: 38, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1757, line: 23, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1086, file: !1087, line: 992, baseType: !371, size: 64, offset: 10112)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1086, file: !1087, line: 993, baseType: !371, size: 64, offset: 10176)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1086, file: !1087, line: 996, baseType: !188, offset: 10240)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1086, file: !1087, line: 999, baseType: !730, offset: 10240)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1086, file: !1087, line: 1001, baseType: !1769, size: 64, offset: 10240)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1087, line: 636, size: 64, elements: !1770)
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1769, file: !1087, line: 637, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1086, file: !1087, line: 1005, baseType: !702, size: 128, offset: 10304)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1086, file: !1087, line: 1007, baseType: !1085, size: 64, offset: 10432)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1086, file: !1087, line: 1009, baseType: !1776, size: 64, offset: 10496)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1087, line: 1009, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1086, file: !1087, line: 1043, baseType: !124, size: 64, offset: 10560)
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
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1793, file: !1794, line: 100, baseType: !721, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1793, file: !1794, line: 101, baseType: !697, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1793, file: !1794, line: 102, baseType: !697, size: 32, offset: 96)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1793, file: !1794, line: 105, baseType: !188, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1793, file: !1794, line: 107, baseType: !129, size: 16, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1793, file: !1794, line: 109, baseType: !689, size: 128, offset: 192)
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
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1811, file: !1794, line: 84, baseType: !175, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1811, file: !1794, line: 85, baseType: !884, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1794, line: 87, baseType: !1816, size: 128, offset: 256)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1794, line: 87, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1816, file: !1794, line: 88, baseType: !589, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1816, file: !1794, line: 89, baseType: !319, size: 128, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !1794, line: 92, baseType: !7, size: 32, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1793, file: !1794, line: 111, baseType: !585, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1793, file: !1794, line: 113, baseType: !1823, size: 256, offset: 448)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1824, line: 102, size: 256, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1823, file: !1824, line: 103, baseType: !721, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1823, file: !1824, line: 104, baseType: !175, size: 128, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1823, file: !1824, line: 105, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1824, line: 21, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1086, file: !1087, line: 1061, baseType: !1835, size: 64, offset: 10944)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1087, line: 43, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1086, file: !1087, line: 1064, baseType: !278, size: 64, offset: 11008)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1086, file: !1087, line: 1065, baseType: !1839, size: 64, offset: 11072)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1630, line: 14, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1630, line: 12, size: 384, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1630, line: 13, baseType: !1844, size: 384)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1630, line: 13, size: 384, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1844, file: !1630, line: 13, baseType: !136, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1844, file: !1630, line: 13, baseType: !136, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1844, file: !1630, line: 13, baseType: !136, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1844, file: !1630, line: 13, baseType: !1850, size: 256, offset: 128)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1851, line: 32, size: 256, elements: !1852)
!1851 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1858, !1871, !1877, !1886, !1906, !1911}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1850, file: !1851, line: 37, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 34, size: 64, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1854, file: !1851, line: 35, baseType: !1329, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1854, file: !1851, line: 36, baseType: !391, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1850, file: !1851, line: 45, baseType: !1859, size: 192)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 40, size: 192, elements: !1860)
!1860 = !{!1861, !1863, !1864, !1870}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1859, file: !1851, line: 41, baseType: !1862, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !262, line: 95, baseType: !136)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1859, file: !1851, line: 42, baseType: !136, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1859, file: !1851, line: 43, baseType: !1865, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1851, line: 11, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1851, line: 8, size: 64, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1866, file: !1851, line: 9, baseType: !136, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1866, file: !1851, line: 10, baseType: !124, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1859, file: !1851, line: 44, baseType: !136, size: 32, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1850, file: !1851, line: 52, baseType: !1872, size: 128)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 48, size: 128, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1872, file: !1851, line: 49, baseType: !1329, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1872, file: !1851, line: 50, baseType: !391, size: 32, offset: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1872, file: !1851, line: 51, baseType: !1865, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1850, file: !1851, line: 61, baseType: !1878, size: 256)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 55, size: 256, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1885}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1878, file: !1851, line: 56, baseType: !1329, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1878, file: !1851, line: 57, baseType: !391, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1878, file: !1851, line: 58, baseType: !136, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1878, file: !1851, line: 59, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !262, line: 94, baseType: !263)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1878, file: !1851, line: 60, baseType: !1884, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1850, file: !1851, line: 95, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 64, size: 256, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1887, file: !1851, line: 65, baseType: !124, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1851, line: 77, baseType: !1891, size: 192, offset: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1851, line: 77, size: 192, elements: !1892)
!1892 = !{!1893, !1894, !1901}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1891, file: !1851, line: 82, baseType: !1074, size: 16)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1891, file: !1851, line: 88, baseType: !1895, size: 192)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1851, line: 84, size: 192, elements: !1896)
!1896 = !{!1897, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1895, file: !1851, line: 85, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !1199)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1895, file: !1851, line: 86, baseType: !124, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1895, file: !1851, line: 87, baseType: !124, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1891, file: !1851, line: 93, baseType: !1902, size: 96)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1851, line: 90, size: 96, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1902, file: !1851, line: 91, baseType: !1898, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1902, file: !1851, line: 92, baseType: !145, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1850, file: !1851, line: 101, baseType: !1907, size: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 98, size: 128, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1907, file: !1851, line: 99, baseType: !264, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1907, file: !1851, line: 100, baseType: !136, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1850, file: !1851, line: 108, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 104, size: 128, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1912, file: !1851, line: 105, baseType: !124, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1912, file: !1851, line: 106, baseType: !136, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1912, file: !1851, line: 107, baseType: !7, size: 32, offset: 96)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1086, file: !1087, line: 1067, baseType: !1702, offset: 11136)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1086, file: !1087, line: 1099, baseType: !1919, size: 64, offset: 11136)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1087, line: 56, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1086, file: !1087, line: 1103, baseType: !175, size: 128, offset: 11200)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1086, file: !1087, line: 1104, baseType: !1923, size: 64, offset: 11328)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1087, line: 46, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1086, file: !1087, line: 1105, baseType: !1042, size: 192, offset: 11392)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1086, file: !1087, line: 1106, baseType: !7, size: 32, offset: 11584)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1086, file: !1087, line: 1109, baseType: !1928, size: 128, offset: 11648)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 128, elements: !156)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1087, line: 51, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1086, file: !1087, line: 1110, baseType: !1042, size: 192, offset: 11776)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1086, file: !1087, line: 1111, baseType: !175, size: 128, offset: 11968)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1086, file: !1087, line: 1173, baseType: !1934, size: 64, offset: 12096)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1936, line: 62, size: 256, align: 256, elements: !1937)
!1936 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1945}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1935, file: !1936, line: 75, baseType: !145, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1935, file: !1936, line: 90, baseType: !145, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1935, file: !1936, line: 124, baseType: !1941, size: 64, offset: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1936, line: 109, size: 64, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1941, file: !1936, line: 110, baseType: !372, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1941, file: !1936, line: 112, baseType: !372, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1936, line: 144, baseType: !145, size: 32, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1086, file: !1087, line: 1174, baseType: !143, size: 32, offset: 12160)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1086, file: !1087, line: 1179, baseType: !278, size: 64, offset: 12224)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1086, file: !1087, line: 1182, baseType: !1949, size: 128, offset: 12288)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1020, line: 76, size: 128, elements: !1950)
!1950 = !{!1951, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1949, file: !1020, line: 85, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1953, line: 7, size: 64, elements: !1954)
!1953 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1952, file: !1953, line: 12, baseType: !1236, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1949, file: !1020, line: 88, baseType: !440, size: 8, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1949, file: !1020, line: 95, baseType: !440, size: 8, offset: 72)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !1087, line: 1184, baseType: !1959, size: 128, offset: 12416)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !1087, line: 1184, size: 128, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1959, file: !1087, line: 1185, baseType: !1099, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1959, file: !1087, line: 1186, baseType: !319, size: 128, align: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1086, file: !1087, line: 1190, baseType: !1964, size: 64, offset: 12544)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1087, line: 53, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1086, file: !1087, line: 1192, baseType: !1967, size: 128, offset: 12608)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1020, line: 64, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1967, file: !1020, line: 65, baseType: !671, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1967, file: !1020, line: 67, baseType: !145, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1967, file: !1020, line: 68, baseType: !145, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1086, file: !1087, line: 1206, baseType: !136, size: 32, offset: 12736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1086, file: !1087, line: 1207, baseType: !136, size: 32, offset: 12768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1086, file: !1087, line: 1209, baseType: !278, size: 64, offset: 12800)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1086, file: !1087, line: 1219, baseType: !371, size: 64, offset: 12864)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1086, file: !1087, line: 1220, baseType: !371, size: 64, offset: 12928)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1086, file: !1087, line: 1317, baseType: !136, size: 32, offset: 12992)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1086, file: !1087, line: 1319, baseType: !1085, size: 64, offset: 13056)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1086, file: !1087, line: 1322, baseType: !1980, size: 64, offset: 13120)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1982, line: 9, flags: DIFlagFwdDecl)
!1982 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1086, file: !1087, line: 1326, baseType: !1099, size: 32, offset: 13184)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1086, file: !1087, line: 1342, baseType: !124, size: 64, offset: 13248)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1086, file: !1087, line: 1343, baseType: !372, size: 64, offset: 13312)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1086, file: !1087, line: 1344, baseType: !371, size: 64, offset: 13376)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1086, file: !1087, line: 1345, baseType: !372, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1086, file: !1087, line: 1346, baseType: !372, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1086, file: !1087, line: 1347, baseType: !372, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1086, file: !1087, line: 1348, baseType: !319, size: 128, align: 64, offset: 13504)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1086, file: !1087, line: 1358, baseType: !1992, size: 34816, offset: 13824)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1993, line: 485, size: 34816, elements: !1994)
!1993 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2024, !2025, !2026, !2027, !2028, !2029, !2032, !2033, !2034}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1992, file: !1993, line: 487, baseType: !1996, size: 192)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1997, size: 192, elements: !230)
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
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1992, file: !1993, line: 491, baseType: !278, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1992, file: !1993, line: 495, baseType: !129, size: 16, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1992, file: !1993, line: 496, baseType: !129, size: 16, offset: 272)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1992, file: !1993, line: 497, baseType: !129, size: 16, offset: 288)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1992, file: !1993, line: 498, baseType: !129, size: 16, offset: 304)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1992, file: !1993, line: 502, baseType: !278, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1992, file: !1993, line: 503, baseType: !278, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1992, file: !1993, line: 514, baseType: !2021, size: 256, offset: 448)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2022, size: 256, elements: !1024)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1993, line: 483, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1992, file: !1993, line: 516, baseType: !278, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1992, file: !1993, line: 518, baseType: !278, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1992, file: !1993, line: 520, baseType: !278, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1992, file: !1993, line: 521, baseType: !278, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1992, file: !1993, line: 522, baseType: !278, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1992, file: !1993, line: 528, baseType: !2030, size: 64, offset: 1024)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1993, line: 10, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1992, file: !1993, line: 535, baseType: !278, size: 64, offset: 1088)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1992, file: !1993, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1992, file: !1993, line: 540, baseType: !2035, size: 33280, offset: 1536)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2036, line: 317, size: 33280, elements: !2037)
!2036 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !{!2038, !2039, !2040}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2035, file: !2036, line: 330, baseType: !7, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2035, file: !2036, line: 337, baseType: !278, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2035, file: !2036, line: 348, baseType: !2041, size: 32768, offset: 512)
!2041 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2036, line: 304, size: 32768, elements: !2042)
!2042 = !{!2043, !2058, !2097, !2147, !2160}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2041, file: !2036, line: 305, baseType: !2044, size: 896)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2036, line: 12, size: 896, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2057}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2044, file: !2036, line: 13, baseType: !143, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2044, file: !2036, line: 14, baseType: !143, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2044, file: !2036, line: 15, baseType: !143, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2044, file: !2036, line: 16, baseType: !143, size: 32, offset: 96)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2044, file: !2036, line: 17, baseType: !143, size: 32, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2044, file: !2036, line: 18, baseType: !143, size: 32, offset: 160)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2044, file: !2036, line: 19, baseType: !143, size: 32, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2044, file: !2036, line: 22, baseType: !2054, size: 640, offset: 224)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !2055)
!2055 = !{!2056}
!2056 = !DISubrange(count: 20)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2044, file: !2036, line: 25, baseType: !143, size: 32, offset: 864)
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
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2069, file: !2036, line: 41, baseType: !371, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2069, file: !2036, line: 42, baseType: !371, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2036, line: 44, baseType: !2074, size: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !2036, line: 44, size: 128, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2074, file: !2036, line: 45, baseType: !143, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2074, file: !2036, line: 46, baseType: !143, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2074, file: !2036, line: 47, baseType: !143, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2074, file: !2036, line: 48, baseType: !143, size: 32, offset: 96)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2059, file: !2036, line: 51, baseType: !143, size: 32, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2059, file: !2036, line: 52, baseType: !143, size: 32, offset: 224)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2059, file: !2036, line: 55, baseType: !2083, size: 1024, offset: 256)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !2084)
!2084 = !{!2085}
!2085 = !DISubrange(count: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2059, file: !2036, line: 58, baseType: !2087, size: 2048, offset: 1280)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2048, elements: !234)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2059, file: !2036, line: 60, baseType: !2089, size: 384, offset: 3328)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 384, elements: !2090)
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
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2098, file: !2036, line: 80, baseType: !143, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2098, file: !2036, line: 81, baseType: !143, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2098, file: !2036, line: 82, baseType: !143, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2098, file: !2036, line: 83, baseType: !143, size: 32, offset: 96)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2098, file: !2036, line: 84, baseType: !143, size: 32, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2098, file: !2036, line: 85, baseType: !143, size: 32, offset: 160)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2098, file: !2036, line: 86, baseType: !143, size: 32, offset: 192)
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
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2116, file: !2117, line: 12, baseType: !264, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2116, file: !2117, line: 13, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2123, line: 56, size: 1344, elements: !2124)
!2123 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2122, file: !2123, line: 61, baseType: !278, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2122, file: !2123, line: 62, baseType: !278, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2122, file: !2123, line: 63, baseType: !278, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2122, file: !2123, line: 64, baseType: !278, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2122, file: !2123, line: 65, baseType: !278, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2122, file: !2123, line: 66, baseType: !278, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2122, file: !2123, line: 68, baseType: !278, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2122, file: !2123, line: 69, baseType: !278, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2122, file: !2123, line: 70, baseType: !278, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2122, file: !2123, line: 71, baseType: !278, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2122, file: !2123, line: 72, baseType: !278, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2122, file: !2123, line: 73, baseType: !278, size: 64, offset: 704)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2122, file: !2123, line: 74, baseType: !278, size: 64, offset: 768)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2122, file: !2123, line: 75, baseType: !278, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2122, file: !2123, line: 76, baseType: !278, size: 64, offset: 896)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2122, file: !2123, line: 81, baseType: !278, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2122, file: !2123, line: 83, baseType: !278, size: 64, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2122, file: !2123, line: 84, baseType: !278, size: 64, offset: 1088)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2122, file: !2123, line: 85, baseType: !278, size: 64, offset: 1152)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2122, file: !2123, line: 86, baseType: !278, size: 64, offset: 1216)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2122, file: !2123, line: 87, baseType: !278, size: 64, offset: 1280)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2098, file: !2036, line: 96, baseType: !143, size: 32, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2041, file: !2036, line: 308, baseType: !2148, size: 4608, align: 512)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2036, line: 289, size: 4608, align: 512, elements: !2149)
!2149 = !{!2150, !2151, !2158}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2148, file: !2036, line: 290, baseType: !2059, size: 4096, align: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2148, file: !2036, line: 291, baseType: !2152, size: 512, offset: 4096)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2036, line: 268, size: 512, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2152, file: !2036, line: 269, baseType: !371, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2152, file: !2036, line: 270, baseType: !371, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2152, file: !2036, line: 271, baseType: !2157, size: 384, offset: 128)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !1492)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2148, file: !2036, line: 292, baseType: !2159, offset: 4608)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, elements: !1590)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2041, file: !2036, line: 309, baseType: !2161, size: 32768)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 32768, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 4096)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !673, line: 378, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1078, file: !673, line: 384, baseType: !1371, size: 192, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !927, file: !673, line: 500, baseType: !188, offset: 6656)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !927, file: !673, line: 501, baseType: !2169, size: 64, offset: 6656)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !673, line: 387, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !927, file: !673, line: 516, baseType: !1580, size: 64, offset: 6720)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !927, file: !673, line: 519, baseType: !306, size: 64, offset: 6784)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !927, file: !673, line: 521, baseType: !2174, size: 64, offset: 6848)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !673, line: 521, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !927, file: !673, line: 545, baseType: !697, size: 32, offset: 6912)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !927, file: !673, line: 548, baseType: !440, size: 8, offset: 6944)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !927, file: !673, line: 550, baseType: !2179, offset: 6952)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2180, line: 142, elements: !202)
!2180 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !927, file: !673, line: 554, baseType: !1823, size: 256, offset: 6976)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !927, file: !673, line: 557, baseType: !143, size: 32, offset: 7232)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !924, file: !673, line: 565, baseType: !2184, offset: 7296)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !2185)
!2185 = !{!2186}
!2186 = !DISubrange(count: -1)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !920, file: !673, line: 151, baseType: !697, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !913, file: !673, line: 156, baseType: !188, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 159, baseType: !2190, size: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 159, size: 128, elements: !2191)
!2191 = !{!2192, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2190, file: !673, line: 161, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !673, line: 161, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2190, file: !673, line: 162, baseType: !124, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !677, file: !673, line: 176, baseType: !319, size: 128, align: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 179, baseType: !2198, size: 32, offset: 384)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 179, size: 32, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2198, file: !673, line: 184, baseType: !697, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2198, file: !673, line: 192, baseType: !7, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2198, file: !673, line: 194, baseType: !7, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2198, file: !673, line: 195, baseType: !136, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !672, file: !673, line: 199, baseType: !697, size: 32, offset: 416)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !607, file: !38, line: 1964, baseType: !2206, size: 64, offset: 1344)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!264, !549, !2209}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2211, line: 12, size: 256, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2214, !2215, !2216, !2217}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2210, file: !2211, line: 13, baseType: !125, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2210, file: !2211, line: 16, baseType: !136, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2210, file: !2211, line: 23, baseType: !278, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2210, file: !2211, line: 30, baseType: !278, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2210, file: !2211, line: 33, baseType: !2218, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !673, line: 27, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !607, file: !38, line: 1966, baseType: !2206, size: 64, offset: 1408)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !550, file: !38, line: 1424, baseType: !2222, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2225)
!2225 = !{!2226, !2272, !2276, !2280, !2281, !2282, !2283, !2284, !2289, !2294, !2298}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2224, file: !32, line: 323, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!136, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2257, !2258, !2259}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2231, file: !32, line: 295, baseType: !589, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2231, file: !32, line: 296, baseType: !175, size: 128, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2231, file: !32, line: 297, baseType: !175, size: 128, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2231, file: !32, line: 298, baseType: !175, size: 128, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2231, file: !32, line: 299, baseType: !1042, size: 192, offset: 512)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2231, file: !32, line: 300, baseType: !188, offset: 704)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2231, file: !32, line: 301, baseType: !697, size: 32, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2231, file: !32, line: 302, baseType: !549, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2231, file: !32, line: 303, baseType: !2242, size: 64, offset: 832)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2243)
!2243 = !{!2244, !2256}
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !32, line: 69, baseType: !2245, size: 32)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !32, line: 69, size: 32, elements: !2246)
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2245, file: !32, line: 70, baseType: !385, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2245, file: !32, line: 71, baseType: !393, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2245, file: !32, line: 72, baseType: !2250, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2251, line: 24, baseType: !2252)
!2251 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2251, line: 22, size: 32, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2252, file: !2251, line: 23, baseType: !2255, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2251, line: 20, baseType: !391)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2242, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2231, file: !32, line: 304, baseType: !481, size: 64, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2231, file: !32, line: 305, baseType: !278, size: 64, offset: 960)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2231, file: !32, line: 306, baseType: !2260, size: 576, offset: 1024)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2261)
!2261 = !{!2262, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2260, file: !32, line: 206, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !483)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2260, file: !32, line: 207, baseType: !2263, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2260, file: !32, line: 208, baseType: !2263, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2260, file: !32, line: 209, baseType: !2263, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2260, file: !32, line: 210, baseType: !2263, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2260, file: !32, line: 211, baseType: !2263, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2260, file: !32, line: 212, baseType: !2263, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2260, file: !32, line: 213, baseType: !489, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2260, file: !32, line: 214, baseType: !489, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2224, file: !32, line: 324, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!2230, !549, !136}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2224, file: !32, line: 325, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2230}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2224, file: !32, line: 326, baseType: !2227, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2224, file: !32, line: 327, baseType: !2227, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2224, file: !32, line: 328, baseType: !2227, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2224, file: !32, line: 329, baseType: !635, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2224, file: !32, line: 332, baseType: !2285, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!2288, !379}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2224, file: !32, line: 333, baseType: !2290, size: 64, offset: 512)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!136, !379, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2224, file: !32, line: 335, baseType: !2295, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!136, !379, !2288}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2224, file: !32, line: 337, baseType: !2299, size: 64, offset: 640)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!136, !549, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !550, file: !38, line: 1425, baseType: !2304, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2307)
!2307 = !{!2308, !2312, !2313, !2317, !2318, !2319, !2334, !2357, !2361, !2362, !2385}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2306, file: !32, line: 429, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!136, !549, !136, !136, !499}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2306, file: !32, line: 430, baseType: !635, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2306, file: !32, line: 431, baseType: !2314, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!136, !549, !7}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2306, file: !32, line: 432, baseType: !2314, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2306, file: !32, line: 433, baseType: !635, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2306, file: !32, line: 434, baseType: !2320, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!136, !549, !136, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2325)
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2324, file: !32, line: 416, baseType: !136, size: 32)
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
!2337 = !{!136, !549, !2242, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2339, file: !32, line: 344, baseType: !136, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2339, file: !32, line: 345, baseType: !371, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2339, file: !32, line: 346, baseType: !371, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2339, file: !32, line: 347, baseType: !371, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2339, file: !32, line: 348, baseType: !371, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2339, file: !32, line: 349, baseType: !371, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2339, file: !32, line: 350, baseType: !371, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2339, file: !32, line: 351, baseType: !727, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2339, file: !32, line: 353, baseType: !727, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2339, file: !32, line: 354, baseType: !136, size: 32, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2339, file: !32, line: 355, baseType: !136, size: 32, offset: 608)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2339, file: !32, line: 356, baseType: !371, size: 64, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2339, file: !32, line: 357, baseType: !371, size: 64, offset: 704)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2339, file: !32, line: 358, baseType: !371, size: 64, offset: 768)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2339, file: !32, line: 359, baseType: !727, size: 64, offset: 832)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2339, file: !32, line: 360, baseType: !136, size: 32, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2306, file: !32, line: 436, baseType: !2358, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!136, !549, !2302, !2338}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2306, file: !32, line: 438, baseType: !2335, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2306, file: !32, line: 439, baseType: !2363, size: 64, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!136, !549, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2367, file: !32, line: 410, baseType: !7, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2367, file: !32, line: 411, baseType: !2371, size: 1344, offset: 64)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2372, size: 1344, elements: !230)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2384}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2372, file: !32, line: 396, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2372, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2372, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2372, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2372, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2372, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2372, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2372, file: !32, line: 404, baseType: !373, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2372, file: !32, line: 405, baseType: !2383, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !126, line: 126, baseType: !371)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2372, file: !32, line: 406, baseType: !2383, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2306, file: !32, line: 440, baseType: !2314, size: 64, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !550, file: !38, line: 1426, baseType: !2387, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2389)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !550, file: !38, line: 1427, baseType: !278, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !550, file: !38, line: 1428, baseType: !278, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !550, file: !38, line: 1429, baseType: !278, size: 64, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !550, file: !38, line: 1430, baseType: !336, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !550, file: !38, line: 1431, baseType: !717, size: 256, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !550, file: !38, line: 1432, baseType: !136, size: 32, offset: 1152)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !550, file: !38, line: 1433, baseType: !697, size: 32, offset: 1184)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !550, file: !38, line: 1437, baseType: !2398, size: 64, offset: 1216)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !550, file: !38, line: 1449, baseType: !2403, size: 64, offset: 1280)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !352, line: 34, size: 64, elements: !2404)
!2404 = !{!2405}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2403, file: !352, line: 35, baseType: !355, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !550, file: !38, line: 1450, baseType: !175, size: 128, offset: 1344)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !550, file: !38, line: 1451, baseType: !2408, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !550, file: !38, line: 1452, baseType: !1789, size: 64, offset: 1536)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !550, file: !38, line: 1453, baseType: !2412, size: 64, offset: 1600)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !550, file: !38, line: 1454, baseType: !589, size: 128, offset: 1664)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !550, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !550, file: !38, line: 1456, baseType: !2417, size: 2432, offset: 1856)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2423, !2455}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !32, line: 519, baseType: !7, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2417, file: !32, line: 520, baseType: !717, size: 256, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2417, file: !32, line: 521, baseType: !2422, size: 192, offset: 320)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 192, elements: !230)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2417, file: !32, line: 522, baseType: !2424, size: 1728, offset: 512)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 1728, elements: !230)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2426)
!2426 = !{!2427, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2425, file: !32, line: 223, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2430)
!2430 = !{!2431, !2432, !2445, !2446}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2429, file: !32, line: 444, baseType: !136, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2429, file: !32, line: 445, baseType: !2433, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2435, file: !32, line: 311, baseType: !635, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2435, file: !32, line: 312, baseType: !635, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2435, file: !32, line: 313, baseType: !635, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2435, file: !32, line: 314, baseType: !635, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2435, file: !32, line: 315, baseType: !2227, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2435, file: !32, line: 316, baseType: !2227, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2435, file: !32, line: 317, baseType: !2227, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2435, file: !32, line: 318, baseType: !2299, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2429, file: !32, line: 446, baseType: !121, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2429, file: !32, line: 447, baseType: !2428, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2425, file: !32, line: 224, baseType: !136, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2425, file: !32, line: 226, baseType: !175, size: 128, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2425, file: !32, line: 227, baseType: !278, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2425, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2425, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2425, file: !32, line: 230, baseType: !2263, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2425, file: !32, line: 231, baseType: !2263, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2425, file: !32, line: 232, baseType: !124, size: 64, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2417, file: !32, line: 523, baseType: !2456, size: 192, offset: 2240)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, size: 192, elements: !230)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !550, file: !38, line: 1458, baseType: !2458, size: 2112, offset: 4288)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2458, file: !38, line: 1411, baseType: !136, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2458, file: !38, line: 1412, baseType: !1350, size: 128, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2458, file: !38, line: 1413, baseType: !2463, size: 1920, offset: 192)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2464, size: 1920, elements: !230)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2465, line: 12, size: 640, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2466 = !{!2467, !2475, !2477, !2482, !2483}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2464, file: !2465, line: 13, baseType: !2468, size: 320)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2469, line: 17, size: 320, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2470 = !{!2471, !2472, !2473, !2474}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2468, file: !2469, line: 18, baseType: !136, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2468, file: !2469, line: 19, baseType: !136, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2468, file: !2469, line: 20, baseType: !1350, size: 128, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2468, file: !2469, line: 22, baseType: !319, size: 128, align: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2464, file: !2465, line: 14, baseType: !2476, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2464, file: !2465, line: 15, baseType: !2478, size: 64, offset: 384)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2479, line: 16, size: 64, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2478, file: !2479, line: 17, baseType: !1085, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2464, file: !2465, line: 16, baseType: !1350, size: 128, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2464, file: !2465, line: 17, baseType: !697, size: 32, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !550, file: !38, line: 1465, baseType: !124, size: 64, offset: 6400)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !550, file: !38, line: 1468, baseType: !143, size: 32, offset: 6464)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !550, file: !38, line: 1470, baseType: !489, size: 64, offset: 6528)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !550, file: !38, line: 1471, baseType: !489, size: 64, offset: 6592)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !550, file: !38, line: 1473, baseType: !145, size: 32, offset: 6656)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !550, file: !38, line: 1474, baseType: !2490, size: 64, offset: 6720)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !550, file: !38, line: 1477, baseType: !2493, size: 256, offset: 6784)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !2084)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !550, file: !38, line: 1478, baseType: !2495, size: 128, offset: 7040)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2496, line: 18, baseType: !2497)
!2496 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2496, line: 16, size: 128, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2497, file: !2496, line: 17, baseType: !2500, size: 128)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 128, elements: !140)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !550, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !550, file: !38, line: 1481, baseType: !2503, size: 32, offset: 7200)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !126, line: 150, baseType: !7)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !550, file: !38, line: 1487, baseType: !1042, size: 192, offset: 7232)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !550, file: !38, line: 1493, baseType: !172, size: 64, offset: 7424)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !550, file: !38, line: 1495, baseType: !2507, size: 64, offset: 7488)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !334, line: 135, size: 1024, align: 512, elements: !2510)
!2510 = !{!2511, !2515, !2516, !2523, !2529, !2533, !2537, !2541, !2542, !2546, !2550, !2555, !2559}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2509, file: !334, line: 136, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!136, !336, !7}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2509, file: !334, line: 137, baseType: !2512, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2509, file: !334, line: 138, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!136, !2520, !2522}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2509, file: !334, line: 139, baseType: !2524, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!136, !2520, !7, !172, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2509, file: !334, line: 141, baseType: !2530, size: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!136, !2520}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2509, file: !334, line: 142, baseType: !2534, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!136, !336}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2509, file: !334, line: 143, baseType: !2538, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !336}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2509, file: !334, line: 144, baseType: !2538, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2509, file: !334, line: 145, baseType: !2543, size: 64, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !336, !379}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2509, file: !334, line: 146, baseType: !2547, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!229, !336, !229, !136}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2509, file: !334, line: 147, baseType: !2551, size: 64, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!332, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2509, file: !334, line: 148, baseType: !2556, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!136, !499, !440}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2509, file: !334, line: 149, baseType: !2560, size: 64, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!336, !336, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !550, file: !38, line: 1500, baseType: !136, size: 32, offset: 7552)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !550, file: !38, line: 1502, baseType: !2567, size: 448, offset: 7616)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2211, line: 60, size: 448, elements: !2568)
!2568 = !{!2569, !2574, !2575, !2576, !2577, !2578, !2579}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2567, file: !2211, line: 61, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!278, !2573, !2209}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2567, file: !2211, line: 63, baseType: !2570, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2567, file: !2211, line: 66, baseType: !264, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2567, file: !2211, line: 67, baseType: !136, size: 32, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2567, file: !2211, line: 68, baseType: !7, size: 32, offset: 224)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2567, file: !2211, line: 71, baseType: !175, size: 128, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2567, file: !2211, line: 77, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !550, file: !38, line: 1505, baseType: !721, size: 64, offset: 8064)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !550, file: !38, line: 1508, baseType: !721, size: 64, offset: 8128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !550, file: !38, line: 1511, baseType: !136, size: 32, offset: 8192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !550, file: !38, line: 1514, baseType: !858, size: 32, offset: 8224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !550, file: !38, line: 1517, baseType: !2586, size: 64, offset: 8256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1824, line: 18, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !550, file: !38, line: 1518, baseType: !585, size: 64, offset: 8320)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !550, file: !38, line: 1525, baseType: !1580, size: 64, offset: 8384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !550, file: !38, line: 1532, baseType: !2591, size: 64, offset: 8448)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2592, line: 52, size: 64, elements: !2593)
!2592 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2591, file: !2592, line: 53, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2592, line: 40, size: 256, elements: !2597)
!2597 = !{!2598, !2599, !2604}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2596, file: !2592, line: 42, baseType: !188)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2596, file: !2592, line: 44, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2592, line: 28, size: 192, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2600, file: !2592, line: 29, baseType: !175, size: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2600, file: !2592, line: 31, baseType: !264, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2596, file: !2592, line: 49, baseType: !264, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !550, file: !38, line: 1533, baseType: !2591, size: 64, offset: 8512)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !550, file: !38, line: 1534, baseType: !319, size: 128, align: 64, offset: 8576)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !550, file: !38, line: 1535, baseType: !1823, size: 256, offset: 8704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !550, file: !38, line: 1537, baseType: !1042, size: 192, offset: 8960)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !550, file: !38, line: 1542, baseType: !136, size: 32, offset: 9152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !550, file: !38, line: 1545, baseType: !188, offset: 9184)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !550, file: !38, line: 1546, baseType: !175, size: 128, offset: 9216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !550, file: !38, line: 1548, baseType: !188, offset: 9344)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !550, file: !38, line: 1549, baseType: !175, size: 128, offset: 9344)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !380, file: !38, line: 624, baseType: !684, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !380, file: !38, line: 631, baseType: !278, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !38, line: 639, baseType: !2617, size: 32, offset: 384)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !38, line: 639, size: 32, elements: !2618)
!2618 = !{!2619, !2621}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2617, file: !38, line: 640, baseType: !2620, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2617, file: !38, line: 641, baseType: !7, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !380, file: !38, line: 643, baseType: !463, size: 32, offset: 416)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !380, file: !38, line: 644, baseType: !481, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !380, file: !38, line: 645, baseType: !485, size: 128, offset: 512)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !380, file: !38, line: 646, baseType: !485, size: 128, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !380, file: !38, line: 647, baseType: !485, size: 128, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !380, file: !38, line: 648, baseType: !188, offset: 896)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !380, file: !38, line: 649, baseType: !129, size: 16, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !380, file: !38, line: 650, baseType: !1221, size: 8, offset: 912)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !380, file: !38, line: 651, baseType: !1221, size: 8, offset: 920)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !380, file: !38, line: 652, baseType: !2383, size: 64, offset: 960)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !380, file: !38, line: 659, baseType: !278, size: 64, offset: 1024)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !380, file: !38, line: 660, baseType: !717, size: 256, offset: 1088)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !380, file: !38, line: 662, baseType: !278, size: 64, offset: 1344)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !380, file: !38, line: 663, baseType: !278, size: 64, offset: 1408)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !380, file: !38, line: 665, baseType: !589, size: 128, offset: 1472)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !380, file: !38, line: 666, baseType: !175, size: 128, offset: 1600)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !380, file: !38, line: 675, baseType: !175, size: 128, offset: 1728)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !380, file: !38, line: 676, baseType: !175, size: 128, offset: 1856)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !380, file: !38, line: 677, baseType: !175, size: 128, offset: 1984)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !38, line: 678, baseType: !2642, size: 128, offset: 2112)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !38, line: 678, size: 128, elements: !2643)
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2642, file: !38, line: 679, baseType: !585, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2642, file: !38, line: 680, baseType: !319, size: 128, align: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !380, file: !38, line: 682, baseType: !723, size: 64, offset: 2240)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !380, file: !38, line: 683, baseType: !723, size: 64, offset: 2304)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !380, file: !38, line: 684, baseType: !697, size: 32, offset: 2368)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !380, file: !38, line: 685, baseType: !697, size: 32, offset: 2400)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !380, file: !38, line: 686, baseType: !697, size: 32, offset: 2432)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !380, file: !38, line: 688, baseType: !697, size: 32, offset: 2464)
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !38, line: 690, baseType: !2653, size: 64, offset: 2496)
!2653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !38, line: 690, size: 64, elements: !2654)
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
!2664 = !{!481, !306, !481, !136}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2658, file: !38, line: 1825, baseType: !2666, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!260, !306, !229, !275, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2658, file: !38, line: 1826, baseType: !2671, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!260, !306, !172, !275, !2669}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2658, file: !38, line: 1827, baseType: !794, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2658, file: !38, line: 1828, baseType: !794, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2658, file: !38, line: 1829, baseType: !2677, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!136, !797, !440}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2658, file: !38, line: 1830, baseType: !2681, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!136, !306, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2686)
!2686 = !{!2687, !2692}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2685, file: !38, line: 1777, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2689)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!136, !2684, !172, !136, !481, !371, !7}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2685, file: !38, line: 1778, baseType: !481, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2658, file: !38, line: 1831, baseType: !2681, size: 64, offset: 512)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2658, file: !38, line: 1832, baseType: !2695, size: 64, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2698, !306, !2699}
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !131, line: 52, baseType: !7)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !569, line: 27, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2658, file: !38, line: 1833, baseType: !2702, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!264, !306, !7, !278}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2658, file: !38, line: 1834, baseType: !2702, size: 64, offset: 704)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2658, file: !38, line: 1835, baseType: !2707, size: 64, offset: 768)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!136, !306, !930}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2658, file: !38, line: 1836, baseType: !278, size: 64, offset: 832)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2658, file: !38, line: 1837, baseType: !2712, size: 64, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!136, !379, !306}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2658, file: !38, line: 1838, baseType: !2716, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!136, !306, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !124)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2658, file: !38, line: 1839, baseType: !2712, size: 64, offset: 1024)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2658, file: !38, line: 1840, baseType: !2722, size: 64, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!136, !306, !481, !481, !136}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2658, file: !38, line: 1841, baseType: !2726, size: 64, offset: 1152)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!136, !136, !306, !136}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2658, file: !38, line: 1842, baseType: !2730, size: 64, offset: 1216)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!136, !306, !136, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2767, !2768, !2769, !2782, !2813}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2734, file: !38, line: 1063, baseType: !2733, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2734, file: !38, line: 1064, baseType: !175, size: 128, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2734, file: !38, line: 1065, baseType: !589, size: 128, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2734, file: !38, line: 1066, baseType: !175, size: 128, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2734, file: !38, line: 1069, baseType: !175, size: 128, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2734, file: !38, line: 1072, baseType: !2719, size: 64, offset: 576)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2734, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2734, file: !38, line: 1074, baseType: !377, size: 8, offset: 672)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2734, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2734, file: !38, line: 1076, baseType: !136, size: 32, offset: 736)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2734, file: !38, line: 1077, baseType: !1350, size: 128, offset: 768)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2734, file: !38, line: 1078, baseType: !306, size: 64, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2734, file: !38, line: 1079, baseType: !481, size: 64, offset: 960)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2734, file: !38, line: 1080, baseType: !481, size: 64, offset: 1024)
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
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !200, line: 33, baseType: !2761)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 31, elements: !202)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2752, file: !38, line: 1316, baseType: !136, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2752, file: !38, line: 1317, baseType: !136, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2752, file: !38, line: 1318, baseType: !2751, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2752, file: !38, line: 1319, baseType: !306, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2752, file: !38, line: 1320, baseType: !319, size: 128, align: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2734, file: !38, line: 1084, baseType: !278, size: 64, offset: 1152)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2734, file: !38, line: 1085, baseType: !278, size: 64, offset: 1216)
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
!2799 = !{!136, !2733, !136}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2785, file: !38, line: 1021, baseType: !2801, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!440, !2733}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2785, file: !38, line: 1022, baseType: !2805, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!136, !2733, !136, !178}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2785, file: !38, line: 1023, baseType: !2809, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !2733, !771}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2785, file: !38, line: 1024, baseType: !2801, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2734, file: !38, line: 1097, baseType: !2814, size: 256, offset: 1408)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2734, file: !38, line: 1089, size: 256, elements: !2815)
!2815 = !{!2816, !2825, !2831}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2814, file: !38, line: 1090, baseType: !2817, size: 256)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2818, line: 10, size: 256, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2819 = !{!2820, !2821, !2824}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2817, file: !2818, line: 11, baseType: !143, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2817, file: !2818, line: 12, baseType: !2822, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2818, line: 5, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2817, file: !2818, line: 13, baseType: !175, size: 128, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2814, file: !38, line: 1091, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2818, line: 17, size: 64, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2826, file: !2818, line: 18, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2818, line: 16, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2814, file: !38, line: 1096, baseType: !2832, size: 192)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !38, line: 1092, size: 192, elements: !2833)
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2832, file: !38, line: 1093, baseType: !175, size: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2832, file: !38, line: 1094, baseType: !136, size: 32, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2832, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2658, file: !38, line: 1843, baseType: !2838, size: 64, offset: 1280)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!260, !306, !671, !136, !275, !2669, !136}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2658, file: !38, line: 1844, baseType: !970, size: 64, offset: 1344)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2658, file: !38, line: 1845, baseType: !2843, size: 64, offset: 1408)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!136, !136}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2658, file: !38, line: 1846, baseType: !2730, size: 64, offset: 1472)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2658, file: !38, line: 1847, baseType: !2848, size: 64, offset: 1536)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!260, !1964, !306, !2669, !275, !7}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2658, file: !38, line: 1848, baseType: !2852, size: 64, offset: 1600)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!260, !306, !2669, !1964, !275, !7}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2658, file: !38, line: 1849, baseType: !2856, size: 64, offset: 1664)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!136, !306, !264, !2859, !771}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2658, file: !38, line: 1850, baseType: !2861, size: 64, offset: 1728)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!264, !306, !136, !481, !481}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2658, file: !38, line: 1852, baseType: !2865, size: 64, offset: 1792)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !661, !306}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2658, file: !38, line: 1856, baseType: !2869, size: 64, offset: 1856)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!260, !306, !481, !306, !481, !275, !7}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2658, file: !38, line: 1858, baseType: !2873, size: 64, offset: 1920)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!481, !306, !481, !306, !481, !481, !7}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2658, file: !38, line: 1861, baseType: !2722, size: 64, offset: 1984)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2653, file: !38, line: 692, baseType: !614, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !380, file: !38, line: 694, baseType: !2879, size: 64, offset: 2560)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2881)
!2881 = !{!2882, !2883, !2884, !2885}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2880, file: !38, line: 1101, baseType: !188)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2880, file: !38, line: 1102, baseType: !175, size: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2880, file: !38, line: 1103, baseType: !175, size: 128, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2880, file: !38, line: 1104, baseType: !175, size: 128, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !380, file: !38, line: 695, baseType: !685, size: 1216, align: 64, offset: 2624)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !380, file: !38, line: 696, baseType: !175, size: 128, offset: 3840)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !38, line: 697, baseType: !2889, size: 64, offset: 3968)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !38, line: 697, size: 64, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2896, !2897}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2889, file: !38, line: 698, baseType: !1964, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2889, file: !38, line: 699, baseType: !2408, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2889, file: !38, line: 700, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2889, file: !38, line: 701, baseType: !229, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2889, file: !38, line: 702, baseType: !7, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !380, file: !38, line: 705, baseType: !145, size: 32, offset: 4032)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !380, file: !38, line: 708, baseType: !145, size: 32, offset: 4064)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !380, file: !38, line: 709, baseType: !2490, size: 64, offset: 4096)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !380, file: !38, line: 720, baseType: !124, size: 64, offset: 4160)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !337, file: !334, line: 98, baseType: !2903, size: 256, offset: 448)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 256, elements: !2084)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !337, file: !334, line: 101, baseType: !2905, size: 32, offset: 704)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2906, line: 25, size: 32, elements: !2907)
!2906 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2907 = !{!2908}
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2905, file: !2906, line: 26, baseType: !2909, size: 32)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2905, file: !2906, line: 26, size: 32, elements: !2910)
!2910 = !{!2911}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !2906, line: 30, baseType: !2912, size: 32)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2909, file: !2906, line: 30, size: 32, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2912, file: !2906, line: 31, baseType: !188)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2912, file: !2906, line: 32, baseType: !136, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !337, file: !334, line: 102, baseType: !2507, size: 64, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !337, file: !334, line: 103, baseType: !549, size: 64, offset: 832)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !337, file: !334, line: 104, baseType: !278, size: 64, offset: 896)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !337, file: !334, line: 105, baseType: !124, size: 64, offset: 960)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !334, line: 107, baseType: !2921, size: 128, offset: 1024)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !334, line: 107, size: 128, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2921, file: !334, line: 108, baseType: !175, size: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2921, file: !334, line: 109, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !337, file: !334, line: 111, baseType: !175, size: 128, offset: 1152)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !337, file: !334, line: 112, baseType: !175, size: 128, offset: 1280)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !337, file: !334, line: 120, baseType: !2929, size: 128, offset: 1408)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !334, line: 116, size: 128, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2929, file: !334, line: 117, baseType: !589, size: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2929, file: !334, line: 118, baseType: !351, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2929, file: !334, line: 119, baseType: !319, size: 128, align: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !307, file: !38, line: 922, baseType: !379, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !307, file: !38, line: 923, baseType: !2656, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !307, file: !38, line: 929, baseType: !188, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !307, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !307, file: !38, line: 931, baseType: !721, size: 64, offset: 448)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !307, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !307, file: !38, line: 933, baseType: !2503, size: 32, offset: 544)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !307, file: !38, line: 934, baseType: !1042, size: 192, offset: 576)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !307, file: !38, line: 935, baseType: !481, size: 64, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !307, file: !38, line: 936, baseType: !2944, size: 192, offset: 832)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2945)
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2944, file: !38, line: 886, baseType: !2755)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2944, file: !38, line: 887, baseType: !1340, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2944, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2944, file: !38, line: 889, baseType: !385, size: 32, offset: 96)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2944, file: !38, line: 889, baseType: !385, size: 32, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2944, file: !38, line: 890, baseType: !136, size: 32, offset: 160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !307, file: !38, line: 937, baseType: !1416, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !307, file: !38, line: 938, baseType: !2954, size: 256, offset: 1088)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2954, file: !38, line: 897, baseType: !278, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2954, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2954, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2954, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2954, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2954, file: !38, line: 904, baseType: !481, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !307, file: !38, line: 940, baseType: !371, size: 64, offset: 1344)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !307, file: !38, line: 945, baseType: !124, size: 64, offset: 1408)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !307, file: !38, line: 949, baseType: !175, size: 128, offset: 1472)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !307, file: !38, line: 950, baseType: !175, size: 128, offset: 1600)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !307, file: !38, line: 952, baseType: !684, size: 64, offset: 1728)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !307, file: !38, line: 953, baseType: !858, size: 32, offset: 1792)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !307, file: !38, line: 954, baseType: !858, size: 32, offset: 1824)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !297, file: !254, line: 174, baseType: !303, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !297, file: !254, line: 176, baseType: !2971, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!136, !306, !181, !296, !930}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !285, file: !254, line: 90, baseType: !280, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !285, file: !254, line: 91, baseType: !2976, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !244, file: !169, line: 143, baseType: !2978, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2981, !181}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2983)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2984)
!2984 = !{!2985, !2986, !2990, !2994, !3002, !3006}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2983, file: !55, line: 40, baseType: !54, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2983, file: !55, line: 41, baseType: !2987, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!440}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2983, file: !55, line: 42, baseType: !2991, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!124}
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
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2983, file: !55, line: 45, baseType: !418, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !244, file: !169, line: 144, baseType: !3008, size: 64, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!2998, !181}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !244, file: !169, line: 145, baseType: !3012, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !181, !3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !168, file: !169, line: 70, baseType: !3018, size: 64, offset: 384)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !569, line: 123, size: 1024, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3149, !3150, !3151, !3152, !3153}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3019, file: !569, line: 124, baseType: !697, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3019, file: !569, line: 125, baseType: !697, size: 32, offset: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3019, file: !569, line: 135, baseType: !3018, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3019, file: !569, line: 136, baseType: !172, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3019, file: !569, line: 138, baseType: !710, size: 192, align: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3019, file: !569, line: 140, baseType: !2998, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3019, file: !569, line: 141, baseType: !7, size: 32, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, scope: !3019, file: !569, line: 142, baseType: !3029, size: 256, offset: 512)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3019, file: !569, line: 142, size: 256, elements: !3030)
!3030 = !{!3031, !3077, !3081}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3029, file: !569, line: 143, baseType: !3032, size: 192)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !569, line: 91, size: 192, elements: !3033)
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3032, file: !569, line: 92, baseType: !278, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3032, file: !569, line: 94, baseType: !706, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3032, file: !569, line: 100, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !569, line: 180, size: 704, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3049, !3050, !3051, !3075, !3076}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3038, file: !569, line: 182, baseType: !3018, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3038, file: !569, line: 183, baseType: !7, size: 32, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3038, file: !569, line: 186, baseType: !3043, size: 192, offset: 128)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3044, line: 19, size: 192, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3043, file: !3044, line: 20, baseType: !689, size: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3043, file: !3044, line: 21, baseType: !7, size: 32, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3043, file: !3044, line: 22, baseType: !7, size: 32, offset: 160)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3038, file: !569, line: 187, baseType: !143, size: 32, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3038, file: !569, line: 188, baseType: !143, size: 32, offset: 352)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3038, file: !569, line: 189, baseType: !3052, size: 64, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !569, line: 168, size: 320, elements: !3054)
!3054 = !{!3055, !3059, !3063, !3067, !3071}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3053, file: !569, line: 169, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!136, !661, !3037}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3053, file: !569, line: 171, baseType: !3060, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!136, !3018, !172, !270}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3053, file: !569, line: 173, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!136, !3018}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3053, file: !569, line: 174, baseType: !3068, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!136, !3018, !3018, !172}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3053, file: !569, line: 176, baseType: !3072, size: 64, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!136, !661, !3018, !3037}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3038, file: !569, line: 192, baseType: !175, size: 128, offset: 448)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3038, file: !569, line: 194, baseType: !1350, size: 128, offset: 576)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3029, file: !569, line: 144, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !569, line: 103, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3078, file: !569, line: 104, baseType: !3018, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3029, file: !569, line: 145, baseType: !3082, size: 256)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !569, line: 107, size: 256, elements: !3083)
!3083 = !{!3084, !3144, !3147, !3148}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3082, file: !569, line: 108, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3087)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !569, line: 217, size: 768, elements: !3088)
!3088 = !{!3089, !3109, !3113, !3117, !3121, !3125, !3129, !3133, !3134, !3135, !3136, !3140}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3087, file: !569, line: 222, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!136, !3093}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !569, line: 197, size: 1088, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3094, file: !569, line: 199, baseType: !3018, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3094, file: !569, line: 200, baseType: !306, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3094, file: !569, line: 201, baseType: !661, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3094, file: !569, line: 202, baseType: !124, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3094, file: !569, line: 205, baseType: !1042, size: 192, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3094, file: !569, line: 206, baseType: !1042, size: 192, offset: 448)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3094, file: !569, line: 207, baseType: !136, size: 32, offset: 640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3094, file: !569, line: 208, baseType: !175, size: 128, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3094, file: !569, line: 209, baseType: !229, size: 64, offset: 832)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3094, file: !569, line: 211, baseType: !275, size: 64, offset: 896)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3094, file: !569, line: 212, baseType: !440, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3094, file: !569, line: 213, baseType: !440, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3094, file: !569, line: 214, baseType: !958, size: 64, offset: 1024)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3087, file: !569, line: 223, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3093}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3087, file: !569, line: 236, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!136, !661, !124}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3087, file: !569, line: 238, baseType: !3118, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!124, !661, !2669}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3087, file: !569, line: 239, baseType: !3122, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!124, !661, !124, !2669}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3087, file: !569, line: 240, baseType: !3126, size: 64, offset: 320)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !661, !124}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3087, file: !569, line: 242, baseType: !3130, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!260, !3093, !229, !275, !481}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3087, file: !569, line: 252, baseType: !275, size: 64, offset: 448)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3087, file: !569, line: 259, baseType: !440, size: 8, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3087, file: !569, line: 260, baseType: !3130, size: 64, offset: 576)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3087, file: !569, line: 263, baseType: !3137, size: 64, offset: 640)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!2698, !3093, !2699}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3087, file: !569, line: 266, baseType: !3141, size: 64, offset: 704)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!136, !3093, !930}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3082, file: !569, line: 109, baseType: !3145, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !569, line: 31, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3082, file: !569, line: 110, baseType: !481, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3082, file: !569, line: 111, baseType: !3018, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3019, file: !569, line: 148, baseType: !124, size: 64, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3019, file: !569, line: 154, baseType: !371, size: 64, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3019, file: !569, line: 156, baseType: !129, size: 16, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3019, file: !569, line: 157, baseType: !270, size: 16, offset: 912)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3019, file: !569, line: 158, baseType: !3154, size: 64, offset: 960)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !569, line: 32, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !168, file: !169, line: 71, baseType: !3157, size: 32, offset: 448)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3158, line: 19, size: 32, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3157, file: !3158, line: 20, baseType: !1099, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !168, file: !169, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !168, file: !169, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !168, file: !169, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !168, file: !169, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !168, file: !169, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !67, line: 463, baseType: !164, size: 64, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !165, file: !67, line: 465, baseType: !3168, size: 64, offset: 576)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !165, file: !67, line: 467, baseType: !172, size: 64, offset: 640)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !67, line: 468, baseType: !3172, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3182, !3187, !3191}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3174, file: !67, line: 88, baseType: !172, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3174, file: !67, line: 89, baseType: !282, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3174, file: !67, line: 90, baseType: !3179, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!136, !164, !224}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3174, file: !67, line: 91, baseType: !3183, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!229, !164, !3186, !3015, !3016}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3174, file: !67, line: 93, baseType: !3188, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !164}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3174, file: !67, line: 95, baseType: !3192, size: 64, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3195)
!3195 = !{!3196, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3194, file: !74, line: 279, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!136, !164}
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
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !165, file: !67, line: 470, baseType: !3223, size: 64, offset: 768)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3225, line: 82, size: 1408, elements: !3226)
!3225 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3308, !3311, !3312}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3224, file: !3225, line: 83, baseType: !172, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3224, file: !3225, line: 84, baseType: !172, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3224, file: !3225, line: 85, baseType: !164, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3224, file: !3225, line: 86, baseType: !282, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3224, file: !3225, line: 87, baseType: !282, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3224, file: !3225, line: 88, baseType: !282, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3224, file: !3225, line: 90, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!136, !164, !3237}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3259, !3272, !3273, !3274, !3275, !3276, !3284, !3285, !3286, !3287, !3288, !3289}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3238, file: !61, line: 96, baseType: !172, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3238, file: !61, line: 97, baseType: !3223, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3238, file: !61, line: 99, baseType: !121, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3238, file: !61, line: 100, baseType: !172, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3238, file: !61, line: 102, baseType: !440, size: 8, offset: 256)
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
!3255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !3256)
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
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3250, line: 14, baseType: !278)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3262, file: !3250, line: 213, baseType: !145, size: 32, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3262, file: !3250, line: 214, baseType: !145, size: 32, offset: 224)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3238, file: !61, line: 108, baseType: !3197, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3238, file: !61, line: 109, baseType: !3188, size: 64, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3238, file: !61, line: 110, baseType: !3197, size: 64, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3238, file: !61, line: 111, baseType: !3188, size: 64, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3238, file: !61, line: 112, baseType: !3277, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!136, !164, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3282)
!3282 = !{!3283}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3281, file: !74, line: 51, baseType: !136, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3238, file: !61, line: 113, baseType: !3197, size: 64, offset: 768)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3238, file: !61, line: 114, baseType: !282, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3238, file: !61, line: 115, baseType: !282, size: 64, offset: 896)
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
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3224, file: !3225, line: 112, baseType: !595, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3224, file: !3225, line: 114, baseType: !440, size: 8, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !165, file: !67, line: 471, baseType: !3237, size: 64, offset: 832)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !165, file: !67, line: 473, baseType: !124, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !165, file: !67, line: 475, baseType: !124, size: 64, offset: 960)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !165, file: !67, line: 480, baseType: !1042, size: 192, offset: 1024)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !165, file: !67, line: 484, baseType: !3318, size: 576, offset: 1216)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3318, file: !67, line: 362, baseType: !175, size: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3318, file: !67, line: 363, baseType: !175, size: 128, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3318, file: !67, line: 364, baseType: !175, size: 128, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3318, file: !67, line: 365, baseType: !175, size: 128, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3318, file: !67, line: 366, baseType: !440, size: 8, offset: 512)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3318, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !165, file: !67, line: 485, baseType: !3327, size: 2304, offset: 1792)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3424, !3428}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3327, file: !74, line: 566, baseType: !3280, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3327, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3327, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3327, file: !74, line: 569, baseType: !440, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3327, file: !74, line: 570, baseType: !440, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3327, file: !74, line: 571, baseType: !440, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3327, file: !74, line: 572, baseType: !440, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3327, file: !74, line: 573, baseType: !440, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3327, file: !74, line: 574, baseType: !440, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3327, file: !74, line: 575, baseType: !440, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3327, file: !74, line: 576, baseType: !440, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3327, file: !74, line: 577, baseType: !143, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3327, file: !74, line: 578, baseType: !188, offset: 96)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3327, file: !74, line: 580, baseType: !175, size: 128, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3327, file: !74, line: 581, baseType: !1371, size: 192, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3327, file: !74, line: 582, baseType: !3345, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3347, line: 43, size: 1472, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3356, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3346, file: !3347, line: 44, baseType: !172, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3346, file: !3347, line: 45, baseType: !136, size: 32, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3346, file: !3347, line: 46, baseType: !175, size: 128, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3346, file: !3347, line: 47, baseType: !188, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3346, file: !3347, line: 48, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3346, file: !3347, line: 49, baseType: !3357, size: 320, offset: 320)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3358, line: 11, size: 320, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360, !3361, !3362, !3367}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3357, file: !3358, line: 16, baseType: !589, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3357, file: !3358, line: 17, baseType: !278, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3357, file: !3358, line: 18, baseType: !3363, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !3358, line: 19, baseType: !143, size: 32, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3346, file: !3347, line: 50, baseType: !278, size: 64, offset: 640)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3346, file: !3347, line: 51, baseType: !1169, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3346, file: !3347, line: 52, baseType: !1169, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3346, file: !3347, line: 53, baseType: !1169, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3346, file: !3347, line: 54, baseType: !1169, size: 64, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3346, file: !3347, line: 55, baseType: !1169, size: 64, offset: 960)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3346, file: !3347, line: 56, baseType: !278, size: 64, offset: 1024)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3346, file: !3347, line: 57, baseType: !278, size: 64, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3346, file: !3347, line: 58, baseType: !278, size: 64, offset: 1152)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3346, file: !3347, line: 59, baseType: !278, size: 64, offset: 1216)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3346, file: !3347, line: 60, baseType: !278, size: 64, offset: 1280)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3346, file: !3347, line: 61, baseType: !164, size: 64, offset: 1344)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3346, file: !3347, line: 62, baseType: !440, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3346, file: !3347, line: 63, baseType: !440, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3327, file: !74, line: 583, baseType: !440, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3327, file: !74, line: 584, baseType: !440, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3327, file: !74, line: 585, baseType: !440, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3327, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3327, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3327, file: !74, line: 592, baseType: !1161, size: 512, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3327, file: !74, line: 593, baseType: !371, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3327, file: !74, line: 594, baseType: !1823, size: 256, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3327, file: !74, line: 595, baseType: !1350, size: 128, offset: 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3327, file: !74, line: 596, baseType: !3354, size: 64, offset: 1536)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3327, file: !74, line: 597, baseType: !697, size: 32, offset: 1600)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3327, file: !74, line: 598, baseType: !697, size: 32, offset: 1632)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3327, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3327, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3327, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3327, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3327, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3327, file: !74, line: 604, baseType: !440, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3327, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3327, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3327, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3327, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3327, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3327, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3327, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3327, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3327, file: !74, line: 613, baseType: !136, size: 32, offset: 1792)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3327, file: !74, line: 614, baseType: !136, size: 32, offset: 1824)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3327, file: !74, line: 615, baseType: !371, size: 64, offset: 1856)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3327, file: !74, line: 616, baseType: !371, size: 64, offset: 1920)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3327, file: !74, line: 617, baseType: !371, size: 64, offset: 1984)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3327, file: !74, line: 618, baseType: !371, size: 64, offset: 2048)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3327, file: !74, line: 620, baseType: !3415, size: 64, offset: 2112)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3416, file: !74, line: 537, baseType: !188)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3416, file: !74, line: 538, baseType: !7, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3416, file: !74, line: 540, baseType: !175, size: 128, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3416, file: !74, line: 543, baseType: !3422, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3327, file: !74, line: 621, baseType: !3425, size: 64, offset: 2176)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !164, !1313}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3327, file: !74, line: 622, baseType: !3429, size: 64, offset: 2240)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !165, file: !67, line: 486, baseType: !3432, size: 64, offset: 4096)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3441, !3442, !3443}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3433, file: !74, line: 643, baseType: !3194, size: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3433, file: !74, line: 644, baseType: !3197, size: 64, offset: 1472)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3433, file: !74, line: 645, baseType: !3438, size: 64, offset: 1536)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !164, !440}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3433, file: !74, line: 646, baseType: !3197, size: 64, offset: 1600)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3433, file: !74, line: 647, baseType: !3188, size: 64, offset: 1664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3433, file: !74, line: 648, baseType: !3188, size: 64, offset: 1728)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !165, file: !67, line: 493, baseType: !3445, size: 64, offset: 4160)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !165, file: !67, line: 499, baseType: !175, size: 128, offset: 4224)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !165, file: !67, line: 502, baseType: !3449, size: 64, offset: 4352)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3451)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !165, file: !67, line: 504, baseType: !3453, size: 64, offset: 4416)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !165, file: !67, line: 505, baseType: !371, size: 64, offset: 4480)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !165, file: !67, line: 510, baseType: !371, size: 64, offset: 4544)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !165, file: !67, line: 511, baseType: !3457, size: 64, offset: 4608)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3459)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !165, file: !67, line: 513, baseType: !3461, size: 64, offset: 4672)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3462, file: !67, line: 293, baseType: !7, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3462, file: !67, line: 294, baseType: !278, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !165, file: !67, line: 515, baseType: !175, size: 128, offset: 4736)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !165, file: !67, line: 526, baseType: !3468, offset: 4864)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3469, line: 5, elements: !202)
!3469 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !165, file: !67, line: 528, baseType: !3471, size: 64, offset: 4864)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3473, line: 14, flags: DIFlagFwdDecl)
!3473 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !165, file: !67, line: 529, baseType: !3475, size: 64, offset: 4928)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3225, line: 22, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !165, file: !67, line: 534, baseType: !463, size: 32, offset: 4992)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !165, file: !67, line: 535, baseType: !143, size: 32, offset: 5024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !165, file: !67, line: 537, baseType: !188, offset: 5056)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !165, file: !67, line: 538, baseType: !175, size: 128, offset: 5056)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !165, file: !67, line: 540, baseType: !3482, size: 64, offset: 5184)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3484, line: 54, size: 960, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3496, !3500, !3501, !3502, !3503, !3507, !3511, !3512}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !3484, line: 55, baseType: !172, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3483, file: !3484, line: 56, baseType: !121, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3483, file: !3484, line: 58, baseType: !282, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3483, file: !3484, line: 59, baseType: !282, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3483, file: !3484, line: 60, baseType: !181, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3483, file: !3484, line: 62, baseType: !3179, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3483, file: !3484, line: 63, baseType: !3493, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!229, !164, !3186}
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
!3506 = !{!2998, !164}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3483, file: !3484, line: 73, baseType: !3508, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !164, !3015, !3016}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3483, file: !3484, line: 75, baseType: !3192, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3483, file: !3484, line: 77, baseType: !3309, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !165, file: !67, line: 541, baseType: !282, size: 64, offset: 5248)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !165, file: !67, line: 543, baseType: !3188, size: 64, offset: 5312)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !165, file: !67, line: 544, baseType: !3516, size: 64, offset: 5376)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !165, file: !67, line: 545, baseType: !3519, size: 64, offset: 5440)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !165, file: !67, line: 547, baseType: !440, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !165, file: !67, line: 548, baseType: !440, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !165, file: !67, line: 549, baseType: !440, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !165, file: !67, line: 550, baseType: !440, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !161, file: !6, line: 426, baseType: !164, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !161, file: !6, line: 427, baseType: !136, size: 32, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !161, file: !6, line: 428, baseType: !172, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !161, file: !6, line: 429, baseType: !1221, size: 8, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !161, file: !6, line: 433, baseType: !1221, size: 8, offset: 264)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !161, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !161, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !161, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !161, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !161, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !161, file: !6, line: 444, baseType: !136, size: 32, offset: 320)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !161, file: !6, line: 446, baseType: !1042, size: 192, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !161, file: !6, line: 448, baseType: !3538, size: 128, offset: 576)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3538, file: !6, line: 418, baseType: !3541, size: 128)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 128, elements: !156)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !161, file: !6, line: 449, baseType: !132, size: 64, offset: 704)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !161, file: !6, line: 450, baseType: !160, size: 64, offset: 768)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !161, file: !6, line: 452, baseType: !136, size: 32, offset: 832)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !161, file: !6, line: 459, baseType: !136, size: 32, offset: 864)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !161, file: !6, line: 460, baseType: !136, size: 32, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !161, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !133, file: !6, line: 647, baseType: !3549, size: 640, offset: 640)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3550)
!3550 = !{!3551, !3562, !3570, !3578, !3579, !3580, !3583, !3585, !3586, !3587}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3549, file: !6, line: 68, baseType: !3552, size: 72)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3552, file: !88, line: 408, baseType: !1222, size: 8)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3552, file: !88, line: 409, baseType: !1222, size: 8, offset: 8)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3552, file: !88, line: 411, baseType: !1222, size: 8, offset: 16)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3552, file: !88, line: 412, baseType: !1222, size: 8, offset: 24)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3552, file: !88, line: 413, baseType: !130, size: 16, offset: 32)
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
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3563, file: !88, line: 695, baseType: !130, size: 16, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3549, file: !6, line: 70, baseType: !3571, size: 64, offset: 120)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3571, file: !88, line: 678, baseType: !1222, size: 8)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3571, file: !88, line: 679, baseType: !1222, size: 8, offset: 8)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3571, file: !88, line: 680, baseType: !130, size: 16, offset: 16)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3571, file: !88, line: 681, baseType: !3577, size: 32, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !131, line: 31, baseType: !145)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3549, file: !6, line: 71, baseType: !175, size: 128, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3549, file: !6, line: 72, baseType: !124, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3549, file: !6, line: 73, baseType: !3581, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3549, file: !6, line: 75, baseType: !3584, size: 64, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3549, file: !6, line: 76, baseType: !136, size: 32, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3549, file: !6, line: 77, baseType: !136, size: 32, offset: 544)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3549, file: !6, line: 78, baseType: !136, size: 32, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !133, file: !6, line: 649, baseType: !165, size: 5568, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !133, file: !6, line: 651, baseType: !3590, size: 144, offset: 6848)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3590, file: !88, line: 290, baseType: !1222, size: 8)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3590, file: !88, line: 291, baseType: !1222, size: 8, offset: 8)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3590, file: !88, line: 293, baseType: !130, size: 16, offset: 16)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3590, file: !88, line: 294, baseType: !1222, size: 8, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3590, file: !88, line: 295, baseType: !1222, size: 8, offset: 40)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3590, file: !88, line: 296, baseType: !1222, size: 8, offset: 48)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3590, file: !88, line: 297, baseType: !1222, size: 8, offset: 56)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3590, file: !88, line: 298, baseType: !130, size: 16, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3590, file: !88, line: 299, baseType: !130, size: 16, offset: 80)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3590, file: !88, line: 300, baseType: !130, size: 16, offset: 96)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3590, file: !88, line: 301, baseType: !1222, size: 8, offset: 112)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3590, file: !88, line: 302, baseType: !1222, size: 8, offset: 120)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3590, file: !88, line: 303, baseType: !1222, size: 8, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3590, file: !88, line: 304, baseType: !1222, size: 8, offset: 136)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !133, file: !6, line: 652, baseType: !3607, size: 64, offset: 7040)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3609)
!3609 = !{!3610, !3618, !3626, !3638, !3651, !3660}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3608, file: !6, line: 397, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3612, file: !88, line: 845, baseType: !1222, size: 8)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3612, file: !88, line: 846, baseType: !1222, size: 8, offset: 8)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3612, file: !88, line: 848, baseType: !130, size: 16, offset: 16)
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
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3628, file: !88, line: 923, baseType: !130, size: 16, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3628, file: !88, line: 928, baseType: !1222, size: 8, offset: 48)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3628, file: !88, line: 929, baseType: !1222, size: 8, offset: 56)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3628, file: !88, line: 930, baseType: !130, size: 16, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3608, file: !6, line: 402, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3640, file: !88, line: 956, baseType: !1222, size: 8)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3640, file: !88, line: 957, baseType: !1222, size: 8, offset: 8)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3640, file: !88, line: 958, baseType: !1222, size: 8, offset: 16)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3640, file: !88, line: 959, baseType: !1222, size: 8, offset: 24)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3640, file: !88, line: 960, baseType: !3577, size: 32, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3640, file: !88, line: 963, baseType: !130, size: 16, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3640, file: !88, line: 967, baseType: !130, size: 16, offset: 80)
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
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !133, file: !6, line: 653, baseType: !3668, size: 64, offset: 7104)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3670)
!3670 = !{!3671, !3682, !3683, !3696, !3738, !3747, !3748}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3669, file: !6, line: 375, baseType: !3672, size: 72)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3672, file: !88, line: 350, baseType: !1222, size: 8)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3672, file: !88, line: 351, baseType: !1222, size: 8, offset: 8)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3672, file: !88, line: 353, baseType: !130, size: 16, offset: 16)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3672, file: !88, line: 354, baseType: !1222, size: 8, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3672, file: !88, line: 355, baseType: !1222, size: 8, offset: 40)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3672, file: !88, line: 356, baseType: !1222, size: 8, offset: 48)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3672, file: !88, line: 357, baseType: !1222, size: 8, offset: 56)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3672, file: !88, line: 358, baseType: !1222, size: 8, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3669, file: !6, line: 377, baseType: !229, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3669, file: !6, line: 381, baseType: !3684, size: 1024, offset: 192)
!3684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3685, size: 1024, elements: !140)
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
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3703, file: !6, line: 85, baseType: !136, size: 32, offset: 96)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3703, file: !6, line: 86, baseType: !3584, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3703, file: !6, line: 91, baseType: !3720, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3703, file: !6, line: 93, baseType: !229, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3699, file: !6, line: 237, baseType: !3702, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3699, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3699, file: !6, line: 243, baseType: !3685, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3699, file: !6, line: 245, baseType: !136, size: 32, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3699, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3699, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3699, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3699, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3699, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3699, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3699, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3699, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3699, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3699, file: !6, line: 257, baseType: !165, size: 5568, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3699, file: !6, line: 258, baseType: !164, size: 64, offset: 5952)
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
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3669, file: !6, line: 392, baseType: !136, size: 32, offset: 5376)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !133, file: !6, line: 655, baseType: !3668, size: 64, offset: 7168)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !133, file: !6, line: 656, baseType: !3751, size: 1024, offset: 7232)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3720, size: 1024, elements: !140)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !133, file: !6, line: 657, baseType: !3751, size: 1024, offset: 8256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !133, file: !6, line: 659, baseType: !3754, size: 64, offset: 9280)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !133, file: !6, line: 661, baseType: !129, size: 16, offset: 9344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !133, file: !6, line: 662, baseType: !1221, size: 8, offset: 9360)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !133, file: !6, line: 663, baseType: !1221, size: 8, offset: 9368)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !133, file: !6, line: 664, baseType: !1221, size: 8, offset: 9376)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !133, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !133, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !133, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !133, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !133, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !133, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !133, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !133, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !133, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !133, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !133, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !133, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !133, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !133, file: !6, line: 679, baseType: !136, size: 32, offset: 9408)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !133, file: !6, line: 682, baseType: !229, size: 64, offset: 9472)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !133, file: !6, line: 683, baseType: !229, size: 64, offset: 9536)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !133, file: !6, line: 684, baseType: !229, size: 64, offset: 9600)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !133, file: !6, line: 686, baseType: !175, size: 128, offset: 9664)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !133, file: !6, line: 688, baseType: !136, size: 32, offset: 9792)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !133, file: !6, line: 690, baseType: !143, size: 32, offset: 9824)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !133, file: !6, line: 691, baseType: !697, size: 32, offset: 9856)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !133, file: !6, line: 693, baseType: !278, size: 64, offset: 9920)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !133, file: !6, line: 696, baseType: !278, size: 64, offset: 9984)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !133, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !133, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !133, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !133, file: !6, line: 702, baseType: !3786, size: 64, offset: 10112)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !133, file: !6, line: 703, baseType: !136, size: 32, offset: 10176)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !133, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !133, file: !6, line: 705, baseType: !3791, size: 64, offset: 10240)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3791, file: !6, line: 506, baseType: !7, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3791, file: !6, line: 512, baseType: !136, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !133, file: !6, line: 706, baseType: !3796, size: 128, offset: 10304)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3801}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3796, file: !6, line: 529, baseType: !7, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3796, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3796, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3796, file: !6, line: 551, baseType: !136, size: 32, offset: 96)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !133, file: !6, line: 707, baseType: !3796, size: 128, offset: 10432)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !133, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !133, file: !6, line: 710, baseType: !809, size: 16, offset: 10592)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !133, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3806 = !{!0, !3807, !3812, !3817, !3822, !3825, !3830, !3891, !3896, !3898}
!3807 = !DIGlobalVariableExpression(var: !3808, expr: !DIExpression())
!3808 = distinct !DIGlobalVariable(name: "__exitcall_powermate_driver_exit", scope: !2, file: !3, line: 452, type: !3809, isLocal: true, isDefinition: true)
!3809 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3810, line: 117, baseType: !3811)
!3810 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!3812 = !DIGlobalVariableExpression(var: !3813, expr: !DIExpression())
!3813 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author213", scope: !2, file: !3, line: 454, type: !3814, isLocal: true, isDefinition: true, align: 8)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 304, elements: !3815)
!3815 = !{!3816}
!3816 = !DISubrange(count: 38)
!3817 = !DIGlobalVariableExpression(var: !3818, expr: !DIExpression())
!3818 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description214", scope: !2, file: !3, line: 455, type: !3819, isLocal: true, isDefinition: true, align: 8)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 504, elements: !3820)
!3820 = !{!3821}
!3821 = !DISubrange(count: 63)
!3822 = !DIGlobalVariableExpression(var: !3823, expr: !DIExpression())
!3823 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file215", scope: !2, file: !3, line: 456, type: !3824, isLocal: true, isDefinition: true, align: 8)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 352, elements: !1016)
!3825 = !DIGlobalVariableExpression(var: !3826, expr: !DIExpression())
!3826 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license216", scope: !2, file: !3, line: 456, type: !3827, isLocal: true, isDefinition: true, align: 8)
!3827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 176, elements: !3828)
!3828 = !{!3829}
!3829 = !DISubrange(count: 22)
!3830 = !DIGlobalVariableExpression(var: !3831, expr: !DIExpression())
!3831 = distinct !DIGlobalVariable(name: "powermate_driver", scope: !2, file: !3, line: 445, type: !3832, isLocal: true, isDefinition: true)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3833)
!3833 = !{!3834, !3835, !3856, !3860, !3864, !3868, !3872, !3873, !3874, !3875, !3876, !3877, !3882, !3887, !3888, !3889, !3890}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3832, file: !6, line: 1185, baseType: !172, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3832, file: !6, line: 1187, baseType: !3836, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!136, !3698, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3841)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3250, line: 121, size: 256, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3841, file: !3250, line: 123, baseType: !127, size: 16)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3841, file: !3250, line: 126, baseType: !127, size: 16, offset: 16)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3841, file: !3250, line: 127, baseType: !127, size: 16, offset: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3841, file: !3250, line: 128, baseType: !127, size: 16, offset: 48)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3841, file: !3250, line: 129, baseType: !127, size: 16, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3841, file: !3250, line: 132, baseType: !1222, size: 8, offset: 80)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3841, file: !3250, line: 133, baseType: !1222, size: 8, offset: 88)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3841, file: !3250, line: 134, baseType: !1222, size: 8, offset: 96)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3841, file: !3250, line: 137, baseType: !1222, size: 8, offset: 104)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3841, file: !3250, line: 138, baseType: !1222, size: 8, offset: 112)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3841, file: !3250, line: 139, baseType: !1222, size: 8, offset: 120)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3841, file: !3250, line: 142, baseType: !1222, size: 8, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3841, file: !3250, line: 145, baseType: !3269, size: 64, align: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3832, file: !6, line: 1190, baseType: !3857, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{null, !3698}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3832, file: !6, line: 1192, baseType: !3861, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!136, !3698, !7, !124}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3832, file: !6, line: 1195, baseType: !3865, size: 64, offset: 256)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!136, !3698, !3280}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3832, file: !6, line: 1196, baseType: !3869, size: 64, offset: 320)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!136, !3698}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3832, file: !6, line: 1197, baseType: !3869, size: 64, offset: 384)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3832, file: !6, line: 1199, baseType: !3869, size: 64, offset: 448)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3832, file: !6, line: 1200, baseType: !3869, size: 64, offset: 512)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3832, file: !6, line: 1202, baseType: !3839, size: 64, offset: 576)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3832, file: !6, line: 1203, baseType: !282, size: 64, offset: 640)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3832, file: !6, line: 1205, baseType: !3878, size: 128, offset: 704)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3878, file: !6, line: 1092, baseType: !188)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3878, file: !6, line: 1093, baseType: !175, size: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3832, file: !6, line: 1206, baseType: !3883, size: 1216, offset: 832)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3884)
!3884 = !{!3885, !3886}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3883, file: !6, line: 1114, baseType: !3238, size: 1152)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3883, file: !6, line: 1115, baseType: !136, size: 32, offset: 1152)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3832, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3832, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3832, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3832, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3891 = !DIGlobalVariableExpression(var: !3892, expr: !DIExpression())
!3892 = distinct !DIGlobalVariable(name: "pm_name_powermate", scope: !2, file: !3, line: 80, type: !3893, isLocal: true, isDefinition: true)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 144, elements: !3894)
!3894 = !{!3895}
!3895 = !DISubrange(count: 18)
!3896 = !DIGlobalVariableExpression(var: !3897, expr: !DIExpression())
!3897 = distinct !DIGlobalVariable(name: "pm_name_soundknob", scope: !2, file: !3, line: 81, type: !3893, isLocal: true, isDefinition: true)
!3898 = !DIGlobalVariableExpression(var: !3899, expr: !DIExpression())
!3899 = distinct !DIGlobalVariable(name: "powermate_devices", scope: !2, file: !3, line: 436, type: !3900, isLocal: true, isDefinition: true)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3840, size: 1024, elements: !1024)
!3901 = !{!"rsp"}
!3902 = !{i32 7, !"Dwarf Version", i32 4}
!3903 = !{i32 2, !"Debug Info Version", i32 3}
!3904 = !{i32 1, !"wchar_size", i32 2}
!3905 = !{i32 1, !"Code Model", i32 2}
!3906 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3907 = distinct !DISubprogram(name: "powermate_driver_init", scope: !3, file: !3, line: 452, type: !3908, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!136}
!3910 = !DILocation(line: 452, column: 1, scope: !3907)
!3911 = distinct !DISubprogram(name: "powermate_driver_exit", scope: !3, file: !3, line: 452, type: !1744, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!3912 = !DILocation(line: 452, column: 1, scope: !3911)
!3913 = distinct !DISubprogram(name: "powermate_probe", scope: !3, file: !3, line: 300, type: !3837, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!3914 = !DILocalVariable(name: "lock", arg: 1, scope: !3915, file: !3916, line: 327, type: !3920)
!3915 = distinct !DISubprogram(name: "spinlock_check", scope: !3916, file: !3916, line: 327, type: !3917, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!3916 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3921 = !DILocation(line: 327, column: 67, scope: !3915, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 346, column: 2, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 346, column: 2)
!3924 = !DILocalVariable(name: "intf", arg: 1, scope: !3913, file: !3, line: 300, type: !3698)
!3925 = !DILocation(line: 300, column: 50, scope: !3913)
!3926 = !DILocalVariable(name: "id", arg: 2, scope: !3913, file: !3, line: 300, type: !3839)
!3927 = !DILocation(line: 300, column: 84, scope: !3913)
!3928 = !DILocalVariable(name: "udev", scope: !3913, file: !3, line: 302, type: !132)
!3929 = !DILocation(line: 302, column: 21, scope: !3913)
!3930 = !DILocation(line: 302, column: 49, scope: !3913)
!3931 = !DILocation(line: 302, column: 28, scope: !3913)
!3932 = !DILocalVariable(name: "interface", scope: !3913, file: !3, line: 303, type: !3702)
!3933 = !DILocation(line: 303, column: 29, scope: !3913)
!3934 = !DILocalVariable(name: "endpoint", scope: !3913, file: !3, line: 304, type: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3936 = !DILocation(line: 304, column: 34, scope: !3913)
!3937 = !DILocalVariable(name: "pm", scope: !3913, file: !3, line: 305, type: !3938)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "powermate_device", file: !3, line: 62, size: 1216, elements: !3940)
!3940 = !{!3941, !3944, !3945, !4000, !4001, !4010, !4011, !4012, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3939, file: !3, line: 63, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "data_dma", scope: !3939, file: !3, line: 64, baseType: !869, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3939, file: !3, line: 65, baseType: !3946, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3992}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3947, file: !6, line: 1563, baseType: !3157, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !3947, file: !6, line: 1564, baseType: !136, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3947, file: !6, line: 1565, baseType: !124, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3947, file: !6, line: 1566, baseType: !697, size: 32, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !3947, file: !6, line: 1567, baseType: !697, size: 32, offset: 160)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3947, file: !6, line: 1570, baseType: !175, size: 128, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !3947, file: !6, line: 1572, baseType: !175, size: 128, offset: 320)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !3947, file: !6, line: 1573, baseType: !3957, size: 64, offset: 448)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3958, file: !6, line: 1361, baseType: !175, size: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3958, file: !6, line: 1362, baseType: !1350, size: 128, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3958, file: !6, line: 1363, baseType: !188, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3958, file: !6, line: 1364, baseType: !697, size: 32, offset: 256)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3958, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3947, file: !6, line: 1574, baseType: !132, size: 64, offset: 512)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3947, file: !6, line: 1575, baseType: !3720, size: 64, offset: 576)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3947, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3947, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3947, file: !6, line: 1578, baseType: !136, size: 32, offset: 704)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !3947, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !3947, file: !6, line: 1580, baseType: !124, size: 64, offset: 768)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !3947, file: !6, line: 1581, baseType: !869, size: 64, offset: 832)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3947, file: !6, line: 1582, baseType: !3974, size: 64, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !3947, file: !6, line: 1583, baseType: !136, size: 32, offset: 960)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !3947, file: !6, line: 1584, baseType: !136, size: 32, offset: 992)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !3947, file: !6, line: 1585, baseType: !143, size: 32, offset: 1024)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3947, file: !6, line: 1586, baseType: !143, size: 32, offset: 1056)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !3947, file: !6, line: 1587, baseType: !3584, size: 64, offset: 1088)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !3947, file: !6, line: 1588, baseType: !869, size: 64, offset: 1152)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !3947, file: !6, line: 1589, baseType: !136, size: 32, offset: 1216)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !3947, file: !6, line: 1590, baseType: !136, size: 32, offset: 1248)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3947, file: !6, line: 1591, baseType: !136, size: 32, offset: 1280)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !3947, file: !6, line: 1593, baseType: !136, size: 32, offset: 1312)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3947, file: !6, line: 1594, baseType: !124, size: 64, offset: 1344)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3947, file: !6, line: 1595, baseType: !3988, size: 64, offset: 1408)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !3989)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !3946}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !3947, file: !6, line: 1596, baseType: !3993, offset: 1472)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3994, elements: !2185)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !3995)
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3994, file: !6, line: 1352, baseType: !7, size: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3994, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3994, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3994, file: !6, line: 1355, baseType: !136, size: 32, offset: 96)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3939, file: !3, line: 65, baseType: !3946, size: 64, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "configcr", scope: !3939, file: !3, line: 66, baseType: !4002, size: 64, offset: 256)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !88, line: 213, size: 64, elements: !4004)
!4004 = !{!4005, !4006, !4007, !4008, !4009}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !4003, file: !88, line: 214, baseType: !1222, size: 8)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !4003, file: !88, line: 215, baseType: !1222, size: 8, offset: 8)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !4003, file: !88, line: 216, baseType: !130, size: 16, offset: 16)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !4003, file: !88, line: 217, baseType: !130, size: 16, offset: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !4003, file: !88, line: 218, baseType: !130, size: 16, offset: 48)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3939, file: !3, line: 67, baseType: !132, size: 64, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3939, file: !3, line: 68, baseType: !3698, size: 64, offset: 384)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !3939, file: !3, line: 69, baseType: !4013, size: 64, offset: 448)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4015, line: 131, size: 10432, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4016 = !{!4017, !4018, !4019, !4020, !4028, !4029, !4030, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4057, !4062, !4157, !4160, !4161, !4162, !4164, !4167, !4177, !4178, !4179, !4180, !4181, !4185, !4189, !4193, !4197, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4284, !4285}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4014, file: !4015, line: 132, baseType: !172, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4014, file: !4015, line: 133, baseType: !172, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4014, file: !4015, line: 134, baseType: !172, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4014, file: !4015, line: 135, baseType: !4021, size: 64, offset: 192)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4022, line: 59, size: 64, elements: !4023)
!4022 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4021, file: !4022, line: 60, baseType: !127, size: 16)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4021, file: !4022, line: 61, baseType: !127, size: 16, offset: 16)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4021, file: !4022, line: 62, baseType: !127, size: 16, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4021, file: !4022, line: 63, baseType: !127, size: 16, offset: 48)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4014, file: !4015, line: 137, baseType: !1239, size: 64, offset: 256)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4014, file: !4015, line: 139, baseType: !1239, size: 64, offset: 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4014, file: !4015, line: 140, baseType: !4031, size: 768, offset: 384)
!4031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 768, elements: !2090)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4014, file: !4015, line: 141, baseType: !1239, size: 64, offset: 1152)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4014, file: !4015, line: 142, baseType: !1239, size: 64, offset: 1216)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4014, file: !4015, line: 143, baseType: !1239, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4014, file: !4015, line: 144, baseType: !1239, size: 64, offset: 1344)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4014, file: !4015, line: 145, baseType: !1239, size: 64, offset: 1408)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4014, file: !4015, line: 146, baseType: !3541, size: 128, offset: 1472)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4014, file: !4015, line: 147, baseType: !1239, size: 64, offset: 1600)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4014, file: !4015, line: 149, baseType: !7, size: 32, offset: 1664)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4014, file: !4015, line: 151, baseType: !7, size: 32, offset: 1696)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4014, file: !4015, line: 152, baseType: !7, size: 32, offset: 1728)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4014, file: !4015, line: 153, baseType: !124, size: 64, offset: 1792)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4014, file: !4015, line: 155, baseType: !4044, size: 64, offset: 1856)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!136, !4013, !4047, !2476}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4049)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4022, line: 114, size: 320, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4049, file: !4022, line: 116, baseType: !1222, size: 8)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4049, file: !4022, line: 117, baseType: !1222, size: 8, offset: 8)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4049, file: !4022, line: 118, baseType: !127, size: 16, offset: 16)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4049, file: !4022, line: 119, baseType: !145, size: 32, offset: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4049, file: !4022, line: 120, baseType: !4056, size: 256, offset: 64)
!4056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 256, elements: !2084)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4014, file: !4015, line: 158, baseType: !4058, size: 64, offset: 1920)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!136, !4013, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4014, file: !4015, line: 161, baseType: !4063, size: 64, offset: 1984)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4015, line: 534, size: 896, elements: !4065)
!4065 = !{!4066, !4133, !4137, !4141, !4145, !4146, !4150, !4151, !4152, !4153, !4154, !4155}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4064, file: !4015, line: 535, baseType: !4067, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!136, !4013, !4070, !4070}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4022, line: 450, size: 384, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4081, !4086}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4071, file: !4022, line: 451, baseType: !127, size: 16)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4071, file: !4022, line: 452, baseType: !1073, size: 16, offset: 16)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4071, file: !4022, line: 453, baseType: !127, size: 16, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4071, file: !4022, line: 454, baseType: !4077, size: 32, offset: 48)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4022, line: 316, size: 32, elements: !4078)
!4078 = !{!4079, !4080}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4077, file: !4022, line: 317, baseType: !127, size: 16)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4077, file: !4022, line: 318, baseType: !127, size: 16, offset: 16)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4071, file: !4022, line: 455, baseType: !4082, size: 32, offset: 80)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4022, line: 306, size: 32, elements: !4083)
!4083 = !{!4084, !4085}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4082, file: !4022, line: 307, baseType: !127, size: 16)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4082, file: !4022, line: 308, baseType: !127, size: 16, offset: 16)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4071, file: !4022, line: 463, baseType: !4087, size: 256, offset: 128)
!4087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4071, file: !4022, line: 457, size: 256, elements: !4088)
!4088 = !{!4089, !4100, !4106, !4118, !4128}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4087, file: !4022, line: 458, baseType: !4090, size: 80)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4022, line: 345, size: 80, elements: !4091)
!4091 = !{!4092, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4090, file: !4022, line: 346, baseType: !1073, size: 16)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4090, file: !4022, line: 347, baseType: !4094, size: 64, offset: 16)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4022, line: 333, size: 64, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4094, file: !4022, line: 334, baseType: !127, size: 16)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4094, file: !4022, line: 335, baseType: !127, size: 16, offset: 16)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4094, file: !4022, line: 336, baseType: !127, size: 16, offset: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4094, file: !4022, line: 337, baseType: !127, size: 16, offset: 48)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4087, file: !4022, line: 459, baseType: !4101, size: 96)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4022, line: 356, size: 96, elements: !4102)
!4102 = !{!4103, !4104, !4105}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4101, file: !4022, line: 357, baseType: !1073, size: 16)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4101, file: !4022, line: 358, baseType: !1073, size: 16, offset: 16)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4101, file: !4022, line: 359, baseType: !4094, size: 64, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4087, file: !4022, line: 460, baseType: !4107, size: 256)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4022, line: 401, size: 256, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4107, file: !4022, line: 402, baseType: !127, size: 16)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4107, file: !4022, line: 403, baseType: !127, size: 16, offset: 16)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4107, file: !4022, line: 404, baseType: !1073, size: 16, offset: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4107, file: !4022, line: 405, baseType: !1073, size: 16, offset: 48)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4107, file: !4022, line: 406, baseType: !127, size: 16, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4107, file: !4022, line: 408, baseType: !4094, size: 64, offset: 80)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4107, file: !4022, line: 410, baseType: !145, size: 32, offset: 160)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4107, file: !4022, line: 411, baseType: !4117, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4087, file: !4022, line: 461, baseType: !4119, size: 192)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4120, size: 192, elements: !156)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4022, line: 372, size: 96, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4120, file: !4022, line: 373, baseType: !127, size: 16)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4120, file: !4022, line: 374, baseType: !127, size: 16, offset: 16)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4120, file: !4022, line: 376, baseType: !1073, size: 16, offset: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4120, file: !4022, line: 377, baseType: !1073, size: 16, offset: 48)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4120, file: !4022, line: 379, baseType: !127, size: 16, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4120, file: !4022, line: 380, baseType: !1073, size: 16, offset: 80)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4087, file: !4022, line: 462, baseType: !4129, size: 32)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4022, line: 422, size: 32, elements: !4130)
!4130 = !{!4131, !4132}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4129, file: !4022, line: 423, baseType: !127, size: 16)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4129, file: !4022, line: 424, baseType: !127, size: 16, offset: 16)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4064, file: !4015, line: 537, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!136, !4013, !136}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4064, file: !4015, line: 539, baseType: !4138, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!136, !4013, !136, !136}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4064, file: !4015, line: 540, baseType: !4142, size: 64, offset: 192)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4013, !809}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4064, file: !4015, line: 541, baseType: !4142, size: 64, offset: 256)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4064, file: !4015, line: 543, baseType: !4147, size: 64, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{null, !4063}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4064, file: !4015, line: 545, baseType: !124, size: 64, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4064, file: !4015, line: 547, baseType: !3541, size: 128, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4064, file: !4015, line: 549, baseType: !1042, size: 192, offset: 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4064, file: !4015, line: 551, baseType: !136, size: 32, offset: 768)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4064, file: !4015, line: 552, baseType: !4070, size: 64, offset: 832)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4064, file: !4015, line: 553, baseType: !4156, offset: 896)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, elements: !2185)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4014, file: !4015, line: 163, baseType: !4158, size: 64, offset: 2048)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4015, line: 24, flags: DIFlagFwdDecl)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4014, file: !4015, line: 165, baseType: !7, size: 32, offset: 2112)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4014, file: !4015, line: 166, baseType: !3357, size: 320, offset: 2176)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4014, file: !4015, line: 168, baseType: !4163, size: 64, offset: 2496)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !156)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4014, file: !4015, line: 170, baseType: !4165, size: 64, offset: 2560)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4015, line: 170, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4014, file: !4015, line: 172, baseType: !4168, size: 64, offset: 2624)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4022, line: 90, size: 192, elements: !4170)
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4169, file: !4022, line: 91, baseType: !1314, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4169, file: !4022, line: 92, baseType: !1314, size: 32, offset: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4169, file: !4022, line: 93, baseType: !1314, size: 32, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4169, file: !4022, line: 94, baseType: !1314, size: 32, offset: 96)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4169, file: !4022, line: 95, baseType: !1314, size: 32, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4169, file: !4022, line: 96, baseType: !1314, size: 32, offset: 160)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4014, file: !4015, line: 174, baseType: !4031, size: 768, offset: 2688)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4014, file: !4015, line: 175, baseType: !1239, size: 64, offset: 3456)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4014, file: !4015, line: 176, baseType: !1239, size: 64, offset: 3520)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4014, file: !4015, line: 177, baseType: !1239, size: 64, offset: 3584)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4014, file: !4015, line: 179, baseType: !4182, size: 64, offset: 3648)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!136, !4013}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4014, file: !4015, line: 180, baseType: !4186, size: 64, offset: 3712)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !4013}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4014, file: !4015, line: 181, baseType: !4190, size: 64, offset: 3776)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!136, !4013, !306}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4014, file: !4015, line: 182, baseType: !4194, size: 64, offset: 3840)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!136, !4013, !7, !7, !136}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4014, file: !4015, line: 184, baseType: !4198, size: 64, offset: 3904)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4015, line: 337, size: 576, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4271, !4272}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4199, file: !4015, line: 339, baseType: !124, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4199, file: !4015, line: 341, baseType: !136, size: 32, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4199, file: !4015, line: 342, baseType: !172, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4199, file: !4015, line: 344, baseType: !4013, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4199, file: !4015, line: 345, baseType: !4206, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4015, line: 302, size: 960, elements: !4208)
!4208 = !{!4209, !4210, !4214, !4225, !4229, !4233, !4260, !4264, !4265, !4266, !4267, !4268, !4269, !4270}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4207, file: !4015, line: 304, baseType: !124, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4207, file: !4015, line: 306, baseType: !4211, size: 64, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !4198, !7, !7, !136}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4207, file: !4015, line: 307, baseType: !4215, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !4198, !4218, !7}
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4220)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4015, line: 32, size: 64, elements: !4221)
!4221 = !{!4222, !4223, !4224}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4220, file: !4015, line: 33, baseType: !127, size: 16)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4220, file: !4015, line: 34, baseType: !127, size: 16, offset: 16)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4220, file: !4015, line: 35, baseType: !1314, size: 32, offset: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4207, file: !4015, line: 309, baseType: !4226, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!440, !4198, !7, !7, !136}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4207, file: !4015, line: 310, baseType: !4230, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!440, !4206, !4013}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4207, file: !4015, line: 311, baseType: !4234, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!136, !4206, !4013, !4237}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4239)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3250, line: 342, size: 1600, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4248, !4250, !4251, !4252, !4253, !4254, !4255, !4257, !4258, !4259}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4239, file: !3250, line: 344, baseType: !3269, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4239, file: !3250, line: 346, baseType: !127, size: 16, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4239, file: !3250, line: 347, baseType: !127, size: 16, offset: 80)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4239, file: !3250, line: 348, baseType: !127, size: 16, offset: 96)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4239, file: !3250, line: 349, baseType: !127, size: 16, offset: 112)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4239, file: !3250, line: 351, baseType: !4247, size: 64, offset: 128)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 64, elements: !1240)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4239, file: !3250, line: 352, baseType: !4249, size: 768, offset: 192)
!4249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 768, elements: !2090)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4239, file: !3250, line: 353, baseType: !4247, size: 64, offset: 960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4239, file: !3250, line: 354, baseType: !4247, size: 64, offset: 1024)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4239, file: !3250, line: 355, baseType: !4247, size: 64, offset: 1088)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4239, file: !3250, line: 356, baseType: !4247, size: 64, offset: 1152)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4239, file: !3250, line: 357, baseType: !4247, size: 64, offset: 1216)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4239, file: !3250, line: 358, baseType: !4256, size: 128, offset: 1280)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 128, elements: !156)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4239, file: !3250, line: 359, baseType: !4247, size: 64, offset: 1408)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4239, file: !3250, line: 360, baseType: !4247, size: 64, offset: 1472)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4239, file: !3250, line: 362, baseType: !3269, size: 64, offset: 1536)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4207, file: !4015, line: 312, baseType: !4261, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{null, !4198}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4207, file: !4015, line: 313, baseType: !4261, size: 64, offset: 448)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4207, file: !4015, line: 315, baseType: !440, size: 8, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4207, file: !4015, line: 316, baseType: !136, size: 32, offset: 544)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4207, file: !4015, line: 317, baseType: !172, size: 64, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4207, file: !4015, line: 319, baseType: !4237, size: 64, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4207, file: !4015, line: 321, baseType: !175, size: 128, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4207, file: !4015, line: 322, baseType: !175, size: 128, offset: 832)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4199, file: !4015, line: 347, baseType: !175, size: 128, offset: 320)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4199, file: !4015, line: 348, baseType: !175, size: 128, offset: 448)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4014, file: !4015, line: 186, baseType: !188, offset: 3968)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4014, file: !4015, line: 187, baseType: !1042, size: 192, offset: 3968)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4014, file: !4015, line: 189, baseType: !7, size: 32, offset: 4160)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4014, file: !4015, line: 190, baseType: !440, size: 8, offset: 4192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4014, file: !4015, line: 192, baseType: !165, size: 5568, offset: 4224)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4014, file: !4015, line: 194, baseType: !175, size: 128, offset: 9792)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4014, file: !4015, line: 195, baseType: !175, size: 128, offset: 9920)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4014, file: !4015, line: 197, baseType: !7, size: 32, offset: 10048)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4014, file: !4015, line: 198, baseType: !7, size: 32, offset: 10080)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4014, file: !4015, line: 199, baseType: !4283, size: 64, offset: 10112)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4014, file: !4015, line: 201, baseType: !440, size: 8, offset: 10176)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4014, file: !4015, line: 203, baseType: !4286, size: 192, offset: 10240)
!4286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 192, elements: !230)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3939, file: !3, line: 70, baseType: !188, offset: 512)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "static_brightness", scope: !3939, file: !3, line: 71, baseType: !136, size: 32, offset: 512)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "pulse_speed", scope: !3939, file: !3, line: 72, baseType: !136, size: 32, offset: 544)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pulse_table", scope: !3939, file: !3, line: 73, baseType: !136, size: 32, offset: 576)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "pulse_asleep", scope: !3939, file: !3, line: 74, baseType: !136, size: 32, offset: 608)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "pulse_awake", scope: !3939, file: !3, line: 75, baseType: !136, size: 32, offset: 640)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "requires_update", scope: !3939, file: !3, line: 76, baseType: !136, size: 32, offset: 672)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3939, file: !3, line: 77, baseType: !4295, size: 512, offset: 704)
!4295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 512, elements: !234)
!4296 = !DILocation(line: 305, column: 27, scope: !3913)
!4297 = !DILocalVariable(name: "input_dev", scope: !3913, file: !3, line: 306, type: !4013)
!4298 = !DILocation(line: 306, column: 20, scope: !3913)
!4299 = !DILocalVariable(name: "pipe", scope: !3913, file: !3, line: 307, type: !136)
!4300 = !DILocation(line: 307, column: 6, scope: !3913)
!4301 = !DILocalVariable(name: "maxp", scope: !3913, file: !3, line: 307, type: !136)
!4302 = !DILocation(line: 307, column: 12, scope: !3913)
!4303 = !DILocalVariable(name: "error", scope: !3913, file: !3, line: 308, type: !136)
!4304 = !DILocation(line: 308, column: 6, scope: !3913)
!4305 = !DILocation(line: 310, column: 14, scope: !3913)
!4306 = !DILocation(line: 310, column: 20, scope: !3913)
!4307 = !DILocation(line: 310, column: 12, scope: !3913)
!4308 = !DILocation(line: 311, column: 6, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 311, column: 6)
!4310 = !DILocation(line: 311, column: 17, scope: !4309)
!4311 = !DILocation(line: 311, column: 22, scope: !4309)
!4312 = !DILocation(line: 311, column: 36, scope: !4309)
!4313 = !DILocation(line: 311, column: 6, scope: !3913)
!4314 = !DILocation(line: 312, column: 3, scope: !4309)
!4315 = !DILocation(line: 314, column: 14, scope: !3913)
!4316 = !DILocation(line: 314, column: 25, scope: !3913)
!4317 = !DILocation(line: 314, column: 37, scope: !3913)
!4318 = !DILocation(line: 314, column: 11, scope: !3913)
!4319 = !DILocation(line: 315, column: 30, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 315, column: 6)
!4321 = !DILocation(line: 315, column: 7, scope: !4320)
!4322 = !DILocation(line: 315, column: 6, scope: !3913)
!4323 = !DILocation(line: 316, column: 3, scope: !4320)
!4324 = !DILocation(line: 318, column: 18, scope: !3913)
!4325 = !DILocation(line: 318, column: 24, scope: !3913)
!4326 = !DILocation(line: 320, column: 6, scope: !3913)
!4327 = !DILocation(line: 320, column: 17, scope: !3913)
!4328 = !DILocation(line: 320, column: 22, scope: !3913)
!4329 = !DILocation(line: 318, column: 2, scope: !3913)
!4330 = !DILocation(line: 323, column: 7, scope: !3913)
!4331 = !DILocation(line: 323, column: 5, scope: !3913)
!4332 = !DILocation(line: 324, column: 14, scope: !3913)
!4333 = !DILocation(line: 324, column: 12, scope: !3913)
!4334 = !DILocation(line: 325, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 325, column: 6)
!4336 = !DILocation(line: 325, column: 10, scope: !4335)
!4337 = !DILocation(line: 325, column: 14, scope: !4335)
!4338 = !DILocation(line: 325, column: 6, scope: !3913)
!4339 = !DILocation(line: 326, column: 3, scope: !4335)
!4340 = !DILocation(line: 328, column: 30, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 328, column: 6)
!4342 = !DILocation(line: 328, column: 36, scope: !4341)
!4343 = !DILocation(line: 328, column: 6, scope: !4341)
!4344 = !DILocation(line: 328, column: 6, scope: !3913)
!4345 = !DILocation(line: 329, column: 3, scope: !4341)
!4346 = !DILocation(line: 331, column: 12, scope: !3913)
!4347 = !DILocation(line: 331, column: 2, scope: !3913)
!4348 = !DILocation(line: 331, column: 6, scope: !3913)
!4349 = !DILocation(line: 331, column: 10, scope: !3913)
!4350 = !DILocation(line: 332, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 332, column: 6)
!4352 = !DILocation(line: 332, column: 11, scope: !4351)
!4353 = !DILocation(line: 332, column: 6, scope: !3913)
!4354 = !DILocation(line: 333, column: 3, scope: !4351)
!4355 = !DILocation(line: 335, column: 15, scope: !3913)
!4356 = !DILocation(line: 335, column: 2, scope: !3913)
!4357 = !DILocation(line: 335, column: 6, scope: !3913)
!4358 = !DILocation(line: 335, column: 13, scope: !3913)
!4359 = !DILocation(line: 336, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 336, column: 6)
!4361 = !DILocation(line: 336, column: 11, scope: !4360)
!4362 = !DILocation(line: 336, column: 6, scope: !3913)
!4363 = !DILocation(line: 337, column: 3, scope: !4360)
!4364 = !DILocation(line: 339, column: 13, scope: !3913)
!4365 = !DILocation(line: 339, column: 2, scope: !3913)
!4366 = !DILocation(line: 339, column: 6, scope: !3913)
!4367 = !DILocation(line: 339, column: 11, scope: !3913)
!4368 = !DILocation(line: 340, column: 13, scope: !3913)
!4369 = !DILocation(line: 340, column: 2, scope: !3913)
!4370 = !DILocation(line: 340, column: 6, scope: !3913)
!4371 = !DILocation(line: 340, column: 11, scope: !3913)
!4372 = !DILocation(line: 341, column: 14, scope: !3913)
!4373 = !DILocation(line: 341, column: 2, scope: !3913)
!4374 = !DILocation(line: 341, column: 6, scope: !3913)
!4375 = !DILocation(line: 341, column: 12, scope: !3913)
!4376 = !DILocation(line: 343, column: 16, scope: !3913)
!4377 = !DILocation(line: 343, column: 22, scope: !3913)
!4378 = !DILocation(line: 343, column: 26, scope: !3913)
!4379 = !DILocation(line: 343, column: 2, scope: !3913)
!4380 = !DILocation(line: 344, column: 10, scope: !3913)
!4381 = !DILocation(line: 344, column: 14, scope: !3913)
!4382 = !DILocation(line: 344, column: 2, scope: !3913)
!4383 = !DILocation(line: 346, column: 2, scope: !3913)
!4384 = !DILocation(line: 346, column: 2, scope: !3923)
!4385 = !DILocation(line: 329, column: 10, scope: !3915, inlinedAt: !3922)
!4386 = !DILocation(line: 329, column: 16, scope: !3915, inlinedAt: !3922)
!4387 = !DILocation(line: 348, column: 10, scope: !3913)
!4388 = !DILocation(line: 348, column: 2, scope: !3913)
!4389 = !DILocation(line: 350, column: 3, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 348, column: 51)
!4391 = !DILocation(line: 350, column: 14, scope: !4390)
!4392 = !DILocation(line: 350, column: 19, scope: !4390)
!4393 = !DILocation(line: 351, column: 3, scope: !4390)
!4394 = !DILocation(line: 353, column: 3, scope: !4390)
!4395 = !DILocation(line: 353, column: 14, scope: !4390)
!4396 = !DILocation(line: 353, column: 19, scope: !4390)
!4397 = !DILocation(line: 354, column: 3, scope: !4390)
!4398 = !DILocation(line: 356, column: 3, scope: !4390)
!4399 = !DILocation(line: 356, column: 14, scope: !4390)
!4400 = !DILocation(line: 356, column: 19, scope: !4390)
!4401 = !DILocation(line: 358, column: 10, scope: !4390)
!4402 = !DILocation(line: 357, column: 3, scope: !4390)
!4403 = !DILocation(line: 359, column: 2, scope: !4390)
!4404 = !DILocation(line: 361, column: 20, scope: !3913)
!4405 = !DILocation(line: 361, column: 24, scope: !3913)
!4406 = !DILocation(line: 361, column: 2, scope: !3913)
!4407 = !DILocation(line: 361, column: 13, scope: !3913)
!4408 = !DILocation(line: 361, column: 18, scope: !3913)
!4409 = !DILocation(line: 362, column: 18, scope: !3913)
!4410 = !DILocation(line: 362, column: 25, scope: !3913)
!4411 = !DILocation(line: 362, column: 36, scope: !3913)
!4412 = !DILocation(line: 362, column: 2, scope: !3913)
!4413 = !DILocation(line: 363, column: 27, scope: !3913)
!4414 = !DILocation(line: 363, column: 33, scope: !3913)
!4415 = !DILocation(line: 363, column: 2, scope: !3913)
!4416 = !DILocation(line: 363, column: 13, scope: !3913)
!4417 = !DILocation(line: 363, column: 17, scope: !3913)
!4418 = !DILocation(line: 363, column: 24, scope: !3913)
!4419 = !DILocation(line: 365, column: 20, scope: !3913)
!4420 = !DILocation(line: 365, column: 31, scope: !3913)
!4421 = !DILocation(line: 365, column: 2, scope: !3913)
!4422 = !DILocation(line: 367, column: 2, scope: !3913)
!4423 = !DILocation(line: 367, column: 13, scope: !3913)
!4424 = !DILocation(line: 367, column: 19, scope: !3913)
!4425 = !DILocation(line: 369, column: 2, scope: !3913)
!4426 = !DILocation(line: 369, column: 13, scope: !3913)
!4427 = !DILocation(line: 369, column: 22, scope: !3913)
!4428 = !DILocation(line: 371, column: 2, scope: !3913)
!4429 = !DILocation(line: 371, column: 13, scope: !3913)
!4430 = !DILocation(line: 371, column: 37, scope: !3913)
!4431 = !DILocation(line: 372, column: 2, scope: !3913)
!4432 = !DILocation(line: 372, column: 13, scope: !3913)
!4433 = !DILocation(line: 372, column: 40, scope: !3913)
!4434 = !DILocation(line: 373, column: 2, scope: !3913)
!4435 = !DILocation(line: 373, column: 13, scope: !3913)
!4436 = !DILocation(line: 373, column: 44, scope: !3913)
!4437 = !DILocation(line: 376, column: 9, scope: !3913)
!4438 = !DILocation(line: 376, column: 7, scope: !3913)
!4439 = !DILocation(line: 377, column: 23, scope: !3913)
!4440 = !DILocation(line: 377, column: 29, scope: !3913)
!4441 = !DILocation(line: 377, column: 35, scope: !3913)
!4442 = !DILocation(line: 377, column: 9, scope: !3913)
!4443 = !DILocation(line: 377, column: 7, scope: !3913)
!4444 = !DILocation(line: 379, column: 6, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 379, column: 6)
!4446 = !DILocation(line: 379, column: 11, scope: !4445)
!4447 = !DILocation(line: 379, column: 40, scope: !4445)
!4448 = !DILocation(line: 379, column: 43, scope: !4445)
!4449 = !DILocation(line: 379, column: 48, scope: !4445)
!4450 = !DILocation(line: 379, column: 6, scope: !3913)
!4451 = !DILocation(line: 381, column: 60, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 379, column: 78)
!4453 = !DILocation(line: 380, column: 3, scope: !4452)
!4454 = !DILocation(line: 382, column: 8, scope: !4452)
!4455 = !DILocation(line: 383, column: 2, scope: !4452)
!4456 = !DILocation(line: 385, column: 19, scope: !3913)
!4457 = !DILocation(line: 385, column: 23, scope: !3913)
!4458 = !DILocation(line: 385, column: 28, scope: !3913)
!4459 = !DILocation(line: 385, column: 34, scope: !3913)
!4460 = !DILocation(line: 385, column: 40, scope: !3913)
!4461 = !DILocation(line: 385, column: 44, scope: !3913)
!4462 = !DILocation(line: 386, column: 5, scope: !3913)
!4463 = !DILocation(line: 387, column: 5, scope: !3913)
!4464 = !DILocation(line: 387, column: 9, scope: !3913)
!4465 = !DILocation(line: 387, column: 19, scope: !3913)
!4466 = !DILocation(line: 385, column: 2, scope: !3913)
!4467 = !DILocation(line: 388, column: 26, scope: !3913)
!4468 = !DILocation(line: 388, column: 30, scope: !3913)
!4469 = !DILocation(line: 388, column: 2, scope: !3913)
!4470 = !DILocation(line: 388, column: 6, scope: !3913)
!4471 = !DILocation(line: 388, column: 11, scope: !3913)
!4472 = !DILocation(line: 388, column: 24, scope: !3913)
!4473 = !DILocation(line: 389, column: 2, scope: !3913)
!4474 = !DILocation(line: 389, column: 6, scope: !3913)
!4475 = !DILocation(line: 389, column: 11, scope: !3913)
!4476 = !DILocation(line: 389, column: 26, scope: !3913)
!4477 = !DILocation(line: 392, column: 21, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 392, column: 6)
!4479 = !DILocation(line: 392, column: 25, scope: !4478)
!4480 = !DILocation(line: 392, column: 6, scope: !4478)
!4481 = !DILocation(line: 392, column: 6, scope: !3913)
!4482 = !DILocation(line: 393, column: 9, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 392, column: 43)
!4484 = !DILocation(line: 394, column: 3, scope: !4483)
!4485 = !DILocation(line: 397, column: 32, scope: !3913)
!4486 = !DILocation(line: 397, column: 36, scope: !3913)
!4487 = !DILocation(line: 397, column: 10, scope: !3913)
!4488 = !DILocation(line: 397, column: 8, scope: !3913)
!4489 = !DILocation(line: 398, column: 6, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 398, column: 6)
!4491 = !DILocation(line: 398, column: 6, scope: !3913)
!4492 = !DILocation(line: 399, column: 3, scope: !4490)
!4493 = !DILocation(line: 403, column: 2, scope: !3913)
!4494 = !DILocation(line: 403, column: 6, scope: !3913)
!4495 = !DILocation(line: 403, column: 22, scope: !3913)
!4496 = !DILocation(line: 404, column: 22, scope: !3913)
!4497 = !DILocation(line: 404, column: 2, scope: !3913)
!4498 = !DILocation(line: 406, column: 19, scope: !3913)
!4499 = !DILocation(line: 406, column: 25, scope: !3913)
!4500 = !DILocation(line: 406, column: 2, scope: !3913)
!4501 = !DILocation(line: 407, column: 2, scope: !3913)
!4502 = !DILabel(scope: !3913, name: "fail5", file: !3, line: 409)
!4503 = !DILocation(line: 409, column: 2, scope: !3913)
!4504 = !DILocation(line: 409, column: 22, scope: !3913)
!4505 = !DILocation(line: 409, column: 26, scope: !3913)
!4506 = !DILocation(line: 409, column: 9, scope: !3913)
!4507 = !DILabel(scope: !3913, name: "fail4", file: !3, line: 410)
!4508 = !DILocation(line: 410, column: 2, scope: !3913)
!4509 = !DILocation(line: 410, column: 22, scope: !3913)
!4510 = !DILocation(line: 410, column: 26, scope: !3913)
!4511 = !DILocation(line: 410, column: 9, scope: !3913)
!4512 = !DILabel(scope: !3913, name: "fail3", file: !3, line: 411)
!4513 = !DILocation(line: 411, column: 2, scope: !3913)
!4514 = !DILocation(line: 411, column: 22, scope: !3913)
!4515 = !DILocation(line: 411, column: 26, scope: !3913)
!4516 = !DILocation(line: 411, column: 9, scope: !3913)
!4517 = !DILabel(scope: !3913, name: "fail2", file: !3, line: 412)
!4518 = !DILocation(line: 412, column: 2, scope: !3913)
!4519 = !DILocation(line: 412, column: 32, scope: !3913)
!4520 = !DILocation(line: 412, column: 38, scope: !3913)
!4521 = !DILocation(line: 412, column: 9, scope: !3913)
!4522 = !DILabel(scope: !3913, name: "fail1", file: !3, line: 413)
!4523 = !DILocation(line: 413, column: 2, scope: !3913)
!4524 = !DILocation(line: 413, column: 27, scope: !3913)
!4525 = !DILocation(line: 413, column: 9, scope: !3913)
!4526 = !DILocation(line: 414, column: 8, scope: !3913)
!4527 = !DILocation(line: 414, column: 2, scope: !3913)
!4528 = !DILocation(line: 415, column: 9, scope: !3913)
!4529 = !DILocation(line: 415, column: 2, scope: !3913)
!4530 = !DILocation(line: 416, column: 1, scope: !3913)
!4531 = distinct !DISubprogram(name: "powermate_disconnect", scope: !3, file: !3, line: 419, type: !3858, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4532 = !DILocalVariable(name: "intf", arg: 1, scope: !4531, file: !3, line: 419, type: !3698)
!4533 = !DILocation(line: 419, column: 56, scope: !4531)
!4534 = !DILocalVariable(name: "pm", scope: !4531, file: !3, line: 421, type: !3938)
!4535 = !DILocation(line: 421, column: 27, scope: !4531)
!4536 = !DILocation(line: 421, column: 50, scope: !4531)
!4537 = !DILocation(line: 421, column: 32, scope: !4531)
!4538 = !DILocation(line: 423, column: 19, scope: !4531)
!4539 = !DILocation(line: 423, column: 2, scope: !4531)
!4540 = !DILocation(line: 424, column: 6, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 424, column: 6)
!4542 = !DILocation(line: 424, column: 6, scope: !4531)
!4543 = !DILocation(line: 425, column: 3, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 424, column: 10)
!4545 = !DILocation(line: 425, column: 7, scope: !4544)
!4546 = !DILocation(line: 425, column: 23, scope: !4544)
!4547 = !DILocation(line: 426, column: 16, scope: !4544)
!4548 = !DILocation(line: 426, column: 20, scope: !4544)
!4549 = !DILocation(line: 426, column: 3, scope: !4544)
!4550 = !DILocation(line: 427, column: 27, scope: !4544)
!4551 = !DILocation(line: 427, column: 31, scope: !4544)
!4552 = !DILocation(line: 427, column: 3, scope: !4544)
!4553 = !DILocation(line: 428, column: 16, scope: !4544)
!4554 = !DILocation(line: 428, column: 20, scope: !4544)
!4555 = !DILocation(line: 428, column: 3, scope: !4544)
!4556 = !DILocation(line: 429, column: 16, scope: !4544)
!4557 = !DILocation(line: 429, column: 20, scope: !4544)
!4558 = !DILocation(line: 429, column: 3, scope: !4544)
!4559 = !DILocation(line: 430, column: 46, scope: !4544)
!4560 = !DILocation(line: 430, column: 26, scope: !4544)
!4561 = !DILocation(line: 430, column: 53, scope: !4544)
!4562 = !DILocation(line: 430, column: 3, scope: !4544)
!4563 = !DILocation(line: 432, column: 9, scope: !4544)
!4564 = !DILocation(line: 432, column: 3, scope: !4544)
!4565 = !DILocation(line: 433, column: 2, scope: !4544)
!4566 = !DILocation(line: 434, column: 1, scope: !4531)
!4567 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4568, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!132, !3698}
!4570 = !DILocalVariable(name: "intf", arg: 1, scope: !4567, file: !6, line: 715, type: !3698)
!4571 = !DILocation(line: 715, column: 76, scope: !4567)
!4572 = !DILocalVariable(name: "__mptr", scope: !4573, file: !6, line: 717, type: !124)
!4573 = distinct !DILexicalBlock(scope: !4567, file: !6, line: 717, column: 9)
!4574 = !DILocation(line: 717, column: 9, scope: !4573)
!4575 = !DILocation(line: 717, column: 9, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4573, file: !6, line: 717, column: 9)
!4577 = !DILocation(line: 717, column: 2, scope: !4567)
!4578 = distinct !DISubprogram(name: "usb_endpoint_is_int_in", scope: !88, file: !88, line: 596, type: !4579, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!136, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!4583 = !DILocalVariable(name: "epd", arg: 1, scope: !4578, file: !88, line: 597, type: !4581)
!4584 = !DILocation(line: 597, column: 43, scope: !4578)
!4585 = !DILocation(line: 599, column: 31, scope: !4578)
!4586 = !DILocation(line: 599, column: 9, scope: !4578)
!4587 = !DILocation(line: 599, column: 36, scope: !4578)
!4588 = !DILocation(line: 599, column: 59, scope: !4578)
!4589 = !DILocation(line: 599, column: 39, scope: !4578)
!4590 = !DILocation(line: 0, scope: !4578)
!4591 = !DILocation(line: 599, column: 2, scope: !4578)
!4592 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !4593, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!7, !132, !7}
!4595 = !DILocalVariable(name: "dev", arg: 1, scope: !4592, file: !6, line: 1945, type: !132)
!4596 = !DILocation(line: 1945, column: 61, scope: !4592)
!4597 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4592, file: !6, line: 1946, type: !7)
!4598 = !DILocation(line: 1946, column: 16, scope: !4592)
!4599 = !DILocation(line: 1948, column: 10, scope: !4592)
!4600 = !DILocation(line: 1948, column: 15, scope: !4592)
!4601 = !DILocation(line: 1948, column: 22, scope: !4592)
!4602 = !DILocation(line: 1948, column: 31, scope: !4592)
!4603 = !DILocation(line: 1948, column: 40, scope: !4592)
!4604 = !DILocation(line: 1948, column: 28, scope: !4592)
!4605 = !DILocation(line: 1948, column: 2, scope: !4592)
!4606 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !4607, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!124, !275, !125}
!4609 = !DILocalVariable(name: "s", arg: 1, scope: !4610, file: !114, line: 445, type: !884)
!4610 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !4611, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!124, !884, !125, !275}
!4613 = !DILocation(line: 445, column: 72, scope: !4610, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 552, column: 10, scope: !4615, inlinedAt: !4618)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !114, line: 540, column: 34)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !114, line: 540, column: 6)
!4617 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !4607, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4618 = distinct !DILocation(line: 664, column: 9, scope: !4606)
!4619 = !DILocalVariable(name: "flags", arg: 2, scope: !4610, file: !114, line: 446, type: !125)
!4620 = !DILocation(line: 446, column: 9, scope: !4610, inlinedAt: !4614)
!4621 = !DILocalVariable(name: "size", arg: 3, scope: !4610, file: !114, line: 446, type: !275)
!4622 = !DILocation(line: 446, column: 23, scope: !4610, inlinedAt: !4614)
!4623 = !DILocalVariable(name: "ret", scope: !4610, file: !114, line: 448, type: !124)
!4624 = !DILocation(line: 448, column: 8, scope: !4610, inlinedAt: !4614)
!4625 = !DILocalVariable(name: "flags", arg: 1, scope: !4626, file: !114, line: 318, type: !125)
!4626 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !4627, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!113, !125}
!4629 = !DILocation(line: 318, column: 67, scope: !4626, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 553, column: 20, scope: !4615, inlinedAt: !4618)
!4631 = !DILocalVariable(name: "size", arg: 1, scope: !4632, file: !114, line: 346, type: !275)
!4632 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !4633, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!7, !275}
!4635 = !DILocation(line: 346, column: 58, scope: !4632, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 547, column: 11, scope: !4615, inlinedAt: !4618)
!4637 = !DILocalVariable(name: "size", arg: 1, scope: !4638, file: !114, line: 472, type: !275)
!4638 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !4639, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!124, !275, !125, !7}
!4641 = !DILocation(line: 472, column: 28, scope: !4638, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 481, column: 9, scope: !4643, inlinedAt: !4644)
!4643 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !4607, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4644 = distinct !DILocation(line: 545, column: 11, scope: !4645, inlinedAt: !4618)
!4645 = distinct !DILexicalBlock(scope: !4615, file: !114, line: 544, column: 7)
!4646 = !DILocalVariable(name: "flags", arg: 2, scope: !4638, file: !114, line: 472, type: !125)
!4647 = !DILocation(line: 472, column: 40, scope: !4638, inlinedAt: !4642)
!4648 = !DILocalVariable(name: "order", arg: 3, scope: !4638, file: !114, line: 472, type: !7)
!4649 = !DILocation(line: 472, column: 60, scope: !4638, inlinedAt: !4642)
!4650 = !DILocalVariable(name: "size", arg: 1, scope: !4643, file: !114, line: 478, type: !275)
!4651 = !DILocation(line: 478, column: 51, scope: !4643, inlinedAt: !4644)
!4652 = !DILocalVariable(name: "flags", arg: 2, scope: !4643, file: !114, line: 478, type: !125)
!4653 = !DILocation(line: 478, column: 63, scope: !4643, inlinedAt: !4644)
!4654 = !DILocalVariable(name: "order", scope: !4643, file: !114, line: 480, type: !7)
!4655 = !DILocation(line: 480, column: 15, scope: !4643, inlinedAt: !4644)
!4656 = !DILocalVariable(name: "size", arg: 1, scope: !4617, file: !114, line: 538, type: !275)
!4657 = !DILocation(line: 538, column: 45, scope: !4617, inlinedAt: !4618)
!4658 = !DILocalVariable(name: "flags", arg: 2, scope: !4617, file: !114, line: 538, type: !125)
!4659 = !DILocation(line: 538, column: 57, scope: !4617, inlinedAt: !4618)
!4660 = !DILocalVariable(name: "index", scope: !4615, file: !114, line: 542, type: !7)
!4661 = !DILocation(line: 542, column: 16, scope: !4615, inlinedAt: !4618)
!4662 = !DILocalVariable(name: "size", arg: 1, scope: !4606, file: !114, line: 662, type: !275)
!4663 = !DILocation(line: 662, column: 36, scope: !4606)
!4664 = !DILocalVariable(name: "flags", arg: 2, scope: !4606, file: !114, line: 662, type: !125)
!4665 = !DILocation(line: 662, column: 48, scope: !4606)
!4666 = !DILocation(line: 664, column: 17, scope: !4606)
!4667 = !DILocation(line: 664, column: 23, scope: !4606)
!4668 = !DILocation(line: 664, column: 29, scope: !4606)
!4669 = !DILocation(line: 540, column: 27, scope: !4616, inlinedAt: !4618)
!4670 = !DILocation(line: 540, column: 6, scope: !4616, inlinedAt: !4618)
!4671 = !DILocation(line: 540, column: 6, scope: !4617, inlinedAt: !4618)
!4672 = !DILocation(line: 544, column: 7, scope: !4645, inlinedAt: !4618)
!4673 = !DILocation(line: 544, column: 12, scope: !4645, inlinedAt: !4618)
!4674 = !DILocation(line: 544, column: 7, scope: !4615, inlinedAt: !4618)
!4675 = !DILocation(line: 545, column: 25, scope: !4645, inlinedAt: !4618)
!4676 = !DILocation(line: 545, column: 31, scope: !4645, inlinedAt: !4618)
!4677 = !DILocation(line: 480, column: 33, scope: !4643, inlinedAt: !4644)
!4678 = !DILocation(line: 480, column: 23, scope: !4643, inlinedAt: !4644)
!4679 = !DILocation(line: 481, column: 29, scope: !4643, inlinedAt: !4644)
!4680 = !DILocation(line: 481, column: 35, scope: !4643, inlinedAt: !4644)
!4681 = !DILocation(line: 481, column: 42, scope: !4643, inlinedAt: !4644)
!4682 = !DILocation(line: 474, column: 23, scope: !4638, inlinedAt: !4642)
!4683 = !DILocation(line: 474, column: 29, scope: !4638, inlinedAt: !4642)
!4684 = !DILocation(line: 474, column: 36, scope: !4638, inlinedAt: !4642)
!4685 = !DILocation(line: 474, column: 9, scope: !4638, inlinedAt: !4642)
!4686 = !DILocation(line: 545, column: 4, scope: !4645, inlinedAt: !4618)
!4687 = !DILocation(line: 547, column: 25, scope: !4615, inlinedAt: !4618)
!4688 = !DILocation(line: 348, column: 7, scope: !4689, inlinedAt: !4636)
!4689 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 348, column: 6)
!4690 = !DILocation(line: 348, column: 6, scope: !4632, inlinedAt: !4636)
!4691 = !DILocation(line: 349, column: 3, scope: !4689, inlinedAt: !4636)
!4692 = !DILocation(line: 351, column: 6, scope: !4693, inlinedAt: !4636)
!4693 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 351, column: 6)
!4694 = !DILocation(line: 351, column: 11, scope: !4693, inlinedAt: !4636)
!4695 = !DILocation(line: 351, column: 6, scope: !4632, inlinedAt: !4636)
!4696 = !DILocation(line: 352, column: 3, scope: !4693, inlinedAt: !4636)
!4697 = !DILocation(line: 354, column: 32, scope: !4698, inlinedAt: !4636)
!4698 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 354, column: 6)
!4699 = !DILocation(line: 354, column: 37, scope: !4698, inlinedAt: !4636)
!4700 = !DILocation(line: 354, column: 42, scope: !4698, inlinedAt: !4636)
!4701 = !DILocation(line: 354, column: 45, scope: !4698, inlinedAt: !4636)
!4702 = !DILocation(line: 354, column: 50, scope: !4698, inlinedAt: !4636)
!4703 = !DILocation(line: 354, column: 6, scope: !4632, inlinedAt: !4636)
!4704 = !DILocation(line: 355, column: 3, scope: !4698, inlinedAt: !4636)
!4705 = !DILocation(line: 356, column: 32, scope: !4706, inlinedAt: !4636)
!4706 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 356, column: 6)
!4707 = !DILocation(line: 356, column: 37, scope: !4706, inlinedAt: !4636)
!4708 = !DILocation(line: 356, column: 43, scope: !4706, inlinedAt: !4636)
!4709 = !DILocation(line: 356, column: 46, scope: !4706, inlinedAt: !4636)
!4710 = !DILocation(line: 356, column: 51, scope: !4706, inlinedAt: !4636)
!4711 = !DILocation(line: 356, column: 6, scope: !4632, inlinedAt: !4636)
!4712 = !DILocation(line: 357, column: 3, scope: !4706, inlinedAt: !4636)
!4713 = !DILocation(line: 358, column: 6, scope: !4714, inlinedAt: !4636)
!4714 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 358, column: 6)
!4715 = !DILocation(line: 358, column: 11, scope: !4714, inlinedAt: !4636)
!4716 = !DILocation(line: 358, column: 6, scope: !4632, inlinedAt: !4636)
!4717 = !DILocation(line: 358, column: 26, scope: !4714, inlinedAt: !4636)
!4718 = !DILocation(line: 359, column: 6, scope: !4719, inlinedAt: !4636)
!4719 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 359, column: 6)
!4720 = !DILocation(line: 359, column: 11, scope: !4719, inlinedAt: !4636)
!4721 = !DILocation(line: 359, column: 6, scope: !4632, inlinedAt: !4636)
!4722 = !DILocation(line: 359, column: 26, scope: !4719, inlinedAt: !4636)
!4723 = !DILocation(line: 360, column: 6, scope: !4724, inlinedAt: !4636)
!4724 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 360, column: 6)
!4725 = !DILocation(line: 360, column: 11, scope: !4724, inlinedAt: !4636)
!4726 = !DILocation(line: 360, column: 6, scope: !4632, inlinedAt: !4636)
!4727 = !DILocation(line: 360, column: 26, scope: !4724, inlinedAt: !4636)
!4728 = !DILocation(line: 361, column: 6, scope: !4729, inlinedAt: !4636)
!4729 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 361, column: 6)
!4730 = !DILocation(line: 361, column: 11, scope: !4729, inlinedAt: !4636)
!4731 = !DILocation(line: 361, column: 6, scope: !4632, inlinedAt: !4636)
!4732 = !DILocation(line: 361, column: 26, scope: !4729, inlinedAt: !4636)
!4733 = !DILocation(line: 362, column: 6, scope: !4734, inlinedAt: !4636)
!4734 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 362, column: 6)
!4735 = !DILocation(line: 362, column: 11, scope: !4734, inlinedAt: !4636)
!4736 = !DILocation(line: 362, column: 6, scope: !4632, inlinedAt: !4636)
!4737 = !DILocation(line: 362, column: 26, scope: !4734, inlinedAt: !4636)
!4738 = !DILocation(line: 363, column: 6, scope: !4739, inlinedAt: !4636)
!4739 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 363, column: 6)
!4740 = !DILocation(line: 363, column: 11, scope: !4739, inlinedAt: !4636)
!4741 = !DILocation(line: 363, column: 6, scope: !4632, inlinedAt: !4636)
!4742 = !DILocation(line: 363, column: 26, scope: !4739, inlinedAt: !4636)
!4743 = !DILocation(line: 364, column: 6, scope: !4744, inlinedAt: !4636)
!4744 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 364, column: 6)
!4745 = !DILocation(line: 364, column: 11, scope: !4744, inlinedAt: !4636)
!4746 = !DILocation(line: 364, column: 6, scope: !4632, inlinedAt: !4636)
!4747 = !DILocation(line: 364, column: 26, scope: !4744, inlinedAt: !4636)
!4748 = !DILocation(line: 365, column: 6, scope: !4749, inlinedAt: !4636)
!4749 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 365, column: 6)
!4750 = !DILocation(line: 365, column: 11, scope: !4749, inlinedAt: !4636)
!4751 = !DILocation(line: 365, column: 6, scope: !4632, inlinedAt: !4636)
!4752 = !DILocation(line: 365, column: 26, scope: !4749, inlinedAt: !4636)
!4753 = !DILocation(line: 366, column: 6, scope: !4754, inlinedAt: !4636)
!4754 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 366, column: 6)
!4755 = !DILocation(line: 366, column: 11, scope: !4754, inlinedAt: !4636)
!4756 = !DILocation(line: 366, column: 6, scope: !4632, inlinedAt: !4636)
!4757 = !DILocation(line: 366, column: 26, scope: !4754, inlinedAt: !4636)
!4758 = !DILocation(line: 367, column: 6, scope: !4759, inlinedAt: !4636)
!4759 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 367, column: 6)
!4760 = !DILocation(line: 367, column: 11, scope: !4759, inlinedAt: !4636)
!4761 = !DILocation(line: 367, column: 6, scope: !4632, inlinedAt: !4636)
!4762 = !DILocation(line: 367, column: 26, scope: !4759, inlinedAt: !4636)
!4763 = !DILocation(line: 368, column: 6, scope: !4764, inlinedAt: !4636)
!4764 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 368, column: 6)
!4765 = !DILocation(line: 368, column: 11, scope: !4764, inlinedAt: !4636)
!4766 = !DILocation(line: 368, column: 6, scope: !4632, inlinedAt: !4636)
!4767 = !DILocation(line: 368, column: 26, scope: !4764, inlinedAt: !4636)
!4768 = !DILocation(line: 369, column: 6, scope: !4769, inlinedAt: !4636)
!4769 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 369, column: 6)
!4770 = !DILocation(line: 369, column: 11, scope: !4769, inlinedAt: !4636)
!4771 = !DILocation(line: 369, column: 6, scope: !4632, inlinedAt: !4636)
!4772 = !DILocation(line: 369, column: 26, scope: !4769, inlinedAt: !4636)
!4773 = !DILocation(line: 370, column: 6, scope: !4774, inlinedAt: !4636)
!4774 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 370, column: 6)
!4775 = !DILocation(line: 370, column: 11, scope: !4774, inlinedAt: !4636)
!4776 = !DILocation(line: 370, column: 6, scope: !4632, inlinedAt: !4636)
!4777 = !DILocation(line: 370, column: 26, scope: !4774, inlinedAt: !4636)
!4778 = !DILocation(line: 371, column: 6, scope: !4779, inlinedAt: !4636)
!4779 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 371, column: 6)
!4780 = !DILocation(line: 371, column: 11, scope: !4779, inlinedAt: !4636)
!4781 = !DILocation(line: 371, column: 6, scope: !4632, inlinedAt: !4636)
!4782 = !DILocation(line: 371, column: 26, scope: !4779, inlinedAt: !4636)
!4783 = !DILocation(line: 372, column: 6, scope: !4784, inlinedAt: !4636)
!4784 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 372, column: 6)
!4785 = !DILocation(line: 372, column: 11, scope: !4784, inlinedAt: !4636)
!4786 = !DILocation(line: 372, column: 6, scope: !4632, inlinedAt: !4636)
!4787 = !DILocation(line: 372, column: 26, scope: !4784, inlinedAt: !4636)
!4788 = !DILocation(line: 373, column: 6, scope: !4789, inlinedAt: !4636)
!4789 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 373, column: 6)
!4790 = !DILocation(line: 373, column: 11, scope: !4789, inlinedAt: !4636)
!4791 = !DILocation(line: 373, column: 6, scope: !4632, inlinedAt: !4636)
!4792 = !DILocation(line: 373, column: 26, scope: !4789, inlinedAt: !4636)
!4793 = !DILocation(line: 374, column: 6, scope: !4794, inlinedAt: !4636)
!4794 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 374, column: 6)
!4795 = !DILocation(line: 374, column: 11, scope: !4794, inlinedAt: !4636)
!4796 = !DILocation(line: 374, column: 6, scope: !4632, inlinedAt: !4636)
!4797 = !DILocation(line: 374, column: 26, scope: !4794, inlinedAt: !4636)
!4798 = !DILocation(line: 375, column: 6, scope: !4799, inlinedAt: !4636)
!4799 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 375, column: 6)
!4800 = !DILocation(line: 375, column: 11, scope: !4799, inlinedAt: !4636)
!4801 = !DILocation(line: 375, column: 6, scope: !4632, inlinedAt: !4636)
!4802 = !DILocation(line: 375, column: 27, scope: !4799, inlinedAt: !4636)
!4803 = !DILocation(line: 376, column: 6, scope: !4804, inlinedAt: !4636)
!4804 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 376, column: 6)
!4805 = !DILocation(line: 376, column: 11, scope: !4804, inlinedAt: !4636)
!4806 = !DILocation(line: 376, column: 6, scope: !4632, inlinedAt: !4636)
!4807 = !DILocation(line: 376, column: 32, scope: !4804, inlinedAt: !4636)
!4808 = !DILocation(line: 377, column: 6, scope: !4809, inlinedAt: !4636)
!4809 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 377, column: 6)
!4810 = !DILocation(line: 377, column: 11, scope: !4809, inlinedAt: !4636)
!4811 = !DILocation(line: 377, column: 6, scope: !4632, inlinedAt: !4636)
!4812 = !DILocation(line: 377, column: 32, scope: !4809, inlinedAt: !4636)
!4813 = !DILocation(line: 378, column: 6, scope: !4814, inlinedAt: !4636)
!4814 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 378, column: 6)
!4815 = !DILocation(line: 378, column: 11, scope: !4814, inlinedAt: !4636)
!4816 = !DILocation(line: 378, column: 6, scope: !4632, inlinedAt: !4636)
!4817 = !DILocation(line: 378, column: 32, scope: !4814, inlinedAt: !4636)
!4818 = !DILocation(line: 379, column: 6, scope: !4819, inlinedAt: !4636)
!4819 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 379, column: 6)
!4820 = !DILocation(line: 379, column: 11, scope: !4819, inlinedAt: !4636)
!4821 = !DILocation(line: 379, column: 6, scope: !4632, inlinedAt: !4636)
!4822 = !DILocation(line: 379, column: 33, scope: !4819, inlinedAt: !4636)
!4823 = !DILocation(line: 380, column: 6, scope: !4824, inlinedAt: !4636)
!4824 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 380, column: 6)
!4825 = !DILocation(line: 380, column: 11, scope: !4824, inlinedAt: !4636)
!4826 = !DILocation(line: 380, column: 6, scope: !4632, inlinedAt: !4636)
!4827 = !DILocation(line: 380, column: 33, scope: !4824, inlinedAt: !4636)
!4828 = !DILocation(line: 381, column: 6, scope: !4829, inlinedAt: !4636)
!4829 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 381, column: 6)
!4830 = !DILocation(line: 381, column: 11, scope: !4829, inlinedAt: !4636)
!4831 = !DILocation(line: 381, column: 6, scope: !4632, inlinedAt: !4636)
!4832 = !DILocation(line: 381, column: 33, scope: !4829, inlinedAt: !4636)
!4833 = !DILocation(line: 382, column: 2, scope: !4834, inlinedAt: !4636)
!4834 = distinct !DILexicalBlock(scope: !4835, file: !114, line: 382, column: 2)
!4835 = distinct !DILexicalBlock(scope: !4632, file: !114, line: 382, column: 2)
!4836 = !{i32 -2144640245, i32 -2144640216, i32 -2144640170, i32 -2144640112, i32 -2144640058, i32 -2144640004, i32 -2144639949, i32 -2144639918}
!4837 = !DILocation(line: 382, column: 2, scope: !4838, inlinedAt: !4636)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !114, line: 382, column: 2)
!4839 = distinct !DILexicalBlock(scope: !4835, file: !114, line: 382, column: 2)
!4840 = !{i32 -2144639475, i32 -2144639468, i32 -2144639414, i32 -2144639383, i32 -2144639353}
!4841 = !DILocation(line: 382, column: 2, scope: !4839, inlinedAt: !4636)
!4842 = !DILocation(line: 386, column: 1, scope: !4632, inlinedAt: !4636)
!4843 = !DILocation(line: 547, column: 9, scope: !4615, inlinedAt: !4618)
!4844 = !DILocation(line: 549, column: 8, scope: !4845, inlinedAt: !4618)
!4845 = distinct !DILexicalBlock(scope: !4615, file: !114, line: 549, column: 7)
!4846 = !DILocation(line: 549, column: 7, scope: !4615, inlinedAt: !4618)
!4847 = !DILocation(line: 550, column: 4, scope: !4845, inlinedAt: !4618)
!4848 = !DILocation(line: 553, column: 33, scope: !4615, inlinedAt: !4618)
!4849 = !DILocation(line: 325, column: 6, scope: !4850, inlinedAt: !4630)
!4850 = distinct !DILexicalBlock(scope: !4626, file: !114, line: 325, column: 6)
!4851 = !DILocation(line: 325, column: 6, scope: !4626, inlinedAt: !4630)
!4852 = !DILocation(line: 326, column: 3, scope: !4850, inlinedAt: !4630)
!4853 = !DILocation(line: 332, column: 9, scope: !4626, inlinedAt: !4630)
!4854 = !DILocation(line: 332, column: 15, scope: !4626, inlinedAt: !4630)
!4855 = !DILocation(line: 332, column: 2, scope: !4626, inlinedAt: !4630)
!4856 = !DILocation(line: 336, column: 1, scope: !4626, inlinedAt: !4630)
!4857 = !DILocation(line: 553, column: 5, scope: !4615, inlinedAt: !4618)
!4858 = !DILocation(line: 553, column: 41, scope: !4615, inlinedAt: !4618)
!4859 = !DILocation(line: 554, column: 5, scope: !4615, inlinedAt: !4618)
!4860 = !DILocation(line: 554, column: 12, scope: !4615, inlinedAt: !4618)
!4861 = !DILocation(line: 448, column: 31, scope: !4610, inlinedAt: !4614)
!4862 = !DILocation(line: 448, column: 34, scope: !4610, inlinedAt: !4614)
!4863 = !DILocation(line: 448, column: 14, scope: !4610, inlinedAt: !4614)
!4864 = !DILocation(line: 450, column: 22, scope: !4610, inlinedAt: !4614)
!4865 = !DILocation(line: 450, column: 25, scope: !4610, inlinedAt: !4614)
!4866 = !DILocation(line: 450, column: 30, scope: !4610, inlinedAt: !4614)
!4867 = !DILocation(line: 450, column: 36, scope: !4610, inlinedAt: !4614)
!4868 = !DILocation(line: 450, column: 8, scope: !4610, inlinedAt: !4614)
!4869 = !DILocation(line: 450, column: 6, scope: !4610, inlinedAt: !4614)
!4870 = !DILocation(line: 451, column: 9, scope: !4610, inlinedAt: !4614)
!4871 = !DILocation(line: 552, column: 3, scope: !4615, inlinedAt: !4618)
!4872 = !DILocation(line: 557, column: 19, scope: !4617, inlinedAt: !4618)
!4873 = !DILocation(line: 557, column: 25, scope: !4617, inlinedAt: !4618)
!4874 = !DILocation(line: 557, column: 9, scope: !4617, inlinedAt: !4618)
!4875 = !DILocation(line: 557, column: 2, scope: !4617, inlinedAt: !4618)
!4876 = !DILocation(line: 558, column: 1, scope: !4617, inlinedAt: !4618)
!4877 = !DILocation(line: 664, column: 2, scope: !4606)
!4878 = distinct !DISubprogram(name: "powermate_alloc_buffers", scope: !3, file: !3, line: 278, type: !4879, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!136, !132, !3938}
!4881 = !DILocation(line: 445, column: 72, scope: !4610, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 552, column: 10, scope: !4615, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 285, column: 17, scope: !4878)
!4884 = !DILocation(line: 446, column: 9, scope: !4610, inlinedAt: !4882)
!4885 = !DILocation(line: 446, column: 23, scope: !4610, inlinedAt: !4882)
!4886 = !DILocation(line: 448, column: 8, scope: !4610, inlinedAt: !4882)
!4887 = !DILocation(line: 318, column: 67, scope: !4626, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 553, column: 20, scope: !4615, inlinedAt: !4883)
!4889 = !DILocation(line: 346, column: 58, scope: !4632, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 547, column: 11, scope: !4615, inlinedAt: !4883)
!4891 = !DILocation(line: 472, column: 28, scope: !4638, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 481, column: 9, scope: !4643, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 545, column: 11, scope: !4645, inlinedAt: !4883)
!4894 = !DILocation(line: 472, column: 40, scope: !4638, inlinedAt: !4892)
!4895 = !DILocation(line: 472, column: 60, scope: !4638, inlinedAt: !4892)
!4896 = !DILocation(line: 478, column: 51, scope: !4643, inlinedAt: !4893)
!4897 = !DILocation(line: 478, column: 63, scope: !4643, inlinedAt: !4893)
!4898 = !DILocation(line: 480, column: 15, scope: !4643, inlinedAt: !4893)
!4899 = !DILocation(line: 538, column: 45, scope: !4617, inlinedAt: !4883)
!4900 = !DILocation(line: 538, column: 57, scope: !4617, inlinedAt: !4883)
!4901 = !DILocation(line: 542, column: 16, scope: !4615, inlinedAt: !4883)
!4902 = !DILocalVariable(name: "udev", arg: 1, scope: !4878, file: !3, line: 278, type: !132)
!4903 = !DILocation(line: 278, column: 55, scope: !4878)
!4904 = !DILocalVariable(name: "pm", arg: 2, scope: !4878, file: !3, line: 278, type: !3938)
!4905 = !DILocation(line: 278, column: 86, scope: !4878)
!4906 = !DILocation(line: 280, column: 32, scope: !4878)
!4907 = !DILocation(line: 281, column: 24, scope: !4878)
!4908 = !DILocation(line: 281, column: 28, scope: !4878)
!4909 = !DILocation(line: 280, column: 13, scope: !4878)
!4910 = !DILocation(line: 280, column: 2, scope: !4878)
!4911 = !DILocation(line: 280, column: 6, scope: !4878)
!4912 = !DILocation(line: 280, column: 11, scope: !4878)
!4913 = !DILocation(line: 282, column: 7, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 282, column: 6)
!4915 = !DILocation(line: 282, column: 11, scope: !4914)
!4916 = !DILocation(line: 282, column: 6, scope: !4878)
!4917 = !DILocation(line: 283, column: 3, scope: !4914)
!4918 = !DILocation(line: 540, column: 27, scope: !4616, inlinedAt: !4883)
!4919 = !DILocation(line: 540, column: 6, scope: !4616, inlinedAt: !4883)
!4920 = !DILocation(line: 540, column: 6, scope: !4617, inlinedAt: !4883)
!4921 = !DILocation(line: 544, column: 7, scope: !4645, inlinedAt: !4883)
!4922 = !DILocation(line: 544, column: 12, scope: !4645, inlinedAt: !4883)
!4923 = !DILocation(line: 544, column: 7, scope: !4615, inlinedAt: !4883)
!4924 = !DILocation(line: 545, column: 25, scope: !4645, inlinedAt: !4883)
!4925 = !DILocation(line: 545, column: 31, scope: !4645, inlinedAt: !4883)
!4926 = !DILocation(line: 480, column: 33, scope: !4643, inlinedAt: !4893)
!4927 = !DILocation(line: 480, column: 23, scope: !4643, inlinedAt: !4893)
!4928 = !DILocation(line: 481, column: 29, scope: !4643, inlinedAt: !4893)
!4929 = !DILocation(line: 481, column: 35, scope: !4643, inlinedAt: !4893)
!4930 = !DILocation(line: 481, column: 42, scope: !4643, inlinedAt: !4893)
!4931 = !DILocation(line: 474, column: 23, scope: !4638, inlinedAt: !4892)
!4932 = !DILocation(line: 474, column: 29, scope: !4638, inlinedAt: !4892)
!4933 = !DILocation(line: 474, column: 36, scope: !4638, inlinedAt: !4892)
!4934 = !DILocation(line: 474, column: 9, scope: !4638, inlinedAt: !4892)
!4935 = !DILocation(line: 545, column: 4, scope: !4645, inlinedAt: !4883)
!4936 = !DILocation(line: 547, column: 25, scope: !4615, inlinedAt: !4883)
!4937 = !DILocation(line: 348, column: 7, scope: !4689, inlinedAt: !4890)
!4938 = !DILocation(line: 348, column: 6, scope: !4632, inlinedAt: !4890)
!4939 = !DILocation(line: 349, column: 3, scope: !4689, inlinedAt: !4890)
!4940 = !DILocation(line: 351, column: 6, scope: !4693, inlinedAt: !4890)
!4941 = !DILocation(line: 351, column: 11, scope: !4693, inlinedAt: !4890)
!4942 = !DILocation(line: 351, column: 6, scope: !4632, inlinedAt: !4890)
!4943 = !DILocation(line: 352, column: 3, scope: !4693, inlinedAt: !4890)
!4944 = !DILocation(line: 354, column: 32, scope: !4698, inlinedAt: !4890)
!4945 = !DILocation(line: 354, column: 37, scope: !4698, inlinedAt: !4890)
!4946 = !DILocation(line: 354, column: 42, scope: !4698, inlinedAt: !4890)
!4947 = !DILocation(line: 354, column: 45, scope: !4698, inlinedAt: !4890)
!4948 = !DILocation(line: 354, column: 50, scope: !4698, inlinedAt: !4890)
!4949 = !DILocation(line: 354, column: 6, scope: !4632, inlinedAt: !4890)
!4950 = !DILocation(line: 355, column: 3, scope: !4698, inlinedAt: !4890)
!4951 = !DILocation(line: 356, column: 32, scope: !4706, inlinedAt: !4890)
!4952 = !DILocation(line: 356, column: 37, scope: !4706, inlinedAt: !4890)
!4953 = !DILocation(line: 356, column: 43, scope: !4706, inlinedAt: !4890)
!4954 = !DILocation(line: 356, column: 46, scope: !4706, inlinedAt: !4890)
!4955 = !DILocation(line: 356, column: 51, scope: !4706, inlinedAt: !4890)
!4956 = !DILocation(line: 356, column: 6, scope: !4632, inlinedAt: !4890)
!4957 = !DILocation(line: 357, column: 3, scope: !4706, inlinedAt: !4890)
!4958 = !DILocation(line: 358, column: 6, scope: !4714, inlinedAt: !4890)
!4959 = !DILocation(line: 358, column: 11, scope: !4714, inlinedAt: !4890)
!4960 = !DILocation(line: 358, column: 6, scope: !4632, inlinedAt: !4890)
!4961 = !DILocation(line: 358, column: 26, scope: !4714, inlinedAt: !4890)
!4962 = !DILocation(line: 359, column: 6, scope: !4719, inlinedAt: !4890)
!4963 = !DILocation(line: 359, column: 11, scope: !4719, inlinedAt: !4890)
!4964 = !DILocation(line: 359, column: 6, scope: !4632, inlinedAt: !4890)
!4965 = !DILocation(line: 359, column: 26, scope: !4719, inlinedAt: !4890)
!4966 = !DILocation(line: 360, column: 6, scope: !4724, inlinedAt: !4890)
!4967 = !DILocation(line: 360, column: 11, scope: !4724, inlinedAt: !4890)
!4968 = !DILocation(line: 360, column: 6, scope: !4632, inlinedAt: !4890)
!4969 = !DILocation(line: 360, column: 26, scope: !4724, inlinedAt: !4890)
!4970 = !DILocation(line: 361, column: 6, scope: !4729, inlinedAt: !4890)
!4971 = !DILocation(line: 361, column: 11, scope: !4729, inlinedAt: !4890)
!4972 = !DILocation(line: 361, column: 6, scope: !4632, inlinedAt: !4890)
!4973 = !DILocation(line: 361, column: 26, scope: !4729, inlinedAt: !4890)
!4974 = !DILocation(line: 362, column: 6, scope: !4734, inlinedAt: !4890)
!4975 = !DILocation(line: 362, column: 11, scope: !4734, inlinedAt: !4890)
!4976 = !DILocation(line: 362, column: 6, scope: !4632, inlinedAt: !4890)
!4977 = !DILocation(line: 362, column: 26, scope: !4734, inlinedAt: !4890)
!4978 = !DILocation(line: 363, column: 6, scope: !4739, inlinedAt: !4890)
!4979 = !DILocation(line: 363, column: 11, scope: !4739, inlinedAt: !4890)
!4980 = !DILocation(line: 363, column: 6, scope: !4632, inlinedAt: !4890)
!4981 = !DILocation(line: 363, column: 26, scope: !4739, inlinedAt: !4890)
!4982 = !DILocation(line: 364, column: 6, scope: !4744, inlinedAt: !4890)
!4983 = !DILocation(line: 364, column: 11, scope: !4744, inlinedAt: !4890)
!4984 = !DILocation(line: 364, column: 6, scope: !4632, inlinedAt: !4890)
!4985 = !DILocation(line: 364, column: 26, scope: !4744, inlinedAt: !4890)
!4986 = !DILocation(line: 365, column: 6, scope: !4749, inlinedAt: !4890)
!4987 = !DILocation(line: 365, column: 11, scope: !4749, inlinedAt: !4890)
!4988 = !DILocation(line: 365, column: 6, scope: !4632, inlinedAt: !4890)
!4989 = !DILocation(line: 365, column: 26, scope: !4749, inlinedAt: !4890)
!4990 = !DILocation(line: 366, column: 6, scope: !4754, inlinedAt: !4890)
!4991 = !DILocation(line: 366, column: 11, scope: !4754, inlinedAt: !4890)
!4992 = !DILocation(line: 366, column: 6, scope: !4632, inlinedAt: !4890)
!4993 = !DILocation(line: 366, column: 26, scope: !4754, inlinedAt: !4890)
!4994 = !DILocation(line: 367, column: 6, scope: !4759, inlinedAt: !4890)
!4995 = !DILocation(line: 367, column: 11, scope: !4759, inlinedAt: !4890)
!4996 = !DILocation(line: 367, column: 6, scope: !4632, inlinedAt: !4890)
!4997 = !DILocation(line: 367, column: 26, scope: !4759, inlinedAt: !4890)
!4998 = !DILocation(line: 368, column: 6, scope: !4764, inlinedAt: !4890)
!4999 = !DILocation(line: 368, column: 11, scope: !4764, inlinedAt: !4890)
!5000 = !DILocation(line: 368, column: 6, scope: !4632, inlinedAt: !4890)
!5001 = !DILocation(line: 368, column: 26, scope: !4764, inlinedAt: !4890)
!5002 = !DILocation(line: 369, column: 6, scope: !4769, inlinedAt: !4890)
!5003 = !DILocation(line: 369, column: 11, scope: !4769, inlinedAt: !4890)
!5004 = !DILocation(line: 369, column: 6, scope: !4632, inlinedAt: !4890)
!5005 = !DILocation(line: 369, column: 26, scope: !4769, inlinedAt: !4890)
!5006 = !DILocation(line: 370, column: 6, scope: !4774, inlinedAt: !4890)
!5007 = !DILocation(line: 370, column: 11, scope: !4774, inlinedAt: !4890)
!5008 = !DILocation(line: 370, column: 6, scope: !4632, inlinedAt: !4890)
!5009 = !DILocation(line: 370, column: 26, scope: !4774, inlinedAt: !4890)
!5010 = !DILocation(line: 371, column: 6, scope: !4779, inlinedAt: !4890)
!5011 = !DILocation(line: 371, column: 11, scope: !4779, inlinedAt: !4890)
!5012 = !DILocation(line: 371, column: 6, scope: !4632, inlinedAt: !4890)
!5013 = !DILocation(line: 371, column: 26, scope: !4779, inlinedAt: !4890)
!5014 = !DILocation(line: 372, column: 6, scope: !4784, inlinedAt: !4890)
!5015 = !DILocation(line: 372, column: 11, scope: !4784, inlinedAt: !4890)
!5016 = !DILocation(line: 372, column: 6, scope: !4632, inlinedAt: !4890)
!5017 = !DILocation(line: 372, column: 26, scope: !4784, inlinedAt: !4890)
!5018 = !DILocation(line: 373, column: 6, scope: !4789, inlinedAt: !4890)
!5019 = !DILocation(line: 373, column: 11, scope: !4789, inlinedAt: !4890)
!5020 = !DILocation(line: 373, column: 6, scope: !4632, inlinedAt: !4890)
!5021 = !DILocation(line: 373, column: 26, scope: !4789, inlinedAt: !4890)
!5022 = !DILocation(line: 374, column: 6, scope: !4794, inlinedAt: !4890)
!5023 = !DILocation(line: 374, column: 11, scope: !4794, inlinedAt: !4890)
!5024 = !DILocation(line: 374, column: 6, scope: !4632, inlinedAt: !4890)
!5025 = !DILocation(line: 374, column: 26, scope: !4794, inlinedAt: !4890)
!5026 = !DILocation(line: 375, column: 6, scope: !4799, inlinedAt: !4890)
!5027 = !DILocation(line: 375, column: 11, scope: !4799, inlinedAt: !4890)
!5028 = !DILocation(line: 375, column: 6, scope: !4632, inlinedAt: !4890)
!5029 = !DILocation(line: 375, column: 27, scope: !4799, inlinedAt: !4890)
!5030 = !DILocation(line: 376, column: 6, scope: !4804, inlinedAt: !4890)
!5031 = !DILocation(line: 376, column: 11, scope: !4804, inlinedAt: !4890)
!5032 = !DILocation(line: 376, column: 6, scope: !4632, inlinedAt: !4890)
!5033 = !DILocation(line: 376, column: 32, scope: !4804, inlinedAt: !4890)
!5034 = !DILocation(line: 377, column: 6, scope: !4809, inlinedAt: !4890)
!5035 = !DILocation(line: 377, column: 11, scope: !4809, inlinedAt: !4890)
!5036 = !DILocation(line: 377, column: 6, scope: !4632, inlinedAt: !4890)
!5037 = !DILocation(line: 377, column: 32, scope: !4809, inlinedAt: !4890)
!5038 = !DILocation(line: 378, column: 6, scope: !4814, inlinedAt: !4890)
!5039 = !DILocation(line: 378, column: 11, scope: !4814, inlinedAt: !4890)
!5040 = !DILocation(line: 378, column: 6, scope: !4632, inlinedAt: !4890)
!5041 = !DILocation(line: 378, column: 32, scope: !4814, inlinedAt: !4890)
!5042 = !DILocation(line: 379, column: 6, scope: !4819, inlinedAt: !4890)
!5043 = !DILocation(line: 379, column: 11, scope: !4819, inlinedAt: !4890)
!5044 = !DILocation(line: 379, column: 6, scope: !4632, inlinedAt: !4890)
!5045 = !DILocation(line: 379, column: 33, scope: !4819, inlinedAt: !4890)
!5046 = !DILocation(line: 380, column: 6, scope: !4824, inlinedAt: !4890)
!5047 = !DILocation(line: 380, column: 11, scope: !4824, inlinedAt: !4890)
!5048 = !DILocation(line: 380, column: 6, scope: !4632, inlinedAt: !4890)
!5049 = !DILocation(line: 380, column: 33, scope: !4824, inlinedAt: !4890)
!5050 = !DILocation(line: 381, column: 6, scope: !4829, inlinedAt: !4890)
!5051 = !DILocation(line: 381, column: 11, scope: !4829, inlinedAt: !4890)
!5052 = !DILocation(line: 381, column: 6, scope: !4632, inlinedAt: !4890)
!5053 = !DILocation(line: 381, column: 33, scope: !4829, inlinedAt: !4890)
!5054 = !DILocation(line: 382, column: 2, scope: !4834, inlinedAt: !4890)
!5055 = !DILocation(line: 382, column: 2, scope: !4838, inlinedAt: !4890)
!5056 = !DILocation(line: 382, column: 2, scope: !4839, inlinedAt: !4890)
!5057 = !DILocation(line: 386, column: 1, scope: !4632, inlinedAt: !4890)
!5058 = !DILocation(line: 547, column: 9, scope: !4615, inlinedAt: !4883)
!5059 = !DILocation(line: 549, column: 8, scope: !4845, inlinedAt: !4883)
!5060 = !DILocation(line: 549, column: 7, scope: !4615, inlinedAt: !4883)
!5061 = !DILocation(line: 550, column: 4, scope: !4845, inlinedAt: !4883)
!5062 = !DILocation(line: 553, column: 33, scope: !4615, inlinedAt: !4883)
!5063 = !DILocation(line: 325, column: 6, scope: !4850, inlinedAt: !4888)
!5064 = !DILocation(line: 325, column: 6, scope: !4626, inlinedAt: !4888)
!5065 = !DILocation(line: 326, column: 3, scope: !4850, inlinedAt: !4888)
!5066 = !DILocation(line: 332, column: 9, scope: !4626, inlinedAt: !4888)
!5067 = !DILocation(line: 332, column: 15, scope: !4626, inlinedAt: !4888)
!5068 = !DILocation(line: 332, column: 2, scope: !4626, inlinedAt: !4888)
!5069 = !DILocation(line: 336, column: 1, scope: !4626, inlinedAt: !4888)
!5070 = !DILocation(line: 553, column: 5, scope: !4615, inlinedAt: !4883)
!5071 = !DILocation(line: 553, column: 41, scope: !4615, inlinedAt: !4883)
!5072 = !DILocation(line: 554, column: 5, scope: !4615, inlinedAt: !4883)
!5073 = !DILocation(line: 554, column: 12, scope: !4615, inlinedAt: !4883)
!5074 = !DILocation(line: 448, column: 31, scope: !4610, inlinedAt: !4882)
!5075 = !DILocation(line: 448, column: 34, scope: !4610, inlinedAt: !4882)
!5076 = !DILocation(line: 448, column: 14, scope: !4610, inlinedAt: !4882)
!5077 = !DILocation(line: 450, column: 22, scope: !4610, inlinedAt: !4882)
!5078 = !DILocation(line: 450, column: 25, scope: !4610, inlinedAt: !4882)
!5079 = !DILocation(line: 450, column: 30, scope: !4610, inlinedAt: !4882)
!5080 = !DILocation(line: 450, column: 36, scope: !4610, inlinedAt: !4882)
!5081 = !DILocation(line: 450, column: 8, scope: !4610, inlinedAt: !4882)
!5082 = !DILocation(line: 450, column: 6, scope: !4610, inlinedAt: !4882)
!5083 = !DILocation(line: 451, column: 9, scope: !4610, inlinedAt: !4882)
!5084 = !DILocation(line: 552, column: 3, scope: !4615, inlinedAt: !4883)
!5085 = !DILocation(line: 557, column: 19, scope: !4617, inlinedAt: !4883)
!5086 = !DILocation(line: 557, column: 25, scope: !4617, inlinedAt: !4883)
!5087 = !DILocation(line: 557, column: 9, scope: !4617, inlinedAt: !4883)
!5088 = !DILocation(line: 557, column: 2, scope: !4617, inlinedAt: !4883)
!5089 = !DILocation(line: 558, column: 1, scope: !4617, inlinedAt: !4883)
!5090 = !DILocation(line: 285, column: 17, scope: !4878)
!5091 = !DILocation(line: 285, column: 2, scope: !4878)
!5092 = !DILocation(line: 285, column: 6, scope: !4878)
!5093 = !DILocation(line: 285, column: 15, scope: !4878)
!5094 = !DILocation(line: 286, column: 7, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 286, column: 6)
!5096 = !DILocation(line: 286, column: 11, scope: !5095)
!5097 = !DILocation(line: 286, column: 6, scope: !4878)
!5098 = !DILocation(line: 287, column: 3, scope: !5095)
!5099 = !DILocation(line: 289, column: 2, scope: !4878)
!5100 = !DILocation(line: 290, column: 1, scope: !4878)
!5101 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5102, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!136, !132, !229, !275}
!5104 = !DILocalVariable(name: "dev", arg: 1, scope: !5101, file: !6, line: 912, type: !132)
!5105 = !DILocation(line: 912, column: 52, scope: !5101)
!5106 = !DILocalVariable(name: "buf", arg: 2, scope: !5101, file: !6, line: 912, type: !229)
!5107 = !DILocation(line: 912, column: 63, scope: !5101)
!5108 = !DILocalVariable(name: "size", arg: 3, scope: !5101, file: !6, line: 912, type: !275)
!5109 = !DILocation(line: 912, column: 75, scope: !5101)
!5110 = !DILocalVariable(name: "actual", scope: !5101, file: !6, line: 914, type: !136)
!5111 = !DILocation(line: 914, column: 6, scope: !5101)
!5112 = !DILocation(line: 915, column: 20, scope: !5101)
!5113 = !DILocation(line: 915, column: 25, scope: !5101)
!5114 = !DILocation(line: 915, column: 44, scope: !5101)
!5115 = !DILocation(line: 915, column: 49, scope: !5101)
!5116 = !DILocation(line: 915, column: 54, scope: !5101)
!5117 = !DILocation(line: 916, column: 6, scope: !5101)
!5118 = !DILocation(line: 916, column: 11, scope: !5101)
!5119 = !DILocation(line: 915, column: 11, scope: !5101)
!5120 = !DILocation(line: 915, column: 9, scope: !5101)
!5121 = !DILocation(line: 917, column: 10, scope: !5101)
!5122 = !DILocation(line: 917, column: 25, scope: !5101)
!5123 = !DILocation(line: 917, column: 20, scope: !5101)
!5124 = !DILocation(line: 917, column: 17, scope: !5101)
!5125 = !DILocation(line: 917, column: 9, scope: !5101)
!5126 = !DILocation(line: 917, column: 38, scope: !5101)
!5127 = !DILocation(line: 917, column: 2, scope: !5101)
!5128 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5129, file: !5129, line: 18, type: !5130, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5129 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5130 = !DISubroutineType(types: !5131)
!5131 = !{null, !5132, !5134}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!5135 = !DILocalVariable(name: "dev", arg: 1, scope: !5128, file: !5129, line: 18, type: !5132)
!5136 = !DILocation(line: 18, column: 42, scope: !5128)
!5137 = !DILocalVariable(name: "id", arg: 2, scope: !5128, file: !5129, line: 18, type: !5134)
!5138 = !DILocation(line: 18, column: 64, scope: !5128)
!5139 = !DILocation(line: 20, column: 2, scope: !5128)
!5140 = !DILocation(line: 20, column: 6, scope: !5128)
!5141 = !DILocation(line: 20, column: 14, scope: !5128)
!5142 = !DILocation(line: 21, column: 15, scope: !5128)
!5143 = !DILocation(line: 21, column: 2, scope: !5128)
!5144 = !DILocation(line: 21, column: 6, scope: !5128)
!5145 = !DILocation(line: 21, column: 13, scope: !5128)
!5146 = !DILocation(line: 22, column: 16, scope: !5128)
!5147 = !DILocation(line: 22, column: 2, scope: !5128)
!5148 = !DILocation(line: 22, column: 6, scope: !5128)
!5149 = !DILocation(line: 22, column: 14, scope: !5128)
!5150 = !DILocation(line: 23, column: 16, scope: !5128)
!5151 = !DILocation(line: 23, column: 2, scope: !5128)
!5152 = !DILocation(line: 23, column: 6, scope: !5128)
!5153 = !DILocation(line: 23, column: 14, scope: !5128)
!5154 = !DILocation(line: 24, column: 1, scope: !5128)
!5155 = distinct !DISubprogram(name: "input_set_drvdata", scope: !4015, file: !4015, line: 371, type: !5156, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{null, !4013, !124}
!5158 = !DILocalVariable(name: "dev", arg: 1, scope: !5155, file: !4015, line: 371, type: !4013)
!5159 = !DILocation(line: 371, column: 56, scope: !5155)
!5160 = !DILocalVariable(name: "data", arg: 2, scope: !5155, file: !4015, line: 371, type: !124)
!5161 = !DILocation(line: 371, column: 67, scope: !5155)
!5162 = !DILocation(line: 373, column: 19, scope: !5155)
!5163 = !DILocation(line: 373, column: 24, scope: !5155)
!5164 = !DILocation(line: 373, column: 29, scope: !5155)
!5165 = !DILocation(line: 373, column: 2, scope: !5155)
!5166 = !DILocation(line: 374, column: 1, scope: !5155)
!5167 = distinct !DISubprogram(name: "powermate_input_event", scope: !3, file: !3, line: 253, type: !4195, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5168 = !DILocalVariable(name: "dev", arg: 1, scope: !5167, file: !3, line: 253, type: !4013)
!5169 = !DILocation(line: 253, column: 52, scope: !5167)
!5170 = !DILocalVariable(name: "type", arg: 2, scope: !5167, file: !3, line: 253, type: !7)
!5171 = !DILocation(line: 253, column: 70, scope: !5167)
!5172 = !DILocalVariable(name: "code", arg: 3, scope: !5167, file: !3, line: 253, type: !7)
!5173 = !DILocation(line: 253, column: 89, scope: !5167)
!5174 = !DILocalVariable(name: "_value", arg: 4, scope: !5167, file: !3, line: 253, type: !136)
!5175 = !DILocation(line: 253, column: 99, scope: !5167)
!5176 = !DILocalVariable(name: "command", scope: !5167, file: !3, line: 255, type: !7)
!5177 = !DILocation(line: 255, column: 15, scope: !5167)
!5178 = !DILocation(line: 255, column: 39, scope: !5167)
!5179 = !DILocalVariable(name: "pm", scope: !5167, file: !3, line: 256, type: !3938)
!5180 = !DILocation(line: 256, column: 27, scope: !5167)
!5181 = !DILocation(line: 256, column: 50, scope: !5167)
!5182 = !DILocation(line: 256, column: 32, scope: !5167)
!5183 = !DILocation(line: 258, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 258, column: 6)
!5185 = !DILocation(line: 258, column: 11, scope: !5184)
!5186 = !DILocation(line: 258, column: 21, scope: !5184)
!5187 = !DILocation(line: 258, column: 24, scope: !5184)
!5188 = !DILocation(line: 258, column: 29, scope: !5184)
!5189 = !DILocation(line: 258, column: 6, scope: !5167)
!5190 = !DILocalVariable(name: "static_brightness", scope: !5191, file: !3, line: 266, type: !136)
!5191 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 258, column: 45)
!5192 = !DILocation(line: 266, column: 7, scope: !5191)
!5193 = !DILocation(line: 266, column: 27, scope: !5191)
!5194 = !DILocation(line: 266, column: 35, scope: !5191)
!5195 = !DILocalVariable(name: "pulse_speed", scope: !5191, file: !3, line: 267, type: !136)
!5196 = !DILocation(line: 267, column: 7, scope: !5191)
!5197 = !DILocation(line: 267, column: 22, scope: !5191)
!5198 = !DILocation(line: 267, column: 30, scope: !5191)
!5199 = !DILocation(line: 267, column: 36, scope: !5191)
!5200 = !DILocalVariable(name: "pulse_table", scope: !5191, file: !3, line: 268, type: !136)
!5201 = !DILocation(line: 268, column: 7, scope: !5191)
!5202 = !DILocation(line: 268, column: 22, scope: !5191)
!5203 = !DILocation(line: 268, column: 30, scope: !5191)
!5204 = !DILocation(line: 268, column: 37, scope: !5191)
!5205 = !DILocalVariable(name: "pulse_asleep", scope: !5191, file: !3, line: 269, type: !136)
!5206 = !DILocation(line: 269, column: 7, scope: !5191)
!5207 = !DILocation(line: 269, column: 23, scope: !5191)
!5208 = !DILocation(line: 269, column: 31, scope: !5191)
!5209 = !DILocation(line: 269, column: 38, scope: !5191)
!5210 = !DILocalVariable(name: "pulse_awake", scope: !5191, file: !3, line: 270, type: !136)
!5211 = !DILocation(line: 270, column: 7, scope: !5191)
!5212 = !DILocation(line: 270, column: 23, scope: !5191)
!5213 = !DILocation(line: 270, column: 31, scope: !5191)
!5214 = !DILocation(line: 270, column: 38, scope: !5191)
!5215 = !DILocation(line: 272, column: 23, scope: !5191)
!5216 = !DILocation(line: 272, column: 27, scope: !5191)
!5217 = !DILocation(line: 272, column: 46, scope: !5191)
!5218 = !DILocation(line: 272, column: 59, scope: !5191)
!5219 = !DILocation(line: 272, column: 72, scope: !5191)
!5220 = !DILocation(line: 272, column: 86, scope: !5191)
!5221 = !DILocation(line: 272, column: 3, scope: !5191)
!5222 = !DILocation(line: 273, column: 2, scope: !5191)
!5223 = !DILocation(line: 275, column: 2, scope: !5167)
!5224 = distinct !DISubprogram(name: "usb_maxpacket", scope: !6, file: !6, line: 1980, type: !5225, scopeLine: 1981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!127, !132, !136, !136}
!5227 = !DILocalVariable(name: "udev", arg: 1, scope: !5224, file: !6, line: 1980, type: !132)
!5228 = !DILocation(line: 1980, column: 34, scope: !5224)
!5229 = !DILocalVariable(name: "pipe", arg: 2, scope: !5224, file: !6, line: 1980, type: !136)
!5230 = !DILocation(line: 1980, column: 44, scope: !5224)
!5231 = !DILocalVariable(name: "is_out", arg: 3, scope: !5224, file: !6, line: 1980, type: !136)
!5232 = !DILocation(line: 1980, column: 54, scope: !5224)
!5233 = !DILocalVariable(name: "ep", scope: !5224, file: !6, line: 1982, type: !3720)
!5234 = !DILocation(line: 1982, column: 28, scope: !5224)
!5235 = !DILocalVariable(name: "epnum", scope: !5224, file: !6, line: 1983, type: !7)
!5236 = !DILocation(line: 1983, column: 13, scope: !5224)
!5237 = !DILocation(line: 1983, column: 21, scope: !5224)
!5238 = !DILocation(line: 1985, column: 6, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5224, file: !6, line: 1985, column: 6)
!5240 = !DILocation(line: 1985, column: 6, scope: !5224)
!5241 = !DILocalVariable(name: "__ret_warn_on", scope: !5242, file: !6, line: 1986, type: !136)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !6, line: 1986, column: 3)
!5243 = distinct !DILexicalBlock(scope: !5239, file: !6, line: 1985, column: 14)
!5244 = !DILocation(line: 1986, column: 3, scope: !5242)
!5245 = !DILocation(line: 1986, column: 3, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !6, line: 1986, column: 3)
!5247 = !DILocation(line: 1986, column: 3, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5246, file: !6, line: 1986, column: 3)
!5249 = !DILocation(line: 1986, column: 3, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5248, file: !6, line: 1986, column: 3)
!5251 = !DILocation(line: 1986, column: 3, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5248, file: !6, line: 1986, column: 3)
!5253 = !{i32 -2142621378, i32 -2142621349, i32 -2142621303, i32 -2142621245, i32 -2142621191, i32 -2142621137, i32 -2142621082, i32 -2142621051}
!5254 = !DILocation(line: 1986, column: 3, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5248, file: !6, line: 1986, column: 3)
!5256 = !{i32 -2142620649, i32 -2142620642, i32 -2142620590, i32 -2142620559, i32 -2142620529}
!5257 = !DILocation(line: 1986, column: 3, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5248, file: !6, line: 1986, column: 3)
!5259 = !DILocation(line: 1987, column: 8, scope: !5243)
!5260 = !DILocation(line: 1987, column: 14, scope: !5243)
!5261 = !DILocation(line: 1987, column: 21, scope: !5243)
!5262 = !DILocation(line: 1987, column: 6, scope: !5243)
!5263 = !DILocation(line: 1988, column: 2, scope: !5243)
!5264 = !DILocalVariable(name: "__ret_warn_on", scope: !5265, file: !6, line: 1989, type: !136)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !6, line: 1989, column: 3)
!5266 = distinct !DILexicalBlock(scope: !5239, file: !6, line: 1988, column: 9)
!5267 = !DILocation(line: 1989, column: 3, scope: !5265)
!5268 = !DILocation(line: 1989, column: 3, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5265, file: !6, line: 1989, column: 3)
!5270 = !DILocation(line: 1989, column: 3, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5269, file: !6, line: 1989, column: 3)
!5272 = !DILocation(line: 1989, column: 3, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5271, file: !6, line: 1989, column: 3)
!5274 = !DILocation(line: 1989, column: 3, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5271, file: !6, line: 1989, column: 3)
!5276 = !{i32 -2142619877, i32 -2142619848, i32 -2142619802, i32 -2142619744, i32 -2142619690, i32 -2142619636, i32 -2142619581, i32 -2142619550}
!5277 = !DILocation(line: 1989, column: 3, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5271, file: !6, line: 1989, column: 3)
!5279 = !{i32 -2142619148, i32 -2142619141, i32 -2142619089, i32 -2142619058, i32 -2142619028}
!5280 = !DILocation(line: 1989, column: 3, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5271, file: !6, line: 1989, column: 3)
!5282 = !DILocation(line: 1990, column: 8, scope: !5266)
!5283 = !DILocation(line: 1990, column: 14, scope: !5266)
!5284 = !DILocation(line: 1990, column: 20, scope: !5266)
!5285 = !DILocation(line: 1990, column: 6, scope: !5266)
!5286 = !DILocation(line: 1992, column: 7, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5224, file: !6, line: 1992, column: 6)
!5288 = !DILocation(line: 1992, column: 6, scope: !5224)
!5289 = !DILocation(line: 1993, column: 3, scope: !5287)
!5290 = !DILocation(line: 1996, column: 28, scope: !5224)
!5291 = !DILocation(line: 1996, column: 32, scope: !5224)
!5292 = !DILocation(line: 1996, column: 9, scope: !5224)
!5293 = !DILocation(line: 1996, column: 2, scope: !5224)
!5294 = !DILocation(line: 1997, column: 1, scope: !5224)
!5295 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5296, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !3946, !132, !7, !124, !136, !3988, !124, !136}
!5298 = !DILocalVariable(name: "urb", arg: 1, scope: !5295, file: !6, line: 1688, type: !3946)
!5299 = !DILocation(line: 1688, column: 49, scope: !5295)
!5300 = !DILocalVariable(name: "dev", arg: 2, scope: !5295, file: !6, line: 1689, type: !132)
!5301 = !DILocation(line: 1689, column: 28, scope: !5295)
!5302 = !DILocalVariable(name: "pipe", arg: 3, scope: !5295, file: !6, line: 1690, type: !7)
!5303 = !DILocation(line: 1690, column: 22, scope: !5295)
!5304 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5295, file: !6, line: 1691, type: !124)
!5305 = !DILocation(line: 1691, column: 15, scope: !5295)
!5306 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5295, file: !6, line: 1692, type: !136)
!5307 = !DILocation(line: 1692, column: 13, scope: !5295)
!5308 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5295, file: !6, line: 1693, type: !3988)
!5309 = !DILocation(line: 1693, column: 24, scope: !5295)
!5310 = !DILocalVariable(name: "context", arg: 7, scope: !5295, file: !6, line: 1694, type: !124)
!5311 = !DILocation(line: 1694, column: 15, scope: !5295)
!5312 = !DILocalVariable(name: "interval", arg: 8, scope: !5295, file: !6, line: 1695, type: !136)
!5313 = !DILocation(line: 1695, column: 13, scope: !5295)
!5314 = !DILocation(line: 1697, column: 13, scope: !5295)
!5315 = !DILocation(line: 1697, column: 2, scope: !5295)
!5316 = !DILocation(line: 1697, column: 7, scope: !5295)
!5317 = !DILocation(line: 1697, column: 11, scope: !5295)
!5318 = !DILocation(line: 1698, column: 14, scope: !5295)
!5319 = !DILocation(line: 1698, column: 2, scope: !5295)
!5320 = !DILocation(line: 1698, column: 7, scope: !5295)
!5321 = !DILocation(line: 1698, column: 12, scope: !5295)
!5322 = !DILocation(line: 1699, column: 25, scope: !5295)
!5323 = !DILocation(line: 1699, column: 2, scope: !5295)
!5324 = !DILocation(line: 1699, column: 7, scope: !5295)
!5325 = !DILocation(line: 1699, column: 23, scope: !5295)
!5326 = !DILocation(line: 1700, column: 32, scope: !5295)
!5327 = !DILocation(line: 1700, column: 2, scope: !5295)
!5328 = !DILocation(line: 1700, column: 7, scope: !5295)
!5329 = !DILocation(line: 1700, column: 30, scope: !5295)
!5330 = !DILocation(line: 1701, column: 18, scope: !5295)
!5331 = !DILocation(line: 1701, column: 2, scope: !5295)
!5332 = !DILocation(line: 1701, column: 7, scope: !5295)
!5333 = !DILocation(line: 1701, column: 16, scope: !5295)
!5334 = !DILocation(line: 1702, column: 17, scope: !5295)
!5335 = !DILocation(line: 1702, column: 2, scope: !5295)
!5336 = !DILocation(line: 1702, column: 7, scope: !5295)
!5337 = !DILocation(line: 1702, column: 15, scope: !5295)
!5338 = !DILocation(line: 1704, column: 6, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5295, file: !6, line: 1704, column: 6)
!5340 = !DILocation(line: 1704, column: 11, scope: !5339)
!5341 = !DILocation(line: 1704, column: 17, scope: !5339)
!5342 = !DILocation(line: 1704, column: 35, scope: !5339)
!5343 = !DILocation(line: 1704, column: 38, scope: !5339)
!5344 = !DILocation(line: 1704, column: 43, scope: !5339)
!5345 = !DILocation(line: 1704, column: 49, scope: !5339)
!5346 = !DILocation(line: 1704, column: 6, scope: !5295)
!5347 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5348, file: !6, line: 1706, type: !136)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !6, line: 1706, column: 14)
!5349 = distinct !DILexicalBlock(scope: !5339, file: !6, line: 1704, column: 69)
!5350 = !DILocation(line: 1706, column: 14, scope: !5348)
!5351 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5352, file: !6, line: 1706, type: !136)
!5352 = distinct !DILexicalBlock(scope: !5348, file: !6, line: 1706, column: 14)
!5353 = !DILocation(line: 1706, column: 14, scope: !5352)
!5354 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5352, file: !6, line: 1706, type: !136)
!5355 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5348, file: !6, line: 1706, type: !136)
!5356 = !DILocation(line: 1706, column: 12, scope: !5349)
!5357 = !DILocation(line: 1708, column: 25, scope: !5349)
!5358 = !DILocation(line: 1708, column: 34, scope: !5349)
!5359 = !DILocation(line: 1708, column: 21, scope: !5349)
!5360 = !DILocation(line: 1708, column: 3, scope: !5349)
!5361 = !DILocation(line: 1708, column: 8, scope: !5349)
!5362 = !DILocation(line: 1708, column: 17, scope: !5349)
!5363 = !DILocation(line: 1709, column: 2, scope: !5349)
!5364 = !DILocation(line: 1710, column: 19, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5339, file: !6, line: 1709, column: 9)
!5366 = !DILocation(line: 1710, column: 3, scope: !5365)
!5367 = !DILocation(line: 1710, column: 8, scope: !5365)
!5368 = !DILocation(line: 1710, column: 17, scope: !5365)
!5369 = !DILocation(line: 1713, column: 2, scope: !5295)
!5370 = !DILocation(line: 1713, column: 7, scope: !5295)
!5371 = !DILocation(line: 1713, column: 19, scope: !5295)
!5372 = !DILocation(line: 1714, column: 1, scope: !5295)
!5373 = distinct !DISubprogram(name: "powermate_irq", scope: !3, file: !3, line: 86, type: !3990, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5374 = !DILocalVariable(name: "urb", arg: 1, scope: !5373, file: !3, line: 86, type: !3946)
!5375 = !DILocation(line: 86, column: 39, scope: !5373)
!5376 = !DILocalVariable(name: "pm", scope: !5373, file: !3, line: 88, type: !3938)
!5377 = !DILocation(line: 88, column: 27, scope: !5373)
!5378 = !DILocation(line: 88, column: 32, scope: !5373)
!5379 = !DILocation(line: 88, column: 37, scope: !5373)
!5380 = !DILocalVariable(name: "dev", scope: !5373, file: !3, line: 89, type: !164)
!5381 = !DILocation(line: 89, column: 17, scope: !5373)
!5382 = !DILocation(line: 89, column: 24, scope: !5373)
!5383 = !DILocation(line: 89, column: 28, scope: !5373)
!5384 = !DILocation(line: 89, column: 34, scope: !5373)
!5385 = !DILocalVariable(name: "retval", scope: !5373, file: !3, line: 90, type: !136)
!5386 = !DILocation(line: 90, column: 6, scope: !5373)
!5387 = !DILocation(line: 92, column: 10, scope: !5373)
!5388 = !DILocation(line: 92, column: 15, scope: !5373)
!5389 = !DILocation(line: 92, column: 2, scope: !5373)
!5390 = !DILocation(line: 95, column: 3, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 92, column: 23)
!5392 = !DILocation(line: 102, column: 3, scope: !5391)
!5393 = !DILocation(line: 106, column: 3, scope: !5391)
!5394 = !DILocation(line: 110, column: 19, scope: !5373)
!5395 = !DILocation(line: 110, column: 23, scope: !5373)
!5396 = !DILocation(line: 110, column: 37, scope: !5373)
!5397 = !DILocation(line: 110, column: 41, scope: !5373)
!5398 = !DILocation(line: 110, column: 49, scope: !5373)
!5399 = !DILocation(line: 110, column: 2, scope: !5373)
!5400 = !DILocation(line: 111, column: 19, scope: !5373)
!5401 = !DILocation(line: 111, column: 23, scope: !5373)
!5402 = !DILocation(line: 111, column: 40, scope: !5373)
!5403 = !DILocation(line: 111, column: 44, scope: !5373)
!5404 = !DILocation(line: 111, column: 2, scope: !5373)
!5405 = !DILocation(line: 112, column: 13, scope: !5373)
!5406 = !DILocation(line: 112, column: 17, scope: !5373)
!5407 = !DILocation(line: 112, column: 2, scope: !5373)
!5408 = !DILabel(scope: !5373, name: "exit", file: !3, line: 114)
!5409 = !DILocation(line: 114, column: 1, scope: !5373)
!5410 = !DILocation(line: 115, column: 27, scope: !5373)
!5411 = !DILocation(line: 115, column: 11, scope: !5373)
!5412 = !DILocation(line: 115, column: 9, scope: !5373)
!5413 = !DILocation(line: 116, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 116, column: 6)
!5415 = !DILocation(line: 116, column: 6, scope: !5373)
!5416 = !DILocation(line: 117, column: 3, scope: !5414)
!5417 = !DILocation(line: 119, column: 1, scope: !5373)
!5418 = distinct !DISubprogram(name: "powermate_pulse_led", scope: !3, file: !3, line: 208, type: !5419, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{null, !3938, !136, !136, !136, !136, !136}
!5421 = !DILocalVariable(name: "lock", arg: 1, scope: !5422, file: !3916, line: 407, type: !3920)
!5422 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3916, file: !3916, line: 407, type: !5423, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{null, !3920, !278}
!5425 = !DILocation(line: 407, column: 64, scope: !5422, inlinedAt: !5426)
!5426 = distinct !DILocation(line: 249, column: 2, scope: !5418)
!5427 = !DILocalVariable(name: "flags", arg: 2, scope: !5422, file: !3916, line: 407, type: !278)
!5428 = !DILocation(line: 407, column: 84, scope: !5422, inlinedAt: !5426)
!5429 = !DILocation(line: 327, column: 67, scope: !3915, inlinedAt: !5430)
!5430 = distinct !DILocation(line: 226, column: 2, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 226, column: 2)
!5432 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 226, column: 2)
!5433 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 226, column: 2)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 226, column: 2)
!5435 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 226, column: 2)
!5436 = !DILocalVariable(name: "pm", arg: 1, scope: !5418, file: !3, line: 208, type: !3938)
!5437 = !DILocation(line: 208, column: 58, scope: !5418)
!5438 = !DILocalVariable(name: "static_brightness", arg: 2, scope: !5418, file: !3, line: 208, type: !136)
!5439 = !DILocation(line: 208, column: 66, scope: !5418)
!5440 = !DILocalVariable(name: "pulse_speed", arg: 3, scope: !5418, file: !3, line: 208, type: !136)
!5441 = !DILocation(line: 208, column: 89, scope: !5418)
!5442 = !DILocalVariable(name: "pulse_table", arg: 4, scope: !5418, file: !3, line: 209, type: !136)
!5443 = !DILocation(line: 209, column: 9, scope: !5418)
!5444 = !DILocalVariable(name: "pulse_asleep", arg: 5, scope: !5418, file: !3, line: 209, type: !136)
!5445 = !DILocation(line: 209, column: 26, scope: !5418)
!5446 = !DILocalVariable(name: "pulse_awake", arg: 6, scope: !5418, file: !3, line: 209, type: !136)
!5447 = !DILocation(line: 209, column: 44, scope: !5418)
!5448 = !DILocalVariable(name: "flags", scope: !5418, file: !3, line: 211, type: !278)
!5449 = !DILocation(line: 211, column: 16, scope: !5418)
!5450 = !DILocation(line: 213, column: 6, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 213, column: 6)
!5452 = !DILocation(line: 213, column: 18, scope: !5451)
!5453 = !DILocation(line: 213, column: 6, scope: !5418)
!5454 = !DILocation(line: 214, column: 15, scope: !5451)
!5455 = !DILocation(line: 214, column: 3, scope: !5451)
!5456 = !DILocation(line: 215, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 215, column: 6)
!5458 = !DILocation(line: 215, column: 18, scope: !5457)
!5459 = !DILocation(line: 215, column: 6, scope: !5418)
!5460 = !DILocation(line: 216, column: 15, scope: !5457)
!5461 = !DILocation(line: 216, column: 3, scope: !5457)
!5462 = !DILocation(line: 217, column: 6, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 217, column: 6)
!5464 = !DILocation(line: 217, column: 18, scope: !5463)
!5465 = !DILocation(line: 217, column: 6, scope: !5418)
!5466 = !DILocation(line: 218, column: 15, scope: !5463)
!5467 = !DILocation(line: 218, column: 3, scope: !5463)
!5468 = !DILocation(line: 219, column: 6, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 219, column: 6)
!5470 = !DILocation(line: 219, column: 18, scope: !5469)
!5471 = !DILocation(line: 219, column: 6, scope: !5418)
!5472 = !DILocation(line: 220, column: 15, scope: !5469)
!5473 = !DILocation(line: 220, column: 3, scope: !5469)
!5474 = !DILocation(line: 222, column: 19, scope: !5418)
!5475 = !DILocation(line: 222, column: 18, scope: !5418)
!5476 = !DILocation(line: 222, column: 17, scope: !5418)
!5477 = !DILocation(line: 222, column: 15, scope: !5418)
!5478 = !DILocation(line: 223, column: 18, scope: !5418)
!5479 = !DILocation(line: 223, column: 17, scope: !5418)
!5480 = !DILocation(line: 223, column: 16, scope: !5418)
!5481 = !DILocation(line: 223, column: 14, scope: !5418)
!5482 = !DILocation(line: 226, column: 2, scope: !5418)
!5483 = !DILocation(line: 226, column: 2, scope: !5435)
!5484 = !DILocalVariable(name: "__dummy", scope: !5485, file: !3, line: 226, type: !278)
!5485 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 226, column: 2)
!5486 = !DILocation(line: 226, column: 2, scope: !5485)
!5487 = !DILocalVariable(name: "__dummy2", scope: !5485, file: !3, line: 226, type: !278)
!5488 = !DILocation(line: 226, column: 2, scope: !5434)
!5489 = !DILocation(line: 226, column: 2, scope: !5433)
!5490 = !DILocation(line: 226, column: 2, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 226, column: 2)
!5492 = !DILocalVariable(name: "__dummy", scope: !5493, file: !3, line: 226, type: !278)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 226, column: 2)
!5494 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 226, column: 2)
!5495 = !DILocation(line: 226, column: 2, scope: !5493)
!5496 = !DILocalVariable(name: "__dummy2", scope: !5493, file: !3, line: 226, type: !278)
!5497 = !DILocation(line: 226, column: 2, scope: !5494)
!5498 = !DILocation(line: 226, column: 2, scope: !5432)
!5499 = !{i32 -2142538277}
!5500 = !DILocation(line: 226, column: 2, scope: !5431)
!5501 = !DILocation(line: 329, column: 10, scope: !3915, inlinedAt: !5430)
!5502 = !DILocation(line: 329, column: 16, scope: !3915, inlinedAt: !5430)
!5503 = !DILocation(line: 229, column: 6, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 229, column: 6)
!5505 = !DILocation(line: 229, column: 27, scope: !5504)
!5506 = !DILocation(line: 229, column: 31, scope: !5504)
!5507 = !DILocation(line: 229, column: 24, scope: !5504)
!5508 = !DILocation(line: 229, column: 6, scope: !5418)
!5509 = !DILocation(line: 230, column: 27, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 229, column: 50)
!5511 = !DILocation(line: 230, column: 3, scope: !5510)
!5512 = !DILocation(line: 230, column: 7, scope: !5510)
!5513 = !DILocation(line: 230, column: 25, scope: !5510)
!5514 = !DILocation(line: 231, column: 3, scope: !5510)
!5515 = !DILocation(line: 231, column: 7, scope: !5510)
!5516 = !DILocation(line: 231, column: 23, scope: !5510)
!5517 = !DILocation(line: 232, column: 2, scope: !5510)
!5518 = !DILocation(line: 233, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 233, column: 6)
!5520 = !DILocation(line: 233, column: 22, scope: !5519)
!5521 = !DILocation(line: 233, column: 26, scope: !5519)
!5522 = !DILocation(line: 233, column: 19, scope: !5519)
!5523 = !DILocation(line: 233, column: 6, scope: !5418)
!5524 = !DILocation(line: 234, column: 22, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 233, column: 40)
!5526 = !DILocation(line: 234, column: 3, scope: !5525)
!5527 = !DILocation(line: 234, column: 7, scope: !5525)
!5528 = !DILocation(line: 234, column: 20, scope: !5525)
!5529 = !DILocation(line: 235, column: 3, scope: !5525)
!5530 = !DILocation(line: 235, column: 7, scope: !5525)
!5531 = !DILocation(line: 235, column: 23, scope: !5525)
!5532 = !DILocation(line: 236, column: 2, scope: !5525)
!5533 = !DILocation(line: 237, column: 6, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 237, column: 6)
!5535 = !DILocation(line: 237, column: 21, scope: !5534)
!5536 = !DILocation(line: 237, column: 25, scope: !5534)
!5537 = !DILocation(line: 237, column: 18, scope: !5534)
!5538 = !DILocation(line: 237, column: 6, scope: !5418)
!5539 = !DILocation(line: 238, column: 21, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 237, column: 38)
!5541 = !DILocation(line: 238, column: 3, scope: !5540)
!5542 = !DILocation(line: 238, column: 7, scope: !5540)
!5543 = !DILocation(line: 238, column: 19, scope: !5540)
!5544 = !DILocation(line: 239, column: 3, scope: !5540)
!5545 = !DILocation(line: 239, column: 7, scope: !5540)
!5546 = !DILocation(line: 239, column: 23, scope: !5540)
!5547 = !DILocation(line: 240, column: 2, scope: !5540)
!5548 = !DILocation(line: 241, column: 6, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 241, column: 6)
!5550 = !DILocation(line: 241, column: 21, scope: !5549)
!5551 = !DILocation(line: 241, column: 25, scope: !5549)
!5552 = !DILocation(line: 241, column: 18, scope: !5549)
!5553 = !DILocation(line: 241, column: 37, scope: !5549)
!5554 = !DILocation(line: 241, column: 40, scope: !5549)
!5555 = !DILocation(line: 241, column: 55, scope: !5549)
!5556 = !DILocation(line: 241, column: 59, scope: !5549)
!5557 = !DILocation(line: 241, column: 52, scope: !5549)
!5558 = !DILocation(line: 241, column: 6, scope: !5418)
!5559 = !DILocation(line: 242, column: 21, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 241, column: 72)
!5561 = !DILocation(line: 242, column: 3, scope: !5560)
!5562 = !DILocation(line: 242, column: 7, scope: !5560)
!5563 = !DILocation(line: 242, column: 19, scope: !5560)
!5564 = !DILocation(line: 243, column: 21, scope: !5560)
!5565 = !DILocation(line: 243, column: 3, scope: !5560)
!5566 = !DILocation(line: 243, column: 7, scope: !5560)
!5567 = !DILocation(line: 243, column: 19, scope: !5560)
!5568 = !DILocation(line: 244, column: 3, scope: !5560)
!5569 = !DILocation(line: 244, column: 7, scope: !5560)
!5570 = !DILocation(line: 244, column: 23, scope: !5560)
!5571 = !DILocation(line: 245, column: 2, scope: !5560)
!5572 = !DILocation(line: 247, column: 23, scope: !5418)
!5573 = !DILocation(line: 247, column: 2, scope: !5418)
!5574 = !DILocation(line: 249, column: 26, scope: !5418)
!5575 = !DILocation(line: 249, column: 30, scope: !5418)
!5576 = !DILocation(line: 249, column: 36, scope: !5418)
!5577 = !DILocalVariable(name: "__dummy", scope: !5578, file: !3916, line: 409, type: !278)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !3916, line: 409, column: 2)
!5579 = distinct !DILexicalBlock(scope: !5422, file: !3916, line: 409, column: 2)
!5580 = !DILocation(line: 409, column: 2, scope: !5578, inlinedAt: !5426)
!5581 = !DILocalVariable(name: "__dummy2", scope: !5578, file: !3916, line: 409, type: !278)
!5582 = !DILocalVariable(name: "__dummy", scope: !5583, file: !3916, line: 409, type: !278)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !3916, line: 409, column: 2)
!5584 = distinct !DILexicalBlock(scope: !5585, file: !3916, line: 409, column: 2)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !3916, line: 409, column: 2)
!5586 = distinct !DILexicalBlock(scope: !5579, file: !3916, line: 409, column: 2)
!5587 = !DILocation(line: 409, column: 2, scope: !5583, inlinedAt: !5426)
!5588 = !DILocalVariable(name: "__dummy2", scope: !5583, file: !3916, line: 409, type: !278)
!5589 = !DILocation(line: 409, column: 2, scope: !5584, inlinedAt: !5426)
!5590 = !DILocation(line: 409, column: 2, scope: !5591, inlinedAt: !5426)
!5591 = distinct !DILexicalBlock(scope: !5586, file: !3916, line: 409, column: 2)
!5592 = !{i32 -2145518492}
!5593 = !DILocation(line: 409, column: 2, scope: !5594, inlinedAt: !5426)
!5594 = distinct !DILexicalBlock(scope: !5591, file: !3916, line: 409, column: 2)
!5595 = !DILocation(line: 250, column: 1, scope: !5418)
!5596 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5597, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{null, !3698, !124}
!5599 = !DILocalVariable(name: "intf", arg: 1, scope: !5596, file: !6, line: 268, type: !3698)
!5600 = !DILocation(line: 268, column: 59, scope: !5596)
!5601 = !DILocalVariable(name: "data", arg: 2, scope: !5596, file: !6, line: 268, type: !124)
!5602 = !DILocation(line: 268, column: 71, scope: !5596)
!5603 = !DILocation(line: 270, column: 19, scope: !5596)
!5604 = !DILocation(line: 270, column: 25, scope: !5596)
!5605 = !DILocation(line: 270, column: 30, scope: !5596)
!5606 = !DILocation(line: 270, column: 2, scope: !5596)
!5607 = !DILocation(line: 271, column: 1, scope: !5596)
!5608 = distinct !DISubprogram(name: "powermate_free_buffers", scope: !3, file: !3, line: 292, type: !5609, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{null, !132, !3938}
!5611 = !DILocalVariable(name: "udev", arg: 1, scope: !5608, file: !3, line: 292, type: !132)
!5612 = !DILocation(line: 292, column: 55, scope: !5608)
!5613 = !DILocalVariable(name: "pm", arg: 2, scope: !5608, file: !3, line: 292, type: !3938)
!5614 = !DILocation(line: 292, column: 86, scope: !5608)
!5615 = !DILocation(line: 294, column: 20, scope: !5608)
!5616 = !DILocation(line: 295, column: 6, scope: !5608)
!5617 = !DILocation(line: 295, column: 10, scope: !5608)
!5618 = !DILocation(line: 295, column: 16, scope: !5608)
!5619 = !DILocation(line: 295, column: 20, scope: !5608)
!5620 = !DILocation(line: 294, column: 2, scope: !5608)
!5621 = !DILocation(line: 296, column: 8, scope: !5608)
!5622 = !DILocation(line: 296, column: 12, scope: !5608)
!5623 = !DILocation(line: 296, column: 2, scope: !5608)
!5624 = !DILocation(line: 297, column: 1, scope: !5608)
!5625 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !88, file: !88, line: 542, type: !4579, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5626 = !DILocalVariable(name: "epd", arg: 1, scope: !5625, file: !88, line: 543, type: !4581)
!5627 = !DILocation(line: 543, column: 43, scope: !5625)
!5628 = !DILocation(line: 545, column: 11, scope: !5625)
!5629 = !DILocation(line: 545, column: 16, scope: !5625)
!5630 = !DILocation(line: 545, column: 29, scope: !5625)
!5631 = !DILocation(line: 545, column: 59, scope: !5625)
!5632 = !DILocation(line: 545, column: 2, scope: !5625)
!5633 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !88, file: !88, line: 492, type: !4579, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5634 = !DILocalVariable(name: "epd", arg: 1, scope: !5633, file: !88, line: 492, type: !4581)
!5635 = !DILocation(line: 492, column: 77, scope: !5633)
!5636 = !DILocation(line: 494, column: 11, scope: !5633)
!5637 = !DILocation(line: 494, column: 16, scope: !5633)
!5638 = !DILocation(line: 494, column: 33, scope: !5633)
!5639 = !DILocation(line: 494, column: 58, scope: !5633)
!5640 = !DILocation(line: 494, column: 2, scope: !5633)
!5641 = distinct !DISubprogram(name: "get_order", scope: !5642, file: !5642, line: 29, type: !5643, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5642 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!136, !278}
!5645 = !DILocalVariable(name: "x", arg: 1, scope: !5646, file: !5647, line: 366, type: !372)
!5646 = distinct !DISubprogram(name: "fls64", scope: !5647, file: !5647, line: 366, type: !5648, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5647 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!136, !372}
!5650 = !DILocation(line: 366, column: 40, scope: !5646, inlinedAt: !5651)
!5651 = distinct !DILocation(line: 46, column: 9, scope: !5641)
!5652 = !DILocalVariable(name: "bitpos", scope: !5646, file: !5647, line: 368, type: !136)
!5653 = !DILocation(line: 368, column: 6, scope: !5646, inlinedAt: !5651)
!5654 = !DILocalVariable(name: "size", arg: 1, scope: !5641, file: !5642, line: 29, type: !278)
!5655 = !DILocation(line: 29, column: 63, scope: !5641)
!5656 = !DILocation(line: 31, column: 27, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5641, file: !5642, line: 31, column: 6)
!5658 = !DILocation(line: 31, column: 6, scope: !5657)
!5659 = !DILocation(line: 31, column: 6, scope: !5641)
!5660 = !DILocation(line: 32, column: 8, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !5642, line: 32, column: 7)
!5662 = distinct !DILexicalBlock(scope: !5657, file: !5642, line: 31, column: 34)
!5663 = !DILocation(line: 32, column: 7, scope: !5662)
!5664 = !DILocation(line: 33, column: 4, scope: !5661)
!5665 = !DILocation(line: 35, column: 7, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5662, file: !5642, line: 35, column: 7)
!5667 = !DILocation(line: 35, column: 12, scope: !5666)
!5668 = !DILocation(line: 35, column: 7, scope: !5662)
!5669 = !DILocation(line: 36, column: 4, scope: !5666)
!5670 = !DILocation(line: 38, column: 10, scope: !5662)
!5671 = !DILocation(line: 38, column: 28, scope: !5662)
!5672 = !DILocation(line: 38, column: 41, scope: !5662)
!5673 = !DILocation(line: 38, column: 3, scope: !5662)
!5674 = !DILocation(line: 41, column: 6, scope: !5641)
!5675 = !DILocation(line: 42, column: 7, scope: !5641)
!5676 = !DILocation(line: 46, column: 15, scope: !5641)
!5677 = !DILocation(line: 374, column: 2, scope: !5646, inlinedAt: !5651)
!5678 = !DILocation(line: 376, column: 14, scope: !5646, inlinedAt: !5651)
!5679 = !{i32 254013}
!5680 = !DILocation(line: 377, column: 9, scope: !5646, inlinedAt: !5651)
!5681 = !DILocation(line: 377, column: 16, scope: !5646, inlinedAt: !5651)
!5682 = !DILocation(line: 46, column: 2, scope: !5641)
!5683 = !DILocation(line: 48, column: 1, scope: !5641)
!5684 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5685, file: !5685, line: 30, type: !5686, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5685 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!136, !371}
!5688 = !DILocation(line: 366, column: 40, scope: !5646, inlinedAt: !5689)
!5689 = distinct !DILocation(line: 32, column: 9, scope: !5684)
!5690 = !DILocation(line: 368, column: 6, scope: !5646, inlinedAt: !5689)
!5691 = !DILocalVariable(name: "n", arg: 1, scope: !5684, file: !5685, line: 30, type: !371)
!5692 = !DILocation(line: 30, column: 21, scope: !5684)
!5693 = !DILocation(line: 32, column: 15, scope: !5684)
!5694 = !DILocation(line: 374, column: 2, scope: !5646, inlinedAt: !5689)
!5695 = !DILocation(line: 376, column: 14, scope: !5646, inlinedAt: !5689)
!5696 = !DILocation(line: 377, column: 9, scope: !5646, inlinedAt: !5689)
!5697 = !DILocation(line: 377, column: 16, scope: !5646, inlinedAt: !5689)
!5698 = !DILocation(line: 32, column: 18, scope: !5684)
!5699 = !DILocation(line: 32, column: 2, scope: !5684)
!5700 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1982, file: !1982, line: 137, type: !5701, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!124, !884, !2998, !275, !125}
!5703 = !DILocalVariable(name: "s", arg: 1, scope: !5700, file: !1982, line: 137, type: !884)
!5704 = !DILocation(line: 137, column: 54, scope: !5700)
!5705 = !DILocalVariable(name: "object", arg: 2, scope: !5700, file: !1982, line: 137, type: !2998)
!5706 = !DILocation(line: 137, column: 69, scope: !5700)
!5707 = !DILocalVariable(name: "size", arg: 3, scope: !5700, file: !1982, line: 138, type: !275)
!5708 = !DILocation(line: 138, column: 12, scope: !5700)
!5709 = !DILocalVariable(name: "flags", arg: 4, scope: !5700, file: !1982, line: 138, type: !125)
!5710 = !DILocation(line: 138, column: 24, scope: !5700)
!5711 = !DILocation(line: 140, column: 17, scope: !5700)
!5712 = !DILocation(line: 140, column: 2, scope: !5700)
!5713 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !5714, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5714 = !DISubroutineType(types: !5715)
!5715 = !{null, !164, !124}
!5716 = !DILocalVariable(name: "dev", arg: 1, scope: !5713, file: !67, line: 660, type: !164)
!5717 = !DILocation(line: 660, column: 51, scope: !5713)
!5718 = !DILocalVariable(name: "data", arg: 2, scope: !5713, file: !67, line: 660, type: !124)
!5719 = !DILocation(line: 660, column: 62, scope: !5713)
!5720 = !DILocation(line: 662, column: 21, scope: !5713)
!5721 = !DILocation(line: 662, column: 2, scope: !5713)
!5722 = !DILocation(line: 662, column: 7, scope: !5713)
!5723 = !DILocation(line: 662, column: 19, scope: !5713)
!5724 = !DILocation(line: 663, column: 1, scope: !5713)
!5725 = distinct !DISubprogram(name: "input_get_drvdata", scope: !4015, file: !4015, line: 366, type: !5726, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!124, !4013}
!5728 = !DILocalVariable(name: "dev", arg: 1, scope: !5725, file: !4015, line: 366, type: !4013)
!5729 = !DILocation(line: 366, column: 57, scope: !5725)
!5730 = !DILocation(line: 368, column: 26, scope: !5725)
!5731 = !DILocation(line: 368, column: 31, scope: !5725)
!5732 = !DILocation(line: 368, column: 9, scope: !5725)
!5733 = !DILocation(line: 368, column: 2, scope: !5725)
!5734 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5735, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{!124, !5737}
!5737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5738, size: 64)
!5738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!5739 = !DILocalVariable(name: "dev", arg: 1, scope: !5734, file: !67, line: 655, type: !5737)
!5740 = !DILocation(line: 655, column: 58, scope: !5734)
!5741 = !DILocation(line: 657, column: 9, scope: !5734)
!5742 = !DILocation(line: 657, column: 14, scope: !5734)
!5743 = !DILocation(line: 657, column: 2, scope: !5734)
!5744 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !88, file: !88, line: 647, type: !4579, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5745 = !DILocalVariable(name: "epd", arg: 1, scope: !5744, file: !88, line: 647, type: !4581)
!5746 = !DILocation(line: 647, column: 75, scope: !5744)
!5747 = !DILocation(line: 649, column: 9, scope: !5744)
!5748 = !DILocation(line: 649, column: 44, scope: !5744)
!5749 = !DILocation(line: 649, column: 2, scope: !5744)
!5750 = distinct !DISubprogram(name: "input_report_key", scope: !4015, file: !4015, line: 415, type: !5751, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{null, !4013, !7, !136}
!5753 = !DILocalVariable(name: "dev", arg: 1, scope: !5750, file: !4015, line: 415, type: !4013)
!5754 = !DILocation(line: 415, column: 55, scope: !5750)
!5755 = !DILocalVariable(name: "code", arg: 2, scope: !5750, file: !4015, line: 415, type: !7)
!5756 = !DILocation(line: 415, column: 73, scope: !5750)
!5757 = !DILocalVariable(name: "value", arg: 3, scope: !5750, file: !4015, line: 415, type: !136)
!5758 = !DILocation(line: 415, column: 83, scope: !5750)
!5759 = !DILocation(line: 417, column: 14, scope: !5750)
!5760 = !DILocation(line: 417, column: 27, scope: !5750)
!5761 = !DILocation(line: 417, column: 35, scope: !5750)
!5762 = !DILocation(line: 417, column: 34, scope: !5750)
!5763 = !DILocation(line: 417, column: 33, scope: !5750)
!5764 = !DILocation(line: 417, column: 2, scope: !5750)
!5765 = !DILocation(line: 418, column: 1, scope: !5750)
!5766 = distinct !DISubprogram(name: "input_report_rel", scope: !4015, file: !4015, line: 420, type: !5751, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5767 = !DILocalVariable(name: "dev", arg: 1, scope: !5766, file: !4015, line: 420, type: !4013)
!5768 = !DILocation(line: 420, column: 55, scope: !5766)
!5769 = !DILocalVariable(name: "code", arg: 2, scope: !5766, file: !4015, line: 420, type: !7)
!5770 = !DILocation(line: 420, column: 73, scope: !5766)
!5771 = !DILocalVariable(name: "value", arg: 3, scope: !5766, file: !4015, line: 420, type: !136)
!5772 = !DILocation(line: 420, column: 83, scope: !5766)
!5773 = !DILocation(line: 422, column: 14, scope: !5766)
!5774 = !DILocation(line: 422, column: 27, scope: !5766)
!5775 = !DILocation(line: 422, column: 33, scope: !5766)
!5776 = !DILocation(line: 422, column: 2, scope: !5766)
!5777 = !DILocation(line: 423, column: 1, scope: !5766)
!5778 = distinct !DISubprogram(name: "input_sync", scope: !4015, file: !4015, line: 440, type: !4187, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5779 = !DILocalVariable(name: "dev", arg: 1, scope: !5778, file: !4015, line: 440, type: !4013)
!5780 = !DILocation(line: 440, column: 49, scope: !5778)
!5781 = !DILocation(line: 442, column: 14, scope: !5778)
!5782 = !DILocation(line: 442, column: 2, scope: !5778)
!5783 = !DILocation(line: 443, column: 1, scope: !5778)
!5784 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5785, file: !5785, line: 666, type: !5786, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5785 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!278}
!5788 = !DILocalVariable(name: "f", scope: !5784, file: !5785, line: 668, type: !278)
!5789 = !DILocation(line: 668, column: 16, scope: !5784)
!5790 = !DILocation(line: 670, column: 6, scope: !5784)
!5791 = !DILocation(line: 670, column: 4, scope: !5784)
!5792 = !DILocation(line: 671, column: 2, scope: !5784)
!5793 = !DILocation(line: 672, column: 9, scope: !5784)
!5794 = !DILocation(line: 672, column: 2, scope: !5784)
!5795 = distinct !DISubprogram(name: "powermate_sync_state", scope: !3, file: !3, line: 122, type: !5796, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5796 = !DISubroutineType(types: !5797)
!5797 = !{null, !3938}
!5798 = !DILocalVariable(name: "pm", arg: 1, scope: !5795, file: !3, line: 122, type: !3938)
!5799 = !DILocation(line: 122, column: 59, scope: !5795)
!5800 = !DILocation(line: 124, column: 6, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 124, column: 6)
!5802 = !DILocation(line: 124, column: 10, scope: !5801)
!5803 = !DILocation(line: 124, column: 26, scope: !5801)
!5804 = !DILocation(line: 124, column: 6, scope: !5795)
!5805 = !DILocation(line: 125, column: 3, scope: !5801)
!5806 = !DILocation(line: 126, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 126, column: 6)
!5808 = !DILocation(line: 126, column: 10, scope: !5807)
!5809 = !DILocation(line: 126, column: 18, scope: !5807)
!5810 = !DILocation(line: 126, column: 25, scope: !5807)
!5811 = !DILocation(line: 126, column: 6, scope: !5795)
!5812 = !DILocation(line: 127, column: 3, scope: !5807)
!5813 = !DILocation(line: 129, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 129, column: 6)
!5815 = !DILocation(line: 129, column: 10, scope: !5814)
!5816 = !DILocation(line: 129, column: 26, scope: !5814)
!5817 = !DILocation(line: 129, column: 6, scope: !5795)
!5818 = !DILocation(line: 130, column: 3, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 129, column: 48)
!5820 = !DILocation(line: 130, column: 7, scope: !5819)
!5821 = !DILocation(line: 130, column: 17, scope: !5819)
!5822 = !DILocation(line: 130, column: 24, scope: !5819)
!5823 = !DILocation(line: 131, column: 26, scope: !5819)
!5824 = !DILocation(line: 131, column: 3, scope: !5819)
!5825 = !DILocation(line: 131, column: 7, scope: !5819)
!5826 = !DILocation(line: 131, column: 17, scope: !5819)
!5827 = !DILocation(line: 131, column: 24, scope: !5819)
!5828 = !DILocation(line: 132, column: 3, scope: !5819)
!5829 = !DILocation(line: 132, column: 7, scope: !5819)
!5830 = !DILocation(line: 132, column: 23, scope: !5819)
!5831 = !DILocation(line: 133, column: 2, scope: !5819)
!5832 = !DILocation(line: 133, column: 12, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 133, column: 12)
!5834 = !DILocation(line: 133, column: 16, scope: !5833)
!5835 = !DILocation(line: 133, column: 32, scope: !5833)
!5836 = !DILocation(line: 133, column: 12, scope: !5814)
!5837 = !DILocation(line: 134, column: 3, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 133, column: 53)
!5839 = !DILocation(line: 134, column: 7, scope: !5838)
!5840 = !DILocation(line: 134, column: 17, scope: !5838)
!5841 = !DILocation(line: 134, column: 24, scope: !5838)
!5842 = !DILocation(line: 135, column: 26, scope: !5838)
!5843 = !DILocation(line: 135, column: 3, scope: !5838)
!5844 = !DILocation(line: 135, column: 7, scope: !5838)
!5845 = !DILocation(line: 135, column: 17, scope: !5838)
!5846 = !DILocation(line: 135, column: 24, scope: !5838)
!5847 = !DILocation(line: 136, column: 3, scope: !5838)
!5848 = !DILocation(line: 136, column: 7, scope: !5838)
!5849 = !DILocation(line: 136, column: 23, scope: !5838)
!5850 = !DILocation(line: 137, column: 2, scope: !5838)
!5851 = !DILocation(line: 137, column: 12, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 137, column: 12)
!5853 = !DILocation(line: 137, column: 16, scope: !5852)
!5854 = !DILocation(line: 137, column: 32, scope: !5852)
!5855 = !DILocation(line: 137, column: 12, scope: !5833)
!5856 = !DILocalVariable(name: "op", scope: !5857, file: !3, line: 138, type: !136)
!5857 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 137, column: 52)
!5858 = !DILocation(line: 138, column: 7, scope: !5857)
!5859 = !DILocalVariable(name: "arg", scope: !5857, file: !3, line: 138, type: !136)
!5860 = !DILocation(line: 138, column: 11, scope: !5857)
!5861 = !DILocation(line: 156, column: 7, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 156, column: 7)
!5863 = !DILocation(line: 156, column: 11, scope: !5862)
!5864 = !DILocation(line: 156, column: 23, scope: !5862)
!5865 = !DILocation(line: 156, column: 7, scope: !5857)
!5866 = !DILocation(line: 157, column: 7, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 156, column: 30)
!5868 = !DILocation(line: 158, column: 16, scope: !5867)
!5869 = !DILocation(line: 158, column: 20, scope: !5867)
!5870 = !DILocation(line: 158, column: 14, scope: !5867)
!5871 = !DILocation(line: 158, column: 8, scope: !5867)
!5872 = !DILocation(line: 159, column: 3, scope: !5867)
!5873 = !DILocation(line: 159, column: 14, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 159, column: 14)
!5875 = !DILocation(line: 159, column: 18, scope: !5874)
!5876 = !DILocation(line: 159, column: 30, scope: !5874)
!5877 = !DILocation(line: 159, column: 14, scope: !5862)
!5878 = !DILocation(line: 160, column: 7, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 159, column: 37)
!5880 = !DILocation(line: 161, column: 10, scope: !5879)
!5881 = !DILocation(line: 161, column: 14, scope: !5879)
!5882 = !DILocation(line: 161, column: 26, scope: !5879)
!5883 = !DILocation(line: 161, column: 8, scope: !5879)
!5884 = !DILocation(line: 162, column: 3, scope: !5879)
!5885 = !DILocation(line: 163, column: 7, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 162, column: 10)
!5887 = !DILocation(line: 164, column: 8, scope: !5886)
!5888 = !DILocation(line: 166, column: 26, scope: !5857)
!5889 = !DILocation(line: 166, column: 3, scope: !5857)
!5890 = !DILocation(line: 166, column: 7, scope: !5857)
!5891 = !DILocation(line: 166, column: 17, scope: !5857)
!5892 = !DILocation(line: 166, column: 24, scope: !5857)
!5893 = !DILocation(line: 167, column: 26, scope: !5857)
!5894 = !DILocation(line: 167, column: 3, scope: !5857)
!5895 = !DILocation(line: 167, column: 7, scope: !5857)
!5896 = !DILocation(line: 167, column: 17, scope: !5857)
!5897 = !DILocation(line: 167, column: 24, scope: !5857)
!5898 = !DILocation(line: 168, column: 3, scope: !5857)
!5899 = !DILocation(line: 168, column: 7, scope: !5857)
!5900 = !DILocation(line: 168, column: 23, scope: !5857)
!5901 = !DILocation(line: 169, column: 2, scope: !5857)
!5902 = !DILocation(line: 169, column: 13, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 169, column: 13)
!5904 = !DILocation(line: 169, column: 17, scope: !5903)
!5905 = !DILocation(line: 169, column: 33, scope: !5903)
!5906 = !DILocation(line: 169, column: 13, scope: !5852)
!5907 = !DILocation(line: 170, column: 3, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 169, column: 61)
!5909 = !DILocation(line: 170, column: 7, scope: !5908)
!5910 = !DILocation(line: 170, column: 17, scope: !5908)
!5911 = !DILocation(line: 170, column: 24, scope: !5908)
!5912 = !DILocation(line: 171, column: 26, scope: !5908)
!5913 = !DILocation(line: 171, column: 3, scope: !5908)
!5914 = !DILocation(line: 171, column: 7, scope: !5908)
!5915 = !DILocation(line: 171, column: 17, scope: !5908)
!5916 = !DILocation(line: 171, column: 24, scope: !5908)
!5917 = !DILocation(line: 172, column: 3, scope: !5908)
!5918 = !DILocation(line: 172, column: 7, scope: !5908)
!5919 = !DILocation(line: 172, column: 23, scope: !5908)
!5920 = !DILocation(line: 173, column: 2, scope: !5908)
!5921 = !DILocation(line: 174, column: 3, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 173, column: 9)
!5923 = !DILocation(line: 175, column: 3, scope: !5922)
!5924 = !DILocation(line: 175, column: 7, scope: !5922)
!5925 = !DILocation(line: 175, column: 23, scope: !5922)
!5926 = !DILocation(line: 176, column: 3, scope: !5922)
!5927 = !DILocation(line: 181, column: 2, scope: !5795)
!5928 = !DILocation(line: 181, column: 6, scope: !5795)
!5929 = !DILocation(line: 181, column: 16, scope: !5795)
!5930 = !DILocation(line: 181, column: 29, scope: !5795)
!5931 = !DILocation(line: 182, column: 2, scope: !5795)
!5932 = !DILocation(line: 182, column: 6, scope: !5795)
!5933 = !DILocation(line: 182, column: 16, scope: !5795)
!5934 = !DILocation(line: 182, column: 25, scope: !5795)
!5935 = !DILocation(line: 183, column: 2, scope: !5795)
!5936 = !DILocation(line: 183, column: 6, scope: !5795)
!5937 = !DILocation(line: 183, column: 16, scope: !5795)
!5938 = !DILocation(line: 183, column: 24, scope: !5795)
!5939 = !DILocation(line: 185, column: 23, scope: !5795)
!5940 = !DILocation(line: 185, column: 27, scope: !5795)
!5941 = !DILocation(line: 185, column: 35, scope: !5795)
!5942 = !DILocation(line: 185, column: 39, scope: !5795)
!5943 = !DILocation(line: 185, column: 45, scope: !5795)
!5944 = !DILocation(line: 186, column: 18, scope: !5795)
!5945 = !DILocation(line: 186, column: 22, scope: !5795)
!5946 = !DILocation(line: 186, column: 9, scope: !5795)
!5947 = !DILocation(line: 187, column: 36, scope: !5795)
!5948 = !DILocation(line: 185, column: 2, scope: !5795)
!5949 = !DILocation(line: 189, column: 21, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 189, column: 6)
!5951 = !DILocation(line: 189, column: 25, scope: !5950)
!5952 = !DILocation(line: 189, column: 6, scope: !5950)
!5953 = !DILocation(line: 189, column: 6, scope: !5795)
!5954 = !DILocation(line: 190, column: 3, scope: !5950)
!5955 = !DILocation(line: 191, column: 1, scope: !5795)
!5956 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5785, file: !5785, line: 646, type: !5786, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5957 = !DILocalVariable(name: "__ret", scope: !5958, file: !5785, line: 648, type: !278)
!5958 = distinct !DILexicalBlock(scope: !5956, file: !5785, line: 648, column: 9)
!5959 = !DILocation(line: 648, column: 9, scope: !5958)
!5960 = !DILocalVariable(name: "__edi", scope: !5958, file: !5785, line: 648, type: !278)
!5961 = !DILocalVariable(name: "__esi", scope: !5958, file: !5785, line: 648, type: !278)
!5962 = !DILocalVariable(name: "__edx", scope: !5958, file: !5785, line: 648, type: !278)
!5963 = !DILocalVariable(name: "__ecx", scope: !5958, file: !5785, line: 648, type: !278)
!5964 = !DILocalVariable(name: "__eax", scope: !5958, file: !5785, line: 648, type: !278)
!5965 = !DILocation(line: 648, column: 9, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5967, file: !5785, line: 648, column: 9)
!5967 = distinct !DILexicalBlock(scope: !5958, file: !5785, line: 648, column: 9)
!5968 = !{i32 -2145692350, i32 -2145690035, i32 -2145689801, i32 -2145689750, i32 -2145689722, i32 -2145689697, i32 -2145690013, i32 -2145690000, i32 -2145689562, i32 -2145689443, i32 -2145689908, i32 -2145689881, i32 -2145689853, i32 -2145689823}
!5969 = !DILocalVariable(name: "__mask", scope: !5970, file: !5785, line: 648, type: !278)
!5970 = distinct !DILexicalBlock(scope: !5966, file: !5785, line: 648, column: 9)
!5971 = !DILocation(line: 648, column: 9, scope: !5970)
!5972 = !DILocation(line: 648, column: 9, scope: !5967)
!5973 = !DILocation(line: 648, column: 2, scope: !5956)
!5974 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5785, file: !5785, line: 656, type: !1744, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5975 = !DILocalVariable(name: "__edi", scope: !5976, file: !5785, line: 658, type: !278)
!5976 = distinct !DILexicalBlock(scope: !5974, file: !5785, line: 658, column: 2)
!5977 = !DILocation(line: 658, column: 2, scope: !5976)
!5978 = !DILocalVariable(name: "__esi", scope: !5976, file: !5785, line: 658, type: !278)
!5979 = !DILocalVariable(name: "__edx", scope: !5976, file: !5785, line: 658, type: !278)
!5980 = !DILocalVariable(name: "__ecx", scope: !5976, file: !5785, line: 658, type: !278)
!5981 = !DILocalVariable(name: "__eax", scope: !5976, file: !5785, line: 658, type: !278)
!5982 = !{i32 -2145685256, i32 -2145684524, i32 -2145684290, i32 -2145684239, i32 -2145684211, i32 -2145684186, i32 -2145684502, i32 -2145684489, i32 -2145684051, i32 -2145683932, i32 -2145684397, i32 -2145684370, i32 -2145684342, i32 -2145684312}
!5983 = !DILocation(line: 659, column: 1, scope: !5974)
!5984 = distinct !DISubprogram(name: "usb_fill_control_urb", scope: !6, file: !6, line: 1616, type: !5985, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{null, !3946, !132, !7, !3584, !124, !136, !3988, !124}
!5987 = !DILocalVariable(name: "urb", arg: 1, scope: !5984, file: !6, line: 1616, type: !3946)
!5988 = !DILocation(line: 1616, column: 53, scope: !5984)
!5989 = !DILocalVariable(name: "dev", arg: 2, scope: !5984, file: !6, line: 1617, type: !132)
!5990 = !DILocation(line: 1617, column: 25, scope: !5984)
!5991 = !DILocalVariable(name: "pipe", arg: 3, scope: !5984, file: !6, line: 1618, type: !7)
!5992 = !DILocation(line: 1618, column: 19, scope: !5984)
!5993 = !DILocalVariable(name: "setup_packet", arg: 4, scope: !5984, file: !6, line: 1619, type: !3584)
!5994 = !DILocation(line: 1619, column: 21, scope: !5984)
!5995 = !DILocalVariable(name: "transfer_buffer", arg: 5, scope: !5984, file: !6, line: 1620, type: !124)
!5996 = !DILocation(line: 1620, column: 12, scope: !5984)
!5997 = !DILocalVariable(name: "buffer_length", arg: 6, scope: !5984, file: !6, line: 1621, type: !136)
!5998 = !DILocation(line: 1621, column: 10, scope: !5984)
!5999 = !DILocalVariable(name: "complete_fn", arg: 7, scope: !5984, file: !6, line: 1622, type: !3988)
!6000 = !DILocation(line: 1622, column: 21, scope: !5984)
!6001 = !DILocalVariable(name: "context", arg: 8, scope: !5984, file: !6, line: 1623, type: !124)
!6002 = !DILocation(line: 1623, column: 12, scope: !5984)
!6003 = !DILocation(line: 1625, column: 13, scope: !5984)
!6004 = !DILocation(line: 1625, column: 2, scope: !5984)
!6005 = !DILocation(line: 1625, column: 7, scope: !5984)
!6006 = !DILocation(line: 1625, column: 11, scope: !5984)
!6007 = !DILocation(line: 1626, column: 14, scope: !5984)
!6008 = !DILocation(line: 1626, column: 2, scope: !5984)
!6009 = !DILocation(line: 1626, column: 7, scope: !5984)
!6010 = !DILocation(line: 1626, column: 12, scope: !5984)
!6011 = !DILocation(line: 1627, column: 22, scope: !5984)
!6012 = !DILocation(line: 1627, column: 2, scope: !5984)
!6013 = !DILocation(line: 1627, column: 7, scope: !5984)
!6014 = !DILocation(line: 1627, column: 20, scope: !5984)
!6015 = !DILocation(line: 1628, column: 25, scope: !5984)
!6016 = !DILocation(line: 1628, column: 2, scope: !5984)
!6017 = !DILocation(line: 1628, column: 7, scope: !5984)
!6018 = !DILocation(line: 1628, column: 23, scope: !5984)
!6019 = !DILocation(line: 1629, column: 32, scope: !5984)
!6020 = !DILocation(line: 1629, column: 2, scope: !5984)
!6021 = !DILocation(line: 1629, column: 7, scope: !5984)
!6022 = !DILocation(line: 1629, column: 30, scope: !5984)
!6023 = !DILocation(line: 1630, column: 18, scope: !5984)
!6024 = !DILocation(line: 1630, column: 2, scope: !5984)
!6025 = !DILocation(line: 1630, column: 7, scope: !5984)
!6026 = !DILocation(line: 1630, column: 16, scope: !5984)
!6027 = !DILocation(line: 1631, column: 17, scope: !5984)
!6028 = !DILocation(line: 1631, column: 2, scope: !5984)
!6029 = !DILocation(line: 1631, column: 7, scope: !5984)
!6030 = !DILocation(line: 1631, column: 15, scope: !5984)
!6031 = !DILocation(line: 1632, column: 1, scope: !5984)
!6032 = distinct !DISubprogram(name: "powermate_config_complete", scope: !3, file: !3, line: 194, type: !3990, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!6033 = !DILocation(line: 407, column: 64, scope: !5422, inlinedAt: !6034)
!6034 = distinct !DILocation(line: 204, column: 2, scope: !6032)
!6035 = !DILocation(line: 407, column: 84, scope: !5422, inlinedAt: !6034)
!6036 = !DILocation(line: 327, column: 67, scope: !3915, inlinedAt: !6037)
!6037 = distinct !DILocation(line: 202, column: 2, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 202, column: 2)
!6039 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 202, column: 2)
!6040 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 202, column: 2)
!6041 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 202, column: 2)
!6042 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 202, column: 2)
!6043 = !DILocalVariable(name: "urb", arg: 1, scope: !6032, file: !3, line: 194, type: !3946)
!6044 = !DILocation(line: 194, column: 51, scope: !6032)
!6045 = !DILocalVariable(name: "pm", scope: !6032, file: !3, line: 196, type: !3938)
!6046 = !DILocation(line: 196, column: 27, scope: !6032)
!6047 = !DILocation(line: 196, column: 32, scope: !6032)
!6048 = !DILocation(line: 196, column: 37, scope: !6032)
!6049 = !DILocalVariable(name: "flags", scope: !6032, file: !3, line: 197, type: !278)
!6050 = !DILocation(line: 197, column: 16, scope: !6032)
!6051 = !DILocation(line: 199, column: 6, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 199, column: 6)
!6053 = !DILocation(line: 199, column: 11, scope: !6052)
!6054 = !DILocation(line: 199, column: 6, scope: !6032)
!6055 = !DILocation(line: 200, column: 58, scope: !6052)
!6056 = !DILocation(line: 200, column: 63, scope: !6052)
!6057 = !DILocation(line: 200, column: 3, scope: !6052)
!6058 = !DILocation(line: 202, column: 2, scope: !6032)
!6059 = !DILocation(line: 202, column: 2, scope: !6042)
!6060 = !DILocalVariable(name: "__dummy", scope: !6061, file: !3, line: 202, type: !278)
!6061 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 202, column: 2)
!6062 = !DILocation(line: 202, column: 2, scope: !6061)
!6063 = !DILocalVariable(name: "__dummy2", scope: !6061, file: !3, line: 202, type: !278)
!6064 = !DILocation(line: 202, column: 2, scope: !6041)
!6065 = !DILocation(line: 202, column: 2, scope: !6040)
!6066 = !DILocation(line: 202, column: 2, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 202, column: 2)
!6068 = !DILocalVariable(name: "__dummy", scope: !6069, file: !3, line: 202, type: !278)
!6069 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 202, column: 2)
!6070 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 202, column: 2)
!6071 = !DILocation(line: 202, column: 2, scope: !6069)
!6072 = !DILocalVariable(name: "__dummy2", scope: !6069, file: !3, line: 202, type: !278)
!6073 = !DILocation(line: 202, column: 2, scope: !6070)
!6074 = !DILocation(line: 202, column: 2, scope: !6039)
!6075 = !{i32 -2142539282}
!6076 = !DILocation(line: 202, column: 2, scope: !6038)
!6077 = !DILocation(line: 329, column: 10, scope: !3915, inlinedAt: !6037)
!6078 = !DILocation(line: 329, column: 16, scope: !3915, inlinedAt: !6037)
!6079 = !DILocation(line: 203, column: 23, scope: !6032)
!6080 = !DILocation(line: 203, column: 2, scope: !6032)
!6081 = !DILocation(line: 204, column: 26, scope: !6032)
!6082 = !DILocation(line: 204, column: 30, scope: !6032)
!6083 = !DILocation(line: 204, column: 36, scope: !6032)
!6084 = !DILocation(line: 409, column: 2, scope: !5578, inlinedAt: !6034)
!6085 = !DILocation(line: 409, column: 2, scope: !5583, inlinedAt: !6034)
!6086 = !DILocation(line: 409, column: 2, scope: !5584, inlinedAt: !6034)
!6087 = !DILocation(line: 409, column: 2, scope: !5591, inlinedAt: !6034)
!6088 = !DILocation(line: 409, column: 2, scope: !5594, inlinedAt: !6034)
!6089 = !DILocation(line: 205, column: 1, scope: !6032)
!6090 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5785, file: !5785, line: 651, type: !6091, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{null, !278}
!6093 = !DILocalVariable(name: "f", arg: 1, scope: !6090, file: !5785, line: 651, type: !278)
!6094 = !DILocation(line: 651, column: 65, scope: !6090)
!6095 = !DILocalVariable(name: "__edi", scope: !6096, file: !5785, line: 653, type: !278)
!6096 = distinct !DILexicalBlock(scope: !6090, file: !5785, line: 653, column: 2)
!6097 = !DILocation(line: 653, column: 2, scope: !6096)
!6098 = !DILocalVariable(name: "__esi", scope: !6096, file: !5785, line: 653, type: !278)
!6099 = !DILocalVariable(name: "__edx", scope: !6096, file: !5785, line: 653, type: !278)
!6100 = !DILocalVariable(name: "__ecx", scope: !6096, file: !5785, line: 653, type: !278)
!6101 = !DILocalVariable(name: "__eax", scope: !6096, file: !5785, line: 653, type: !278)
!6102 = !{i32 -2145687883, i32 -2145687133, i32 -2145686899, i32 -2145686848, i32 -2145686820, i32 -2145686795, i32 -2145687111, i32 -2145687098, i32 -2145686660, i32 -2145686541, i32 -2145687006, i32 -2145686979, i32 -2145686951, i32 -2145686921}
!6103 = !DILocation(line: 654, column: 1, scope: !6090)
!6104 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6105, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!124, !3698}
!6107 = !DILocalVariable(name: "intf", arg: 1, scope: !6104, file: !6, line: 263, type: !3698)
!6108 = !DILocation(line: 263, column: 60, scope: !6104)
!6109 = !DILocation(line: 265, column: 26, scope: !6104)
!6110 = !DILocation(line: 265, column: 32, scope: !6104)
!6111 = !DILocation(line: 265, column: 9, scope: !6104)
!6112 = !DILocation(line: 265, column: 2, scope: !6104)
