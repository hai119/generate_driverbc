; ModuleID = '../bcout/drivers/usb/misc/lvstest.llvm.bc'
source_filename = "drivers/usb/misc/lvstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_lvs_driver_init6:\09\09\09"
module asm ".long\09lvs_driver_init - .\09\09\09"
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
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
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
%struct.lvs_rh = type { %struct.usb_interface*, i8, i32, [8 x i8], %struct.usb_hub_descriptor, %struct.urb*, %struct.work_struct, %struct.usb_port_status }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.64 }>
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { [4 x i8], [4 x i8] }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_port_status = type { i16, i16, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_phy = type { %struct.device*, i8*, i32, i32, i32, %struct.usb_otg*, %struct.device*, %struct.usb_phy_io_ops*, i8*, %struct.extcon_dev*, %struct.extcon_dev*, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, i32 (%struct.usb_phy*)*, void (%struct.usb_phy*)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i1)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*)* }
%struct.usb_otg = type opaque
%struct.usb_phy_io_ops = type { i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32, i32)* }
%struct.extcon_dev = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.67, i64 }
%union.anon.67 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque

@__UNIQUE_ID___addressable_lvs_driver_init221 = internal global i8* bitcast (i32 ()* @lvs_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@lvs_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @lvs_rh_probe, void (%struct.usb_interface*)* @lvs_rh_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @lvs_groups, i32 0, i32 0), %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4310
@__exitcall_lvs_driver_exit = internal global void ()* @lvs_driver_exit, section ".exitcall.exit", align 8, !dbg !4292
@__UNIQUE_ID_description222 = internal constant [56 x i8] c"lvstest.description=Link Layer Validation System Driver\00", section ".modinfo", align 1, !dbg !4297
@__UNIQUE_ID_file223 = internal constant [38 x i8] c"lvstest.file=drivers/usb/misc/lvstest\00", section ".modinfo", align 1, !dbg !4302
@__UNIQUE_ID_license224 = internal constant [20 x i8] c"lvstest.license=GPL\00", section ".modinfo", align 1, !dbg !4307
@.str = private unnamed_addr constant [8 x i8] c"lvstest\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lvs\00", align 1
@lvs_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @lvs_group, %struct.attribute_group* null], align 16, !dbg !4371
@.str.2 = private unnamed_addr constant [39 x i8] c"Bind LVS driver with SS root Hub only\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"wrong root hub descriptor read %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"couldn't submit lvs urb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"urb resubmit error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@lvs_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([9 x %struct.attribute*], [9 x %struct.attribute*]* @lvs_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4374
@lvs_attrs = internal global [9 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_get_dev_desc, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_u1_timeout, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_u2_timeout, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_hot_reset, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_warm_reset, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_u3_entry, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_u3_exit, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_enable_compliance, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4376
@dev_attr_get_dev_desc = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @get_dev_desc_store }, align 8, !dbg !4379
@dev_attr_u1_timeout = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @u1_timeout_store }, align 8, !dbg !4393
@dev_attr_u2_timeout = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @u2_timeout_store }, align 8, !dbg !4395
@dev_attr_hot_reset = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hot_reset_store }, align 8, !dbg !4397
@dev_attr_warm_reset = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @warm_reset_store }, align 8, !dbg !4399
@dev_attr_u3_entry = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @u3_entry_store }, align 8, !dbg !4401
@dev_attr_u3_exit = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @u3_exit_store }, align 8, !dbg !4403
@dev_attr_enable_compliance = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @enable_compliance_store }, align 8, !dbg !4405
@.str.7 = private unnamed_addr constant [13 x i8] c"get_dev_desc\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to create lvs device\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"can't read device descriptor %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"No LVS device is present\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Could not allocate lvs udev\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Failed to enable\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"u1_timeout\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"couldn't parse string %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Error %d while setting U1 timeout %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"u2_timeout\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Error %d while setting U2 timeout %ld\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"hot_reset\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"can't issue hot reset %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"warm_reset\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"can't issue warm reset %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"u3_entry\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"can't issue U3 entry %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"u3_exit\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"can't issue U3 exit %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"enable_compliance\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"can't enable compliance mode %d\0A\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_lvs_driver_init221 to i8*), i8* bitcast (void ()* @lvs_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_lvs_driver_exit to i8*), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file223, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license224, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @lvs_driver_init() #0 section ".init.text" !dbg !4412 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @lvs_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4415
  ret i32 %call, !dbg !4415
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @lvs_driver_exit() #0 section ".exit.text" !dbg !4416 {
entry:
  call void @usb_deregister(%struct.usb_driver* @lvs_driver) #9, !dbg !4417
  ret void, !dbg !4417
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lvs_rh_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !4418 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %desc = alloca %struct.usb_host_interface*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %pipe = alloca i32, align 4
  %ret = alloca i32, align 4
  %maxp = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4419, metadata !DIExpression()), !dbg !4420
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4421, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !4423, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %desc, metadata !4425, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !4427, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4434, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata i32* %maxp, metadata !4436, metadata !DIExpression()), !dbg !4437
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4438
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4439
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !4440
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4441
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4442
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4442
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %desc, align 8, !dbg !4443
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %desc, align 8, !dbg !4444
  %call1 = call i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %3, %struct.usb_endpoint_descriptor** %endpoint) #9, !dbg !4445
  store i32 %call1, i32* %ret, align 4, !dbg !4446
  %4 = load i32, i32* %ret, align 4, !dbg !4447
  %tobool = icmp ne i32 %4, 0, !dbg !4447
  br i1 %tobool, label %if.then, label %if.end, !dbg !4449

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4450
  store i32 %5, i32* %retval, align 4, !dbg !4451
  br label %return, !dbg !4451

if.end:                                           ; preds = %entry
  %6 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4452
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 15, !dbg !4454
  %bDeviceProtocol = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 5, !dbg !4455
  %7 = load i8, i8* %bDeviceProtocol, align 2, !dbg !4455
  %conv = zext i8 %7 to i32, !dbg !4452
  %cmp = icmp ne i32 %conv, 3, !dbg !4456
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !4457

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4458
  %parent = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 11, !dbg !4459
  %9 = load %struct.usb_device*, %struct.usb_device** %parent, align 8, !dbg !4459
  %tobool3 = icmp ne %struct.usb_device* %9, null, !dbg !4458
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4460

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4461
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 7, !dbg !4461
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4461
  store i32 -22, i32* %retval, align 4, !dbg !4463
  br label %return, !dbg !4463

if.end5:                                          ; preds = %lor.lhs.false
  %11 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4464
  %dev6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 7, !dbg !4465
  %call7 = call i8* @devm_kzalloc(%struct.device* %dev6, i64 88, i32 3264) #9, !dbg !4466
  %12 = bitcast i8* %call7 to %struct.lvs_rh*, !dbg !4466
  store %struct.lvs_rh* %12, %struct.lvs_rh** %lvs, align 8, !dbg !4467
  %13 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4468
  %tobool8 = icmp ne %struct.lvs_rh* %13, null, !dbg !4468
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4470

if.then9:                                         ; preds = %if.end5
  store i32 -12, i32* %retval, align 4, !dbg !4471
  br label %return, !dbg !4471

if.end10:                                         ; preds = %if.end5
  %14 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4472
  %15 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4473
  %intf11 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %15, i32 0, i32 0, !dbg !4474
  store %struct.usb_interface* %14, %struct.usb_interface** %intf11, align 8, !dbg !4475
  %16 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4476
  %17 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4477
  %18 = bitcast %struct.lvs_rh* %17 to i8*, !dbg !4477
  call void @usb_set_intfdata(%struct.usb_interface* %16, i8* %18) #9, !dbg !4478
  %19 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4479
  %20 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4480
  %call12 = call i32 @__create_pipe(%struct.usb_device* %20, i32 0) #9, !dbg !4480
  %or = or i32 -2147483648, %call12, !dbg !4480
  %or13 = or i32 %or, 128, !dbg !4480
  %21 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4481
  %descriptor14 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %21, i32 0, i32 4, !dbg !4482
  %22 = bitcast %struct.usb_hub_descriptor* %descriptor14 to i8*, !dbg !4483
  %call15 = call i32 @usb_control_msg(%struct.usb_device* %19, i32 %or13, i8 zeroext 6, i8 zeroext -96, i16 zeroext 10752, i16 zeroext 0, i8* %22, i16 zeroext 12, i32 5000) #9, !dbg !4484
  store i32 %call15, i32* %ret, align 4, !dbg !4485
  %23 = load i32, i32* %ret, align 4, !dbg !4486
  %cmp16 = icmp slt i32 %23, 9, !dbg !4488
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !4489

if.then18:                                        ; preds = %if.end10
  %24 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4490
  %dev19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 14, !dbg !4490
  %25 = load i32, i32* %ret, align 4, !dbg !4490
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %25) #10, !dbg !4490
  %26 = load i32, i32* %ret, align 4, !dbg !4492
  %cmp20 = icmp slt i32 %26, 0, !dbg !4493
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !4492

cond.true:                                        ; preds = %if.then18
  %27 = load i32, i32* %ret, align 4, !dbg !4494
  br label %cond.end, !dbg !4492

cond.false:                                       ; preds = %if.then18
  br label %cond.end, !dbg !4492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ -22, %cond.false ], !dbg !4492
  store i32 %cond, i32* %retval, align 4, !dbg !4495
  br label %return, !dbg !4495

if.end22:                                         ; preds = %if.end10
  %call23 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4496
  %28 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4497
  %urb = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %28, i32 0, i32 5, !dbg !4498
  store %struct.urb* %call23, %struct.urb** %urb, align 8, !dbg !4499
  %29 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4500
  %urb24 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %29, i32 0, i32 5, !dbg !4502
  %30 = load %struct.urb*, %struct.urb** %urb24, align 8, !dbg !4502
  %tobool25 = icmp ne %struct.urb* %30, null, !dbg !4500
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4503

if.then26:                                        ; preds = %if.end22
  store i32 -12, i32* %retval, align 4, !dbg !4504
  br label %return, !dbg !4504

if.end27:                                         ; preds = %if.end22
  br label %do.body, !dbg !4505

do.body:                                          ; preds = %if.end27
  %31 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4506
  %rh_work = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %31, i32 0, i32 6, !dbg !4506
  call void @__init_work(%struct.work_struct* %rh_work, i32 0) #9, !dbg !4506
  %32 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4506
  %rh_work28 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %32, i32 0, i32 6, !dbg !4506
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %rh_work28, i32 0, i32 0, !dbg !4506
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4506
  store i64 68719476704, i64* %counter, align 8, !dbg !4506
  %33 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4506
  %34 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false), !dbg !4506
  %35 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4506
  %rh_work29 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %35, i32 0, i32 6, !dbg !4506
  %entry30 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %rh_work29, i32 0, i32 1, !dbg !4506
  call void @INIT_LIST_HEAD(%struct.list_head* %entry30) #9, !dbg !4506
  %36 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4506
  %rh_work31 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %36, i32 0, i32 6, !dbg !4506
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %rh_work31, i32 0, i32 2, !dbg !4506
  store void (%struct.work_struct*)* @lvs_rh_work, void (%struct.work_struct*)** %func, align 8, !dbg !4506
  br label %do.end, !dbg !4506

do.end:                                           ; preds = %do.body
  %37 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4508
  %38 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4508
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %38, i32 0, i32 2, !dbg !4508
  %39 = load i8, i8* %bEndpointAddress, align 1, !dbg !4508
  %conv32 = zext i8 %39 to i32, !dbg !4508
  %call33 = call i32 @__create_pipe(%struct.usb_device* %37, i32 %conv32) #9, !dbg !4508
  %or34 = or i32 1073741824, %call33, !dbg !4508
  %or35 = or i32 %or34, 128, !dbg !4508
  store i32 %or35, i32* %pipe, align 4, !dbg !4509
  %40 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4510
  %41 = load i32, i32* %pipe, align 4, !dbg !4511
  %42 = load i32, i32* %pipe, align 4, !dbg !4512
  %and = and i32 %42, 128, !dbg !4512
  %tobool36 = icmp ne i32 %and, 0, !dbg !4512
  %lnot = xor i1 %tobool36, true, !dbg !4512
  %lnot.ext = zext i1 %lnot to i32, !dbg !4512
  %call37 = call zeroext i16 @usb_maxpacket(%struct.usb_device* %40, i32 %41, i32 %lnot.ext) #9, !dbg !4513
  %conv38 = zext i16 %call37 to i32, !dbg !4513
  store i32 %conv38, i32* %maxp, align 4, !dbg !4514
  %43 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4515
  %urb39 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %43, i32 0, i32 5, !dbg !4516
  %44 = load %struct.urb*, %struct.urb** %urb39, align 8, !dbg !4516
  %45 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4517
  %46 = load i32, i32* %pipe, align 4, !dbg !4518
  %47 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4519
  %buffer = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %47, i32 0, i32 3, !dbg !4520
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %buffer, i64 0, i64 0, !dbg !4519
  %48 = load i32, i32* %maxp, align 4, !dbg !4521
  %49 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4522
  %50 = bitcast %struct.lvs_rh* %49 to i8*, !dbg !4522
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4523
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 5, !dbg !4524
  %52 = load i8, i8* %bInterval, align 1, !dbg !4524
  %conv40 = zext i8 %52 to i32, !dbg !4523
  call void @usb_fill_int_urb(%struct.urb* %44, %struct.usb_device* %45, i32 %46, i8* %arrayidx, i32 %48, void (%struct.urb*)* @lvs_rh_irq, i8* %50, i32 %conv40) #9, !dbg !4525
  %53 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4526
  %urb41 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %53, i32 0, i32 5, !dbg !4527
  %54 = load %struct.urb*, %struct.urb** %urb41, align 8, !dbg !4527
  %call42 = call i32 @usb_submit_urb(%struct.urb* %54, i32 3264) #9, !dbg !4528
  store i32 %call42, i32* %ret, align 4, !dbg !4529
  %55 = load i32, i32* %ret, align 4, !dbg !4530
  %cmp43 = icmp slt i32 %55, 0, !dbg !4532
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !4533

if.then45:                                        ; preds = %do.end
  %56 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4534
  %dev46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 7, !dbg !4534
  %57 = load i32, i32* %ret, align 4, !dbg !4534
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %57) #10, !dbg !4534
  br label %free_urb, !dbg !4536

if.end47:                                         ; preds = %do.end
  %58 = load i32, i32* %ret, align 4, !dbg !4537
  store i32 %58, i32* %retval, align 4, !dbg !4538
  br label %return, !dbg !4538

free_urb:                                         ; preds = %if.then45
  call void @llvm.dbg.label(metadata !4539), !dbg !4540
  %59 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4541
  %urb48 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %59, i32 0, i32 5, !dbg !4542
  %60 = load %struct.urb*, %struct.urb** %urb48, align 8, !dbg !4542
  call void @usb_free_urb(%struct.urb* %60) #9, !dbg !4543
  %61 = load i32, i32* %ret, align 4, !dbg !4544
  store i32 %61, i32* %retval, align 4, !dbg !4545
  br label %return, !dbg !4545

return:                                           ; preds = %free_urb, %if.end47, %if.then26, %cond.end, %if.then9, %if.then4, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !4546
  ret i32 %62, !dbg !4546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lvs_rh_disconnect(%struct.usb_interface* %intf) #2 !dbg !4547 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !4550, metadata !DIExpression()), !dbg !4551
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4552
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4553
  %1 = bitcast i8* %call to %struct.lvs_rh*, !dbg !4553
  store %struct.lvs_rh* %1, %struct.lvs_rh** %lvs, align 8, !dbg !4551
  %2 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4554
  %urb = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %2, i32 0, i32 5, !dbg !4555
  %3 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4555
  call void @usb_poison_urb(%struct.urb* %3) #9, !dbg !4556
  %4 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4557
  %rh_work = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %4, i32 0, i32 6, !dbg !4558
  %call1 = call zeroext i1 @flush_work(%struct.work_struct* %rh_work) #9, !dbg !4559
  %5 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4560
  %urb2 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %5, i32 0, i32 5, !dbg !4561
  %6 = load %struct.urb*, %struct.urb** %urb2, align 8, !dbg !4561
  call void @usb_free_urb(%struct.urb* %6) #9, !dbg !4562
  ret void, !dbg !4563
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4564 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4569, metadata !DIExpression()), !dbg !4571
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4571
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4571
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4571
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4571
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4571
  store i8* %2, i8** %__mptr, align 8, !dbg !4571
  br label %do.body, !dbg !4571

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4572

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4571
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4571
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4571
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4572
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4571
  ret %struct.usb_device* %5, !dbg !4574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %alt, %struct.usb_endpoint_descriptor** %int_in) #2 !dbg !4575 {
entry:
  %alt.addr = alloca %struct.usb_host_interface*, align 8
  %int_in.addr = alloca %struct.usb_endpoint_descriptor**, align 8
  store %struct.usb_host_interface* %alt, %struct.usb_host_interface** %alt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %alt.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store %struct.usb_endpoint_descriptor** %int_in, %struct.usb_endpoint_descriptor*** %int_in.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor*** %int_in.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  %0 = load %struct.usb_host_interface*, %struct.usb_host_interface** %alt.addr, align 8, !dbg !4583
  %1 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %int_in.addr, align 8, !dbg !4584
  %call = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %0, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** null) #9, !dbg !4585
  ret i32 %call, !dbg !4586
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4587 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4596
  %1 = load i64, i64* %size.addr, align 8, !dbg !4597
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4598
  %or = or i32 %2, 256, !dbg !4599
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #9, !dbg !4600
  ret i8* %call, !dbg !4601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4602 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4609
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4610
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4611
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4612
  ret void, !dbg !4613
}

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !4614 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4621
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !4622
  %1 = load i32, i32* %devnum, align 8, !dbg !4622
  %shl = shl i32 %1, 8, !dbg !4623
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !4624
  %shl1 = shl i32 %2, 15, !dbg !4625
  %or = or i32 %shl, %shl1, !dbg !4626
  ret i32 %or, !dbg !4627
}

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !4628 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  ret void, !dbg !4635
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !4636 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4640, metadata !DIExpression()), !dbg !4641
  br label %do.body, !dbg !4642

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4643

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4645

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4643

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4647
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4647
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4647
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4647
  br label %do.end3, !dbg !4647

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4643

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4649
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4650
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4651
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4652
  ret void, !dbg !4653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lvs_rh_work(%struct.work_struct* %work) #2 !dbg !4654 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lvs_rh*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %descriptor = alloca %struct.usb_hub_descriptor*, align 8
  %port_status = alloca %struct.usb_port_status*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %portchange = alloca i16, align 2
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4659, metadata !DIExpression()), !dbg !4661
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4661
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4661
  store i8* %1, i8** %__mptr, align 8, !dbg !4661
  br label %do.body, !dbg !4661

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4662

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4661
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !4661
  %3 = bitcast i8* %add.ptr to %struct.lvs_rh*, !dbg !4661
  store %struct.lvs_rh* %3, %struct.lvs_rh** %tmp, align 8, !dbg !4662
  %4 = load %struct.lvs_rh*, %struct.lvs_rh** %tmp, align 8, !dbg !4661
  store %struct.lvs_rh* %4, %struct.lvs_rh** %lvs, align 8, !dbg !4658
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4664, metadata !DIExpression()), !dbg !4665
  %5 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4666
  %intf1 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %5, i32 0, i32 0, !dbg !4667
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf1, align 8, !dbg !4667
  store %struct.usb_interface* %6, %struct.usb_interface** %intf, align 8, !dbg !4665
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !4668, metadata !DIExpression()), !dbg !4669
  %7 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4670
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7) #9, !dbg !4671
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !4669
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !4672, metadata !DIExpression()), !dbg !4673
  %8 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4674
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 12, !dbg !4675
  %9 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4675
  %call2 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %9) #9, !dbg !4676
  store %struct.usb_hcd* %call2, %struct.usb_hcd** %hcd, align 8, !dbg !4673
  call void @llvm.dbg.declare(metadata %struct.usb_hub_descriptor** %descriptor, metadata !4677, metadata !DIExpression()), !dbg !4679
  %10 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4680
  %descriptor3 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %10, i32 0, i32 4, !dbg !4681
  store %struct.usb_hub_descriptor* %descriptor3, %struct.usb_hub_descriptor** %descriptor, align 8, !dbg !4679
  call void @llvm.dbg.declare(metadata %struct.usb_port_status** %port_status, metadata !4682, metadata !DIExpression()), !dbg !4684
  %11 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4685
  %port_status4 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %11, i32 0, i32 7, !dbg !4686
  store %struct.usb_port_status* %port_status4, %struct.usb_port_status** %port_status, align 8, !dbg !4684
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4687, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4689, metadata !DIExpression()), !dbg !4690
  store i32 0, i32* %ret, align 4, !dbg !4690
  call void @llvm.dbg.declare(metadata i16* %portchange, metadata !4691, metadata !DIExpression()), !dbg !4692
  store i32 1, i32* %i, align 4, !dbg !4693
  br label %for.cond, !dbg !4695

for.cond:                                         ; preds = %for.inc, %do.end
  %12 = load i32, i32* %i, align 4, !dbg !4696
  %13 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %descriptor, align 8, !dbg !4698
  %bNbrPorts = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %13, i32 0, i32 2, !dbg !4699
  %14 = load i8, i8* %bNbrPorts, align 1, !dbg !4699
  %conv = zext i8 %14 to i32, !dbg !4698
  %cmp = icmp sle i32 %12, %conv, !dbg !4700
  br i1 %cmp, label %for.body, label %for.end, !dbg !4701

for.body:                                         ; preds = %for.cond
  %15 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4702
  %16 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4704
  %call6 = call i32 @__create_pipe(%struct.usb_device* %16, i32 0) #9, !dbg !4704
  %or = or i32 -2147483648, %call6, !dbg !4704
  %or7 = or i32 %or, 128, !dbg !4704
  %17 = load i32, i32* %i, align 4, !dbg !4705
  %conv8 = trunc i32 %17 to i16, !dbg !4705
  %18 = load %struct.usb_port_status*, %struct.usb_port_status** %port_status, align 8, !dbg !4706
  %19 = bitcast %struct.usb_port_status* %18 to i8*, !dbg !4706
  %call9 = call i32 @usb_control_msg(%struct.usb_device* %15, i32 %or7, i8 zeroext 0, i8 zeroext -93, i16 zeroext 0, i16 zeroext %conv8, i8* %19, i16 zeroext 8, i32 1000) #9, !dbg !4707
  store i32 %call9, i32* %ret, align 4, !dbg !4708
  %20 = load i32, i32* %ret, align 4, !dbg !4709
  %cmp10 = icmp slt i32 %20, 4, !dbg !4711
  br i1 %cmp10, label %if.then, label %if.end, !dbg !4712

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4713

if.end:                                           ; preds = %for.body
  %21 = load %struct.usb_port_status*, %struct.usb_port_status** %port_status, align 8, !dbg !4714
  %wPortChange = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %21, i32 0, i32 1, !dbg !4714
  %22 = load i16, i16* %wPortChange, align 1, !dbg !4714
  store i16 %22, i16* %portchange, align 2, !dbg !4715
  %23 = load i16, i16* %portchange, align 2, !dbg !4716
  %conv12 = zext i16 %23 to i32, !dbg !4716
  %and = and i32 %conv12, 64, !dbg !4718
  %tobool = icmp ne i32 %and, 0, !dbg !4718
  br i1 %tobool, label %if.then13, label %if.end15, !dbg !4719

if.then13:                                        ; preds = %if.end
  %24 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4720
  %25 = load i32, i32* %i, align 4, !dbg !4721
  %call14 = call i32 @lvs_rh_clear_port_feature(%struct.usb_device* %24, i32 %25, i32 25) #9, !dbg !4722
  br label %if.end15, !dbg !4722

if.end15:                                         ; preds = %if.then13, %if.end
  %26 = load i16, i16* %portchange, align 2, !dbg !4723
  %conv16 = zext i16 %26 to i32, !dbg !4723
  %and17 = and i32 %conv16, 2, !dbg !4725
  %tobool18 = icmp ne i32 %and17, 0, !dbg !4725
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !4726

if.then19:                                        ; preds = %if.end15
  %27 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4727
  %28 = load i32, i32* %i, align 4, !dbg !4728
  %call20 = call i32 @lvs_rh_clear_port_feature(%struct.usb_device* %27, i32 %28, i32 17) #9, !dbg !4729
  br label %if.end21, !dbg !4729

if.end21:                                         ; preds = %if.then19, %if.end15
  %29 = load i16, i16* %portchange, align 2, !dbg !4730
  %conv22 = zext i16 %29 to i32, !dbg !4730
  %and23 = and i32 %conv22, 16, !dbg !4732
  %tobool24 = icmp ne i32 %and23, 0, !dbg !4732
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !4733

if.then25:                                        ; preds = %if.end21
  %30 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4734
  %31 = load i32, i32* %i, align 4, !dbg !4735
  %call26 = call i32 @lvs_rh_clear_port_feature(%struct.usb_device* %30, i32 %31, i32 20) #9, !dbg !4736
  br label %if.end27, !dbg !4736

if.end27:                                         ; preds = %if.then25, %if.end21
  %32 = load i16, i16* %portchange, align 2, !dbg !4737
  %conv28 = zext i16 %32 to i32, !dbg !4737
  %and29 = and i32 %conv28, 32, !dbg !4739
  %tobool30 = icmp ne i32 %and29, 0, !dbg !4739
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !4740

if.then31:                                        ; preds = %if.end27
  %33 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4741
  %34 = load i32, i32* %i, align 4, !dbg !4742
  %call32 = call i32 @lvs_rh_clear_port_feature(%struct.usb_device* %33, i32 %34, i32 29) #9, !dbg !4743
  br label %if.end33, !dbg !4743

if.end33:                                         ; preds = %if.then31, %if.end27
  %35 = load i16, i16* %portchange, align 2, !dbg !4744
  %conv34 = zext i16 %35 to i32, !dbg !4744
  %and35 = and i32 %conv34, 1, !dbg !4746
  %tobool36 = icmp ne i32 %and35, 0, !dbg !4746
  br i1 %tobool36, label %if.then37, label %if.end56, !dbg !4747

if.then37:                                        ; preds = %if.end33
  %36 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !4748
  %37 = load i32, i32* %i, align 4, !dbg !4750
  %call38 = call i32 @lvs_rh_clear_port_feature(%struct.usb_device* %36, i32 %37, i32 16) #9, !dbg !4751
  %38 = load %struct.usb_port_status*, %struct.usb_port_status** %port_status, align 8, !dbg !4752
  %wPortStatus = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %38, i32 0, i32 0, !dbg !4752
  %39 = load i16, i16* %wPortStatus, align 1, !dbg !4752
  %conv39 = zext i16 %39 to i32, !dbg !4752
  %and40 = and i32 %conv39, 1, !dbg !4754
  %tobool41 = icmp ne i32 %and40, 0, !dbg !4754
  br i1 %tobool41, label %if.then42, label %if.else, !dbg !4755

if.then42:                                        ; preds = %if.then37
  %40 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4756
  %present = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %40, i32 0, i32 1, !dbg !4758
  store i8 1, i8* %present, align 8, !dbg !4759
  %41 = load i32, i32* %i, align 4, !dbg !4760
  %42 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4761
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %42, i32 0, i32 2, !dbg !4762
  store i32 %41, i32* %portnum, align 4, !dbg !4763
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4764
  %usb_phy = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 10, !dbg !4766
  %44 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !4766
  %tobool43 = icmp ne %struct.usb_phy* %44, null, !dbg !4764
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !4767

if.then44:                                        ; preds = %if.then42
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4768
  %usb_phy45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %45, i32 0, i32 10, !dbg !4769
  %46 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy45, align 8, !dbg !4769
  %call46 = call i32 @usb_phy_notify_connect(%struct.usb_phy* %46, i32 5) #9, !dbg !4770
  br label %if.end47, !dbg !4770

if.end47:                                         ; preds = %if.then44, %if.then42
  br label %if.end55, !dbg !4771

if.else:                                          ; preds = %if.then37
  %47 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4772
  %present48 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %47, i32 0, i32 1, !dbg !4774
  store i8 0, i8* %present48, align 8, !dbg !4775
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4776
  %usb_phy49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 10, !dbg !4778
  %49 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy49, align 8, !dbg !4778
  %tobool50 = icmp ne %struct.usb_phy* %49, null, !dbg !4776
  br i1 %tobool50, label %if.then51, label %if.end54, !dbg !4779

if.then51:                                        ; preds = %if.else
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4780
  %usb_phy52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 10, !dbg !4781
  %51 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy52, align 8, !dbg !4781
  %call53 = call i32 @usb_phy_notify_disconnect(%struct.usb_phy* %51, i32 5) #9, !dbg !4782
  br label %if.end54, !dbg !4782

if.end54:                                         ; preds = %if.then51, %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end47
  br label %for.end, !dbg !4783

if.end56:                                         ; preds = %if.end33
  br label %for.inc, !dbg !4784

for.inc:                                          ; preds = %if.end56, %if.then
  %52 = load i32, i32* %i, align 4, !dbg !4785
  %inc = add i32 %52, 1, !dbg !4785
  store i32 %inc, i32* %i, align 4, !dbg !4785
  br label %for.cond, !dbg !4786, !llvm.loop !4787

for.end:                                          ; preds = %if.end55, %for.cond
  %53 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4789
  %urb = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %53, i32 0, i32 5, !dbg !4790
  %54 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4790
  %call57 = call i32 @usb_submit_urb(%struct.urb* %54, i32 3264) #9, !dbg !4791
  store i32 %call57, i32* %ret, align 4, !dbg !4792
  %55 = load i32, i32* %ret, align 4, !dbg !4793
  %cmp58 = icmp ne i32 %55, 0, !dbg !4795
  br i1 %cmp58, label %land.lhs.true, label %if.end66, !dbg !4796

land.lhs.true:                                    ; preds = %for.end
  %56 = load i32, i32* %ret, align 4, !dbg !4797
  %cmp60 = icmp ne i32 %56, -19, !dbg !4798
  br i1 %cmp60, label %land.lhs.true62, label %if.end66, !dbg !4799

land.lhs.true62:                                  ; preds = %land.lhs.true
  %57 = load i32, i32* %ret, align 4, !dbg !4800
  %cmp63 = icmp ne i32 %57, -1, !dbg !4801
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !4802

if.then65:                                        ; preds = %land.lhs.true62
  %58 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4803
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 7, !dbg !4803
  %59 = load i32, i32* %ret, align 4, !dbg !4803
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %59) #10, !dbg !4803
  br label %if.end66, !dbg !4803

if.end66:                                         ; preds = %if.then65, %land.lhs.true62, %land.lhs.true, %for.end
  ret void, !dbg !4804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @usb_maxpacket(%struct.usb_device* %udev, i32 %pipe, i32 %is_out) #2 !dbg !4805 {
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
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  store i32 %is_out, i32* %is_out.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_out.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.declare(metadata %struct.usb_host_endpoint** %ep, metadata !4814, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.declare(metadata i32* %epnum, metadata !4816, metadata !DIExpression()), !dbg !4817
  %0 = load i32, i32* %pipe.addr, align 4, !dbg !4818
  %shr = ashr i32 %0, 15, !dbg !4818
  %and = and i32 %shr, 15, !dbg !4818
  store i32 %and, i32* %epnum, align 4, !dbg !4817
  %1 = load i32, i32* %is_out.addr, align 4, !dbg !4819
  %tobool = icmp ne i32 %1, 0, !dbg !4819
  br i1 %tobool, label %if.then, label %if.else, !dbg !4821

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4822, metadata !DIExpression()), !dbg !4825
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !4825
  %and1 = and i32 %2, 128, !dbg !4825
  %tobool2 = icmp ne i32 %and1, 0, !dbg !4825
  %lnot = xor i1 %tobool2, true, !dbg !4825
  %lnot3 = xor i1 %lnot, true, !dbg !4825
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4825
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4825
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4826
  %tobool4 = icmp ne i32 %3, 0, !dbg !4826
  %lnot5 = xor i1 %tobool4, true, !dbg !4826
  %lnot7 = xor i1 %lnot5, true, !dbg !4826
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4826
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4826
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4826
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !4825

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !4826

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !4828

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !4830

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !4828

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 1986, i32 2305, i64 12) #11, !dbg !4832, !srcloc !4834
  br label %do.end13, !dbg !4832

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #11, !dbg !4835, !srcloc !4837
  br label %do.body14, !dbg !4828

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4838

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !4828

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %do.end16, %if.then
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4825
  %tobool17 = icmp ne i32 %4, 0, !dbg !4825
  %lnot18 = xor i1 %tobool17, true, !dbg !4825
  %lnot20 = xor i1 %lnot18, true, !dbg !4825
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4825
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4825
  store i64 %conv22, i64* %tmp, align 8, !dbg !4826
  %5 = load i64, i64* %tmp, align 8, !dbg !4825
  %6 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4840
  %ep_out = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 21, !dbg !4841
  %7 = load i32, i32* %epnum, align 4, !dbg !4842
  %idxprom = zext i32 %7 to i64, !dbg !4840
  %arrayidx = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_out, i64 0, i64 %idxprom, !dbg !4840
  %8 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx, align 8, !dbg !4840
  store %struct.usb_host_endpoint* %8, %struct.usb_host_endpoint** %ep, align 8, !dbg !4843
  br label %if.end58, !dbg !4844

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on23, metadata !4845, metadata !DIExpression()), !dbg !4848
  %9 = load i32, i32* %pipe.addr, align 4, !dbg !4848
  %and24 = and i32 %9, 128, !dbg !4848
  %tobool25 = icmp ne i32 %and24, 0, !dbg !4848
  %lnot26 = xor i1 %tobool25, true, !dbg !4848
  %lnot28 = xor i1 %lnot26, true, !dbg !4848
  %lnot30 = xor i1 %lnot28, true, !dbg !4848
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !4848
  store i32 %lnot.ext31, i32* %__ret_warn_on23, align 4, !dbg !4848
  %10 = load i32, i32* %__ret_warn_on23, align 4, !dbg !4849
  %tobool32 = icmp ne i32 %10, 0, !dbg !4849
  %lnot33 = xor i1 %tobool32, true, !dbg !4849
  %lnot35 = xor i1 %lnot33, true, !dbg !4849
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !4849
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !4849
  %tobool38 = icmp ne i64 %conv37, 0, !dbg !4849
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !4848

if.then39:                                        ; preds = %if.else
  br label %do.body40, !dbg !4849

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !4851

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !4853

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !4851

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 1989, i32 2305, i64 12) #11, !dbg !4855, !srcloc !4857
  br label %do.end44, !dbg !4855

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #11, !dbg !4858, !srcloc !4860
  br label %do.body45, !dbg !4851

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !4861

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !4851

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !4851

if.end48:                                         ; preds = %do.end47, %if.else
  %11 = load i32, i32* %__ret_warn_on23, align 4, !dbg !4848
  %tobool50 = icmp ne i32 %11, 0, !dbg !4848
  %lnot51 = xor i1 %tobool50, true, !dbg !4848
  %lnot53 = xor i1 %lnot51, true, !dbg !4848
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !4848
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !4848
  store i64 %conv55, i64* %tmp49, align 8, !dbg !4849
  %12 = load i64, i64* %tmp49, align 8, !dbg !4848
  %13 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4863
  %ep_in = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 20, !dbg !4864
  %14 = load i32, i32* %epnum, align 4, !dbg !4865
  %idxprom56 = zext i32 %14 to i64, !dbg !4863
  %arrayidx57 = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_in, i64 0, i64 %idxprom56, !dbg !4863
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx57, align 8, !dbg !4863
  store %struct.usb_host_endpoint* %15, %struct.usb_host_endpoint** %ep, align 8, !dbg !4866
  br label %if.end58

if.end58:                                         ; preds = %if.end48, %if.end
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !4867
  %tobool59 = icmp ne %struct.usb_host_endpoint* %16, null, !dbg !4867
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !4869

if.then60:                                        ; preds = %if.end58
  store i16 0, i16* %retval, align 2, !dbg !4870
  br label %return, !dbg !4870

if.end61:                                         ; preds = %if.end58
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !4871
  %desc = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 0, !dbg !4872
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %desc) #9, !dbg !4873
  %conv62 = trunc i32 %call to i16, !dbg !4873
  store i16 %conv62, i16* %retval, align 2, !dbg !4874
  br label %return, !dbg !4874

return:                                           ; preds = %if.end61, %if.then60
  %18 = load i16, i16* %retval, align 2, !dbg !4875
  ret i16 %18, !dbg !4875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !4876 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4879, metadata !DIExpression()), !dbg !4880
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4881, metadata !DIExpression()), !dbg !4882
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4895
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4896
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !4897
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !4898
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !4899
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4900
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !4901
  store i32 %2, i32* %pipe2, align 8, !dbg !4902
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !4903
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4904
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !4905
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !4906
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !4907
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4908
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !4909
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !4910
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !4911
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4912
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !4913
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !4914
  %10 = load i8*, i8** %context.addr, align 8, !dbg !4915
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4916
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !4917
  store i8* %10, i8** %context4, align 8, !dbg !4918
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4919
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !4921
  %13 = load i32, i32* %speed, align 4, !dbg !4921
  %cmp = icmp eq i32 %13, 3, !dbg !4922
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4923

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4924
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !4925
  %15 = load i32, i32* %speed5, align 4, !dbg !4925
  %cmp6 = icmp uge i32 %15, 5, !dbg !4926
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4927

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !4928, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !4932, metadata !DIExpression()), !dbg !4934
  %16 = load i32, i32* %interval.addr, align 4, !dbg !4934
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !4934
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !4935, metadata !DIExpression()), !dbg !4934
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !4934
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !4934
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !4934
  %cmp7 = icmp sgt i32 %17, %18, !dbg !4934
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !4934

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !4934
  br label %cond.end, !dbg !4934

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !4934
  br label %cond.end, !dbg !4934

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !4934
  store i32 %cond, i32* %tmp, align 4, !dbg !4934
  %21 = load i32, i32* %tmp, align 4, !dbg !4934
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !4931
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !4936, metadata !DIExpression()), !dbg !4931
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !4931
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !4931
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !4931
  %cmp9 = icmp slt i32 %22, %23, !dbg !4931
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !4931

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !4931
  br label %cond.end12, !dbg !4931

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !4931
  br label %cond.end12, !dbg !4931

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !4931
  store i32 %cond13, i32* %tmp8, align 4, !dbg !4931
  %26 = load i32, i32* %tmp8, align 4, !dbg !4931
  store i32 %26, i32* %interval.addr, align 4, !dbg !4937
  %27 = load i32, i32* %interval.addr, align 4, !dbg !4938
  %sub = sub i32 %27, 1, !dbg !4939
  %shl = shl i32 1, %sub, !dbg !4940
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4941
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !4942
  store i32 %shl, i32* %interval14, align 8, !dbg !4943
  br label %if.end, !dbg !4944

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !4945
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4947
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !4948
  store i32 %29, i32* %interval15, align 8, !dbg !4949
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4950
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !4951
  store i32 -1, i32* %start_frame, align 8, !dbg !4952
  ret void, !dbg !4953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lvs_rh_irq(%struct.urb* %urb) #2 !dbg !4954 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4955, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4959
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !4960
  %1 = load i8*, i8** %context, align 8, !dbg !4960
  %2 = bitcast i8* %1 to %struct.lvs_rh*, !dbg !4959
  store %struct.lvs_rh* %2, %struct.lvs_rh** %lvs, align 8, !dbg !4958
  %3 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !4961
  %rh_work = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %3, i32 0, i32 6, !dbg !4962
  %call = call zeroext i1 @schedule_work(%struct.work_struct* %rh_work) #9, !dbg !4963
  ret void, !dbg !4964
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4965 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4972
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4973
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4974
  store i8* %0, i8** %driver_data, align 8, !dbg !4975
  ret void, !dbg !4976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %bus) #2 !dbg !4977 {
entry:
  %bus.addr = alloca %struct.usb_bus*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_hcd*, align 8
  store %struct.usb_bus* %bus, %struct.usb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_bus** %bus.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4982, metadata !DIExpression()), !dbg !4984
  %0 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4984
  %1 = bitcast %struct.usb_bus* %0 to i8*, !dbg !4984
  store i8* %1, i8** %__mptr, align 8, !dbg !4984
  br label %do.body, !dbg !4984

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4985

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4984
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4984
  %3 = bitcast i8* %add.ptr to %struct.usb_hcd*, !dbg !4984
  store %struct.usb_hcd* %3, %struct.usb_hcd** %tmp, align 8, !dbg !4985
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %tmp, align 8, !dbg !4984
  ret %struct.usb_hcd* %4, !dbg !4987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lvs_rh_clear_port_feature(%struct.usb_device* %hdev, i32 %port1, i32 %feature) #2 !dbg !4988 {
entry:
  %hdev.addr = alloca %struct.usb_device*, align 8
  %port1.addr = alloca i32, align 4
  %feature.addr = alloca i32, align 4
  store %struct.usb_device* %hdev, %struct.usb_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i32 %port1, i32* %port1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port1.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load %struct.usb_device*, %struct.usb_device** %hdev.addr, align 8, !dbg !4997
  %1 = load %struct.usb_device*, %struct.usb_device** %hdev.addr, align 8, !dbg !4998
  %call = call i32 @__create_pipe(%struct.usb_device* %1, i32 0) #9, !dbg !4998
  %or = or i32 -2147483648, %call, !dbg !4998
  %2 = load i32, i32* %feature.addr, align 4, !dbg !4999
  %conv = trunc i32 %2 to i16, !dbg !4999
  %3 = load i32, i32* %port1.addr, align 4, !dbg !5000
  %conv1 = trunc i32 %3 to i16, !dbg !5000
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %0, i32 %or, i8 zeroext 1, i8 zeroext 35, i16 zeroext %conv, i16 zeroext %conv1, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !5001
  ret i32 %call2, !dbg !5002
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_phy_notify_connect(%struct.usb_phy* %x, i32 %speed) #2 !dbg !5003 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.usb_phy*, align 8
  %speed.addr = alloca i32, align 4
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5008
  %tobool = icmp ne %struct.usb_phy* %0, null, !dbg !5008
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5010

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5011
  %notify_connect = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 28, !dbg !5012
  %2 = load i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)** %notify_connect, align 8, !dbg !5012
  %tobool1 = icmp ne i32 (%struct.usb_phy*, i32)* %2, null, !dbg !5011
  br i1 %tobool1, label %if.then, label %if.else, !dbg !5013

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5014
  %notify_connect2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 28, !dbg !5015
  %4 = load i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)** %notify_connect2, align 8, !dbg !5015
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5016
  %6 = load i32, i32* %speed.addr, align 4, !dbg !5017
  %call = call i32 %4(%struct.usb_phy* %5, i32 %6) #9, !dbg !5014
  store i32 %call, i32* %retval, align 4, !dbg !5018
  br label %return, !dbg !5018

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5020
  ret i32 %7, !dbg !5020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_phy_notify_disconnect(%struct.usb_phy* %x, i32 %speed) #2 !dbg !5021 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.usb_phy*, align 8
  %speed.addr = alloca i32, align 4
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5026
  %tobool = icmp ne %struct.usb_phy* %0, null, !dbg !5026
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5028

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5029
  %notify_disconnect = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 29, !dbg !5030
  %2 = load i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)** %notify_disconnect, align 8, !dbg !5030
  %tobool1 = icmp ne i32 (%struct.usb_phy*, i32)* %2, null, !dbg !5029
  br i1 %tobool1, label %if.then, label %if.else, !dbg !5031

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5032
  %notify_disconnect2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 29, !dbg !5033
  %4 = load i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)** %notify_disconnect2, align 8, !dbg !5033
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5034
  %6 = load i32, i32* %speed.addr, align 4, !dbg !5035
  %call = call i32 %4(%struct.usb_phy* %5, i32 %6) #9, !dbg !5032
  store i32 %call, i32* %retval, align 4, !dbg !5036
  br label %return, !dbg !5036

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5038
  ret i32 %7, !dbg !5038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5039 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5046
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5046
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5046
  %conv = zext i16 %1 to i32, !dbg !5046
  %and = and i32 %conv, 2047, !dbg !5047
  ret i32 %and, !dbg !5048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #2 !dbg !5049 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !5054
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5055
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !5056
  ret i1 %call, !dbg !5057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #2 !dbg !5058 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5065
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5066
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !5067
  ret i1 %call, !dbg !5068
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !5069 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5074
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5075
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !5076
  ret i8* %call, !dbg !5077
}

; Function Attrs: noredzone
declare dso_local void @usb_poison_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @flush_work(%struct.work_struct*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5078 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5085
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5086
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5086
  ret i8* %1, !dbg !5087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get_dev_desc_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5088 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5089, metadata !DIExpression()), !dbg !5093
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5101, metadata !DIExpression()), !dbg !5102
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5103, metadata !DIExpression()), !dbg !5104
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5105, metadata !DIExpression()), !dbg !5106
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5107, metadata !DIExpression()), !dbg !5111
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5113, metadata !DIExpression()), !dbg !5117
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5119, metadata !DIExpression()), !dbg !5123
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5128, metadata !DIExpression()), !dbg !5129
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5130, metadata !DIExpression()), !dbg !5131
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5132, metadata !DIExpression()), !dbg !5133
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5134, metadata !DIExpression()), !dbg !5135
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5136, metadata !DIExpression()), !dbg !5137
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5138, metadata !DIExpression()), !dbg !5139
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5140, metadata !DIExpression()), !dbg !5141
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5142, metadata !DIExpression()), !dbg !5143
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %descriptor = alloca %struct.usb_device_descriptor*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5154, metadata !DIExpression()), !dbg !5156
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5156
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5156
  store i8* %1, i8** %__mptr, align 8, !dbg !5156
  br label %do.body, !dbg !5156

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5157

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5156
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5156
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5156
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5157
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5156
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5153
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5159, metadata !DIExpression()), !dbg !5160
  call void @llvm.dbg.declare(metadata %struct.usb_device_descriptor** %descriptor, metadata !5161, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5164, metadata !DIExpression()), !dbg !5165
  store i64 18, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5166
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #11, !dbg !5167
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !5168

if.then.i:                                        ; preds = %do.end
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !5169
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !5170
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5171

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !5172
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !5173
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !5174
  %call.i.i = call i32 @get_order(i64 %10) #12, !dbg !5175
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5137
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !5176
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5177
  %13 = load i32, i32* %order.i.i, align 4, !dbg !5178
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5179
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5180
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5181
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #13, !dbg !5182
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5182
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5182
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5182
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5182
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5183
  br label %kmalloc.exit, !dbg !5183

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !5184
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5185
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !5185
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5187

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5188
  br label %kmalloc_index.exit.i, !dbg !5188

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5189
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !5191
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5192

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5193
  br label %kmalloc_index.exit.i, !dbg !5193

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5194
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !5196
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5197

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5198
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !5199
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5200

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5201
  br label %kmalloc_index.exit.i, !dbg !5201

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5202
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !5204
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5205

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5206
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !5207
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5208

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5209
  br label %kmalloc_index.exit.i, !dbg !5209

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5210
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !5212
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5213

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5214
  br label %kmalloc_index.exit.i, !dbg !5214

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5215
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !5217
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5218

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5219
  br label %kmalloc_index.exit.i, !dbg !5219

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5220
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !5222
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5223

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5224
  br label %kmalloc_index.exit.i, !dbg !5224

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5225
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !5227
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5228

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5229
  br label %kmalloc_index.exit.i, !dbg !5229

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5230
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !5232
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5233

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5234
  br label %kmalloc_index.exit.i, !dbg !5234

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5235
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !5237
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5238

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5239
  br label %kmalloc_index.exit.i, !dbg !5239

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5240
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !5242
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5243

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5244
  br label %kmalloc_index.exit.i, !dbg !5244

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5245
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !5247
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5248

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5249
  br label %kmalloc_index.exit.i, !dbg !5249

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5250
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !5252
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5253

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5254
  br label %kmalloc_index.exit.i, !dbg !5254

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5255
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !5257
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5258

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5259
  br label %kmalloc_index.exit.i, !dbg !5259

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5260
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !5262
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5263

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5264
  br label %kmalloc_index.exit.i, !dbg !5264

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5265
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !5267
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5268

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5269
  br label %kmalloc_index.exit.i, !dbg !5269

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5270
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !5272
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5273

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5274
  br label %kmalloc_index.exit.i, !dbg !5274

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5275
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !5277
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5278

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5279
  br label %kmalloc_index.exit.i, !dbg !5279

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5280
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !5282
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5283

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5284
  br label %kmalloc_index.exit.i, !dbg !5284

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5285
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !5287
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5288

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5289
  br label %kmalloc_index.exit.i, !dbg !5289

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5290
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !5292
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5293

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5294
  br label %kmalloc_index.exit.i, !dbg !5294

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5295
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !5297
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5298

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5299
  br label %kmalloc_index.exit.i, !dbg !5299

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5300
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !5302
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5303

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5304
  br label %kmalloc_index.exit.i, !dbg !5304

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5305
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !5307
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5308

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5309
  br label %kmalloc_index.exit.i, !dbg !5309

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5310
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !5312
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5313

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5314
  br label %kmalloc_index.exit.i, !dbg !5314

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5315
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !5317
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5318

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5319
  br label %kmalloc_index.exit.i, !dbg !5319

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5320
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !5322
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5323

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5324
  br label %kmalloc_index.exit.i, !dbg !5324

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5325
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !5327
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5328

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5329
  br label %kmalloc_index.exit.i, !dbg !5329

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5330, !srcloc !5333
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #11, !dbg !5334, !srcloc !5337
  unreachable, !dbg !5338

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !5339
  store i32 %48, i32* %index.i, align 4, !dbg !5340
  %49 = load i32, i32* %index.i, align 4, !dbg !5341
  %tobool.i = icmp ne i32 %49, 0, !dbg !5341
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5343

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5344
  br label %kmalloc.exit, !dbg !5344

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !5345
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5346
  %and.i.i = and i32 %51, 17, !dbg !5346
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5346
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5346
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5346
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5346
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5348

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5349
  br label %kmalloc_type.exit.i, !dbg !5349

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5350
  %and2.i.i = and i32 %52, 1, !dbg !5351
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5350
  %53 = zext i1 %tobool3.i.i to i64, !dbg !5350
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5350
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5352
  br label %kmalloc_type.exit.i, !dbg !5352

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !5353
  %idxprom.i = zext i32 %54 to i64, !dbg !5354
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5354
  %55 = load i32, i32* %index.i, align 4, !dbg !5355
  %idxprom6.i = zext i32 %55 to i64, !dbg !5354
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5354
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5354
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !5356
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !5357
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5358
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5359
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #13, !dbg !5360
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5360
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5360
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5360
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5360
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5106
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5361
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5362
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5363
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5364
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #13, !dbg !5365
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5366
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !5367
  store i8* %65, i8** %retval.i, align 8, !dbg !5368
  br label %kmalloc.exit, !dbg !5368

if.end9.i:                                        ; preds = %do.end
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !5369
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !5370
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #13, !dbg !5371
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5371
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5371
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5371
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5371
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5372
  br label %kmalloc.exit, !dbg !5372

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !5373
  %69 = bitcast i8* %68 to %struct.usb_device_descriptor*, !dbg !5374
  store %struct.usb_device_descriptor* %69, %struct.usb_device_descriptor** %descriptor, align 8, !dbg !5375
  %70 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %descriptor, align 8, !dbg !5376
  %tobool = icmp ne %struct.usb_device_descriptor* %70, null, !dbg !5376
  br i1 %tobool, label %if.end, label %if.then, !dbg !5378

if.then:                                          ; preds = %kmalloc.exit
  store i64 -12, i64* %retval, align 8, !dbg !5379
  br label %return, !dbg !5379

if.end:                                           ; preds = %kmalloc.exit
  %71 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5380
  %call1 = call %struct.usb_device* @create_lvs_device(%struct.usb_interface* %71) #9, !dbg !5381
  store %struct.usb_device* %call1, %struct.usb_device** %udev, align 8, !dbg !5382
  %72 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5383
  %tobool2 = icmp ne %struct.usb_device* %72, null, !dbg !5383
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5385

if.then3:                                         ; preds = %if.end
  %73 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5386
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5386
  store i32 -12, i32* %ret, align 4, !dbg !5388
  br label %free_desc, !dbg !5389

if.end4:                                          ; preds = %if.end
  %74 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5390
  %75 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %descriptor, align 8, !dbg !5391
  %76 = bitcast %struct.usb_device_descriptor* %75 to i8*, !dbg !5391
  %call5 = call i32 @usb_control_msg(%struct.usb_device* %74, i32 -2147483520, i8 zeroext 6, i8 zeroext -128, i16 zeroext 256, i16 zeroext 0, i8* %76, i16 zeroext 18, i32 5000) #9, !dbg !5392
  store i32 %call5, i32* %ret, align 4, !dbg !5393
  %77 = load i32, i32* %ret, align 4, !dbg !5394
  %cmp = icmp slt i32 %77, 0, !dbg !5396
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5397

if.then6:                                         ; preds = %if.end4
  %78 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5398
  %79 = load i32, i32* %ret, align 4, !dbg !5398
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %79) #10, !dbg !5398
  br label %if.end7, !dbg !5398

if.end7:                                          ; preds = %if.then6, %if.end4
  %80 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5399
  call void @destroy_lvs_device(%struct.usb_device* %80) #9, !dbg !5400
  br label %free_desc, !dbg !5400

free_desc:                                        ; preds = %if.end7, %if.then3
  call void @llvm.dbg.label(metadata !5401), !dbg !5402
  %81 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %descriptor, align 8, !dbg !5403
  %82 = bitcast %struct.usb_device_descriptor* %81 to i8*, !dbg !5403
  call void @kfree(i8* %82) #9, !dbg !5404
  %83 = load i32, i32* %ret, align 4, !dbg !5405
  %cmp8 = icmp slt i32 %83, 0, !dbg !5407
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5408

if.then9:                                         ; preds = %free_desc
  %84 = load i32, i32* %ret, align 4, !dbg !5409
  %conv = sext i32 %84 to i64, !dbg !5409
  store i64 %conv, i64* %retval, align 8, !dbg !5410
  br label %return, !dbg !5410

if.end10:                                         ; preds = %free_desc
  %85 = load i64, i64* %count.addr, align 8, !dbg !5411
  store i64 %85, i64* %retval, align 8, !dbg !5412
  br label %return, !dbg !5412

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %86 = load i64, i64* %retval, align 8, !dbg !5413
  ret i64 %86, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @create_lvs_device(%struct.usb_interface* %intf) #2 !dbg !5414 {
entry:
  %retval = alloca %struct.usb_device*, align 8
  %intf.addr = alloca %struct.usb_interface*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5417, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5419, metadata !DIExpression()), !dbg !5420
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5421, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5423, metadata !DIExpression()), !dbg !5424
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5425
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5426
  %1 = bitcast i8* %call to %struct.lvs_rh*, !dbg !5426
  store %struct.lvs_rh* %1, %struct.lvs_rh** %lvs, align 8, !dbg !5424
  %2 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5427
  %present = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %2, i32 0, i32 1, !dbg !5429
  %3 = load i8, i8* %present, align 8, !dbg !5429
  %tobool = trunc i8 %3 to i1, !dbg !5429
  br i1 %tobool, label %if.end, label %if.then, !dbg !5430

if.then:                                          ; preds = %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5431
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 7, !dbg !5431
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !5431
  store %struct.usb_device* null, %struct.usb_device** %retval, align 8, !dbg !5433
  br label %return, !dbg !5433

if.end:                                           ; preds = %entry
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5434
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5435
  store %struct.usb_device* %call1, %struct.usb_device** %hdev, align 8, !dbg !5436
  %6 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5437
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 12, !dbg !5438
  %7 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5438
  %call2 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %7) #9, !dbg !5439
  store %struct.usb_hcd* %call2, %struct.usb_hcd** %hcd, align 8, !dbg !5440
  %8 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5441
  %9 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5442
  %bus3 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 12, !dbg !5443
  %10 = load %struct.usb_bus*, %struct.usb_bus** %bus3, align 8, !dbg !5443
  %11 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5444
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %11, i32 0, i32 2, !dbg !5445
  %12 = load i32, i32* %portnum, align 4, !dbg !5445
  %call4 = call %struct.usb_device* @usb_alloc_dev(%struct.usb_device* %8, %struct.usb_bus* %10, i32 %12) #9, !dbg !5446
  store %struct.usb_device* %call4, %struct.usb_device** %udev, align 8, !dbg !5447
  %13 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5448
  %tobool5 = icmp ne %struct.usb_device* %13, null, !dbg !5448
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !5450

if.then6:                                         ; preds = %if.end
  %14 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5451
  %dev7 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 7, !dbg !5451
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5451
  store %struct.usb_device* null, %struct.usb_device** %retval, align 8, !dbg !5453
  br label %return, !dbg !5453

if.end8:                                          ; preds = %if.end
  %15 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5454
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 4, !dbg !5455
  store i32 5, i32* %speed, align 4, !dbg !5456
  %16 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5457
  %ep0 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 13, !dbg !5458
  %desc = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %ep0, i32 0, i32 0, !dbg !5459
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc, i32 0, i32 4, !dbg !5460
  store i16 512, i16* %wMaxPacketSize, align 4, !dbg !5461
  %17 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5462
  call void @usb_set_device_state(%struct.usb_device* %17, i32 5) #9, !dbg !5463
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5464
  %driver = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 9, !dbg !5466
  %19 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !5466
  %enable_device = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %19, i32 0, i32 36, !dbg !5467
  %20 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %enable_device, align 8, !dbg !5467
  %tobool9 = icmp ne i32 (%struct.usb_hcd*, %struct.usb_device*)* %20, null, !dbg !5464
  br i1 %tobool9, label %if.then10, label %if.end17, !dbg !5468

if.then10:                                        ; preds = %if.end8
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5469
  %driver11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 9, !dbg !5472
  %22 = load %struct.hc_driver*, %struct.hc_driver** %driver11, align 8, !dbg !5472
  %enable_device12 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %22, i32 0, i32 36, !dbg !5473
  %23 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %enable_device12, align 8, !dbg !5473
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5474
  %25 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5475
  %call13 = call i32 %23(%struct.usb_hcd* %24, %struct.usb_device* %25) #9, !dbg !5469
  %cmp = icmp slt i32 %call13, 0, !dbg !5476
  br i1 %cmp, label %if.then14, label %if.end16, !dbg !5477

if.then14:                                        ; preds = %if.then10
  %26 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5478
  %dev15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 7, !dbg !5478
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !5478
  %27 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5480
  call void @usb_put_dev(%struct.usb_device* %27) #9, !dbg !5481
  store %struct.usb_device* null, %struct.usb_device** %retval, align 8, !dbg !5482
  br label %return, !dbg !5482

if.end16:                                         ; preds = %if.then10
  br label %if.end17, !dbg !5483

if.end17:                                         ; preds = %if.end16, %if.end8
  %28 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5484
  store %struct.usb_device* %28, %struct.usb_device** %retval, align 8, !dbg !5485
  br label %return, !dbg !5485

return:                                           ; preds = %if.end17, %if.then14, %if.then6, %if.then
  %29 = load %struct.usb_device*, %struct.usb_device** %retval, align 8, !dbg !5486
  ret %struct.usb_device* %29, !dbg !5486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @destroy_lvs_device(%struct.usb_device* %udev) #2 !dbg !5487 {
entry:
  %udev.addr = alloca %struct.usb_device*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5492, metadata !DIExpression()), !dbg !5493
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5494
  %parent = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 11, !dbg !5495
  %1 = load %struct.usb_device*, %struct.usb_device** %parent, align 8, !dbg !5495
  store %struct.usb_device* %1, %struct.usb_device** %hdev, align 8, !dbg !5493
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !5496, metadata !DIExpression()), !dbg !5497
  %2 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5498
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5499
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5499
  %call = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %3) #9, !dbg !5500
  store %struct.usb_hcd* %call, %struct.usb_hcd** %hcd, align 8, !dbg !5497
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5501
  %driver = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 9, !dbg !5503
  %5 = load %struct.hc_driver*, %struct.hc_driver** %driver, align 8, !dbg !5503
  %free_dev = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %5, i32 0, i32 28, !dbg !5504
  %6 = load void (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)** %free_dev, align 8, !dbg !5504
  %tobool = icmp ne void (%struct.usb_hcd*, %struct.usb_device*)* %6, null, !dbg !5501
  br i1 %tobool, label %if.then, label %if.end, !dbg !5505

if.then:                                          ; preds = %entry
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5506
  %driver1 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 9, !dbg !5507
  %8 = load %struct.hc_driver*, %struct.hc_driver** %driver1, align 8, !dbg !5507
  %free_dev2 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %8, i32 0, i32 28, !dbg !5508
  %9 = load void (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)** %free_dev2, align 8, !dbg !5508
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !5509
  %11 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5510
  call void %9(%struct.usb_hcd* %10, %struct.usb_device* %11) #9, !dbg !5506
  br label %if.end, !dbg !5506

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5511
  call void @usb_put_dev(%struct.usb_device* %12) #9, !dbg !5512
  ret void, !dbg !5513
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5514 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5518, metadata !DIExpression()), !dbg !5523
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5525, metadata !DIExpression()), !dbg !5526
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  %0 = load i64, i64* %size.addr, align 8, !dbg !5529
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5531
  br i1 %1, label %if.then, label %if.end447, !dbg !5532

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5533
  %tobool = icmp ne i64 %2, 0, !dbg !5533
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5536

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5537
  br label %return, !dbg !5537

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5538
  %cmp = icmp ult i64 %3, 4096, !dbg !5540
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5541

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5542
  br label %return, !dbg !5542

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub = sub i64 %4, 1, !dbg !5543
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5543
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5543

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub4 = sub i64 %6, 1, !dbg !5543
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5543
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5543

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub6 = sub i64 %8, 1, !dbg !5543
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5543
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5543

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5543

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub9 = sub i64 %9, 1, !dbg !5543
  %and = and i64 %sub9, -9223372036854775808, !dbg !5543
  %tobool10 = icmp ne i64 %and, 0, !dbg !5543
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5543

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5543

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub13 = sub i64 %10, 1, !dbg !5543
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5543
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5543
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5543

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5543

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub18 = sub i64 %11, 1, !dbg !5543
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5543
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5543
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5543

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5543

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub23 = sub i64 %12, 1, !dbg !5543
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5543
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5543
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5543

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5543

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub28 = sub i64 %13, 1, !dbg !5543
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5543
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5543
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5543

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5543

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub33 = sub i64 %14, 1, !dbg !5543
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5543
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5543
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5543

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5543

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub38 = sub i64 %15, 1, !dbg !5543
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5543
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5543
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5543

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5543

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub43 = sub i64 %16, 1, !dbg !5543
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5543
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5543
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5543

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5543

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub48 = sub i64 %17, 1, !dbg !5543
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5543
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5543
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5543

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5543

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub53 = sub i64 %18, 1, !dbg !5543
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5543
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5543
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5543

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5543

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub58 = sub i64 %19, 1, !dbg !5543
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5543
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5543
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5543

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5543

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub63 = sub i64 %20, 1, !dbg !5543
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5543
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5543
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5543

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5543

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub68 = sub i64 %21, 1, !dbg !5543
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5543
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5543
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5543

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5543

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub73 = sub i64 %22, 1, !dbg !5543
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5543
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5543
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5543

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5543

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub78 = sub i64 %23, 1, !dbg !5543
  %and79 = and i64 %sub78, 562949953421312, !dbg !5543
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5543
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5543

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5543

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub83 = sub i64 %24, 1, !dbg !5543
  %and84 = and i64 %sub83, 281474976710656, !dbg !5543
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5543
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5543

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5543

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub88 = sub i64 %25, 1, !dbg !5543
  %and89 = and i64 %sub88, 140737488355328, !dbg !5543
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5543
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5543

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5543

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub93 = sub i64 %26, 1, !dbg !5543
  %and94 = and i64 %sub93, 70368744177664, !dbg !5543
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5543
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5543

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5543

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub98 = sub i64 %27, 1, !dbg !5543
  %and99 = and i64 %sub98, 35184372088832, !dbg !5543
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5543
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5543

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5543

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub103 = sub i64 %28, 1, !dbg !5543
  %and104 = and i64 %sub103, 17592186044416, !dbg !5543
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5543
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5543

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5543

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub108 = sub i64 %29, 1, !dbg !5543
  %and109 = and i64 %sub108, 8796093022208, !dbg !5543
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5543
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5543

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5543

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub113 = sub i64 %30, 1, !dbg !5543
  %and114 = and i64 %sub113, 4398046511104, !dbg !5543
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5543
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5543

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5543

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub118 = sub i64 %31, 1, !dbg !5543
  %and119 = and i64 %sub118, 2199023255552, !dbg !5543
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5543
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5543

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5543

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub123 = sub i64 %32, 1, !dbg !5543
  %and124 = and i64 %sub123, 1099511627776, !dbg !5543
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5543
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5543

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5543

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub128 = sub i64 %33, 1, !dbg !5543
  %and129 = and i64 %sub128, 549755813888, !dbg !5543
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5543
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5543

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5543

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub133 = sub i64 %34, 1, !dbg !5543
  %and134 = and i64 %sub133, 274877906944, !dbg !5543
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5543
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5543

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5543

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub138 = sub i64 %35, 1, !dbg !5543
  %and139 = and i64 %sub138, 137438953472, !dbg !5543
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5543
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5543

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5543

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub143 = sub i64 %36, 1, !dbg !5543
  %and144 = and i64 %sub143, 68719476736, !dbg !5543
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5543
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5543

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5543

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub148 = sub i64 %37, 1, !dbg !5543
  %and149 = and i64 %sub148, 34359738368, !dbg !5543
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5543
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5543

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5543

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub153 = sub i64 %38, 1, !dbg !5543
  %and154 = and i64 %sub153, 17179869184, !dbg !5543
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5543
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5543

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5543

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub158 = sub i64 %39, 1, !dbg !5543
  %and159 = and i64 %sub158, 8589934592, !dbg !5543
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5543
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5543

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5543

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub163 = sub i64 %40, 1, !dbg !5543
  %and164 = and i64 %sub163, 4294967296, !dbg !5543
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5543
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5543

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5543

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub168 = sub i64 %41, 1, !dbg !5543
  %and169 = and i64 %sub168, 2147483648, !dbg !5543
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5543
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5543

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5543

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub173 = sub i64 %42, 1, !dbg !5543
  %and174 = and i64 %sub173, 1073741824, !dbg !5543
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5543
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5543

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5543

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub178 = sub i64 %43, 1, !dbg !5543
  %and179 = and i64 %sub178, 536870912, !dbg !5543
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5543
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5543

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5543

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub183 = sub i64 %44, 1, !dbg !5543
  %and184 = and i64 %sub183, 268435456, !dbg !5543
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5543
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5543

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5543

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub188 = sub i64 %45, 1, !dbg !5543
  %and189 = and i64 %sub188, 134217728, !dbg !5543
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5543
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5543

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5543

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub193 = sub i64 %46, 1, !dbg !5543
  %and194 = and i64 %sub193, 67108864, !dbg !5543
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5543
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5543

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5543

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub198 = sub i64 %47, 1, !dbg !5543
  %and199 = and i64 %sub198, 33554432, !dbg !5543
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5543
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5543

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5543

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub203 = sub i64 %48, 1, !dbg !5543
  %and204 = and i64 %sub203, 16777216, !dbg !5543
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5543
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5543

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5543

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub208 = sub i64 %49, 1, !dbg !5543
  %and209 = and i64 %sub208, 8388608, !dbg !5543
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5543
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5543

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5543

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub213 = sub i64 %50, 1, !dbg !5543
  %and214 = and i64 %sub213, 4194304, !dbg !5543
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5543
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5543

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5543

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub218 = sub i64 %51, 1, !dbg !5543
  %and219 = and i64 %sub218, 2097152, !dbg !5543
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5543
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5543

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5543

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub223 = sub i64 %52, 1, !dbg !5543
  %and224 = and i64 %sub223, 1048576, !dbg !5543
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5543
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5543

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5543

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub228 = sub i64 %53, 1, !dbg !5543
  %and229 = and i64 %sub228, 524288, !dbg !5543
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5543
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5543

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5543

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub233 = sub i64 %54, 1, !dbg !5543
  %and234 = and i64 %sub233, 262144, !dbg !5543
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5543
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5543

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5543

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub238 = sub i64 %55, 1, !dbg !5543
  %and239 = and i64 %sub238, 131072, !dbg !5543
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5543
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5543

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5543

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub243 = sub i64 %56, 1, !dbg !5543
  %and244 = and i64 %sub243, 65536, !dbg !5543
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5543
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5543

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5543

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub248 = sub i64 %57, 1, !dbg !5543
  %and249 = and i64 %sub248, 32768, !dbg !5543
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5543
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5543

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5543

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub253 = sub i64 %58, 1, !dbg !5543
  %and254 = and i64 %sub253, 16384, !dbg !5543
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5543
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5543

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5543

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub258 = sub i64 %59, 1, !dbg !5543
  %and259 = and i64 %sub258, 8192, !dbg !5543
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5543
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5543

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5543

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub263 = sub i64 %60, 1, !dbg !5543
  %and264 = and i64 %sub263, 4096, !dbg !5543
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5543
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5543

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5543

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub268 = sub i64 %61, 1, !dbg !5543
  %and269 = and i64 %sub268, 2048, !dbg !5543
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5543
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5543

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5543

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub273 = sub i64 %62, 1, !dbg !5543
  %and274 = and i64 %sub273, 1024, !dbg !5543
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5543
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5543

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5543

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub278 = sub i64 %63, 1, !dbg !5543
  %and279 = and i64 %sub278, 512, !dbg !5543
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5543
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5543

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5543

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub283 = sub i64 %64, 1, !dbg !5543
  %and284 = and i64 %sub283, 256, !dbg !5543
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5543
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5543

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5543

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub288 = sub i64 %65, 1, !dbg !5543
  %and289 = and i64 %sub288, 128, !dbg !5543
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5543
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5543

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5543

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub293 = sub i64 %66, 1, !dbg !5543
  %and294 = and i64 %sub293, 64, !dbg !5543
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5543
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5543

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5543

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub298 = sub i64 %67, 1, !dbg !5543
  %and299 = and i64 %sub298, 32, !dbg !5543
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5543
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5543

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5543

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub303 = sub i64 %68, 1, !dbg !5543
  %and304 = and i64 %sub303, 16, !dbg !5543
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5543
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5543

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5543

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub308 = sub i64 %69, 1, !dbg !5543
  %and309 = and i64 %sub308, 8, !dbg !5543
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5543
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5543

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5543

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub313 = sub i64 %70, 1, !dbg !5543
  %and314 = and i64 %sub313, 4, !dbg !5543
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5543
  %71 = zext i1 %tobool315 to i64, !dbg !5543
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5543
  br label %cond.end, !dbg !5543

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5543
  br label %cond.end317, !dbg !5543

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5543
  br label %cond.end319, !dbg !5543

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5543
  br label %cond.end321, !dbg !5543

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5543
  br label %cond.end323, !dbg !5543

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5543
  br label %cond.end325, !dbg !5543

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5543
  br label %cond.end327, !dbg !5543

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5543
  br label %cond.end329, !dbg !5543

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5543
  br label %cond.end331, !dbg !5543

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5543
  br label %cond.end333, !dbg !5543

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5543
  br label %cond.end335, !dbg !5543

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5543
  br label %cond.end337, !dbg !5543

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5543
  br label %cond.end339, !dbg !5543

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5543
  br label %cond.end341, !dbg !5543

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5543
  br label %cond.end343, !dbg !5543

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5543
  br label %cond.end345, !dbg !5543

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5543
  br label %cond.end347, !dbg !5543

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5543
  br label %cond.end349, !dbg !5543

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5543
  br label %cond.end351, !dbg !5543

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5543
  br label %cond.end353, !dbg !5543

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5543
  br label %cond.end355, !dbg !5543

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5543
  br label %cond.end357, !dbg !5543

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5543
  br label %cond.end359, !dbg !5543

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5543
  br label %cond.end361, !dbg !5543

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5543
  br label %cond.end363, !dbg !5543

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5543
  br label %cond.end365, !dbg !5543

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5543
  br label %cond.end367, !dbg !5543

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5543
  br label %cond.end369, !dbg !5543

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5543
  br label %cond.end371, !dbg !5543

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5543
  br label %cond.end373, !dbg !5543

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5543
  br label %cond.end375, !dbg !5543

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5543
  br label %cond.end377, !dbg !5543

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5543
  br label %cond.end379, !dbg !5543

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5543
  br label %cond.end381, !dbg !5543

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5543
  br label %cond.end383, !dbg !5543

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5543
  br label %cond.end385, !dbg !5543

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5543
  br label %cond.end387, !dbg !5543

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5543
  br label %cond.end389, !dbg !5543

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5543
  br label %cond.end391, !dbg !5543

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5543
  br label %cond.end393, !dbg !5543

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5543
  br label %cond.end395, !dbg !5543

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5543
  br label %cond.end397, !dbg !5543

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5543
  br label %cond.end399, !dbg !5543

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5543
  br label %cond.end401, !dbg !5543

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5543
  br label %cond.end403, !dbg !5543

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5543
  br label %cond.end405, !dbg !5543

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5543
  br label %cond.end407, !dbg !5543

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5543
  br label %cond.end409, !dbg !5543

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5543
  br label %cond.end411, !dbg !5543

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5543
  br label %cond.end413, !dbg !5543

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5543
  br label %cond.end415, !dbg !5543

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5543
  br label %cond.end417, !dbg !5543

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5543
  br label %cond.end419, !dbg !5543

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5543
  br label %cond.end421, !dbg !5543

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5543
  br label %cond.end423, !dbg !5543

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5543
  br label %cond.end425, !dbg !5543

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5543
  br label %cond.end427, !dbg !5543

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5543
  br label %cond.end429, !dbg !5543

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5543
  br label %cond.end431, !dbg !5543

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5543
  br label %cond.end433, !dbg !5543

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5543
  br label %cond.end435, !dbg !5543

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5543
  br label %cond.end437, !dbg !5543

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5543
  br label %cond.end440, !dbg !5543

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5543

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5543
  br label %cond.end444, !dbg !5543

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5543
  %sub443 = sub i64 %72, 1, !dbg !5543
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5543
  br label %cond.end444, !dbg !5543

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5543
  %sub446 = sub i32 %cond445, 12, !dbg !5544
  %add = add i32 %sub446, 1, !dbg !5545
  store i32 %add, i32* %retval, align 4, !dbg !5546
  br label %return, !dbg !5546

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5547
  %dec = add i64 %73, -1, !dbg !5547
  store i64 %dec, i64* %size.addr, align 8, !dbg !5547
  %74 = load i64, i64* %size.addr, align 8, !dbg !5548
  %shr = lshr i64 %74, 12, !dbg !5548
  store i64 %shr, i64* %size.addr, align 8, !dbg !5548
  %75 = load i64, i64* %size.addr, align 8, !dbg !5549
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5526
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5550
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5551
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5550, !srcloc !5552
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5550
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5553
  %add.i = add i32 %79, 1, !dbg !5554
  store i32 %add.i, i32* %retval, align 4, !dbg !5555
  br label %return, !dbg !5555

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5556
  ret i32 %80, !dbg !5556
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5557 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5518, metadata !DIExpression()), !dbg !5561
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5525, metadata !DIExpression()), !dbg !5563
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  %0 = load i64, i64* %n.addr, align 8, !dbg !5566
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5563
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5567
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5568
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5567, !srcloc !5552
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5567
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5569
  %add.i = add i32 %4, 1, !dbg !5570
  %sub = sub i32 %add.i, 1, !dbg !5571
  ret i32 %sub, !dbg !5572
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5573 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5585
  ret i8* %0, !dbg !5586
}

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @usb_alloc_dev(%struct.usb_device*, %struct.usb_bus*, i32) #1

; Function Attrs: noredzone
declare dso_local void @usb_set_device_state(%struct.usb_device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @usb_put_dev(%struct.usb_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @u1_timeout_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5587 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5594, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5596, metadata !DIExpression()), !dbg !5597
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5598, metadata !DIExpression()), !dbg !5600
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5600
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5600
  store i8* %1, i8** %__mptr, align 8, !dbg !5600
  br label %do.body, !dbg !5600

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5601

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5600
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5600
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5600
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5601
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5600
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5597
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5603, metadata !DIExpression()), !dbg !5604
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5605
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5606
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5607, metadata !DIExpression()), !dbg !5608
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5609
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %6) #9, !dbg !5610
  %7 = bitcast i8* %call1 to %struct.lvs_rh*, !dbg !5610
  store %struct.lvs_rh* %7, %struct.lvs_rh** %lvs, align 8, !dbg !5608
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5611, metadata !DIExpression()), !dbg !5612
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5613, metadata !DIExpression()), !dbg !5614
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5615
  %call2 = call i32 @kstrtoul(i8* %8, i32 10, i64* %val) #9, !dbg !5616
  store i32 %call2, i32* %ret, align 4, !dbg !5617
  %9 = load i32, i32* %ret, align 4, !dbg !5618
  %cmp = icmp slt i32 %9, 0, !dbg !5620
  br i1 %cmp, label %if.then, label %if.end, !dbg !5621

if.then:                                          ; preds = %do.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5622
  %11 = load i32, i32* %ret, align 4, !dbg !5622
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %11) #10, !dbg !5622
  %12 = load i32, i32* %ret, align 4, !dbg !5624
  %conv = sext i32 %12 to i64, !dbg !5624
  store i64 %conv, i64* %retval, align 8, !dbg !5625
  br label %return, !dbg !5625

if.end:                                           ; preds = %do.end
  %13 = load i64, i64* %val, align 8, !dbg !5626
  %cmp3 = icmp ugt i64 %13, 127, !dbg !5628
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5629

if.then5:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5630
  br label %return, !dbg !5630

if.end6:                                          ; preds = %if.end
  %14 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5631
  %15 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5632
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %15, i32 0, i32 2, !dbg !5633
  %16 = load i32, i32* %portnum, align 4, !dbg !5633
  %conv7 = sext i32 %16 to i64, !dbg !5632
  %17 = load i64, i64* %val, align 8, !dbg !5634
  %shl = shl i64 %17, 8, !dbg !5635
  %or = or i64 %conv7, %shl, !dbg !5636
  %conv8 = trunc i64 %or to i32, !dbg !5632
  %call9 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %14, i32 %conv8, i32 23) #9, !dbg !5637
  store i32 %call9, i32* %ret, align 4, !dbg !5638
  %18 = load i32, i32* %ret, align 4, !dbg !5639
  %cmp10 = icmp slt i32 %18, 0, !dbg !5641
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !5642

if.then12:                                        ; preds = %if.end6
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5643
  %20 = load i32, i32* %ret, align 4, !dbg !5643
  %21 = load i64, i64* %val, align 8, !dbg !5643
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 %20, i64 %21) #10, !dbg !5643
  %22 = load i32, i32* %ret, align 4, !dbg !5645
  %conv13 = sext i32 %22 to i64, !dbg !5645
  store i64 %conv13, i64* %retval, align 8, !dbg !5646
  br label %return, !dbg !5646

if.end14:                                         ; preds = %if.end6
  %23 = load i64, i64* %count.addr, align 8, !dbg !5647
  store i64 %23, i64* %retval, align 8, !dbg !5648
  br label %return, !dbg !5648

return:                                           ; preds = %if.end14, %if.then12, %if.then5, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5649
  ret i64 %24, !dbg !5649
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !5650 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5661
  %1 = load i32, i32* %base.addr, align 4, !dbg !5663
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5664
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #9, !dbg !5665
  ret i32 %call, !dbg !5666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lvs_rh_set_port_feature(%struct.usb_device* %hdev, i32 %port1, i32 %feature) #2 !dbg !5667 {
entry:
  %hdev.addr = alloca %struct.usb_device*, align 8
  %port1.addr = alloca i32, align 4
  %feature.addr = alloca i32, align 4
  store %struct.usb_device* %hdev, %struct.usb_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  store i32 %port1, i32* %port1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port1.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  store i32 %feature, i32* %feature.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %feature.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  %0 = load %struct.usb_device*, %struct.usb_device** %hdev.addr, align 8, !dbg !5674
  %1 = load %struct.usb_device*, %struct.usb_device** %hdev.addr, align 8, !dbg !5675
  %call = call i32 @__create_pipe(%struct.usb_device* %1, i32 0) #9, !dbg !5675
  %or = or i32 -2147483648, %call, !dbg !5675
  %2 = load i32, i32* %feature.addr, align 4, !dbg !5676
  %conv = trunc i32 %2 to i16, !dbg !5676
  %3 = load i32, i32* %port1.addr, align 4, !dbg !5677
  %conv1 = trunc i32 %3 to i16, !dbg !5677
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %0, i32 %or, i8 zeroext 3, i8 zeroext 35, i16 zeroext %conv, i16 zeroext %conv1, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !5678
  ret i32 %call2, !dbg !5679
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @u2_timeout_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5680 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5687, metadata !DIExpression()), !dbg !5688
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5691, metadata !DIExpression()), !dbg !5693
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5693
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5693
  store i8* %1, i8** %__mptr, align 8, !dbg !5693
  br label %do.body, !dbg !5693

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5694

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5693
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5693
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5693
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5694
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5693
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5690
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5696, metadata !DIExpression()), !dbg !5697
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5698
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5699
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !5697
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5700, metadata !DIExpression()), !dbg !5701
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5702
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %6) #9, !dbg !5703
  %7 = bitcast i8* %call1 to %struct.lvs_rh*, !dbg !5703
  store %struct.lvs_rh* %7, %struct.lvs_rh** %lvs, align 8, !dbg !5701
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5704, metadata !DIExpression()), !dbg !5705
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5706, metadata !DIExpression()), !dbg !5707
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5708
  %call2 = call i32 @kstrtoul(i8* %8, i32 10, i64* %val) #9, !dbg !5709
  store i32 %call2, i32* %ret, align 4, !dbg !5710
  %9 = load i32, i32* %ret, align 4, !dbg !5711
  %cmp = icmp slt i32 %9, 0, !dbg !5713
  br i1 %cmp, label %if.then, label %if.end, !dbg !5714

if.then:                                          ; preds = %do.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5715
  %11 = load i32, i32* %ret, align 4, !dbg !5715
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %11) #10, !dbg !5715
  %12 = load i32, i32* %ret, align 4, !dbg !5717
  %conv = sext i32 %12 to i64, !dbg !5717
  store i64 %conv, i64* %retval, align 8, !dbg !5718
  br label %return, !dbg !5718

if.end:                                           ; preds = %do.end
  %13 = load i64, i64* %val, align 8, !dbg !5719
  %cmp3 = icmp ugt i64 %13, 127, !dbg !5721
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5722

if.then5:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5723
  br label %return, !dbg !5723

if.end6:                                          ; preds = %if.end
  %14 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5724
  %15 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5725
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %15, i32 0, i32 2, !dbg !5726
  %16 = load i32, i32* %portnum, align 4, !dbg !5726
  %conv7 = sext i32 %16 to i64, !dbg !5725
  %17 = load i64, i64* %val, align 8, !dbg !5727
  %shl = shl i64 %17, 8, !dbg !5728
  %or = or i64 %conv7, %shl, !dbg !5729
  %conv8 = trunc i64 %or to i32, !dbg !5725
  %call9 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %14, i32 %conv8, i32 24) #9, !dbg !5730
  store i32 %call9, i32* %ret, align 4, !dbg !5731
  %18 = load i32, i32* %ret, align 4, !dbg !5732
  %cmp10 = icmp slt i32 %18, 0, !dbg !5734
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !5735

if.then12:                                        ; preds = %if.end6
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5736
  %20 = load i32, i32* %ret, align 4, !dbg !5736
  %21 = load i64, i64* %val, align 8, !dbg !5736
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %20, i64 %21) #10, !dbg !5736
  %22 = load i32, i32* %ret, align 4, !dbg !5738
  %conv13 = sext i32 %22 to i64, !dbg !5738
  store i64 %conv13, i64* %retval, align 8, !dbg !5739
  br label %return, !dbg !5739

if.end14:                                         ; preds = %if.end6
  %23 = load i64, i64* %count.addr, align 8, !dbg !5740
  store i64 %23, i64* %retval, align 8, !dbg !5741
  br label %return, !dbg !5741

return:                                           ; preds = %if.end14, %if.then12, %if.then5, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5742
  ret i64 %24, !dbg !5742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hot_reset_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5743 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5744, metadata !DIExpression()), !dbg !5745
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5748, metadata !DIExpression()), !dbg !5749
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5750, metadata !DIExpression()), !dbg !5751
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5752, metadata !DIExpression()), !dbg !5753
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5754, metadata !DIExpression()), !dbg !5756
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5756
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5756
  store i8* %1, i8** %__mptr, align 8, !dbg !5756
  br label %do.body, !dbg !5756

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5757

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5756
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5756
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5756
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5757
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5756
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5753
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5759, metadata !DIExpression()), !dbg !5760
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5761
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5762
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !5760
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5763, metadata !DIExpression()), !dbg !5764
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5765
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %6) #9, !dbg !5766
  %7 = bitcast i8* %call1 to %struct.lvs_rh*, !dbg !5766
  store %struct.lvs_rh* %7, %struct.lvs_rh** %lvs, align 8, !dbg !5764
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5767, metadata !DIExpression()), !dbg !5768
  %8 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5769
  %9 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5770
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %9, i32 0, i32 2, !dbg !5771
  %10 = load i32, i32* %portnum, align 4, !dbg !5771
  %call2 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %8, i32 %10, i32 4) #9, !dbg !5772
  store i32 %call2, i32* %ret, align 4, !dbg !5773
  %11 = load i32, i32* %ret, align 4, !dbg !5774
  %cmp = icmp slt i32 %11, 0, !dbg !5776
  br i1 %cmp, label %if.then, label %if.end, !dbg !5777

if.then:                                          ; preds = %do.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5778
  %13 = load i32, i32* %ret, align 4, !dbg !5778
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %13) #10, !dbg !5778
  %14 = load i32, i32* %ret, align 4, !dbg !5780
  %conv = sext i32 %14 to i64, !dbg !5780
  store i64 %conv, i64* %retval, align 8, !dbg !5781
  br label %return, !dbg !5781

if.end:                                           ; preds = %do.end
  %15 = load i64, i64* %count.addr, align 8, !dbg !5782
  store i64 %15, i64* %retval, align 8, !dbg !5783
  br label %return, !dbg !5783

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5784
  ret i64 %16, !dbg !5784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @warm_reset_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5785 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5794, metadata !DIExpression()), !dbg !5795
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5796, metadata !DIExpression()), !dbg !5798
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5798
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5798
  store i8* %1, i8** %__mptr, align 8, !dbg !5798
  br label %do.body, !dbg !5798

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5799

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5798
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5798
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5798
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5799
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5798
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5795
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5801, metadata !DIExpression()), !dbg !5802
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5803
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5804
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !5802
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5805, metadata !DIExpression()), !dbg !5806
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5807
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %6) #9, !dbg !5808
  %7 = bitcast i8* %call1 to %struct.lvs_rh*, !dbg !5808
  store %struct.lvs_rh* %7, %struct.lvs_rh** %lvs, align 8, !dbg !5806
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5809, metadata !DIExpression()), !dbg !5810
  %8 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5811
  %9 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5812
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %9, i32 0, i32 2, !dbg !5813
  %10 = load i32, i32* %portnum, align 4, !dbg !5813
  %call2 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %8, i32 %10, i32 28) #9, !dbg !5814
  store i32 %call2, i32* %ret, align 4, !dbg !5815
  %11 = load i32, i32* %ret, align 4, !dbg !5816
  %cmp = icmp slt i32 %11, 0, !dbg !5818
  br i1 %cmp, label %if.then, label %if.end, !dbg !5819

if.then:                                          ; preds = %do.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5820
  %13 = load i32, i32* %ret, align 4, !dbg !5820
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 %13) #10, !dbg !5820
  %14 = load i32, i32* %ret, align 4, !dbg !5822
  %conv = sext i32 %14 to i64, !dbg !5822
  store i64 %conv, i64* %retval, align 8, !dbg !5823
  br label %return, !dbg !5823

if.end:                                           ; preds = %do.end
  %15 = load i64, i64* %count.addr, align 8, !dbg !5824
  store i64 %15, i64* %retval, align 8, !dbg !5825
  br label %return, !dbg !5825

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5826
  ret i64 %16, !dbg !5826
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @u3_entry_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5827 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5830, metadata !DIExpression()), !dbg !5831
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5838, metadata !DIExpression()), !dbg !5840
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5840
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5840
  store i8* %1, i8** %__mptr, align 8, !dbg !5840
  br label %do.body, !dbg !5840

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5841

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5840
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5840
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5840
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5841
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5840
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5837
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5843, metadata !DIExpression()), !dbg !5844
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5845
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5846
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !5844
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5847, metadata !DIExpression()), !dbg !5848
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5849
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %6) #9, !dbg !5850
  %7 = bitcast i8* %call1 to %struct.lvs_rh*, !dbg !5850
  store %struct.lvs_rh* %7, %struct.lvs_rh** %lvs, align 8, !dbg !5848
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5851, metadata !DIExpression()), !dbg !5852
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5853, metadata !DIExpression()), !dbg !5854
  %8 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5855
  %call2 = call %struct.usb_device* @create_lvs_device(%struct.usb_interface* %8) #9, !dbg !5856
  store %struct.usb_device* %call2, %struct.usb_device** %udev, align 8, !dbg !5857
  %9 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5858
  %tobool = icmp ne %struct.usb_device* %9, null, !dbg !5858
  br i1 %tobool, label %if.end, label %if.then, !dbg !5860

if.then:                                          ; preds = %do.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5861
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5861
  store i64 -12, i64* %retval, align 8, !dbg !5863
  br label %return, !dbg !5863

if.end:                                           ; preds = %do.end
  %11 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5864
  %12 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5865
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %12, i32 0, i32 2, !dbg !5866
  %13 = load i32, i32* %portnum, align 4, !dbg !5866
  %call3 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %11, i32 %13, i32 2) #9, !dbg !5867
  store i32 %call3, i32* %ret, align 4, !dbg !5868
  %14 = load i32, i32* %ret, align 4, !dbg !5869
  %cmp = icmp slt i32 %14, 0, !dbg !5871
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5872

if.then4:                                         ; preds = %if.end
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5873
  %16 = load i32, i32* %ret, align 4, !dbg !5873
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %16) #10, !dbg !5873
  br label %if.end5, !dbg !5873

if.end5:                                          ; preds = %if.then4, %if.end
  %17 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5874
  call void @destroy_lvs_device(%struct.usb_device* %17) #9, !dbg !5875
  %18 = load i32, i32* %ret, align 4, !dbg !5876
  %cmp6 = icmp slt i32 %18, 0, !dbg !5878
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5879

if.then7:                                         ; preds = %if.end5
  %19 = load i32, i32* %ret, align 4, !dbg !5880
  %conv = sext i32 %19 to i64, !dbg !5880
  store i64 %conv, i64* %retval, align 8, !dbg !5881
  br label %return, !dbg !5881

if.end8:                                          ; preds = %if.end5
  %20 = load i64, i64* %count.addr, align 8, !dbg !5882
  store i64 %20, i64* %retval, align 8, !dbg !5883
  br label %return, !dbg !5883

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !5884
  ret i64 %21, !dbg !5884
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @u3_exit_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5885 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5886, metadata !DIExpression()), !dbg !5887
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5892, metadata !DIExpression()), !dbg !5893
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5894, metadata !DIExpression()), !dbg !5895
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5896, metadata !DIExpression()), !dbg !5898
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5898
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5898
  store i8* %1, i8** %__mptr, align 8, !dbg !5898
  br label %do.body, !dbg !5898

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5899

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5898
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5898
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5898
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5899
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5898
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5895
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5901, metadata !DIExpression()), !dbg !5902
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5903
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5904
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !5902
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5905, metadata !DIExpression()), !dbg !5906
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5907
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %6) #9, !dbg !5908
  %7 = bitcast i8* %call1 to %struct.lvs_rh*, !dbg !5908
  store %struct.lvs_rh* %7, %struct.lvs_rh** %lvs, align 8, !dbg !5906
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5909, metadata !DIExpression()), !dbg !5910
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5911, metadata !DIExpression()), !dbg !5912
  %8 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5913
  %call2 = call %struct.usb_device* @create_lvs_device(%struct.usb_interface* %8) #9, !dbg !5914
  store %struct.usb_device* %call2, %struct.usb_device** %udev, align 8, !dbg !5915
  %9 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5916
  %tobool = icmp ne %struct.usb_device* %9, null, !dbg !5916
  br i1 %tobool, label %if.end, label %if.then, !dbg !5918

if.then:                                          ; preds = %do.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5919
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5919
  store i64 -12, i64* %retval, align 8, !dbg !5921
  br label %return, !dbg !5921

if.end:                                           ; preds = %do.end
  %11 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5922
  %12 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5923
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %12, i32 0, i32 2, !dbg !5924
  %13 = load i32, i32* %portnum, align 4, !dbg !5924
  %call3 = call i32 @lvs_rh_clear_port_feature(%struct.usb_device* %11, i32 %13, i32 2) #9, !dbg !5925
  store i32 %call3, i32* %ret, align 4, !dbg !5926
  %14 = load i32, i32* %ret, align 4, !dbg !5927
  %cmp = icmp slt i32 %14, 0, !dbg !5929
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5930

if.then4:                                         ; preds = %if.end
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5931
  %16 = load i32, i32* %ret, align 4, !dbg !5931
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %16) #10, !dbg !5931
  br label %if.end5, !dbg !5931

if.end5:                                          ; preds = %if.then4, %if.end
  %17 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5932
  call void @destroy_lvs_device(%struct.usb_device* %17) #9, !dbg !5933
  %18 = load i32, i32* %ret, align 4, !dbg !5934
  %cmp6 = icmp slt i32 %18, 0, !dbg !5936
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5937

if.then7:                                         ; preds = %if.end5
  %19 = load i32, i32* %ret, align 4, !dbg !5938
  %conv = sext i32 %19 to i64, !dbg !5938
  store i64 %conv, i64* %retval, align 8, !dbg !5939
  br label %return, !dbg !5939

if.end8:                                          ; preds = %if.end5
  %20 = load i64, i64* %count.addr, align 8, !dbg !5940
  store i64 %20, i64* %retval, align 8, !dbg !5941
  br label %return, !dbg !5941

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !5942
  ret i64 %21, !dbg !5942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @enable_compliance_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5943 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %hdev = alloca %struct.usb_device*, align 8
  %lvs = alloca %struct.lvs_rh*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5952, metadata !DIExpression()), !dbg !5953
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5954, metadata !DIExpression()), !dbg !5956
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5956
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5956
  store i8* %1, i8** %__mptr, align 8, !dbg !5956
  br label %do.body, !dbg !5956

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5957

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5956
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !5956
  %3 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !5956
  store %struct.usb_interface* %3, %struct.usb_interface** %tmp, align 8, !dbg !5957
  %4 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !5956
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5953
  call void @llvm.dbg.declare(metadata %struct.usb_device** %hdev, metadata !5959, metadata !DIExpression()), !dbg !5960
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5961
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5) #9, !dbg !5962
  store %struct.usb_device* %call, %struct.usb_device** %hdev, align 8, !dbg !5960
  call void @llvm.dbg.declare(metadata %struct.lvs_rh** %lvs, metadata !5963, metadata !DIExpression()), !dbg !5964
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5965
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %6) #9, !dbg !5966
  %7 = bitcast i8* %call1 to %struct.lvs_rh*, !dbg !5966
  store %struct.lvs_rh* %7, %struct.lvs_rh** %lvs, align 8, !dbg !5964
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5967, metadata !DIExpression()), !dbg !5968
  %8 = load %struct.usb_device*, %struct.usb_device** %hdev, align 8, !dbg !5969
  %9 = load %struct.lvs_rh*, %struct.lvs_rh** %lvs, align 8, !dbg !5970
  %portnum = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %9, i32 0, i32 2, !dbg !5971
  %10 = load i32, i32* %portnum, align 4, !dbg !5971
  %or = or i32 %10, 2560, !dbg !5972
  %call2 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %8, i32 %or, i32 5) #9, !dbg !5973
  store i32 %call2, i32* %ret, align 4, !dbg !5974
  %11 = load i32, i32* %ret, align 4, !dbg !5975
  %cmp = icmp slt i32 %11, 0, !dbg !5977
  br i1 %cmp, label %if.then, label %if.end, !dbg !5978

if.then:                                          ; preds = %do.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5979
  %13 = load i32, i32* %ret, align 4, !dbg !5979
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i32 %13) #10, !dbg !5979
  %14 = load i32, i32* %ret, align 4, !dbg !5981
  %conv = sext i32 %14 to i64, !dbg !5981
  store i64 %conv, i64* %retval, align 8, !dbg !5982
  br label %return, !dbg !5982

if.end:                                           ; preds = %do.end
  %15 = load i64, i64* %count.addr, align 8, !dbg !5983
  store i64 %15, i64* %retval, align 8, !dbg !5984
  br label %return, !dbg !5984

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5985
  ret i64 %16, !dbg !5985
}

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
!llvm.module.flags = !{!4407, !4408, !4409, !4410}
!llvm.ident = !{!4411}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lvs_driver_init221", scope: !2, file: !3, line: 473, type: !209, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202, globals: !4291, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/misc/lvstest.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !99, !108, !113, !146, !152, !158, !164, !171, !179, !184, !190, !195}
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
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 30, baseType: !115, size: 64, elements: !116)
!114 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!115 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!117 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!118 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!119 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!120 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!121 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!122 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!123 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!124 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!125 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!126 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!127 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!128 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!129 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!130 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!131 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!132 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!133 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!134 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!135 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!136 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!137 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!138 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!139 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!140 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!141 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!142 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!143 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!144 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!145 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !147, line: 11, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !88, line: 1181, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!157 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_type", file: !159, line: 36, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/usb/phy.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "USB_PHY_TYPE_UNDEFINED", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "USB_PHY_TYPE_USB2", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "USB_PHY_TYPE_USB3", value: 2, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_events", file: !159, line: 27, baseType: !7, size: 32, elements: !165)
!165 = !{!166, !167, !168, !169, !170}
!166 = !DIEnumerator(name: "USB_EVENT_NONE", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "USB_EVENT_VBUS", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "USB_EVENT_ID", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "USB_EVENT_CHARGER", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "USB_EVENT_ENUMERATED", value: 4, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_type", file: !172, line: 16, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/uapi/linux/usb/charger.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIEnumerator(name: "UNKNOWN_TYPE", value: 0, isUnsigned: true)
!175 = !DIEnumerator(name: "SDP_TYPE", value: 1, isUnsigned: true)
!176 = !DIEnumerator(name: "DCP_TYPE", value: 2, isUnsigned: true)
!177 = !DIEnumerator(name: "CDP_TYPE", value: 3, isUnsigned: true)
!178 = !DIEnumerator(name: "ACA_TYPE", value: 4, isUnsigned: true)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_state", file: !172, line: 25, baseType: !7, size: 32, elements: !180)
!180 = !{!181, !182, !183}
!181 = !DIEnumerator(name: "USB_CHARGER_DEFAULT", value: 0, isUnsigned: true)
!182 = !DIEnumerator(name: "USB_CHARGER_PRESENT", value: 1, isUnsigned: true)
!183 = !DIEnumerator(name: "USB_CHARGER_ABSENT", value: 2, isUnsigned: true)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !185, line: 75, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!188 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!189 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !191, line: 10, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194}
!193 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !196, line: 305, baseType: !7, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !199, !200, !201}
!198 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!202 = !{!203, !206, !208, !209, !210, !3893, !3895, !906, !3645, !3990, !214, !3785, !4290}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !205, line: 76, flags: DIFlagFwdDecl)
!205 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !207, line: 148, baseType: !7)
!207 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !212)
!212 = !{!213, !215, !220, !225, !226, !227, !228, !229, !279, !280, !284, !285, !3634, !3675, !3676, !3693, !3754, !3836, !3837, !3839, !3840, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3875, !3876, !3877, !3882, !3889, !3890, !3891, !3892}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !211, file: !6, line: 632, baseType: !214, size: 32)
!214 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !211, file: !6, line: 633, baseType: !216, size: 128, offset: 32)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !218)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!218 = !{!219}
!219 = !DISubrange(count: 16)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !211, file: !6, line: 634, baseType: !221, size: 32, offset: 160)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !222, line: 21, baseType: !223)
!222 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !224, line: 27, baseType: !7)
!224 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !211, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !211, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !211, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !211, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !211, file: !6, line: 640, baseType: !230, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !185, line: 554, size: 576, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !253, !259}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !231, file: !185, line: 555, baseType: !210, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !231, file: !185, line: 556, baseType: !214, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !231, file: !185, line: 557, baseType: !7, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !231, file: !185, line: 558, baseType: !209, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !231, file: !185, line: 561, baseType: !238, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !239, line: 83, baseType: !240)
!239 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !239, line: 71, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !239, line: 72, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !240, file: !239, line: 72, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !243, file: !239, line: 73, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !239, line: 20, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !246, file: !239, line: 21, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !250, line: 25, baseType: !251)
!250 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 25, elements: !252)
!252 = !{}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !231, file: !185, line: 562, baseType: !254, size: 128, offset: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !207, line: 178, size: 128, elements: !255)
!255 = !{!256, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !207, line: 179, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !254, file: !207, line: 179, baseType: !257, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !231, file: !185, line: 563, baseType: !260, size: 256, offset: 320)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !114, line: 102, size: 256, elements: !261)
!261 = !{!262, !272, !273}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !260, file: !114, line: 103, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !264, line: 13, baseType: !265)
!264 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !207, line: 175, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 173, size: 64, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !266, file: !207, line: 174, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !222, line: 22, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !224, line: 30, baseType: !271)
!271 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !260, file: !114, line: 104, baseType: !254, size: 128, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !260, file: !114, line: 105, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !114, line: 21, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !211, file: !6, line: 641, baseType: !214, size: 32, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !211, file: !6, line: 643, baseType: !281, size: 64, offset: 416)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 2)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !6, line: 645, baseType: !210, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !211, file: !6, line: 646, baseType: !286, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !288)
!288 = !{!289, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3628, !3629, !3630, !3631, !3632, !3633}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !287, file: !6, line: 425, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !292)
!292 = !{!293, !3252, !3253, !3256, !3257, !3308, !3399, !3400, !3401, !3402, !3403, !3412, !3517, !3530, !3533, !3534, !3538, !3540, !3541, !3542, !3546, !3552, !3553, !3556, !3560, !3563, !3564, !3565, !3566, !3567, !3599, !3600, !3601, !3604, !3607, !3608, !3609, !3610}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !291, file: !67, line: 462, baseType: !294, size: 512)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !295, line: 64, size: 512, elements: !296)
!295 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !300, !301, !303, !348, !3103, !3242, !3247, !3248, !3249, !3250, !3251}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !295, line: 65, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !294, file: !295, line: 66, baseType: !254, size: 128, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !294, file: !295, line: 67, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !294, file: !295, line: 68, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !295, line: 192, size: 704, elements: !306)
!306 = !{!307, !308, !309, !310}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !305, file: !295, line: 193, baseType: !254, size: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !305, file: !295, line: 194, baseType: !238, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !305, file: !295, line: 195, baseType: !294, size: 512, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !305, file: !295, line: 196, baseType: !311, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !295, line: 156, size: 192, elements: !314)
!314 = !{!315, !320, !325}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !313, file: !295, line: 157, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!214, !304, !302}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !295, line: 158, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!298, !304, !302}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !313, file: !295, line: 159, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!214, !304, !302, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !295, line: 148, size: 20736, elements: !332)
!332 = !{!333, !338, !342, !343, !347}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !331, file: !295, line: 149, baseType: !334, size: 192)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 192, elements: !336)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!336 = !{!337}
!337 = !DISubrange(count: 3)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !331, file: !295, line: 150, baseType: !339, size: 4096, offset: 192)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 4096, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !331, file: !295, line: 151, baseType: !214, size: 32, offset: 4288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !331, file: !295, line: 152, baseType: !344, size: 16384, offset: 4320)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 16384, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2048)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !331, file: !295, line: 153, baseType: !214, size: 32, offset: 20704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !294, file: !295, line: 69, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !295, line: 138, size: 448, elements: !351)
!351 = !{!352, !356, !384, !386, !3063, !3093, !3097}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !350, file: !295, line: 139, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !302}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !350, file: !295, line: 140, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !360, line: 230, size: 128, elements: !361)
!360 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !377}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !359, file: !360, line: 231, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !302, !370, !335}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !207, line: 60, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !368, line: 73, baseType: !369)
!368 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !368, line: 15, baseType: !115)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !360, line: 30, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !360, line: 31, baseType: !298, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !371, file: !360, line: 32, baseType: !375, size: 16, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !207, line: 19, baseType: !376)
!376 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !359, file: !360, line: 232, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!366, !302, !370, !298, !381}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !207, line: 55, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !368, line: 72, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !368, line: 16, baseType: !208)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !350, file: !295, line: 141, baseType: !385, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !350, file: !295, line: 142, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !360, line: 84, size: 320, elements: !391)
!391 = !{!392, !393, !397, !3060, !3061}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !360, line: 85, baseType: !298, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !390, file: !360, line: 86, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!375, !302, !370, !214}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !390, file: !360, line: 88, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!375, !302, !401, !214}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !360, line: 168, size: 448, elements: !403)
!403 = !{!404, !405, !406, !407, !3055, !3056}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !402, file: !360, line: 169, baseType: !371, size: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !402, file: !360, line: 170, baseType: !381, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !402, file: !360, line: 171, baseType: !209, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !402, file: !360, line: 172, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!366, !411, !302, !401, !335, !586, !381}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !413)
!413 = !{!414, !432, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3038, !3039, !3048, !3049, !3050, !3051, !3052, !3053, !3054}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !412, file: !38, line: 920, baseType: !415, size: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !38, line: 917, size: 128, elements: !416)
!416 = !{!417, !423}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !415, file: !38, line: 918, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !419, line: 58, size: 64, elements: !420)
!419 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !419, line: 59, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !415, file: !38, line: 919, baseType: !424, size: 128, align: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !207, line: 216, size: 128, align: 64, elements: !425)
!425 = !{!426, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !207, line: 217, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !424, file: !207, line: 218, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !427}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !412, file: !38, line: 921, baseType: !433, size: 128, offset: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !434, line: 8, size: 128, elements: !435)
!434 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!435 = !{!436, !440}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !433, file: !434, line: 9, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !439, line: 18, flags: DIFlagFwdDecl)
!439 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !433, file: !434, line: 10, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !439, line: 89, size: 1536, elements: !443)
!443 = !{!444, !445, !455, !463, !464, !483, !2988, !2990, !3002, !3003, !3004, !3005, !3006, !3012, !3013, !3014}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !442, file: !439, line: 91, baseType: !7, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !442, file: !439, line: 92, baseType: !446, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !447, line: 277, baseType: !448)
!447 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !447, line: 277, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !448, file: !447, line: 277, baseType: !451, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !447, line: 70, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !447, line: 65, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !452, file: !447, line: 66, baseType: !7, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !442, file: !439, line: 93, baseType: !456, size: 128, offset: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !457, line: 38, size: 128, elements: !458)
!457 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !457, line: 39, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !456, file: !457, line: 39, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !442, file: !439, line: 94, baseType: !441, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !442, file: !439, line: 95, baseType: !465, size: 128, offset: 256)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !439, line: 47, size: 128, elements: !466)
!466 = !{!467, !479}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !439, line: 48, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !439, line: 48, size: 64, elements: !469)
!469 = !{!470, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !439, line: 49, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !439, line: 49, size: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !471, file: !439, line: 50, baseType: !221, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !471, file: !439, line: 50, baseType: !221, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !468, file: !439, line: 52, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !222, line: 23, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !224, line: 31, baseType: !478)
!478 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !465, file: !439, line: 54, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !442, file: !439, line: 96, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !486)
!486 = !{!487, !488, !489, !497, !504, !505, !651, !2699, !2700, !2701, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2964, !2972, !2973, !2974, !2984, !2985, !2986, !2987}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !485, file: !38, line: 611, baseType: !375, size: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !485, file: !38, line: 612, baseType: !376, size: 16, offset: 16)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !485, file: !38, line: 613, baseType: !490, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !491, line: 23, baseType: !492)
!491 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 21, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !492, file: !491, line: 22, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !207, line: 32, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !368, line: 49, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !485, file: !38, line: 614, baseType: !498, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !491, line: 28, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 26, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !499, file: !491, line: 27, baseType: !502, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !207, line: 33, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !368, line: 50, baseType: !7)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !485, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !485, file: !38, line: 622, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !509)
!509 = !{!510, !514, !527, !531, !537, !541, !547, !551, !555, !559, !563, !564, !570, !574, !598, !627, !631, !637, !642, !646, !647}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !508, file: !38, line: 1865, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!441, !484, !441, !7}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !508, file: !38, line: 1866, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!298, !441, !484, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !520, line: 10, size: 128, elements: !521)
!520 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !526}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !519, file: !520, line: 11, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !209}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !519, file: !520, line: 12, baseType: !209, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !508, file: !38, line: 1867, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!214, !484, !214}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !508, file: !38, line: 1868, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !484, !214}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !508, file: !38, line: 1870, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!214, !441, !335, !214}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !508, file: !38, line: 1872, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!214, !484, !441, !375, !545}
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !207, line: 30, baseType: !546)
!546 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !508, file: !38, line: 1873, baseType: !548, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!214, !441, !484, !441}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !508, file: !38, line: 1874, baseType: !552, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!214, !484, !441}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !508, file: !38, line: 1875, baseType: !556, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!214, !484, !441, !298}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !508, file: !38, line: 1876, baseType: !560, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!214, !484, !441, !375}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !508, file: !38, line: 1877, baseType: !552, size: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !508, file: !38, line: 1878, baseType: !565, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!214, !484, !441, !375, !568}
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !207, line: 16, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !207, line: 13, baseType: !221)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !508, file: !38, line: 1879, baseType: !571, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!214, !484, !441, !484, !441, !7}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !508, file: !38, line: 1881, baseType: !575, size: 64, offset: 832)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!214, !441, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !588, !595, !596, !597}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !579, file: !38, line: 220, baseType: !7, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !579, file: !38, line: 221, baseType: !375, size: 16, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !579, file: !38, line: 222, baseType: !490, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !579, file: !38, line: 223, baseType: !498, size: 32, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !579, file: !38, line: 224, baseType: !586, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !207, line: 46, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !368, line: 88, baseType: !271)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !579, file: !38, line: 225, baseType: !589, size: 128, offset: 192)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !590, line: 13, size: 128, elements: !591)
!590 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!591 = !{!592, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !589, file: !590, line: 14, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !590, line: 8, baseType: !270)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !589, file: !590, line: 15, baseType: !115, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !579, file: !38, line: 226, baseType: !589, size: 128, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !579, file: !38, line: 227, baseType: !589, size: 128, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !579, file: !38, line: 234, baseType: !411, size: 64, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !508, file: !38, line: 1882, baseType: !599, size: 64, offset: 896)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!214, !602, !604, !221, !7}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !606, line: 22, size: 1152, elements: !607)
!606 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !609, !610, !611, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !605, file: !606, line: 23, baseType: !221, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !605, file: !606, line: 24, baseType: !375, size: 16, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !605, file: !606, line: 25, baseType: !7, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !605, file: !606, line: 26, baseType: !612, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !207, line: 104, baseType: !221)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !605, file: !606, line: 27, baseType: !476, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !605, file: !606, line: 28, baseType: !476, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !605, file: !606, line: 37, baseType: !476, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !605, file: !606, line: 38, baseType: !568, size: 32, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !605, file: !606, line: 39, baseType: !568, size: 32, offset: 352)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !605, file: !606, line: 40, baseType: !490, size: 32, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !605, file: !606, line: 41, baseType: !498, size: 32, offset: 416)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !606, line: 42, baseType: !586, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !605, file: !606, line: 43, baseType: !589, size: 128, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !605, file: !606, line: 44, baseType: !589, size: 128, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !605, file: !606, line: 45, baseType: !589, size: 128, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !605, file: !606, line: 46, baseType: !589, size: 128, offset: 896)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !605, file: !606, line: 47, baseType: !476, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !605, file: !606, line: 48, baseType: !476, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !508, file: !38, line: 1883, baseType: !628, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!366, !441, !335, !381}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !508, file: !38, line: 1884, baseType: !632, size: 64, offset: 1024)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!214, !484, !635, !476, !476}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !508, file: !38, line: 1886, baseType: !638, size: 64, offset: 1088)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!214, !484, !641, !214}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !508, file: !38, line: 1887, baseType: !643, size: 64, offset: 1152)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!214, !484, !441, !411, !7, !375}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !508, file: !38, line: 1890, baseType: !560, size: 64, offset: 1216)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !508, file: !38, line: 1891, baseType: !648, size: 64, offset: 1280)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!214, !484, !535, !214}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !485, file: !38, line: 623, baseType: !652, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !707, !2306, !2388, !2471, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2487, !2491, !2492, !2495, !2496, !2499, !2500, !2501, !2542, !2569, !2570, !2571, !2572, !2573, !2574, !2577, !2579, !2586, !2587, !2589, !2590, !2591, !2650, !2651, !2666, !2667, !2668, !2669, !2670, !2673, !2674, !2675, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !653, file: !38, line: 1417, baseType: !254, size: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !653, file: !38, line: 1418, baseType: !568, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !653, file: !38, line: 1419, baseType: !482, size: 8, offset: 160)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !653, file: !38, line: 1420, baseType: !208, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !653, file: !38, line: 1421, baseType: !586, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !653, file: !38, line: 1422, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !663)
!663 = !{!664, !665, !666, !673, !677, !681, !685, !686, !687, !697, !700, !701, !702, !704, !705, !706}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !38, line: 2229, baseType: !298, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !662, file: !38, line: 2230, baseType: !214, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !662, file: !38, line: 2238, baseType: !667, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!214, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !672, line: 28, flags: DIFlagFwdDecl)
!672 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !662, file: !38, line: 2239, baseType: !674, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !662, file: !38, line: 2240, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!441, !661, !214, !298, !209}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !662, file: !38, line: 2242, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !652}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !662, file: !38, line: 2243, baseType: !203, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !38, line: 2244, baseType: !661, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !662, file: !38, line: 2245, baseType: !688, size: 64, offset: 512)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !207, line: 182, size: 64, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !688, file: !207, line: 183, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !207, line: 186, size: 128, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !207, line: 187, baseType: !691, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !692, file: !207, line: 187, baseType: !696, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !662, file: !38, line: 2247, baseType: !698, offset: 576)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !699, line: 187, elements: !252)
!699 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !662, file: !38, line: 2248, baseType: !698, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !662, file: !38, line: 2249, baseType: !698, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !662, file: !38, line: 2250, baseType: !703, offset: 576)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, elements: !336)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !662, file: !38, line: 2252, baseType: !698, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !662, file: !38, line: 2253, baseType: !698, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !662, file: !38, line: 2254, baseType: !698, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !653, file: !38, line: 1423, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !711)
!711 = !{!712, !716, !720, !721, !725, !731, !735, !736, !737, !741, !745, !746, !747, !748, !754, !759, !760, !767, !768, !769, !770, !2290, !2305}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !710, file: !38, line: 1936, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!484, !652}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !710, file: !38, line: 1937, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !484}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !710, file: !38, line: 1938, baseType: !717, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !710, file: !38, line: 1940, baseType: !722, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !484, !214}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !710, file: !38, line: 1941, baseType: !726, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!214, !484, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !710, file: !38, line: 1942, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!214, !484}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !710, file: !38, line: 1943, baseType: !717, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !710, file: !38, line: 1944, baseType: !682, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !710, file: !38, line: 1945, baseType: !738, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!214, !652, !214}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !710, file: !38, line: 1946, baseType: !742, size: 64, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!214, !652}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !710, file: !38, line: 1947, baseType: !742, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !710, file: !38, line: 1948, baseType: !742, size: 64, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !710, file: !38, line: 1949, baseType: !742, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !710, file: !38, line: 1950, baseType: !749, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!214, !441, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !710, file: !38, line: 1951, baseType: !755, size: 64, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!214, !652, !758, !335}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !710, file: !38, line: 1952, baseType: !682, size: 64, offset: 960)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !710, file: !38, line: 1954, baseType: !761, size: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!214, !764, !441}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !766, line: 539, flags: DIFlagFwdDecl)
!766 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !710, file: !38, line: 1955, baseType: !761, size: 64, offset: 1088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !710, file: !38, line: 1956, baseType: !761, size: 64, offset: 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !710, file: !38, line: 1957, baseType: !761, size: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !710, file: !38, line: 1963, baseType: !771, size: 64, offset: 1280)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!214, !652, !774, !206}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !776, line: 68, size: 512, align: 128, elements: !777)
!776 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !779, !2282, !2289}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !776, line: 69, baseType: !208, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !776, line: 77, baseType: !780, size: 320, offset: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !776, line: 77, size: 320, elements: !781)
!781 = !{!782, !962, !967, !995, !1003, !1009, !2274, !2281}
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 78, baseType: !783, size: 320)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 78, size: 320, elements: !784)
!784 = !{!785, !786, !960, !961}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !783, file: !776, line: 84, baseType: !254, size: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !783, file: !776, line: 86, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !789)
!789 = !{!790, !791, !798, !799, !804, !819, !828, !829, !830, !831, !953, !954, !957, !958, !959}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !788, file: !38, line: 452, baseType: !484, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !788, file: !38, line: 453, baseType: !792, size: 128, offset: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !793, line: 292, size: 128, elements: !794)
!793 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !792, file: !793, line: 293, baseType: !238)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !792, file: !793, line: 295, baseType: !206, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !792, file: !793, line: 296, baseType: !209, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !788, file: !38, line: 454, baseType: !206, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !788, file: !38, line: 455, baseType: !800, size: 32, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !207, line: 168, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 166, size: 32, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !801, file: !207, line: 167, baseType: !214, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !788, file: !38, line: 460, baseType: !805, size: 128, offset: 256)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !806, line: 125, size: 128, elements: !807)
!806 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !818}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !805, file: !806, line: 126, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !806, line: 31, size: 64, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !809, file: !806, line: 32, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !806, line: 24, size: 192, align: 64, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !813, file: !806, line: 25, baseType: !208, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !813, file: !806, line: 26, baseType: !812, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !813, file: !806, line: 27, baseType: !812, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !805, file: !806, line: 127, baseType: !812, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !788, file: !38, line: 461, baseType: !820, size: 256, offset: 384)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !821, line: 35, size: 256, elements: !822)
!821 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!822 = !{!823, !824, !825, !827}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !821, line: 36, baseType: !263, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !820, file: !821, line: 42, baseType: !263, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !820, file: !821, line: 46, baseType: !826, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !239, line: 29, baseType: !246)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !820, file: !821, line: 47, baseType: !254, size: 128, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !788, file: !38, line: 462, baseType: !208, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !788, file: !38, line: 463, baseType: !208, size: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !788, file: !38, line: 464, baseType: !208, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !788, file: !38, line: 465, baseType: !832, size: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !835)
!835 = !{!836, !840, !844, !848, !852, !856, !862, !868, !872, !877, !881, !885, !889, !917, !921, !927, !928, !929, !933, !938, !942, !949}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !834, file: !38, line: 368, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!214, !774, !729}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !834, file: !38, line: 369, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!214, !411, !774}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !834, file: !38, line: 372, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!214, !787, !729}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !834, file: !38, line: 375, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!214, !774}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !834, file: !38, line: 381, baseType: !853, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!214, !411, !787, !257, !7}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !834, file: !38, line: 383, baseType: !857, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !834, file: !38, line: 385, baseType: !863, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!214, !411, !787, !586, !7, !7, !866, !867}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !834, file: !38, line: 388, baseType: !869, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!214, !411, !787, !586, !7, !7, !774, !209}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !834, file: !38, line: 393, baseType: !873, size: 64, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!876, !787, !876}
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !207, line: 125, baseType: !476)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !834, file: !38, line: 394, baseType: !878, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !774, !7, !7}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !834, file: !38, line: 395, baseType: !882, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!214, !774, !206}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !834, file: !38, line: 396, baseType: !886, size: 64, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !774}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !834, file: !38, line: 397, baseType: !890, size: 64, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!366, !893, !915}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !895)
!895 = !{!896, !897, !898, !902, !903, !904, !907, !908}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !894, file: !38, line: 321, baseType: !411, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !894, file: !38, line: 326, baseType: !586, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !894, file: !38, line: 327, baseType: !899, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !893, !115, !115}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !894, file: !38, line: 328, baseType: !209, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !894, file: !38, line: 329, baseType: !214, size: 32, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !894, file: !38, line: 330, baseType: !905, size: 16, offset: 288)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !222, line: 19, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !224, line: 24, baseType: !376)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !894, file: !38, line: 331, baseType: !905, size: 16, offset: 304)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !38, line: 332, baseType: !909, size: 64, offset: 320)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !38, line: 332, size: 64, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !909, file: !38, line: 333, baseType: !7, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !909, file: !38, line: 334, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !834, file: !38, line: 402, baseType: !918, size: 64, offset: 832)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!214, !787, !774, !774, !13}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !834, file: !38, line: 404, baseType: !922, size: 64, offset: 896)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!545, !774, !925}
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !926, line: 305, baseType: !7)
!926 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!927 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !834, file: !38, line: 405, baseType: !886, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !834, file: !38, line: 406, baseType: !849, size: 64, offset: 1024)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !834, file: !38, line: 407, baseType: !930, size: 64, offset: 1088)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!214, !774, !208, !208}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !834, file: !38, line: 409, baseType: !934, size: 64, offset: 1152)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !774, !937, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !834, file: !38, line: 410, baseType: !939, size: 64, offset: 1216)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!214, !787, !774}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !834, file: !38, line: 413, baseType: !943, size: 64, offset: 1280)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!214, !946, !411, !948}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !834, file: !38, line: 415, baseType: !950, size: 64, offset: 1344)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !411}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !38, line: 466, baseType: !208, size: 64, offset: 896)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !788, file: !38, line: 467, baseType: !955, size: 32, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !956, line: 8, baseType: !221)
!956 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!957 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !788, file: !38, line: 468, baseType: !238, offset: 992)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !788, file: !38, line: 469, baseType: !254, size: 128, offset: 1024)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !788, file: !38, line: 470, baseType: !209, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !783, file: !776, line: 87, baseType: !208, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !783, file: !776, line: 94, baseType: !208, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 96, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 96, size: 64, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !963, file: !776, line: 101, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !207, line: 143, baseType: !476)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 103, baseType: !968, size: 320)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 103, size: 320, elements: !969)
!969 = !{!970, !980, !983, !984}
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !776, line: 104, baseType: !971, size: 128)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !776, line: 104, size: 128, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !971, file: !776, line: 105, baseType: !254, size: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !776, line: 106, baseType: !975, size: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !776, line: 106, size: 128, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !975, file: !776, line: 107, baseType: !774, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !975, file: !776, line: 109, baseType: !214, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !975, file: !776, line: 110, baseType: !214, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !968, file: !776, line: 117, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !776, line: 117, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !968, file: !776, line: 119, baseType: !209, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !776, line: 120, baseType: !985, size: 64, offset: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !776, line: 120, size: 64, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !985, file: !776, line: 121, baseType: !209, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !985, file: !776, line: 122, baseType: !208, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !776, line: 123, baseType: !990, size: 32)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !776, line: 123, size: 32, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !990, file: !776, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !990, file: !776, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !990, file: !776, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 130, baseType: !996, size: 192)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 130, size: 192, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !996, file: !776, line: 131, baseType: !208, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !996, file: !776, line: 134, baseType: !482, size: 8, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !996, file: !776, line: 135, baseType: !482, size: 8, offset: 72)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !996, file: !776, line: 136, baseType: !800, size: 32, offset: 96)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !996, file: !776, line: 137, baseType: !7, size: 32, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 139, baseType: !1004, size: 256)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 139, size: 256, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1004, file: !776, line: 140, baseType: !208, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1004, file: !776, line: 141, baseType: !800, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1004, file: !776, line: 143, baseType: !254, size: 128, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 145, baseType: !1010, size: 256)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 145, size: 256, elements: !1011)
!1011 = !{!1012, !1013, !1015, !1016, !2273}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1010, file: !776, line: 146, baseType: !208, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1010, file: !776, line: 147, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !766, line: 509, baseType: !774)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1010, file: !776, line: 148, baseType: !208, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !776, line: 149, baseType: !1017, size: 64, offset: 192)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !776, line: 149, size: 64, elements: !1018)
!1018 = !{!1019, !2272}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1017, file: !776, line: 150, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !776, line: 388, size: 7296, elements: !1022)
!1022 = !{!1023, !2268}
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !776, line: 389, baseType: !1024, size: 7296)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1021, file: !776, line: 389, size: 7296, elements: !1025)
!1025 = !{!1026, !1064, !1065, !1066, !1070, !1071, !1072, !1073, !1074, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1115, !1123, !1126, !1172, !1173, !2252, !2253, !2256, !2257, !2258, !2261, !2262, !2263, !2266, !2267}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1024, file: !776, line: 390, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !776, line: 305, size: 1472, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1044, !1045, !1050, !1051, !1054, !1058, !1059, !1060, !1061, !1062}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1028, file: !776, line: 308, baseType: !208, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1028, file: !776, line: 309, baseType: !208, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1028, file: !776, line: 313, baseType: !1027, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1028, file: !776, line: 313, baseType: !1027, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1028, file: !776, line: 315, baseType: !813, size: 192, align: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1028, file: !776, line: 323, baseType: !208, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1028, file: !776, line: 327, baseType: !1020, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1028, file: !776, line: 333, baseType: !1038, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !766, line: 284, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !766, line: 284, size: 64, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1039, file: !766, line: 284, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1043, line: 19, baseType: !208)
!1043 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1028, file: !776, line: 334, baseType: !208, size: 64, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1028, file: !776, line: 343, baseType: !1046, size: 256, offset: 704)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1028, file: !776, line: 340, size: 256, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1046, file: !776, line: 341, baseType: !813, size: 192, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1046, file: !776, line: 342, baseType: !208, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1028, file: !776, line: 351, baseType: !254, size: 128, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1028, file: !776, line: 353, baseType: !1052, size: 64, offset: 1088)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !776, line: 353, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1028, file: !776, line: 356, baseType: !1055, size: 64, offset: 1152)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !776, line: 356, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1028, file: !776, line: 359, baseType: !208, size: 64, offset: 1216)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1028, file: !776, line: 361, baseType: !411, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1028, file: !776, line: 362, baseType: !209, size: 64, offset: 1344)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1028, file: !776, line: 365, baseType: !263, size: 64, offset: 1408)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1028, file: !776, line: 373, baseType: !1063, offset: 1472)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !776, line: 296, elements: !252)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1024, file: !776, line: 391, baseType: !809, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1024, file: !776, line: 392, baseType: !476, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1024, file: !776, line: 394, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!208, !411, !208, !208, !208, !208}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1024, file: !776, line: 398, baseType: !208, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1024, file: !776, line: 399, baseType: !208, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1024, file: !776, line: 405, baseType: !208, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1024, file: !776, line: 406, baseType: !208, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1024, file: !776, line: 407, baseType: !1075, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !766, line: 286, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 286, size: 64, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1077, file: !766, line: 286, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1043, line: 18, baseType: !208)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1024, file: !776, line: 416, baseType: !800, size: 32, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1024, file: !776, line: 428, baseType: !800, size: 32, offset: 608)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1024, file: !776, line: 437, baseType: !800, size: 32, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1024, file: !776, line: 447, baseType: !800, size: 32, offset: 672)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1024, file: !776, line: 450, baseType: !263, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1024, file: !776, line: 452, baseType: !214, size: 32, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1024, file: !776, line: 454, baseType: !238, offset: 800)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1024, file: !776, line: 457, baseType: !820, size: 256, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1024, file: !776, line: 459, baseType: !254, size: 128, offset: 1088)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1024, file: !776, line: 466, baseType: !208, size: 64, offset: 1216)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1024, file: !776, line: 467, baseType: !208, size: 64, offset: 1280)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1024, file: !776, line: 469, baseType: !208, size: 64, offset: 1344)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1024, file: !776, line: 470, baseType: !208, size: 64, offset: 1408)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1024, file: !776, line: 471, baseType: !265, size: 64, offset: 1472)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1024, file: !776, line: 472, baseType: !208, size: 64, offset: 1536)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1024, file: !776, line: 473, baseType: !208, size: 64, offset: 1600)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1024, file: !776, line: 474, baseType: !208, size: 64, offset: 1664)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1024, file: !776, line: 475, baseType: !208, size: 64, offset: 1728)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1024, file: !776, line: 477, baseType: !238, offset: 1792)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1024, file: !776, line: 478, baseType: !208, size: 64, offset: 1792)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1024, file: !776, line: 478, baseType: !208, size: 64, offset: 1856)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1024, file: !776, line: 478, baseType: !208, size: 64, offset: 1920)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1024, file: !776, line: 478, baseType: !208, size: 64, offset: 1984)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1024, file: !776, line: 479, baseType: !208, size: 64, offset: 2048)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1024, file: !776, line: 479, baseType: !208, size: 64, offset: 2112)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1024, file: !776, line: 479, baseType: !208, size: 64, offset: 2176)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1024, file: !776, line: 480, baseType: !208, size: 64, offset: 2240)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1024, file: !776, line: 480, baseType: !208, size: 64, offset: 2304)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1024, file: !776, line: 480, baseType: !208, size: 64, offset: 2368)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1024, file: !776, line: 480, baseType: !208, size: 64, offset: 2432)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1024, file: !776, line: 482, baseType: !1112, size: 2816, offset: 2496)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 2816, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 44)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1024, file: !776, line: 488, baseType: !1116, size: 256, offset: 5312)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1117, line: 60, size: 256, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1116, file: !1117, line: 61, baseType: !1120, size: 256)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 256, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 4)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1024, file: !776, line: 490, baseType: !1124, size: 64, offset: 5568)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !776, line: 490, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1024, file: !776, line: 493, baseType: !1127, size: 896, offset: 5632)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1128, line: 53, baseType: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 13, size: 896, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1137, !1138, !1145, !1146, !1166, !1167, !1168}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1129, file: !1128, line: 18, baseType: !476, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1129, file: !1128, line: 28, baseType: !265, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1129, file: !1128, line: 31, baseType: !820, size: 256, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1129, file: !1128, line: 32, baseType: !1135, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1128, line: 32, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1129, file: !1128, line: 37, baseType: !376, size: 16, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1129, file: !1128, line: 40, baseType: !1139, size: 192, offset: 512)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1140, line: 53, size: 192, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1139, file: !1140, line: 54, baseType: !263, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1139, file: !1140, line: 55, baseType: !238, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1139, file: !1140, line: 59, baseType: !254, size: 128, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1129, file: !1128, line: 41, baseType: !209, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1129, file: !1128, line: 42, baseType: !1147, size: 64, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1150, line: 13, size: 896, elements: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1149, file: !1150, line: 14, baseType: !209, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1149, file: !1150, line: 15, baseType: !208, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1149, file: !1150, line: 17, baseType: !208, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1149, file: !1150, line: 17, baseType: !208, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1149, file: !1150, line: 19, baseType: !115, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1149, file: !1150, line: 21, baseType: !115, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1149, file: !1150, line: 22, baseType: !115, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1149, file: !1150, line: 23, baseType: !115, size: 64, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1149, file: !1150, line: 24, baseType: !115, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1149, file: !1150, line: 25, baseType: !115, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1149, file: !1150, line: 26, baseType: !115, size: 64, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1149, file: !1150, line: 27, baseType: !115, size: 64, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1149, file: !1150, line: 28, baseType: !115, size: 64, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1149, file: !1150, line: 29, baseType: !115, size: 64, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1129, file: !1128, line: 44, baseType: !800, size: 32, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1129, file: !1128, line: 50, baseType: !905, size: 16, offset: 864)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1129, file: !1128, line: 51, baseType: !1169, size: 16, offset: 880)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !222, line: 18, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !224, line: 23, baseType: !1171)
!1171 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1024, file: !776, line: 495, baseType: !208, size: 64, offset: 6528)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1024, file: !776, line: 497, baseType: !1174, size: 64, offset: 6592)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !776, line: 381, size: 384, elements: !1176)
!1176 = !{!1177, !1178, !2251}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1175, file: !776, line: 382, baseType: !800, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1175, file: !776, line: 383, baseType: !1179, size: 128, offset: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !776, line: 376, size: 128, elements: !1180)
!1180 = !{!1181, !2249}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1179, file: !776, line: 377, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1184, line: 640, size: 48640, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186, !1192, !1194, !1195, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1212, !1230, !1241, !1326, !1327, !1328, !1339, !1340, !1342, !1343, !1344, !1345, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1424, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1462, !1464, !1465, !1466, !1478, !1479, !1480, !1481, !1482, !1483, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1507, !1512, !1694, !1695, !1696, !1697, !1698, !1701, !1704, !1707, !1710, !1714, !1815, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1861, !1862, !1863, !1864, !1865, !1870, !1871, !1872, !1875, !1876, !1879, !1882, !1885, !1888, !1920, !1923, !1924, !2003, !2004, !2007, !2008, !2011, !2012, !2013, !2017, !2018, !2019, !2032, !2033, !2034, !2044, !2049, !2052, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1183, file: !1184, line: 646, baseType: !1187, size: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1188, line: 56, size: 128, elements: !1189)
!1188 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1188, line: 57, baseType: !208, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1187, file: !1188, line: 58, baseType: !221, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1183, file: !1184, line: 649, baseType: !1193, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1183, file: !1184, line: 657, baseType: !209, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1183, file: !1184, line: 658, baseType: !1196, size: 32, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1197, line: 113, baseType: !1198)
!1197 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1197, line: 111, size: 32, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1198, file: !1197, line: 112, baseType: !800, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 660, baseType: !7, size: 32, offset: 288)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1183, file: !1184, line: 661, baseType: !7, size: 32, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1183, file: !1184, line: 684, baseType: !214, size: 32, offset: 352)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1183, file: !1184, line: 686, baseType: !214, size: 32, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1183, file: !1184, line: 687, baseType: !214, size: 32, offset: 416)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1183, file: !1184, line: 688, baseType: !214, size: 32, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1183, file: !1184, line: 689, baseType: !7, size: 32, offset: 480)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1183, file: !1184, line: 691, baseType: !1209, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1184, line: 691, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1183, file: !1184, line: 692, baseType: !1213, size: 832, offset: 576)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1184, line: 451, size: 832, elements: !1214)
!1214 = !{!1215, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1213, file: !1184, line: 453, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1184, line: 325, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1216, file: !1184, line: 326, baseType: !208, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1216, file: !1184, line: 327, baseType: !221, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1213, file: !1184, line: 454, baseType: !813, size: 192, align: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1213, file: !1184, line: 455, baseType: !254, size: 128, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1213, file: !1184, line: 456, baseType: !7, size: 32, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1213, file: !1184, line: 458, baseType: !476, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1213, file: !1184, line: 459, baseType: !476, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1213, file: !1184, line: 460, baseType: !476, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1213, file: !1184, line: 461, baseType: !476, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1213, file: !1184, line: 463, baseType: !476, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1213, file: !1184, line: 465, baseType: !1229, offset: 832)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1184, line: 415, elements: !252)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1183, file: !1184, line: 693, baseType: !1231, size: 384, offset: 1408)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1184, line: 489, size: 384, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1231, file: !1184, line: 490, baseType: !254, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1231, file: !1184, line: 491, baseType: !208, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1231, file: !1184, line: 492, baseType: !208, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1231, file: !1184, line: 493, baseType: !7, size: 32, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1231, file: !1184, line: 494, baseType: !376, size: 16, offset: 288)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1231, file: !1184, line: 495, baseType: !376, size: 16, offset: 304)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1231, file: !1184, line: 497, baseType: !1240, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1183, file: !1184, line: 697, baseType: !1242, size: 1792, offset: 1792)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1184, line: 507, size: 1792, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1323, !1324}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1242, file: !1184, line: 508, baseType: !813, size: 192, align: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1242, file: !1184, line: 515, baseType: !476, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1242, file: !1184, line: 516, baseType: !476, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1242, file: !1184, line: 517, baseType: !476, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1242, file: !1184, line: 518, baseType: !476, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1242, file: !1184, line: 519, baseType: !476, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1242, file: !1184, line: 526, baseType: !269, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1242, file: !1184, line: 527, baseType: !476, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !1184, line: 528, baseType: !7, size: 32, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1242, file: !1184, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1242, file: !1184, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1242, file: !1184, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1242, file: !1184, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1242, file: !1184, line: 563, baseType: !1258, size: 512, offset: 704)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1259)
!1259 = !{!1260, !1268, !1269, !1274, !1317, !1320, !1321, !1322}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1258, file: !21, line: 119, baseType: !1261, size: 256)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1262, line: 9, size: 256, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1261, file: !1262, line: 10, baseType: !813, size: 192, align: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1261, file: !1262, line: 11, baseType: !1266, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1267, line: 29, baseType: !269)
!1267 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1258, file: !21, line: 120, baseType: !1266, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1258, file: !21, line: 121, baseType: !1270, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!20, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1258, file: !21, line: 122, baseType: !1275, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1277)
!1277 = !{!1278, !1298, !1299, !1302, !1307, !1308, !1312, !1316}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1276, file: !21, line: 160, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1280, file: !21, line: 215, baseType: !826)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1280, file: !21, line: 216, baseType: !7, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1280, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1280, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1280, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1280, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1280, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1280, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1280, file: !21, line: 233, baseType: !1266, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1280, file: !21, line: 234, baseType: !1273, size: 64, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1280, file: !21, line: 235, baseType: !1266, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1280, file: !21, line: 236, baseType: !1273, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1280, file: !21, line: 237, baseType: !1295, size: 4096, offset: 512)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1276, size: 4096, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 8)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1276, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1276, file: !21, line: 162, baseType: !1300, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !207, line: 27, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !368, line: 96, baseType: !214)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1276, file: !21, line: 163, baseType: !1303, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !447, line: 276, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !447, line: 276, size: 32, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1304, file: !447, line: 276, baseType: !451, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1276, file: !21, line: 164, baseType: !1273, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1276, file: !21, line: 165, baseType: !1309, size: 128, offset: 256)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1262, line: 14, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1309, file: !1262, line: 15, baseType: !805, size: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1276, file: !21, line: 166, baseType: !1313, size: 64, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!1266}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1276, file: !21, line: 167, baseType: !1266, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1258, file: !21, line: 123, baseType: !1318, size: 8, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !222, line: 17, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !224, line: 21, baseType: !482)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1258, file: !21, line: 124, baseType: !1318, size: 8, offset: 456)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1258, file: !21, line: 125, baseType: !1318, size: 8, offset: 464)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1258, file: !21, line: 126, baseType: !1318, size: 8, offset: 472)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1242, file: !1184, line: 572, baseType: !1258, size: 512, offset: 1216)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1242, file: !1184, line: 580, baseType: !1325, size: 64, offset: 1728)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1183, file: !1184, line: 721, baseType: !7, size: 32, offset: 3584)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1183, file: !1184, line: 722, baseType: !214, size: 32, offset: 3616)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1183, file: !1184, line: 723, baseType: !1329, size: 64, offset: 3648)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1332, line: 17, baseType: !1333)
!1332 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1332, line: 17, size: 64, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1333, file: !1332, line: 17, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 1)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1183, file: !1184, line: 724, baseType: !1331, size: 64, offset: 3712)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1183, file: !1184, line: 749, baseType: !1341, offset: 3776)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1184, line: 290, elements: !252)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1183, file: !1184, line: 751, baseType: !254, size: 128, offset: 3776)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1183, file: !1184, line: 757, baseType: !1020, size: 64, offset: 3904)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1183, file: !1184, line: 758, baseType: !1020, size: 64, offset: 3968)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1183, file: !1184, line: 761, baseType: !1346, size: 320, offset: 4032)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1117, line: 34, size: 320, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1346, file: !1117, line: 35, baseType: !476, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1346, file: !1117, line: 36, baseType: !1350, size: 256, offset: 64)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 256, elements: !1121)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1183, file: !1184, line: 766, baseType: !214, size: 32, offset: 4352)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1183, file: !1184, line: 767, baseType: !214, size: 32, offset: 4384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1183, file: !1184, line: 768, baseType: !214, size: 32, offset: 4416)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1183, file: !1184, line: 770, baseType: !214, size: 32, offset: 4448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1183, file: !1184, line: 772, baseType: !208, size: 64, offset: 4480)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1183, file: !1184, line: 775, baseType: !7, size: 32, offset: 4544)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1183, file: !1184, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1183, file: !1184, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1183, file: !1184, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1183, file: !1184, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1183, file: !1184, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1183, file: !1184, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1183, file: !1184, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1183, file: !1184, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1183, file: !1184, line: 831, baseType: !208, size: 64, offset: 4672)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1183, file: !1184, line: 833, baseType: !1367, size: 384, offset: 4736)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1368)
!1368 = !{!1369, !1374}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1367, file: !26, line: 26, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!115, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !26, line: 27, baseType: !1375, size: 320, offset: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !26, line: 27, size: 320, elements: !1376)
!1376 = !{!1377, !1387, !1414}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1375, file: !26, line: 36, baseType: !1378, size: 320)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !26, line: 29, size: 320, elements: !1379)
!1379 = !{!1380, !1382, !1383, !1384, !1385, !1386}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1378, file: !26, line: 30, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1378, file: !26, line: 31, baseType: !221, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !26, line: 32, baseType: !221, size: 32, offset: 96)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1378, file: !26, line: 33, baseType: !221, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1378, file: !26, line: 34, baseType: !476, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1378, file: !26, line: 35, baseType: !1381, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1375, file: !26, line: 46, baseType: !1388, size: 192)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !26, line: 38, size: 192, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1413}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1388, file: !26, line: 39, baseType: !1300, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1388, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !26, line: 41, baseType: !1393, size: 64, offset: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !26, line: 41, size: 64, elements: !1394)
!1394 = !{!1395, !1403}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1393, file: !26, line: 42, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1398, line: 7, size: 128, elements: !1399)
!1398 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1399 = !{!1400, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1397, file: !1398, line: 8, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !368, line: 93, baseType: !271)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1397, file: !1398, line: 9, baseType: !271, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1393, file: !26, line: 43, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1406, line: 7, size: 64, elements: !1407)
!1406 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1407 = !{!1408, !1412}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1405, file: !1406, line: 8, baseType: !1409, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1406, line: 5, baseType: !1410)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !222, line: 20, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !224, line: 26, baseType: !214)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1405, file: !1406, line: 9, baseType: !1410, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1388, file: !26, line: 45, baseType: !476, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1375, file: !26, line: 54, baseType: !1415, size: 256)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !26, line: 48, size: 256, elements: !1416)
!1416 = !{!1417, !1420, !1421, !1422, !1423}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1415, file: !26, line: 49, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1415, file: !26, line: 50, baseType: !214, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1415, file: !26, line: 51, baseType: !214, size: 32, offset: 96)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1415, file: !26, line: 52, baseType: !208, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1415, file: !26, line: 53, baseType: !208, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1183, file: !1184, line: 835, baseType: !1425, size: 32, offset: 5120)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !207, line: 22, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !368, line: 28, baseType: !214)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1183, file: !1184, line: 836, baseType: !1425, size: 32, offset: 5152)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1183, file: !1184, line: 840, baseType: !208, size: 64, offset: 5184)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1183, file: !1184, line: 849, baseType: !1182, size: 64, offset: 5248)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1183, file: !1184, line: 852, baseType: !1182, size: 64, offset: 5312)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1183, file: !1184, line: 857, baseType: !254, size: 128, offset: 5376)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1183, file: !1184, line: 858, baseType: !254, size: 128, offset: 5504)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1183, file: !1184, line: 859, baseType: !1182, size: 64, offset: 5632)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1183, file: !1184, line: 867, baseType: !254, size: 128, offset: 5696)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1183, file: !1184, line: 868, baseType: !254, size: 128, offset: 5824)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1183, file: !1184, line: 871, baseType: !1437, size: 64, offset: 5952)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1445, !1446, !1453, !1454}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1438, file: !47, line: 61, baseType: !1196, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1438, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !47, line: 63, baseType: !238, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1438, file: !47, line: 65, baseType: !1444, size: 256, offset: 64)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 256, elements: !1121)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1438, file: !47, line: 66, baseType: !688, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1438, file: !47, line: 68, baseType: !1447, size: 128, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1448, line: 40, baseType: !1449)
!1448 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1448, line: 36, size: 128, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1449, file: !1448, line: 37, baseType: !238)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1449, file: !1448, line: 38, baseType: !254, size: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1438, file: !47, line: 69, baseType: !424, size: 128, align: 64, offset: 512)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1438, file: !47, line: 70, baseType: !1455, size: 128, offset: 640)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1456, size: 128, elements: !1337)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1456, file: !47, line: 55, baseType: !214, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1456, file: !47, line: 56, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1183, file: !1184, line: 872, baseType: !1463, size: 512, offset: 6016)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 512, elements: !1121)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1183, file: !1184, line: 873, baseType: !254, size: 128, offset: 6528)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1183, file: !1184, line: 874, baseType: !254, size: 128, offset: 6656)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1183, file: !1184, line: 876, baseType: !1467, size: 64, offset: 6784)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1469, line: 26, size: 192, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1468, file: !1469, line: 27, baseType: !7, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1468, file: !1469, line: 28, baseType: !1473, size: 128, offset: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1474, line: 43, size: 128, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1473, file: !1474, line: 44, baseType: !826)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1473, file: !1474, line: 45, baseType: !254, size: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1183, file: !1184, line: 879, baseType: !758, size: 64, offset: 6848)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1183, file: !1184, line: 882, baseType: !758, size: 64, offset: 6912)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1183, file: !1184, line: 884, baseType: !476, size: 64, offset: 6976)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1183, file: !1184, line: 885, baseType: !476, size: 64, offset: 7040)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1183, file: !1184, line: 890, baseType: !476, size: 64, offset: 7104)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1183, file: !1184, line: 891, baseType: !1484, size: 128, offset: 7168)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1184, line: 242, size: 128, elements: !1485)
!1485 = !{!1486, !1487, !1488}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1484, file: !1184, line: 244, baseType: !476, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1484, file: !1184, line: 245, baseType: !476, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1484, file: !1184, line: 246, baseType: !826, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1183, file: !1184, line: 900, baseType: !208, size: 64, offset: 7296)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1183, file: !1184, line: 901, baseType: !208, size: 64, offset: 7360)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1183, file: !1184, line: 904, baseType: !476, size: 64, offset: 7424)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1183, file: !1184, line: 907, baseType: !476, size: 64, offset: 7488)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1183, file: !1184, line: 910, baseType: !208, size: 64, offset: 7552)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1183, file: !1184, line: 911, baseType: !208, size: 64, offset: 7616)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1183, file: !1184, line: 914, baseType: !1496, size: 640, offset: 7680)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1497, line: 123, size: 640, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1505, !1506}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1496, file: !1497, line: 124, baseType: !1500, size: 576)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 576, elements: !336)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1497, line: 108, size: 192, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1501, file: !1497, line: 109, baseType: !476, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1501, file: !1497, line: 110, baseType: !1309, size: 128, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1496, file: !1497, line: 125, baseType: !7, size: 32, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1496, file: !1497, line: 126, baseType: !7, size: 32, offset: 608)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1183, file: !1184, line: 917, baseType: !1508, size: 192, offset: 8320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1497, line: 134, size: 192, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1508, file: !1497, line: 135, baseType: !424, size: 128, align: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1508, file: !1497, line: 136, baseType: !7, size: 32, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1183, file: !1184, line: 923, baseType: !1513, size: 64, offset: 8512)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1516, line: 111, size: 1280, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1535, !1536, !1537, !1538, !1539, !1540, !1647, !1648, !1649, !1650, !1676, !1679, !1689}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1515, file: !1516, line: 112, baseType: !800, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1515, file: !1516, line: 120, baseType: !490, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1515, file: !1516, line: 121, baseType: !498, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1515, file: !1516, line: 122, baseType: !490, size: 32, offset: 96)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1515, file: !1516, line: 123, baseType: !498, size: 32, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1515, file: !1516, line: 124, baseType: !490, size: 32, offset: 160)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1515, file: !1516, line: 125, baseType: !498, size: 32, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1515, file: !1516, line: 126, baseType: !490, size: 32, offset: 224)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1515, file: !1516, line: 127, baseType: !498, size: 32, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1515, file: !1516, line: 128, baseType: !7, size: 32, offset: 288)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1515, file: !1516, line: 129, baseType: !1529, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1530, line: 26, baseType: !1531)
!1530 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1530, line: 24, size: 64, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1531, file: !1530, line: 25, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 64, elements: !282)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1515, file: !1516, line: 130, baseType: !1529, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1515, file: !1516, line: 131, baseType: !1529, size: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1515, file: !1516, line: 132, baseType: !1529, size: 64, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1515, file: !1516, line: 133, baseType: !1529, size: 64, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1515, file: !1516, line: 135, baseType: !482, size: 8, offset: 640)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1515, file: !1516, line: 137, baseType: !1541, size: 64, offset: 704)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1543, line: 189, size: 1664, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1544 = !{!1545, !1546, !1549, !1554, !1555, !1558, !1559, !1564, !1565, !1566, !1567, !1569, !1570, !1571, !1572, !1573, !1611, !1632}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1542, file: !1543, line: 190, baseType: !1196, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1542, file: !1543, line: 191, baseType: !1547, size: 32, offset: 32)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1543, line: 28, baseType: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !207, line: 98, baseType: !1410)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 192, baseType: !1550, size: 192, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 192, size: 192, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1550, file: !1543, line: 193, baseType: !254, size: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1550, file: !1543, line: 194, baseType: !813, size: 192, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1542, file: !1543, line: 199, baseType: !820, size: 256, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1542, file: !1543, line: 200, baseType: !1556, size: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1543, line: 200, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1542, file: !1543, line: 201, baseType: !209, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 202, baseType: !1560, size: 64, offset: 640)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 202, size: 64, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1560, file: !1543, line: 203, baseType: !593, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1560, file: !1543, line: 204, baseType: !593, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1542, file: !1543, line: 206, baseType: !593, size: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1542, file: !1543, line: 207, baseType: !490, size: 32, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1542, file: !1543, line: 208, baseType: !498, size: 32, offset: 800)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1542, file: !1543, line: 209, baseType: !1568, size: 32, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1543, line: 31, baseType: !612)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1542, file: !1543, line: 210, baseType: !376, size: 16, offset: 864)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1542, file: !1543, line: 211, baseType: !376, size: 16, offset: 880)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1542, file: !1543, line: 215, baseType: !1171, size: 16, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !1543, line: 222, baseType: !208, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 239, baseType: !1574, size: 320, offset: 1024)
!1574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 239, size: 320, elements: !1575)
!1575 = !{!1576, !1603}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1574, file: !1543, line: 240, baseType: !1577, size: 320)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1543, line: 108, size: 320, elements: !1578)
!1578 = !{!1579, !1580, !1592, !1595, !1602}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1577, file: !1543, line: 110, baseType: !208, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1543, line: 111, baseType: !1581, size: 64, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !1543, line: 111, size: 64, elements: !1582)
!1582 = !{!1583, !1591}
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1543, line: 112, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1581, file: !1543, line: 112, size: 64, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1584, file: !1543, line: 114, baseType: !905, size: 16)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1584, file: !1543, line: 115, baseType: !1588, size: 48, offset: 16)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 48, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 6)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1581, file: !1543, line: 121, baseType: !208, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1577, file: !1543, line: 123, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1543, line: 96, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1577, file: !1543, line: 124, baseType: !1596, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1543, line: 102, size: 192, elements: !1598)
!1598 = !{!1599, !1600, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1597, file: !1543, line: 103, baseType: !424, size: 128, align: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1597, file: !1543, line: 104, baseType: !1196, size: 32, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1597, file: !1543, line: 105, baseType: !545, size: 8, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1577, file: !1543, line: 125, baseType: !298, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1543, line: 241, baseType: !1604, size: 320)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !1543, line: 241, size: 320, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1604, file: !1543, line: 242, baseType: !208, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1604, file: !1543, line: 243, baseType: !208, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1604, file: !1543, line: 244, baseType: !1593, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1604, file: !1543, line: 245, baseType: !1596, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1604, file: !1543, line: 246, baseType: !335, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1543, line: 254, baseType: !1612, size: 256, offset: 1344)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !1543, line: 254, size: 256, elements: !1613)
!1613 = !{!1614, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1612, file: !1543, line: 255, baseType: !1615, size: 256)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1543, line: 128, size: 256, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1615, file: !1543, line: 129, baseType: !209, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1615, file: !1543, line: 130, baseType: !1619, size: 256)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !1121)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1543, line: 256, baseType: !1621, size: 256)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1543, line: 256, size: 256, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1621, file: !1543, line: 258, baseType: !254, size: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1621, file: !1543, line: 259, baseType: !1625, size: 128, offset: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1626, line: 22, size: 128, elements: !1627)
!1626 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1627 = !{!1628, !1631}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1625, file: !1626, line: 23, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1626, line: 23, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1625, file: !1626, line: 24, baseType: !208, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1542, file: !1543, line: 274, baseType: !1633, size: 64, offset: 1600)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1543, line: 170, size: 192, elements: !1635)
!1635 = !{!1636, !1645, !1646}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1634, file: !1543, line: 171, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1543, line: 165, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!214, !1541, !1641, !1643, !1541}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1634, file: !1543, line: 172, baseType: !1541, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1634, file: !1543, line: 173, baseType: !1593, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1515, file: !1516, line: 138, baseType: !1541, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1515, file: !1516, line: 139, baseType: !1541, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1515, file: !1516, line: 140, baseType: !1541, size: 64, offset: 896)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1515, file: !1516, line: 145, baseType: !1651, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1653, line: 13, size: 896, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1652, file: !1653, line: 14, baseType: !1196, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1652, file: !1653, line: 15, baseType: !800, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1652, file: !1653, line: 16, baseType: !800, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1652, file: !1653, line: 21, baseType: !263, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1652, file: !1653, line: 27, baseType: !208, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1652, file: !1653, line: 28, baseType: !208, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1652, file: !1653, line: 29, baseType: !263, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1652, file: !1653, line: 32, baseType: !692, size: 128, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1652, file: !1653, line: 33, baseType: !490, size: 32, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1652, file: !1653, line: 37, baseType: !263, size: 64, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1652, file: !1653, line: 44, baseType: !1666, size: 256, offset: 640)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1667, line: 15, size: 256, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1666, file: !1667, line: 16, baseType: !826)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1666, file: !1667, line: 18, baseType: !214, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1666, file: !1667, line: 19, baseType: !214, size: 32, offset: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1666, file: !1667, line: 20, baseType: !214, size: 32, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1666, file: !1667, line: 21, baseType: !214, size: 32, offset: 96)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1666, file: !1667, line: 22, baseType: !208, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1666, file: !1667, line: 23, baseType: !208, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1515, file: !1516, line: 146, baseType: !1677, size: 64, offset: 1024)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !491, line: 18, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1515, file: !1516, line: 147, baseType: !1680, size: 64, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1516, line: 25, size: 64, elements: !1682)
!1682 = !{!1683, !1684, !1685}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1681, file: !1516, line: 26, baseType: !800, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1681, file: !1516, line: 27, baseType: !214, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1681, file: !1516, line: 28, baseType: !1686, offset: 64)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, elements: !1687)
!1687 = !{!1688}
!1688 = !DISubrange(count: 0)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1516, line: 149, baseType: !1690, size: 128, offset: 1152)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !1516, line: 149, size: 128, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1690, file: !1516, line: 150, baseType: !214, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1690, file: !1516, line: 151, baseType: !424, size: 128, align: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1183, file: !1184, line: 926, baseType: !1513, size: 64, offset: 8576)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1183, file: !1184, line: 929, baseType: !1513, size: 64, offset: 8640)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1183, file: !1184, line: 933, baseType: !1541, size: 64, offset: 8704)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1183, file: !1184, line: 943, baseType: !216, size: 128, offset: 8768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1183, file: !1184, line: 945, baseType: !1699, size: 64, offset: 8896)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1184, line: 49, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1183, file: !1184, line: 956, baseType: !1702, size: 64, offset: 8960)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1184, line: 45, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1183, file: !1184, line: 959, baseType: !1705, size: 64, offset: 9024)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1184, line: 959, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1183, file: !1184, line: 962, baseType: !1708, size: 64, offset: 9088)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1184, line: 66, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1183, file: !1184, line: 966, baseType: !1711, size: 64, offset: 9152)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1713, line: 35, flags: DIFlagFwdDecl)
!1713 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1183, file: !1184, line: 969, baseType: !1715, size: 64, offset: 9216)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1717, line: 82, size: 7296, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1754, !1763, !1764, !1766, !1767, !1768, !1771, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1801, !1802, !1809, !1810, !1811, !1812, !1813, !1814}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1716, file: !1717, line: 83, baseType: !1196, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1716, file: !1717, line: 84, baseType: !800, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1716, file: !1717, line: 85, baseType: !214, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1716, file: !1717, line: 86, baseType: !254, size: 128, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1716, file: !1717, line: 88, baseType: !1447, size: 128, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1716, file: !1717, line: 91, baseType: !1182, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1716, file: !1717, line: 94, baseType: !1726, size: 192, offset: 448)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1727, line: 30, size: 192, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1726, file: !1727, line: 31, baseType: !254, size: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1726, file: !1727, line: 32, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1732, line: 25, baseType: !1733)
!1732 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1732, line: 23, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1733, file: !1732, line: 24, baseType: !1336, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1716, file: !1717, line: 97, baseType: !688, size: 64, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1716, file: !1717, line: 100, baseType: !214, size: 32, offset: 704)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1716, file: !1717, line: 106, baseType: !214, size: 32, offset: 736)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1716, file: !1717, line: 107, baseType: !1182, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1716, file: !1717, line: 110, baseType: !214, size: 32, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1716, file: !1717, line: 111, baseType: !7, size: 32, offset: 864)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1716, file: !1717, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1716, file: !1717, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1716, file: !1717, line: 128, baseType: !214, size: 32, offset: 928)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1716, file: !1717, line: 129, baseType: !254, size: 128, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1716, file: !1717, line: 132, baseType: !1258, size: 512, offset: 1088)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1716, file: !1717, line: 133, baseType: !1266, size: 64, offset: 1600)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1716, file: !1717, line: 140, baseType: !1749, size: 256, offset: 1664)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1750, size: 256, elements: !282)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1717, line: 38, size: 128, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1750, file: !1717, line: 39, baseType: !476, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1750, file: !1717, line: 40, baseType: !476, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1716, file: !1717, line: 146, baseType: !1755, size: 192, offset: 1920)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1717, line: 66, size: 192, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1755, file: !1717, line: 67, baseType: !1758, size: 192)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1717, line: 47, size: 192, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1758, file: !1717, line: 48, baseType: !265, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1758, file: !1717, line: 49, baseType: !265, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1758, file: !1717, line: 50, baseType: !265, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1716, file: !1717, line: 150, baseType: !1496, size: 640, offset: 2112)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1716, file: !1717, line: 153, baseType: !1765, size: 256, offset: 2752)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1437, size: 256, elements: !1121)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1716, file: !1717, line: 159, baseType: !1437, size: 64, offset: 3008)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1716, file: !1717, line: 162, baseType: !214, size: 32, offset: 3072)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1716, file: !1717, line: 164, baseType: !1769, size: 64, offset: 3136)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1717, line: 164, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1716, file: !1717, line: 175, baseType: !1772, size: 32, offset: 3200)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !447, line: 805, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 798, size: 32, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1773, file: !447, line: 803, baseType: !446, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1773, file: !447, line: 804, baseType: !238, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1716, file: !1717, line: 176, baseType: !476, size: 64, offset: 3264)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1716, file: !1717, line: 176, baseType: !476, size: 64, offset: 3328)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1716, file: !1717, line: 176, baseType: !476, size: 64, offset: 3392)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1716, file: !1717, line: 176, baseType: !476, size: 64, offset: 3456)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1716, file: !1717, line: 177, baseType: !476, size: 64, offset: 3520)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1716, file: !1717, line: 178, baseType: !476, size: 64, offset: 3584)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1716, file: !1717, line: 179, baseType: !1484, size: 128, offset: 3648)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1716, file: !1717, line: 180, baseType: !208, size: 64, offset: 3776)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1716, file: !1717, line: 180, baseType: !208, size: 64, offset: 3840)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1716, file: !1717, line: 180, baseType: !208, size: 64, offset: 3904)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1716, file: !1717, line: 180, baseType: !208, size: 64, offset: 3968)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1716, file: !1717, line: 181, baseType: !208, size: 64, offset: 4032)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1716, file: !1717, line: 181, baseType: !208, size: 64, offset: 4096)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1716, file: !1717, line: 181, baseType: !208, size: 64, offset: 4160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1716, file: !1717, line: 181, baseType: !208, size: 64, offset: 4224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1716, file: !1717, line: 182, baseType: !208, size: 64, offset: 4288)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1716, file: !1717, line: 182, baseType: !208, size: 64, offset: 4352)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1716, file: !1717, line: 182, baseType: !208, size: 64, offset: 4416)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1716, file: !1717, line: 182, baseType: !208, size: 64, offset: 4480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1716, file: !1717, line: 183, baseType: !208, size: 64, offset: 4544)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1716, file: !1717, line: 183, baseType: !208, size: 64, offset: 4608)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1716, file: !1717, line: 184, baseType: !1799, offset: 4672)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1800, line: 12, elements: !252)
!1800 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1716, file: !1717, line: 192, baseType: !478, size: 64, offset: 4672)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1716, file: !1717, line: 203, baseType: !1803, size: 2048, offset: 4736)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, size: 2048, elements: !218)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1805, line: 43, size: 128, elements: !1806)
!1805 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1804, file: !1805, line: 44, baseType: !383, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1804, file: !1805, line: 45, baseType: !383, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1716, file: !1717, line: 220, baseType: !545, size: 8, offset: 6784)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1716, file: !1717, line: 221, baseType: !1171, size: 16, offset: 6800)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1716, file: !1717, line: 222, baseType: !1171, size: 16, offset: 6816)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1716, file: !1717, line: 224, baseType: !1020, size: 64, offset: 6848)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1716, file: !1717, line: 227, baseType: !1139, size: 192, offset: 6912)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1716, file: !1717, line: 233, baseType: !1139, size: 192, offset: 7104)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1183, file: !1184, line: 970, baseType: !1816, size: 64, offset: 9280)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1717, line: 20, size: 16576, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1817, file: !1717, line: 21, baseType: !238)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1817, file: !1717, line: 22, baseType: !1196, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1817, file: !1717, line: 23, baseType: !1447, size: 128, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1817, file: !1717, line: 24, baseType: !1823, size: 16384, offset: 192)
!1823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1824, size: 16384, elements: !340)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1727, line: 49, size: 256, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1824, file: !1727, line: 50, baseType: !1827, size: 256)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1727, line: 35, size: 256, elements: !1828)
!1828 = !{!1829, !1836, !1837, !1843}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1827, file: !1727, line: 37, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1831, line: 19, baseType: !1832)
!1831 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1831, line: 18, baseType: !1834)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !214}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1827, file: !1727, line: 38, baseType: !208, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1827, file: !1727, line: 44, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1831, line: 22, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1831, line: 21, baseType: !1841)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1827, file: !1727, line: 46, baseType: !1731, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1183, file: !1184, line: 971, baseType: !1731, size: 64, offset: 9344)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1183, file: !1184, line: 972, baseType: !1731, size: 64, offset: 9408)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1183, file: !1184, line: 974, baseType: !1731, size: 64, offset: 9472)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1183, file: !1184, line: 975, baseType: !1726, size: 192, offset: 9536)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1183, file: !1184, line: 976, baseType: !208, size: 64, offset: 9728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1183, file: !1184, line: 977, baseType: !381, size: 64, offset: 9792)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1183, file: !1184, line: 978, baseType: !7, size: 32, offset: 9856)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1183, file: !1184, line: 980, baseType: !427, size: 64, offset: 9920)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1183, file: !1184, line: 989, baseType: !1853, size: 128, offset: 9984)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1854, line: 35, size: 128, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1853, file: !1854, line: 36, baseType: !214, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1853, file: !1854, line: 37, baseType: !800, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1853, file: !1854, line: 38, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1854, line: 23, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1183, file: !1184, line: 992, baseType: !476, size: 64, offset: 10112)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1183, file: !1184, line: 993, baseType: !476, size: 64, offset: 10176)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1183, file: !1184, line: 996, baseType: !238, offset: 10240)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1183, file: !1184, line: 999, baseType: !826, offset: 10240)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1183, file: !1184, line: 1001, baseType: !1866, size: 64, offset: 10240)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1184, line: 636, size: 64, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1866, file: !1184, line: 637, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1183, file: !1184, line: 1005, baseType: !805, size: 128, offset: 10304)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1183, file: !1184, line: 1007, baseType: !1182, size: 64, offset: 10432)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1183, file: !1184, line: 1009, baseType: !1873, size: 64, offset: 10496)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1184, line: 1009, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1183, file: !1184, line: 1043, baseType: !209, size: 64, offset: 10560)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1183, file: !1184, line: 1046, baseType: !1877, size: 64, offset: 10624)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1184, line: 41, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1183, file: !1184, line: 1050, baseType: !1880, size: 64, offset: 10688)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1184, line: 42, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1183, file: !1184, line: 1054, baseType: !1883, size: 64, offset: 10752)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1184, line: 55, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1183, file: !1184, line: 1056, baseType: !1886, size: 64, offset: 10816)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1184, line: 40, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1183, file: !1184, line: 1058, baseType: !1889, size: 64, offset: 10880)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1891, line: 99, size: 704, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1918, !1919}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1890, file: !1891, line: 100, baseType: !263, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1890, file: !1891, line: 101, baseType: !800, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1890, file: !1891, line: 102, baseType: !800, size: 32, offset: 96)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1890, file: !1891, line: 105, baseType: !238, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1890, file: !1891, line: 107, baseType: !376, size: 16, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1890, file: !1891, line: 109, baseType: !792, size: 128, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1890, file: !1891, line: 110, baseType: !1900, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1891, line: 73, size: 448, elements: !1902)
!1902 = !{!1903, !1906, !1907, !1912, !1917}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1901, file: !1891, line: 74, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1891, line: 74, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1901, file: !1891, line: 75, baseType: !1889, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1891, line: 83, baseType: !1908, size: 128, offset: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1891, line: 83, size: 128, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1908, file: !1891, line: 84, baseType: !254, size: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1908, file: !1891, line: 85, baseType: !981, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1891, line: 87, baseType: !1913, size: 128, offset: 256)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1891, line: 87, size: 128, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1913, file: !1891, line: 88, baseType: !692, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1913, file: !1891, line: 89, baseType: !424, size: 128, align: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !1891, line: 92, baseType: !7, size: 32, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1890, file: !1891, line: 111, baseType: !688, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1890, file: !1891, line: 113, baseType: !260, size: 256, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1183, file: !1184, line: 1061, baseType: !1921, size: 64, offset: 10944)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1184, line: 43, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1183, file: !1184, line: 1064, baseType: !208, size: 64, offset: 11008)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1183, file: !1184, line: 1065, baseType: !1925, size: 64, offset: 11072)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1727, line: 14, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1727, line: 12, size: 384, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1927, file: !1727, line: 13, baseType: !1930, size: 384)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1727, line: 13, size: 384, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1930, file: !1727, line: 13, baseType: !214, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1930, file: !1727, line: 13, baseType: !214, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1930, file: !1727, line: 13, baseType: !214, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1930, file: !1727, line: 13, baseType: !1936, size: 256, offset: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1937, line: 32, size: 256, elements: !1938)
!1937 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1938 = !{!1939, !1944, !1957, !1963, !1972, !1992, !1997}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1936, file: !1937, line: 37, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1937, line: 34, size: 64, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1940, file: !1937, line: 35, baseType: !1426, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1940, file: !1937, line: 36, baseType: !496, size: 32, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1936, file: !1937, line: 45, baseType: !1945, size: 192)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1937, line: 40, size: 192, elements: !1946)
!1946 = !{!1947, !1949, !1950, !1956}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1945, file: !1937, line: 41, baseType: !1948, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !368, line: 95, baseType: !214)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1945, file: !1937, line: 42, baseType: !214, size: 32, offset: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1945, file: !1937, line: 43, baseType: !1951, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1937, line: 11, baseType: !1952)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1937, line: 8, size: 64, elements: !1953)
!1953 = !{!1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1952, file: !1937, line: 9, baseType: !214, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1952, file: !1937, line: 10, baseType: !209, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1945, file: !1937, line: 44, baseType: !214, size: 32, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1936, file: !1937, line: 52, baseType: !1958, size: 128)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1937, line: 48, size: 128, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1958, file: !1937, line: 49, baseType: !1426, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1958, file: !1937, line: 50, baseType: !496, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1958, file: !1937, line: 51, baseType: !1951, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1936, file: !1937, line: 61, baseType: !1964, size: 256)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1937, line: 55, size: 256, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1971}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1964, file: !1937, line: 56, baseType: !1426, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1964, file: !1937, line: 57, baseType: !496, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1964, file: !1937, line: 58, baseType: !214, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1964, file: !1937, line: 59, baseType: !1970, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !368, line: 94, baseType: !369)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1964, file: !1937, line: 60, baseType: !1970, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1936, file: !1937, line: 95, baseType: !1973, size: 256)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1937, line: 64, size: 256, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1973, file: !1937, line: 65, baseType: !209, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !1937, line: 77, baseType: !1977, size: 192, offset: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1973, file: !1937, line: 77, size: 192, elements: !1978)
!1978 = !{!1979, !1980, !1987}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1977, file: !1937, line: 82, baseType: !1171, size: 16)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1977, file: !1937, line: 88, baseType: !1981, size: 192)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1977, file: !1937, line: 84, size: 192, elements: !1982)
!1982 = !{!1983, !1985, !1986}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1981, file: !1937, line: 85, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, elements: !1296)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1981, file: !1937, line: 86, baseType: !209, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1981, file: !1937, line: 87, baseType: !209, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1977, file: !1937, line: 93, baseType: !1988, size: 96)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1977, file: !1937, line: 90, size: 96, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1988, file: !1937, line: 91, baseType: !1984, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1988, file: !1937, line: 92, baseType: !223, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1936, file: !1937, line: 101, baseType: !1993, size: 128)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1937, line: 98, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1993, file: !1937, line: 99, baseType: !115, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1993, file: !1937, line: 100, baseType: !214, size: 32, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1936, file: !1937, line: 108, baseType: !1998, size: 128)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !1937, line: 104, size: 128, elements: !1999)
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1998, file: !1937, line: 105, baseType: !209, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1998, file: !1937, line: 106, baseType: !214, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1998, file: !1937, line: 107, baseType: !7, size: 32, offset: 96)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1183, file: !1184, line: 1067, baseType: !1799, offset: 11136)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1183, file: !1184, line: 1099, baseType: !2005, size: 64, offset: 11136)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1184, line: 56, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1183, file: !1184, line: 1103, baseType: !254, size: 128, offset: 11200)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1183, file: !1184, line: 1104, baseType: !2009, size: 64, offset: 11328)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1184, line: 46, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1183, file: !1184, line: 1105, baseType: !1139, size: 192, offset: 11392)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1183, file: !1184, line: 1106, baseType: !7, size: 32, offset: 11584)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1183, file: !1184, line: 1109, baseType: !2014, size: 128, offset: 11648)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2015, size: 128, elements: !282)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1184, line: 51, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1183, file: !1184, line: 1110, baseType: !1139, size: 192, offset: 11776)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1183, file: !1184, line: 1111, baseType: !254, size: 128, offset: 11968)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1183, file: !1184, line: 1173, baseType: !2020, size: 64, offset: 12096)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2022, line: 62, size: 256, align: 256, elements: !2023)
!2022 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2023 = !{!2024, !2025, !2026, !2031}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2021, file: !2022, line: 75, baseType: !223, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2021, file: !2022, line: 90, baseType: !223, size: 32, offset: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2021, file: !2022, line: 124, baseType: !2027, size: 64, offset: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !2022, line: 109, size: 64, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2027, file: !2022, line: 110, baseType: !477, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2027, file: !2022, line: 112, baseType: !477, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2021, file: !2022, line: 144, baseType: !223, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1183, file: !1184, line: 1174, baseType: !221, size: 32, offset: 12160)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1183, file: !1184, line: 1179, baseType: !208, size: 64, offset: 12224)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1183, file: !1184, line: 1182, baseType: !2035, size: 128, offset: 12288)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1117, line: 76, size: 128, elements: !2036)
!2036 = !{!2037, !2042, !2043}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2035, file: !1117, line: 85, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2039, line: 7, size: 64, elements: !2040)
!2039 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2038, file: !2039, line: 12, baseType: !1333, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2035, file: !1117, line: 88, baseType: !545, size: 8, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2035, file: !1117, line: 95, baseType: !545, size: 8, offset: 72)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !1184, line: 1184, baseType: !2045, size: 128, offset: 12416)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !1184, line: 1184, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2045, file: !1184, line: 1185, baseType: !1196, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2045, file: !1184, line: 1186, baseType: !424, size: 128, align: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1183, file: !1184, line: 1190, baseType: !2050, size: 64, offset: 12544)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1184, line: 53, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1183, file: !1184, line: 1192, baseType: !2053, size: 128, offset: 12608)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1117, line: 64, size: 128, elements: !2054)
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2053, file: !1117, line: 65, baseType: !774, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2053, file: !1117, line: 67, baseType: !223, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2053, file: !1117, line: 68, baseType: !223, size: 32, offset: 96)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1183, file: !1184, line: 1206, baseType: !214, size: 32, offset: 12736)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1183, file: !1184, line: 1207, baseType: !214, size: 32, offset: 12768)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1183, file: !1184, line: 1209, baseType: !208, size: 64, offset: 12800)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1183, file: !1184, line: 1219, baseType: !476, size: 64, offset: 12864)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1183, file: !1184, line: 1220, baseType: !476, size: 64, offset: 12928)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1183, file: !1184, line: 1317, baseType: !214, size: 32, offset: 12992)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1183, file: !1184, line: 1319, baseType: !1182, size: 64, offset: 13056)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1183, file: !1184, line: 1322, baseType: !2066, size: 64, offset: 13120)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1184, line: 1322, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1183, file: !1184, line: 1326, baseType: !1196, size: 32, offset: 13184)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1183, file: !1184, line: 1342, baseType: !209, size: 64, offset: 13248)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1183, file: !1184, line: 1343, baseType: !477, size: 64, offset: 13312)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1183, file: !1184, line: 1344, baseType: !476, size: 64, offset: 13376)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1183, file: !1184, line: 1345, baseType: !477, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1183, file: !1184, line: 1346, baseType: !477, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1183, file: !1184, line: 1347, baseType: !477, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1183, file: !1184, line: 1348, baseType: !424, size: 128, align: 64, offset: 13504)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1183, file: !1184, line: 1358, baseType: !2077, size: 34816, offset: 13824)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2078, line: 485, size: 34816, elements: !2079)
!2078 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2109, !2110, !2111, !2112, !2113, !2114, !2117, !2118, !2119}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2077, file: !2078, line: 487, baseType: !2081, size: 192)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2082, size: 192, elements: !336)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2083, line: 16, size: 64, elements: !2084)
!2083 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2084 = !{!2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2082, file: !2083, line: 17, baseType: !905, size: 16)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2082, file: !2083, line: 18, baseType: !905, size: 16, offset: 16)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2082, file: !2083, line: 19, baseType: !905, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2082, file: !2083, line: 19, baseType: !905, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2082, file: !2083, line: 19, baseType: !905, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2082, file: !2083, line: 19, baseType: !905, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2082, file: !2083, line: 19, baseType: !905, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2082, file: !2083, line: 20, baseType: !905, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2082, file: !2083, line: 20, baseType: !905, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2082, file: !2083, line: 20, baseType: !905, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2082, file: !2083, line: 20, baseType: !905, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2082, file: !2083, line: 20, baseType: !905, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2082, file: !2083, line: 20, baseType: !905, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2077, file: !2078, line: 491, baseType: !208, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2077, file: !2078, line: 495, baseType: !376, size: 16, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2077, file: !2078, line: 496, baseType: !376, size: 16, offset: 272)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2077, file: !2078, line: 497, baseType: !376, size: 16, offset: 288)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2077, file: !2078, line: 498, baseType: !376, size: 16, offset: 304)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2077, file: !2078, line: 502, baseType: !208, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2077, file: !2078, line: 503, baseType: !208, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2077, file: !2078, line: 514, baseType: !2106, size: 256, offset: 448)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2107, size: 256, elements: !1121)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2078, line: 483, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2077, file: !2078, line: 516, baseType: !208, size: 64, offset: 704)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2077, file: !2078, line: 518, baseType: !208, size: 64, offset: 768)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2077, file: !2078, line: 520, baseType: !208, size: 64, offset: 832)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2077, file: !2078, line: 521, baseType: !208, size: 64, offset: 896)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2077, file: !2078, line: 522, baseType: !208, size: 64, offset: 960)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2077, file: !2078, line: 528, baseType: !2115, size: 64, offset: 1024)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2078, line: 10, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2077, file: !2078, line: 535, baseType: !208, size: 64, offset: 1088)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2077, file: !2078, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2077, file: !2078, line: 540, baseType: !2120, size: 33280, offset: 1536)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2121, line: 317, size: 33280, elements: !2122)
!2121 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124, !2125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2120, file: !2121, line: 330, baseType: !7, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2120, file: !2121, line: 337, baseType: !208, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2120, file: !2121, line: 348, baseType: !2126, size: 32768, offset: 512)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2121, line: 304, size: 32768, elements: !2127)
!2127 = !{!2128, !2143, !2182, !2232, !2245}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2126, file: !2121, line: 305, baseType: !2129, size: 896)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2121, line: 12, size: 896, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2142}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2129, file: !2121, line: 13, baseType: !221, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2129, file: !2121, line: 14, baseType: !221, size: 32, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2129, file: !2121, line: 15, baseType: !221, size: 32, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2129, file: !2121, line: 16, baseType: !221, size: 32, offset: 96)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2129, file: !2121, line: 17, baseType: !221, size: 32, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2129, file: !2121, line: 18, baseType: !221, size: 32, offset: 160)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2129, file: !2121, line: 19, baseType: !221, size: 32, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2129, file: !2121, line: 22, baseType: !2139, size: 640, offset: 224)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 640, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 20)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2129, file: !2121, line: 25, baseType: !221, size: 32, offset: 864)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2126, file: !2121, line: 306, baseType: !2144, size: 4096, align: 128)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2121, line: 34, size: 4096, align: 128, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2165, !2166, !2167, !2171, !2173, !2177}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2144, file: !2121, line: 35, baseType: !905, size: 16)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2144, file: !2121, line: 36, baseType: !905, size: 16, offset: 16)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2144, file: !2121, line: 37, baseType: !905, size: 16, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2144, file: !2121, line: 38, baseType: !905, size: 16, offset: 48)
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2144, file: !2121, line: 39, baseType: !2151, size: 128, offset: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2144, file: !2121, line: 39, size: 128, elements: !2152)
!2152 = !{!2153, !2158}
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2121, line: 40, baseType: !2154, size: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2151, file: !2121, line: 40, size: 128, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2154, file: !2121, line: 41, baseType: !476, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2154, file: !2121, line: 42, baseType: !476, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2121, line: 44, baseType: !2159, size: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2151, file: !2121, line: 44, size: 128, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2159, file: !2121, line: 45, baseType: !221, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2159, file: !2121, line: 46, baseType: !221, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2159, file: !2121, line: 47, baseType: !221, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2159, file: !2121, line: 48, baseType: !221, size: 32, offset: 96)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2144, file: !2121, line: 51, baseType: !221, size: 32, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2144, file: !2121, line: 52, baseType: !221, size: 32, offset: 224)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2144, file: !2121, line: 55, baseType: !2168, size: 1024, offset: 256)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1024, elements: !2169)
!2169 = !{!2170}
!2170 = !DISubrange(count: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2144, file: !2121, line: 58, baseType: !2172, size: 2048, offset: 1280)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 2048, elements: !340)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2144, file: !2121, line: 60, baseType: !2174, size: 384, offset: 3328)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 384, elements: !2175)
!2175 = !{!2176}
!2176 = !DISubrange(count: 12)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2144, file: !2121, line: 62, baseType: !2178, size: 384, offset: 3712)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2144, file: !2121, line: 62, size: 384, elements: !2179)
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2178, file: !2121, line: 63, baseType: !2174, size: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2178, file: !2121, line: 64, baseType: !2174, size: 384)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2126, file: !2121, line: 307, baseType: !2183, size: 1088)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2121, line: 79, size: 1088, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2231}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2183, file: !2121, line: 80, baseType: !221, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2183, file: !2121, line: 81, baseType: !221, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2183, file: !2121, line: 82, baseType: !221, size: 32, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2183, file: !2121, line: 83, baseType: !221, size: 32, offset: 96)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2183, file: !2121, line: 84, baseType: !221, size: 32, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2183, file: !2121, line: 85, baseType: !221, size: 32, offset: 160)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2183, file: !2121, line: 86, baseType: !221, size: 32, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2183, file: !2121, line: 88, baseType: !2139, size: 640, offset: 224)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2183, file: !2121, line: 89, baseType: !1318, size: 8, offset: 864)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2183, file: !2121, line: 90, baseType: !1318, size: 8, offset: 872)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2183, file: !2121, line: 91, baseType: !1318, size: 8, offset: 880)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2183, file: !2121, line: 92, baseType: !1318, size: 8, offset: 888)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2183, file: !2121, line: 93, baseType: !1318, size: 8, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2183, file: !2121, line: 94, baseType: !1318, size: 8, offset: 904)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2183, file: !2121, line: 95, baseType: !2200, size: 64, offset: 960)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2202, line: 11, size: 128, elements: !2203)
!2202 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2203 = !{!2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2201, file: !2202, line: 12, baseType: !115, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2201, file: !2202, line: 13, baseType: !2206, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2208, line: 56, size: 1344, elements: !2209)
!2208 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2207, file: !2208, line: 61, baseType: !208, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2207, file: !2208, line: 62, baseType: !208, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2207, file: !2208, line: 63, baseType: !208, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2207, file: !2208, line: 64, baseType: !208, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2207, file: !2208, line: 65, baseType: !208, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2207, file: !2208, line: 66, baseType: !208, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2207, file: !2208, line: 68, baseType: !208, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2207, file: !2208, line: 69, baseType: !208, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2207, file: !2208, line: 70, baseType: !208, size: 64, offset: 512)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2207, file: !2208, line: 71, baseType: !208, size: 64, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2207, file: !2208, line: 72, baseType: !208, size: 64, offset: 640)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2207, file: !2208, line: 73, baseType: !208, size: 64, offset: 704)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2207, file: !2208, line: 74, baseType: !208, size: 64, offset: 768)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2207, file: !2208, line: 75, baseType: !208, size: 64, offset: 832)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2207, file: !2208, line: 76, baseType: !208, size: 64, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2207, file: !2208, line: 81, baseType: !208, size: 64, offset: 960)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2207, file: !2208, line: 83, baseType: !208, size: 64, offset: 1024)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2207, file: !2208, line: 84, baseType: !208, size: 64, offset: 1088)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2207, file: !2208, line: 85, baseType: !208, size: 64, offset: 1152)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2207, file: !2208, line: 86, baseType: !208, size: 64, offset: 1216)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2207, file: !2208, line: 87, baseType: !208, size: 64, offset: 1280)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2183, file: !2121, line: 96, baseType: !221, size: 32, offset: 1024)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2126, file: !2121, line: 308, baseType: !2233, size: 4608, align: 512)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2121, line: 289, size: 4608, align: 512, elements: !2234)
!2234 = !{!2235, !2236, !2243}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2233, file: !2121, line: 290, baseType: !2144, size: 4096, align: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2233, file: !2121, line: 291, baseType: !2237, size: 512, offset: 4096)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2121, line: 268, size: 512, elements: !2238)
!2238 = !{!2239, !2240, !2241}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2237, file: !2121, line: 269, baseType: !476, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2237, file: !2121, line: 270, baseType: !476, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2237, file: !2121, line: 271, baseType: !2242, size: 384, offset: 128)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 384, elements: !1589)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2233, file: !2121, line: 292, baseType: !2244, offset: 4608)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, elements: !1687)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2126, file: !2121, line: 309, baseType: !2246, size: 32768)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 32768, elements: !2247)
!2247 = !{!2248}
!2248 = !DISubrange(count: 4096)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1179, file: !776, line: 378, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1175, file: !776, line: 384, baseType: !1468, size: 192, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1024, file: !776, line: 500, baseType: !238, offset: 6656)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1024, file: !776, line: 501, baseType: !2254, size: 64, offset: 6656)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !776, line: 387, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1024, file: !776, line: 516, baseType: !1677, size: 64, offset: 6720)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1024, file: !776, line: 519, baseType: !411, size: 64, offset: 6784)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1024, file: !776, line: 521, baseType: !2259, size: 64, offset: 6848)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !776, line: 521, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1024, file: !776, line: 545, baseType: !800, size: 32, offset: 6912)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1024, file: !776, line: 548, baseType: !545, size: 8, offset: 6944)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1024, file: !776, line: 550, baseType: !2264, offset: 6952)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2265, line: 142, elements: !252)
!2265 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1024, file: !776, line: 554, baseType: !260, size: 256, offset: 6976)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1024, file: !776, line: 557, baseType: !221, size: 32, offset: 7232)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1021, file: !776, line: 565, baseType: !2269, offset: 7296)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, elements: !2270)
!2270 = !{!2271}
!2271 = !DISubrange(count: -1)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1017, file: !776, line: 151, baseType: !800, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1010, file: !776, line: 156, baseType: !238, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !776, line: 159, baseType: !2275, size: 128)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !776, line: 159, size: 128, elements: !2276)
!2276 = !{!2277, !2280}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2275, file: !776, line: 161, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !776, line: 161, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2275, file: !776, line: 162, baseType: !209, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !780, file: !776, line: 176, baseType: !424, size: 128, align: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !776, line: 179, baseType: !2283, size: 32, offset: 384)
!2283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !776, line: 179, size: 32, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2283, file: !776, line: 184, baseType: !800, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2283, file: !776, line: 192, baseType: !7, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2283, file: !776, line: 194, baseType: !7, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2283, file: !776, line: 195, baseType: !214, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !775, file: !776, line: 199, baseType: !800, size: 32, offset: 416)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !710, file: !38, line: 1964, baseType: !2291, size: 64, offset: 1344)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!115, !652, !2294}
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2296, line: 12, size: 256, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !{!2298, !2299, !2300, !2301, !2302}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2295, file: !2296, line: 13, baseType: !206, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2295, file: !2296, line: 16, baseType: !214, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2295, file: !2296, line: 23, baseType: !208, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2295, file: !2296, line: 30, baseType: !208, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2295, file: !2296, line: 33, baseType: !2303, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !776, line: 27, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !710, file: !38, line: 1966, baseType: !2291, size: 64, offset: 1408)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !653, file: !38, line: 1424, baseType: !2307, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2310)
!2310 = !{!2311, !2357, !2361, !2365, !2366, !2367, !2368, !2369, !2374, !2379, !2383}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2309, file: !32, line: 323, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!214, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2342, !2343, !2344}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2316, file: !32, line: 295, baseType: !692, size: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2316, file: !32, line: 296, baseType: !254, size: 128, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2316, file: !32, line: 297, baseType: !254, size: 128, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2316, file: !32, line: 298, baseType: !254, size: 128, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2316, file: !32, line: 299, baseType: !1139, size: 192, offset: 512)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2316, file: !32, line: 300, baseType: !238, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2316, file: !32, line: 301, baseType: !800, size: 32, offset: 704)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2316, file: !32, line: 302, baseType: !652, size: 64, offset: 768)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2316, file: !32, line: 303, baseType: !2327, size: 64, offset: 832)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2328)
!2328 = !{!2329, !2341}
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2327, file: !32, line: 69, baseType: !2330, size: 32)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2327, file: !32, line: 69, size: 32, elements: !2331)
!2331 = !{!2332, !2333, !2334}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2330, file: !32, line: 70, baseType: !490, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2330, file: !32, line: 71, baseType: !498, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2330, file: !32, line: 72, baseType: !2335, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2336, line: 24, baseType: !2337)
!2336 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2336, line: 22, size: 32, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2337, file: !2336, line: 23, baseType: !2340, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2336, line: 20, baseType: !496)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2327, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2316, file: !32, line: 304, baseType: !586, size: 64, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2316, file: !32, line: 305, baseType: !208, size: 64, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2316, file: !32, line: 306, baseType: !2345, size: 576, offset: 1024)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2346)
!2346 = !{!2347, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2345, file: !32, line: 206, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !271)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2345, file: !32, line: 207, baseType: !2348, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2345, file: !32, line: 208, baseType: !2348, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2345, file: !32, line: 209, baseType: !2348, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2345, file: !32, line: 210, baseType: !2348, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2345, file: !32, line: 211, baseType: !2348, size: 64, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2345, file: !32, line: 212, baseType: !2348, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2345, file: !32, line: 213, baseType: !593, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2345, file: !32, line: 214, baseType: !593, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2309, file: !32, line: 324, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!2315, !652, !214}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2309, file: !32, line: 325, baseType: !2362, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2315}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2309, file: !32, line: 326, baseType: !2312, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2309, file: !32, line: 327, baseType: !2312, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2309, file: !32, line: 328, baseType: !2312, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2309, file: !32, line: 329, baseType: !738, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2309, file: !32, line: 332, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!2373, !484}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2309, file: !32, line: 333, baseType: !2375, size: 64, offset: 512)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!214, !484, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2309, file: !32, line: 335, baseType: !2380, size: 64, offset: 576)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!214, !484, !2373}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2309, file: !32, line: 337, baseType: !2384, size: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!214, !652, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !653, file: !38, line: 1425, baseType: !2389, size: 64, offset: 512)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2392)
!2392 = !{!2393, !2397, !2398, !2402, !2403, !2404, !2419, !2442, !2446, !2447, !2470}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2391, file: !32, line: 429, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!214, !652, !214, !214, !602}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2391, file: !32, line: 430, baseType: !738, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2391, file: !32, line: 431, baseType: !2399, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!214, !652, !7}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2391, file: !32, line: 432, baseType: !2399, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2391, file: !32, line: 433, baseType: !738, size: 64, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2391, file: !32, line: 434, baseType: !2405, size: 64, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!214, !652, !214, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2409, file: !32, line: 416, baseType: !214, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2409, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2409, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2409, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2409, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2409, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2409, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2409, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2391, file: !32, line: 435, baseType: !2420, size: 64, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!214, !652, !2327, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2424, file: !32, line: 344, baseType: !214, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2424, file: !32, line: 345, baseType: !476, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2424, file: !32, line: 346, baseType: !476, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2424, file: !32, line: 347, baseType: !476, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2424, file: !32, line: 348, baseType: !476, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2424, file: !32, line: 349, baseType: !476, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2424, file: !32, line: 350, baseType: !476, size: 64, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2424, file: !32, line: 351, baseType: !269, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2424, file: !32, line: 353, baseType: !269, size: 64, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2424, file: !32, line: 354, baseType: !214, size: 32, offset: 576)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2424, file: !32, line: 355, baseType: !214, size: 32, offset: 608)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2424, file: !32, line: 356, baseType: !476, size: 64, offset: 640)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2424, file: !32, line: 357, baseType: !476, size: 64, offset: 704)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2424, file: !32, line: 358, baseType: !476, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2424, file: !32, line: 359, baseType: !269, size: 64, offset: 832)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2424, file: !32, line: 360, baseType: !214, size: 32, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2391, file: !32, line: 436, baseType: !2443, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!214, !652, !2387, !2423}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2391, file: !32, line: 438, baseType: !2420, size: 64, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2391, file: !32, line: 439, baseType: !2448, size: 64, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!214, !652, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2453)
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2452, file: !32, line: 410, baseType: !7, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2452, file: !32, line: 411, baseType: !2456, size: 1344, offset: 64)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2457, size: 1344, elements: !336)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2469}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2457, file: !32, line: 396, baseType: !7, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2457, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2457, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2457, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2457, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2457, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2457, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2457, file: !32, line: 404, baseType: !478, size: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2457, file: !32, line: 405, baseType: !2468, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !207, line: 126, baseType: !476)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2457, file: !32, line: 406, baseType: !2468, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2391, file: !32, line: 440, baseType: !2399, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !653, file: !38, line: 1426, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2474)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !653, file: !38, line: 1427, baseType: !208, size: 64, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !653, file: !38, line: 1428, baseType: !208, size: 64, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !653, file: !38, line: 1429, baseType: !208, size: 64, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !653, file: !38, line: 1430, baseType: !441, size: 64, offset: 832)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !653, file: !38, line: 1431, baseType: !820, size: 256, offset: 896)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !653, file: !38, line: 1432, baseType: !214, size: 32, offset: 1152)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !653, file: !38, line: 1433, baseType: !800, size: 32, offset: 1184)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !653, file: !38, line: 1437, baseType: !2483, size: 64, offset: 1216)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2486)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !653, file: !38, line: 1449, baseType: !2488, size: 64, offset: 1280)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !457, line: 34, size: 64, elements: !2489)
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2488, file: !457, line: 35, baseType: !460, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !653, file: !38, line: 1450, baseType: !254, size: 128, offset: 1344)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !653, file: !38, line: 1451, baseType: !2493, size: 64, offset: 1472)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !653, file: !38, line: 1452, baseType: !1886, size: 64, offset: 1536)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !653, file: !38, line: 1453, baseType: !2497, size: 64, offset: 1600)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !653, file: !38, line: 1454, baseType: !692, size: 128, offset: 1664)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !653, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !653, file: !38, line: 1456, baseType: !2502, size: 2432, offset: 1856)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2508, !2540}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2502, file: !32, line: 519, baseType: !7, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2502, file: !32, line: 520, baseType: !820, size: 256, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2502, file: !32, line: 521, baseType: !2507, size: 192, offset: 320)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 192, elements: !336)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2502, file: !32, line: 522, baseType: !2509, size: 1728, offset: 512)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2510, size: 1728, elements: !336)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2511)
!2511 = !{!2512, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2510, file: !32, line: 223, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2515)
!2515 = !{!2516, !2517, !2530, !2531}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2514, file: !32, line: 444, baseType: !214, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2514, file: !32, line: 445, baseType: !2518, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2520, file: !32, line: 311, baseType: !738, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2520, file: !32, line: 312, baseType: !738, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2520, file: !32, line: 313, baseType: !738, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2520, file: !32, line: 314, baseType: !738, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2520, file: !32, line: 315, baseType: !2312, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2520, file: !32, line: 316, baseType: !2312, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2520, file: !32, line: 317, baseType: !2312, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2520, file: !32, line: 318, baseType: !2384, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2514, file: !32, line: 446, baseType: !203, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2514, file: !32, line: 447, baseType: !2513, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2510, file: !32, line: 224, baseType: !214, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2510, file: !32, line: 226, baseType: !254, size: 128, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2510, file: !32, line: 227, baseType: !208, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2510, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2510, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2510, file: !32, line: 230, baseType: !2348, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2510, file: !32, line: 231, baseType: !2348, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2510, file: !32, line: 232, baseType: !209, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2502, file: !32, line: 523, baseType: !2541, size: 192, offset: 2240)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2518, size: 192, elements: !336)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !653, file: !38, line: 1458, baseType: !2543, size: 2112, offset: 4288)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2544)
!2544 = !{!2545, !2546, !2547}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2543, file: !38, line: 1411, baseType: !214, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2543, file: !38, line: 1412, baseType: !1447, size: 128, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2543, file: !38, line: 1413, baseType: !2548, size: 1920, offset: 192)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2549, size: 1920, elements: !336)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2550, line: 12, size: 640, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2551 = !{!2552, !2560, !2562, !2567, !2568}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2549, file: !2550, line: 13, baseType: !2553, size: 320)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2554, line: 17, size: 320, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2555 = !{!2556, !2557, !2558, !2559}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2553, file: !2554, line: 18, baseType: !214, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2553, file: !2554, line: 19, baseType: !214, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2553, file: !2554, line: 20, baseType: !1447, size: 128, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2553, file: !2554, line: 22, baseType: !424, size: 128, align: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2549, file: !2550, line: 14, baseType: !2561, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2549, file: !2550, line: 15, baseType: !2563, size: 64, offset: 384)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2564, line: 16, size: 64, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2565 = !{!2566}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2563, file: !2564, line: 17, baseType: !1182, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2549, file: !2550, line: 16, baseType: !1447, size: 128, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2549, file: !2550, line: 17, baseType: !800, size: 32, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !653, file: !38, line: 1465, baseType: !209, size: 64, offset: 6400)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !653, file: !38, line: 1468, baseType: !221, size: 32, offset: 6464)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !653, file: !38, line: 1470, baseType: !593, size: 64, offset: 6528)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !653, file: !38, line: 1471, baseType: !593, size: 64, offset: 6592)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !653, file: !38, line: 1473, baseType: !223, size: 32, offset: 6656)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !653, file: !38, line: 1474, baseType: !2575, size: 64, offset: 6720)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !653, file: !38, line: 1477, baseType: !2578, size: 256, offset: 6784)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !2169)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !653, file: !38, line: 1478, baseType: !2580, size: 128, offset: 7040)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2581, line: 18, baseType: !2582)
!2581 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2581, line: 16, size: 128, elements: !2583)
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2582, file: !2581, line: 17, baseType: !2585, size: 128)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 128, elements: !218)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !653, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !653, file: !38, line: 1481, baseType: !2588, size: 32, offset: 7200)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !207, line: 150, baseType: !7)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !653, file: !38, line: 1487, baseType: !1139, size: 192, offset: 7232)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !653, file: !38, line: 1493, baseType: !298, size: 64, offset: 7424)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !653, file: !38, line: 1495, baseType: !2592, size: 64, offset: 7488)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2594)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !439, line: 135, size: 1024, align: 512, elements: !2595)
!2595 = !{!2596, !2600, !2601, !2608, !2614, !2618, !2622, !2626, !2627, !2631, !2635, !2640, !2644}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2594, file: !439, line: 136, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!214, !441, !7}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2594, file: !439, line: 137, baseType: !2597, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2594, file: !439, line: 138, baseType: !2602, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!214, !2605, !2607}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2594, file: !439, line: 139, baseType: !2609, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!214, !2605, !7, !298, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2594, file: !439, line: 141, baseType: !2615, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!214, !2605}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2594, file: !439, line: 142, baseType: !2619, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!214, !441}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2594, file: !439, line: 143, baseType: !2623, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !441}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2594, file: !439, line: 144, baseType: !2623, size: 64, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2594, file: !439, line: 145, baseType: !2628, size: 64, offset: 512)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !441, !484}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2594, file: !439, line: 146, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!335, !441, !335, !214}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2594, file: !439, line: 147, baseType: !2636, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!437, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2594, file: !439, line: 148, baseType: !2641, size: 64, offset: 704)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!214, !602, !545}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2594, file: !439, line: 149, baseType: !2645, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!441, !441, !2648}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !653, file: !38, line: 1500, baseType: !214, size: 32, offset: 7552)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !653, file: !38, line: 1502, baseType: !2652, size: 448, offset: 7616)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2296, line: 60, size: 448, elements: !2653)
!2653 = !{!2654, !2659, !2660, !2661, !2662, !2663, !2664}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2652, file: !2296, line: 61, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!208, !2658, !2294}
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2652, file: !2296, line: 63, baseType: !2655, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2652, file: !2296, line: 66, baseType: !115, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2652, file: !2296, line: 67, baseType: !214, size: 32, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2652, file: !2296, line: 68, baseType: !7, size: 32, offset: 224)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2652, file: !2296, line: 71, baseType: !254, size: 128, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2652, file: !2296, line: 77, baseType: !2665, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !653, file: !38, line: 1505, baseType: !263, size: 64, offset: 8064)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !653, file: !38, line: 1508, baseType: !263, size: 64, offset: 8128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !653, file: !38, line: 1511, baseType: !214, size: 32, offset: 8192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !653, file: !38, line: 1514, baseType: !955, size: 32, offset: 8224)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !653, file: !38, line: 1517, baseType: !2671, size: 64, offset: 8256)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !114, line: 18, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !653, file: !38, line: 1518, baseType: !688, size: 64, offset: 8320)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !653, file: !38, line: 1525, baseType: !1677, size: 64, offset: 8384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !653, file: !38, line: 1532, baseType: !2676, size: 64, offset: 8448)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2677, line: 52, size: 64, elements: !2678)
!2677 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2678 = !{!2679}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2676, file: !2677, line: 53, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2677, line: 40, size: 256, elements: !2682)
!2682 = !{!2683, !2684, !2689}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2681, file: !2677, line: 42, baseType: !238)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2681, file: !2677, line: 44, baseType: !2685, size: 192)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2677, line: 28, size: 192, elements: !2686)
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2685, file: !2677, line: 29, baseType: !254, size: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2685, file: !2677, line: 31, baseType: !115, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2681, file: !2677, line: 49, baseType: !115, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !653, file: !38, line: 1533, baseType: !2676, size: 64, offset: 8512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !653, file: !38, line: 1534, baseType: !424, size: 128, align: 64, offset: 8576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !653, file: !38, line: 1535, baseType: !260, size: 256, offset: 8704)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !653, file: !38, line: 1537, baseType: !1139, size: 192, offset: 8960)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !653, file: !38, line: 1542, baseType: !214, size: 32, offset: 9152)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !653, file: !38, line: 1545, baseType: !238, offset: 9184)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !653, file: !38, line: 1546, baseType: !254, size: 128, offset: 9216)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !653, file: !38, line: 1548, baseType: !238, offset: 9344)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !653, file: !38, line: 1549, baseType: !254, size: 128, offset: 9344)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !485, file: !38, line: 624, baseType: !787, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !485, file: !38, line: 631, baseType: !208, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !38, line: 639, baseType: !2702, size: 32, offset: 384)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !38, line: 639, size: 32, elements: !2703)
!2703 = !{!2704, !2706}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2702, file: !38, line: 640, baseType: !2705, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2702, file: !38, line: 641, baseType: !7, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !485, file: !38, line: 643, baseType: !568, size: 32, offset: 416)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !485, file: !38, line: 644, baseType: !586, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !485, file: !38, line: 645, baseType: !589, size: 128, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !485, file: !38, line: 646, baseType: !589, size: 128, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !485, file: !38, line: 647, baseType: !589, size: 128, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !485, file: !38, line: 648, baseType: !238, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !485, file: !38, line: 649, baseType: !376, size: 16, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !485, file: !38, line: 650, baseType: !1318, size: 8, offset: 912)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !485, file: !38, line: 651, baseType: !1318, size: 8, offset: 920)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !485, file: !38, line: 652, baseType: !2468, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !485, file: !38, line: 659, baseType: !208, size: 64, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !485, file: !38, line: 660, baseType: !820, size: 256, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !485, file: !38, line: 662, baseType: !208, size: 64, offset: 1344)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !485, file: !38, line: 663, baseType: !208, size: 64, offset: 1408)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !485, file: !38, line: 665, baseType: !692, size: 128, offset: 1472)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !485, file: !38, line: 666, baseType: !254, size: 128, offset: 1600)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !485, file: !38, line: 675, baseType: !254, size: 128, offset: 1728)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !485, file: !38, line: 676, baseType: !254, size: 128, offset: 1856)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !485, file: !38, line: 677, baseType: !254, size: 128, offset: 1984)
!2726 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !38, line: 678, baseType: !2727, size: 128, offset: 2112)
!2727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !38, line: 678, size: 128, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2727, file: !38, line: 679, baseType: !688, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2727, file: !38, line: 680, baseType: !424, size: 128, align: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !485, file: !38, line: 682, baseType: !265, size: 64, offset: 2240)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !485, file: !38, line: 683, baseType: !265, size: 64, offset: 2304)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !485, file: !38, line: 684, baseType: !800, size: 32, offset: 2368)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !485, file: !38, line: 685, baseType: !800, size: 32, offset: 2400)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !485, file: !38, line: 686, baseType: !800, size: 32, offset: 2432)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !485, file: !38, line: 688, baseType: !800, size: 32, offset: 2464)
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !38, line: 690, baseType: !2738, size: 64, offset: 2496)
!2738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !38, line: 690, size: 64, elements: !2739)
!2739 = !{!2740, !2963}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2738, file: !38, line: 691, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2743)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2744)
!2744 = !{!2745, !2746, !2750, !2755, !2759, !2760, !2761, !2765, !2778, !2779, !2787, !2791, !2792, !2796, !2797, !2801, !2806, !2807, !2811, !2815, !2923, !2927, !2928, !2932, !2933, !2937, !2941, !2946, !2950, !2954, !2958, !2962}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2743, file: !38, line: 1823, baseType: !203, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2743, file: !38, line: 1824, baseType: !2747, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!586, !411, !586, !214}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2743, file: !38, line: 1825, baseType: !2751, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!366, !411, !335, !381, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2743, file: !38, line: 1826, baseType: !2756, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!366, !411, !298, !381, !2754}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2743, file: !38, line: 1827, baseType: !890, size: 64, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2743, file: !38, line: 1828, baseType: !890, size: 64, offset: 320)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2743, file: !38, line: 1829, baseType: !2762, size: 64, offset: 384)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!214, !893, !545}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2743, file: !38, line: 1830, baseType: !2766, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!214, !411, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2771)
!2771 = !{!2772, !2777}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2770, file: !38, line: 1777, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2774)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!214, !2769, !298, !214, !586, !476, !7}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2770, file: !38, line: 1778, baseType: !586, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2743, file: !38, line: 1831, baseType: !2766, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2743, file: !38, line: 1832, baseType: !2780, size: 64, offset: 576)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!2783, !411, !2785}
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2784, line: 52, baseType: !7)
!2784 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !672, line: 27, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2743, file: !38, line: 1833, baseType: !2788, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!115, !411, !7, !208}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2743, file: !38, line: 1834, baseType: !2788, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2743, file: !38, line: 1835, baseType: !2793, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!214, !411, !1027}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2743, file: !38, line: 1836, baseType: !208, size: 64, offset: 832)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2743, file: !38, line: 1837, baseType: !2798, size: 64, offset: 896)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!214, !484, !411}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2743, file: !38, line: 1838, baseType: !2802, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!214, !411, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !209)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2743, file: !38, line: 1839, baseType: !2798, size: 64, offset: 1024)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2743, file: !38, line: 1840, baseType: !2808, size: 64, offset: 1088)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!214, !411, !586, !586, !214}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2743, file: !38, line: 1841, baseType: !2812, size: 64, offset: 1152)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!214, !214, !411, !214}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2743, file: !38, line: 1842, baseType: !2816, size: 64, offset: 1216)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!214, !411, !214, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2853, !2854, !2855, !2868, !2899}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2820, file: !38, line: 1063, baseType: !2819, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2820, file: !38, line: 1064, baseType: !254, size: 128, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2820, file: !38, line: 1065, baseType: !692, size: 128, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2820, file: !38, line: 1066, baseType: !254, size: 128, offset: 320)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2820, file: !38, line: 1069, baseType: !254, size: 128, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2820, file: !38, line: 1072, baseType: !2805, size: 64, offset: 576)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2820, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2820, file: !38, line: 1074, baseType: !482, size: 8, offset: 672)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2820, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2820, file: !38, line: 1076, baseType: !214, size: 32, offset: 736)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2820, file: !38, line: 1077, baseType: !1447, size: 128, offset: 768)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2820, file: !38, line: 1078, baseType: !411, size: 64, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2820, file: !38, line: 1079, baseType: !586, size: 64, offset: 960)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2820, file: !38, line: 1080, baseType: !586, size: 64, offset: 1024)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2820, file: !38, line: 1082, baseType: !2837, size: 64, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2839)
!2839 = !{!2840, !2848, !2849, !2850, !2851, !2852}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2838, file: !38, line: 1315, baseType: !2841)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2842, line: 20, baseType: !2843)
!2842 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2842, line: 11, elements: !2844)
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2843, file: !2842, line: 12, baseType: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !250, line: 33, baseType: !2847)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 31, elements: !252)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2838, file: !38, line: 1316, baseType: !214, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2838, file: !38, line: 1317, baseType: !214, size: 32, offset: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2838, file: !38, line: 1318, baseType: !2837, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2838, file: !38, line: 1319, baseType: !411, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2838, file: !38, line: 1320, baseType: !424, size: 128, align: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2820, file: !38, line: 1084, baseType: !208, size: 64, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2820, file: !38, line: 1085, baseType: !208, size: 64, offset: 1216)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2820, file: !38, line: 1087, baseType: !2856, size: 64, offset: 1280)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2858)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2859)
!2859 = !{!2860, !2864}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2858, file: !38, line: 1012, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !2819, !2819}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2858, file: !38, line: 1013, baseType: !2865, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2819}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2820, file: !38, line: 1088, baseType: !2869, size: 64, offset: 1344)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2871)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2872)
!2872 = !{!2873, !2877, !2881, !2882, !2886, !2890, !2894, !2898}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2871, file: !38, line: 1017, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!2805, !2805}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2871, file: !38, line: 1018, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !2805}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2871, file: !38, line: 1019, baseType: !2865, size: 64, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2871, file: !38, line: 1020, baseType: !2883, size: 64, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!214, !2819, !214}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2871, file: !38, line: 1021, baseType: !2887, size: 64, offset: 256)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!545, !2819}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2871, file: !38, line: 1022, baseType: !2891, size: 64, offset: 320)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!214, !2819, !214, !257}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2871, file: !38, line: 1023, baseType: !2895, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !2819, !867}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2871, file: !38, line: 1024, baseType: !2887, size: 64, offset: 448)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2820, file: !38, line: 1097, baseType: !2900, size: 256, offset: 1408)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2820, file: !38, line: 1089, size: 256, elements: !2901)
!2901 = !{!2902, !2911, !2917}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2900, file: !38, line: 1090, baseType: !2903, size: 256)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2904, line: 10, size: 256, elements: !2905)
!2904 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2905 = !{!2906, !2907, !2910}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2903, file: !2904, line: 11, baseType: !221, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2903, file: !2904, line: 12, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2904, line: 5, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2903, file: !2904, line: 13, baseType: !254, size: 128, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2900, file: !38, line: 1091, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2904, line: 17, size: 64, elements: !2913)
!2913 = !{!2914}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2912, file: !2904, line: 18, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2904, line: 16, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2900, file: !38, line: 1096, baseType: !2918, size: 192)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !38, line: 1092, size: 192, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2918, file: !38, line: 1093, baseType: !254, size: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2918, file: !38, line: 1094, baseType: !214, size: 32, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2918, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2743, file: !38, line: 1843, baseType: !2924, size: 64, offset: 1280)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!366, !411, !774, !214, !381, !2754, !214}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2743, file: !38, line: 1844, baseType: !1067, size: 64, offset: 1344)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2743, file: !38, line: 1845, baseType: !2929, size: 64, offset: 1408)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!214, !214}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2743, file: !38, line: 1846, baseType: !2816, size: 64, offset: 1472)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2743, file: !38, line: 1847, baseType: !2934, size: 64, offset: 1536)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!366, !2050, !411, !2754, !381, !7}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2743, file: !38, line: 1848, baseType: !2938, size: 64, offset: 1600)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!366, !411, !2754, !2050, !381, !7}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2743, file: !38, line: 1849, baseType: !2942, size: 64, offset: 1664)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!214, !411, !115, !2945, !867}
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2743, file: !38, line: 1850, baseType: !2947, size: 64, offset: 1728)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!115, !411, !214, !586, !586}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2743, file: !38, line: 1852, baseType: !2951, size: 64, offset: 1792)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !764, !411}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2743, file: !38, line: 1856, baseType: !2955, size: 64, offset: 1856)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!366, !411, !586, !411, !586, !381, !7}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2743, file: !38, line: 1858, baseType: !2959, size: 64, offset: 1920)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!586, !411, !586, !411, !586, !586, !7}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2743, file: !38, line: 1861, baseType: !2808, size: 64, offset: 1984)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2738, file: !38, line: 692, baseType: !717, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !485, file: !38, line: 694, baseType: !2965, size: 64, offset: 2560)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2966, file: !38, line: 1101, baseType: !238)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2966, file: !38, line: 1102, baseType: !254, size: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2966, file: !38, line: 1103, baseType: !254, size: 128, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2966, file: !38, line: 1104, baseType: !254, size: 128, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !485, file: !38, line: 695, baseType: !788, size: 1216, align: 64, offset: 2624)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !485, file: !38, line: 696, baseType: !254, size: 128, offset: 3840)
!2974 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !38, line: 697, baseType: !2975, size: 64, offset: 3968)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !38, line: 697, size: 64, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2982, !2983}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2975, file: !38, line: 698, baseType: !2050, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2975, file: !38, line: 699, baseType: !2493, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2975, file: !38, line: 700, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2975, file: !38, line: 701, baseType: !335, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2975, file: !38, line: 702, baseType: !7, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !485, file: !38, line: 705, baseType: !223, size: 32, offset: 4032)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !485, file: !38, line: 708, baseType: !223, size: 32, offset: 4064)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !485, file: !38, line: 709, baseType: !2575, size: 64, offset: 4096)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !485, file: !38, line: 720, baseType: !209, size: 64, offset: 4160)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !442, file: !439, line: 98, baseType: !2989, size: 256, offset: 448)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 256, elements: !2169)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !442, file: !439, line: 101, baseType: !2991, size: 32, offset: 704)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2992, line: 25, size: 32, elements: !2993)
!2992 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, scope: !2991, file: !2992, line: 26, baseType: !2995, size: 32)
!2995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2991, file: !2992, line: 26, size: 32, elements: !2996)
!2996 = !{!2997}
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2995, file: !2992, line: 30, baseType: !2998, size: 32)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2995, file: !2992, line: 30, size: 32, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !2992, line: 31, baseType: !238)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2998, file: !2992, line: 32, baseType: !214, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !442, file: !439, line: 102, baseType: !2592, size: 64, offset: 768)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !442, file: !439, line: 103, baseType: !652, size: 64, offset: 832)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !442, file: !439, line: 104, baseType: !208, size: 64, offset: 896)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !442, file: !439, line: 105, baseType: !209, size: 64, offset: 960)
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !439, line: 107, baseType: !3007, size: 128, offset: 1024)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !439, line: 107, size: 128, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3007, file: !439, line: 108, baseType: !254, size: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3007, file: !439, line: 109, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !442, file: !439, line: 111, baseType: !254, size: 128, offset: 1152)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !442, file: !439, line: 112, baseType: !254, size: 128, offset: 1280)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !442, file: !439, line: 120, baseType: !3015, size: 128, offset: 1408)
!3015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !439, line: 116, size: 128, elements: !3016)
!3016 = !{!3017, !3018, !3019}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3015, file: !439, line: 117, baseType: !692, size: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3015, file: !439, line: 118, baseType: !456, size: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3015, file: !439, line: 119, baseType: !424, size: 128, align: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !412, file: !38, line: 922, baseType: !484, size: 64, offset: 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !412, file: !38, line: 923, baseType: !2741, size: 64, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !412, file: !38, line: 929, baseType: !238, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !412, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !412, file: !38, line: 931, baseType: !263, size: 64, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !412, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !412, file: !38, line: 933, baseType: !2588, size: 32, offset: 544)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !412, file: !38, line: 934, baseType: !1139, size: 192, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !412, file: !38, line: 935, baseType: !586, size: 64, offset: 768)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !412, file: !38, line: 936, baseType: !3030, size: 192, offset: 832)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3030, file: !38, line: 886, baseType: !2841)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3030, file: !38, line: 887, baseType: !1437, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3030, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3030, file: !38, line: 889, baseType: !490, size: 32, offset: 96)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3030, file: !38, line: 889, baseType: !490, size: 32, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3030, file: !38, line: 890, baseType: !214, size: 32, offset: 160)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !412, file: !38, line: 937, baseType: !1513, size: 64, offset: 1024)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !412, file: !38, line: 938, baseType: !3040, size: 256, offset: 1088)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3040, file: !38, line: 897, baseType: !208, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3040, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3040, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3040, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3040, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3040, file: !38, line: 904, baseType: !586, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !412, file: !38, line: 940, baseType: !476, size: 64, offset: 1344)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !412, file: !38, line: 945, baseType: !209, size: 64, offset: 1408)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !412, file: !38, line: 949, baseType: !254, size: 128, offset: 1472)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !412, file: !38, line: 950, baseType: !254, size: 128, offset: 1600)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !412, file: !38, line: 952, baseType: !787, size: 64, offset: 1728)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !412, file: !38, line: 953, baseType: !955, size: 32, offset: 1792)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !412, file: !38, line: 954, baseType: !955, size: 32, offset: 1824)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !402, file: !360, line: 174, baseType: !408, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !402, file: !360, line: 176, baseType: !3057, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!214, !411, !302, !401, !1027}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !390, file: !360, line: 90, baseType: !385, size: 64, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !390, file: !360, line: 91, baseType: !3062, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !350, file: !295, line: 143, baseType: !3064, size: 64, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!3067, !302}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3069)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !3070)
!3070 = !{!3071, !3072, !3076, !3080, !3088, !3092}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3069, file: !55, line: 40, baseType: !54, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3069, file: !55, line: 41, baseType: !3073, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!545}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3069, file: !55, line: 42, baseType: !3077, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!209}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3069, file: !55, line: 43, baseType: !3081, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!3084, !3086}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3069, file: !55, line: 44, baseType: !3089, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!3084}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3069, file: !55, line: 45, baseType: !523, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !350, file: !295, line: 144, baseType: !3094, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!3084, !302}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !350, file: !295, line: 145, baseType: !3098, size: 64, offset: 384)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !302, !3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !294, file: !295, line: 70, baseType: !3104, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !672, line: 123, size: 1024, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3235, !3236, !3237, !3238, !3239}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3105, file: !672, line: 124, baseType: !800, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3105, file: !672, line: 125, baseType: !800, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3105, file: !672, line: 135, baseType: !3104, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3105, file: !672, line: 136, baseType: !298, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3105, file: !672, line: 138, baseType: !813, size: 192, align: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3105, file: !672, line: 140, baseType: !3084, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3105, file: !672, line: 141, baseType: !7, size: 32, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !672, line: 142, baseType: !3115, size: 256, offset: 512)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3105, file: !672, line: 142, size: 256, elements: !3116)
!3116 = !{!3117, !3163, !3167}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3115, file: !672, line: 143, baseType: !3118, size: 192)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !672, line: 91, size: 192, elements: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3118, file: !672, line: 92, baseType: !208, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3118, file: !672, line: 94, baseType: !809, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3118, file: !672, line: 100, baseType: !3123, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !672, line: 180, size: 704, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3135, !3136, !3137, !3161, !3162}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3124, file: !672, line: 182, baseType: !3104, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3124, file: !672, line: 183, baseType: !7, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3124, file: !672, line: 186, baseType: !3129, size: 192, offset: 128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3130, line: 19, size: 192, elements: !3131)
!3130 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3129, file: !3130, line: 20, baseType: !792, size: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3129, file: !3130, line: 21, baseType: !7, size: 32, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3129, file: !3130, line: 22, baseType: !7, size: 32, offset: 160)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3124, file: !672, line: 187, baseType: !221, size: 32, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3124, file: !672, line: 188, baseType: !221, size: 32, offset: 352)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3124, file: !672, line: 189, baseType: !3138, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !672, line: 168, size: 320, elements: !3140)
!3140 = !{!3141, !3145, !3149, !3153, !3157}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3139, file: !672, line: 169, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!214, !764, !3123}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3139, file: !672, line: 171, baseType: !3146, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!214, !3104, !298, !375}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3139, file: !672, line: 173, baseType: !3150, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!214, !3104}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3139, file: !672, line: 174, baseType: !3154, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!214, !3104, !3104, !298}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3139, file: !672, line: 176, baseType: !3158, size: 64, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!214, !764, !3104, !3123}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3124, file: !672, line: 192, baseType: !254, size: 128, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3124, file: !672, line: 194, baseType: !1447, size: 128, offset: 576)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3115, file: !672, line: 144, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !672, line: 103, size: 64, elements: !3165)
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3164, file: !672, line: 104, baseType: !3104, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3115, file: !672, line: 145, baseType: !3168, size: 256)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !672, line: 107, size: 256, elements: !3169)
!3169 = !{!3170, !3230, !3233, !3234}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3168, file: !672, line: 108, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !672, line: 217, size: 768, elements: !3174)
!3174 = !{!3175, !3195, !3199, !3203, !3207, !3211, !3215, !3219, !3220, !3221, !3222, !3226}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3173, file: !672, line: 222, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!214, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !672, line: 197, size: 1088, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3180, file: !672, line: 199, baseType: !3104, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3180, file: !672, line: 200, baseType: !411, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3180, file: !672, line: 201, baseType: !764, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3180, file: !672, line: 202, baseType: !209, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3180, file: !672, line: 205, baseType: !1139, size: 192, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3180, file: !672, line: 206, baseType: !1139, size: 192, offset: 448)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3180, file: !672, line: 207, baseType: !214, size: 32, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3180, file: !672, line: 208, baseType: !254, size: 128, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3180, file: !672, line: 209, baseType: !335, size: 64, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3180, file: !672, line: 211, baseType: !381, size: 64, offset: 896)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3180, file: !672, line: 212, baseType: !545, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3180, file: !672, line: 213, baseType: !545, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3180, file: !672, line: 214, baseType: !1055, size: 64, offset: 1024)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3173, file: !672, line: 223, baseType: !3196, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !3179}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3173, file: !672, line: 236, baseType: !3200, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!214, !764, !209}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3173, file: !672, line: 238, baseType: !3204, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!209, !764, !2754}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3173, file: !672, line: 239, baseType: !3208, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!209, !764, !209, !2754}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3173, file: !672, line: 240, baseType: !3212, size: 64, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !764, !209}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3173, file: !672, line: 242, baseType: !3216, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!366, !3179, !335, !381, !586}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3173, file: !672, line: 252, baseType: !381, size: 64, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3173, file: !672, line: 259, baseType: !545, size: 8, offset: 512)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3173, file: !672, line: 260, baseType: !3216, size: 64, offset: 576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3173, file: !672, line: 263, baseType: !3223, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!2783, !3179, !2785}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3173, file: !672, line: 266, baseType: !3227, size: 64, offset: 704)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!214, !3179, !1027}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3168, file: !672, line: 109, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !672, line: 31, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3168, file: !672, line: 110, baseType: !586, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3168, file: !672, line: 111, baseType: !3104, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3105, file: !672, line: 148, baseType: !209, size: 64, offset: 768)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3105, file: !672, line: 154, baseType: !476, size: 64, offset: 832)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3105, file: !672, line: 156, baseType: !376, size: 16, offset: 896)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3105, file: !672, line: 157, baseType: !375, size: 16, offset: 912)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3105, file: !672, line: 158, baseType: !3240, size: 64, offset: 960)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !672, line: 32, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !294, file: !295, line: 71, baseType: !3243, size: 32, offset: 448)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3244, line: 19, size: 32, elements: !3245)
!3244 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3245 = !{!3246}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3243, file: !3244, line: 20, baseType: !1196, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !294, file: !295, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !294, file: !295, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !294, file: !295, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !294, file: !295, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !294, file: !295, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !291, file: !67, line: 463, baseType: !290, size: 64, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !291, file: !67, line: 465, baseType: !3254, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !291, file: !67, line: 467, baseType: !298, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !291, file: !67, line: 468, baseType: !3258, size: 64, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3260)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3268, !3273, !3277}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3260, file: !67, line: 88, baseType: !298, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3260, file: !67, line: 89, baseType: !387, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3260, file: !67, line: 90, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!214, !290, !330}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3260, file: !67, line: 91, baseType: !3269, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!335, !290, !3272, !3101, !3102}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3260, file: !67, line: 93, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !290}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3260, file: !67, line: 95, baseType: !3278, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3281)
!3281 = !{!3282, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3280, file: !74, line: 279, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!214, !290}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3280, file: !74, line: 280, baseType: !3274, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3280, file: !74, line: 281, baseType: !3283, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3280, file: !74, line: 282, baseType: !3283, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3280, file: !74, line: 283, baseType: !3283, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3280, file: !74, line: 284, baseType: !3283, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3280, file: !74, line: 285, baseType: !3283, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3280, file: !74, line: 286, baseType: !3283, size: 64, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3280, file: !74, line: 287, baseType: !3283, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3280, file: !74, line: 288, baseType: !3283, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3280, file: !74, line: 289, baseType: !3283, size: 64, offset: 640)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3280, file: !74, line: 290, baseType: !3283, size: 64, offset: 704)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3280, file: !74, line: 291, baseType: !3283, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3280, file: !74, line: 292, baseType: !3283, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3280, file: !74, line: 293, baseType: !3283, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3280, file: !74, line: 294, baseType: !3283, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3280, file: !74, line: 295, baseType: !3283, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3280, file: !74, line: 296, baseType: !3283, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3280, file: !74, line: 297, baseType: !3283, size: 64, offset: 1152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3280, file: !74, line: 298, baseType: !3283, size: 64, offset: 1216)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3280, file: !74, line: 299, baseType: !3283, size: 64, offset: 1280)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3280, file: !74, line: 300, baseType: !3283, size: 64, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3280, file: !74, line: 301, baseType: !3283, size: 64, offset: 1408)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !291, file: !67, line: 470, baseType: !3309, size: 64, offset: 768)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3311, line: 82, size: 1408, elements: !3312)
!3311 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3394, !3397, !3398}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3310, file: !3311, line: 83, baseType: !298, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3310, file: !3311, line: 84, baseType: !298, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3310, file: !3311, line: 85, baseType: !290, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3310, file: !3311, line: 86, baseType: !387, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3310, file: !3311, line: 87, baseType: !387, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3310, file: !3311, line: 88, baseType: !387, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3310, file: !3311, line: 90, baseType: !3320, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!214, !290, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3345, !3358, !3359, !3360, !3361, !3362, !3370, !3371, !3372, !3373, !3374, !3375}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3324, file: !61, line: 96, baseType: !298, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3324, file: !61, line: 97, baseType: !3309, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3324, file: !61, line: 99, baseType: !203, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3324, file: !61, line: 100, baseType: !298, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3324, file: !61, line: 102, baseType: !545, size: 8, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3324, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3324, file: !61, line: 105, baseType: !3333, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3335)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3336, line: 262, size: 1600, elements: !3337)
!3336 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3337 = !{!3338, !3339, !3340, !3344}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3335, file: !3336, line: 263, baseType: !2578, size: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3335, file: !3336, line: 264, baseType: !2578, size: 256, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3335, file: !3336, line: 265, baseType: !3341, size: 1024, offset: 512)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1024, elements: !3342)
!3342 = !{!3343}
!3343 = !DISubrange(count: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3335, file: !3336, line: 266, baseType: !3084, size: 64, offset: 1536)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3324, file: !61, line: 106, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3348)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3336, line: 210, size: 256, elements: !3349)
!3349 = !{!3350, !3354, !3356, !3357}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3348, file: !3336, line: 211, baseType: !3351, size: 72)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 72, elements: !3352)
!3352 = !{!3353}
!3353 = !DISubrange(count: 9)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3348, file: !3336, line: 212, baseType: !3355, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3336, line: 14, baseType: !208)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3348, file: !3336, line: 213, baseType: !223, size: 32, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3348, file: !3336, line: 214, baseType: !223, size: 32, offset: 224)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3324, file: !61, line: 108, baseType: !3283, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3324, file: !61, line: 109, baseType: !3274, size: 64, offset: 512)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3324, file: !61, line: 110, baseType: !3283, size: 64, offset: 576)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3324, file: !61, line: 111, baseType: !3274, size: 64, offset: 640)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3324, file: !61, line: 112, baseType: !3363, size: 64, offset: 704)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!214, !290, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3367)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3368)
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3367, file: !74, line: 51, baseType: !214, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3324, file: !61, line: 113, baseType: !3283, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3324, file: !61, line: 114, baseType: !387, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3324, file: !61, line: 115, baseType: !387, size: 64, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3324, file: !61, line: 117, baseType: !3278, size: 64, offset: 960)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3324, file: !61, line: 118, baseType: !3274, size: 64, offset: 1024)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3324, file: !61, line: 120, baseType: !3376, size: 64, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3310, file: !3311, line: 91, baseType: !3265, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3310, file: !3311, line: 92, baseType: !3283, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3310, file: !3311, line: 93, baseType: !3274, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3310, file: !3311, line: 94, baseType: !3283, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3310, file: !3311, line: 95, baseType: !3274, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3310, file: !3311, line: 97, baseType: !3283, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3310, file: !3311, line: 98, baseType: !3283, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3310, file: !3311, line: 100, baseType: !3363, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3310, file: !3311, line: 101, baseType: !3283, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3310, file: !3311, line: 103, baseType: !3283, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3310, file: !3311, line: 105, baseType: !3283, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3310, file: !3311, line: 107, baseType: !3278, size: 64, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3310, file: !3311, line: 109, baseType: !3391, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3393)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3311, line: 109, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3310, file: !3311, line: 111, baseType: !3395, size: 64, offset: 1280)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3311, line: 111, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3310, file: !3311, line: 112, baseType: !698, offset: 1344)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3310, file: !3311, line: 114, baseType: !545, size: 8, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !291, file: !67, line: 471, baseType: !3323, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !291, file: !67, line: 473, baseType: !209, size: 64, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !291, file: !67, line: 475, baseType: !209, size: 64, offset: 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !291, file: !67, line: 480, baseType: !1139, size: 192, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !291, file: !67, line: 484, baseType: !3404, size: 576, offset: 1216)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3404, file: !67, line: 362, baseType: !254, size: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3404, file: !67, line: 363, baseType: !254, size: 128, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3404, file: !67, line: 364, baseType: !254, size: 128, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3404, file: !67, line: 365, baseType: !254, size: 128, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3404, file: !67, line: 366, baseType: !545, size: 8, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3404, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !291, file: !67, line: 485, baseType: !3413, size: 2304, offset: 1792)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3510, !3514}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3413, file: !74, line: 566, baseType: !3366, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3413, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3413, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3413, file: !74, line: 569, baseType: !545, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3413, file: !74, line: 570, baseType: !545, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3413, file: !74, line: 571, baseType: !545, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3413, file: !74, line: 572, baseType: !545, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3413, file: !74, line: 573, baseType: !545, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3413, file: !74, line: 574, baseType: !545, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3413, file: !74, line: 575, baseType: !545, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3413, file: !74, line: 576, baseType: !545, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3413, file: !74, line: 577, baseType: !221, size: 32, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3413, file: !74, line: 578, baseType: !238, offset: 96)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3413, file: !74, line: 580, baseType: !254, size: 128, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3413, file: !74, line: 581, baseType: !1468, size: 192, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3413, file: !74, line: 582, baseType: !3431, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3433, line: 43, size: 1472, elements: !3434)
!3433 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3442, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3432, file: !3433, line: 44, baseType: !298, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3432, file: !3433, line: 45, baseType: !214, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3432, file: !3433, line: 46, baseType: !254, size: 128, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3432, file: !3433, line: 47, baseType: !238, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3432, file: !3433, line: 48, baseType: !3440, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3432, file: !3433, line: 49, baseType: !3443, size: 320, offset: 320)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3444, line: 11, size: 320, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3445 = !{!3446, !3447, !3448, !3453}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3443, file: !3444, line: 16, baseType: !692, size: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3443, file: !3444, line: 17, baseType: !208, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3443, file: !3444, line: 18, baseType: !3449, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3443, file: !3444, line: 19, baseType: !221, size: 32, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3432, file: !3433, line: 50, baseType: !208, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3432, file: !3433, line: 51, baseType: !1266, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3432, file: !3433, line: 52, baseType: !1266, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3432, file: !3433, line: 53, baseType: !1266, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3432, file: !3433, line: 54, baseType: !1266, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3432, file: !3433, line: 55, baseType: !1266, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3432, file: !3433, line: 56, baseType: !208, size: 64, offset: 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3432, file: !3433, line: 57, baseType: !208, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3432, file: !3433, line: 58, baseType: !208, size: 64, offset: 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3432, file: !3433, line: 59, baseType: !208, size: 64, offset: 1216)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3432, file: !3433, line: 60, baseType: !208, size: 64, offset: 1280)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3432, file: !3433, line: 61, baseType: !290, size: 64, offset: 1344)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3432, file: !3433, line: 62, baseType: !545, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3432, file: !3433, line: 63, baseType: !545, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3413, file: !74, line: 583, baseType: !545, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3413, file: !74, line: 584, baseType: !545, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3413, file: !74, line: 585, baseType: !545, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3413, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3413, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3413, file: !74, line: 592, baseType: !1258, size: 512, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3413, file: !74, line: 593, baseType: !476, size: 64, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3413, file: !74, line: 594, baseType: !260, size: 256, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3413, file: !74, line: 595, baseType: !1447, size: 128, offset: 1408)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3413, file: !74, line: 596, baseType: !3440, size: 64, offset: 1536)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3413, file: !74, line: 597, baseType: !800, size: 32, offset: 1600)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3413, file: !74, line: 598, baseType: !800, size: 32, offset: 1632)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3413, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3413, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3413, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3413, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3413, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3413, file: !74, line: 604, baseType: !545, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3413, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3413, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3413, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3413, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3413, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3413, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3413, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3413, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3413, file: !74, line: 613, baseType: !214, size: 32, offset: 1792)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3413, file: !74, line: 614, baseType: !214, size: 32, offset: 1824)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3413, file: !74, line: 615, baseType: !476, size: 64, offset: 1856)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3413, file: !74, line: 616, baseType: !476, size: 64, offset: 1920)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3413, file: !74, line: 617, baseType: !476, size: 64, offset: 1984)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3413, file: !74, line: 618, baseType: !476, size: 64, offset: 2048)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3413, file: !74, line: 620, baseType: !3501, size: 64, offset: 2112)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3502, file: !74, line: 537, baseType: !238)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3502, file: !74, line: 538, baseType: !7, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3502, file: !74, line: 540, baseType: !254, size: 128, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3502, file: !74, line: 543, baseType: !3508, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3413, file: !74, line: 621, baseType: !3511, size: 64, offset: 2176)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{null, !290, !1410}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3413, file: !74, line: 622, baseType: !3515, size: 64, offset: 2240)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !291, file: !67, line: 486, baseType: !3518, size: 64, offset: 4096)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3527, !3528, !3529}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3519, file: !74, line: 643, baseType: !3280, size: 1472)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3519, file: !74, line: 644, baseType: !3283, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3519, file: !74, line: 645, baseType: !3524, size: 64, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !290, !545}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3519, file: !74, line: 646, baseType: !3283, size: 64, offset: 1600)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3519, file: !74, line: 647, baseType: !3274, size: 64, offset: 1664)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3519, file: !74, line: 648, baseType: !3274, size: 64, offset: 1728)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !291, file: !67, line: 493, baseType: !3531, size: 64, offset: 4160)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !291, file: !67, line: 499, baseType: !254, size: 128, offset: 4224)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !291, file: !67, line: 502, baseType: !3535, size: 64, offset: 4352)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3537)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !291, file: !67, line: 504, baseType: !3539, size: 64, offset: 4416)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !291, file: !67, line: 505, baseType: !476, size: 64, offset: 4480)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !291, file: !67, line: 510, baseType: !476, size: 64, offset: 4544)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !291, file: !67, line: 511, baseType: !3543, size: 64, offset: 4608)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !291, file: !67, line: 513, baseType: !3547, size: 64, offset: 4672)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3548, file: !67, line: 293, baseType: !7, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3548, file: !67, line: 294, baseType: !208, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !291, file: !67, line: 515, baseType: !254, size: 128, offset: 4736)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !291, file: !67, line: 526, baseType: !3554, offset: 4864)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3555, line: 5, elements: !252)
!3555 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !291, file: !67, line: 528, baseType: !3557, size: 64, offset: 4864)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3559, line: 14, flags: DIFlagFwdDecl)
!3559 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !291, file: !67, line: 529, baseType: !3561, size: 64, offset: 4928)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3311, line: 22, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !291, file: !67, line: 534, baseType: !568, size: 32, offset: 4992)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !291, file: !67, line: 535, baseType: !221, size: 32, offset: 5024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !291, file: !67, line: 537, baseType: !238, offset: 5056)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !291, file: !67, line: 538, baseType: !254, size: 128, offset: 5056)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !291, file: !67, line: 540, baseType: !3568, size: 64, offset: 5184)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3570, line: 54, size: 960, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3582, !3586, !3587, !3588, !3589, !3593, !3597, !3598}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3569, file: !3570, line: 55, baseType: !298, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3569, file: !3570, line: 56, baseType: !203, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3569, file: !3570, line: 58, baseType: !387, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3569, file: !3570, line: 59, baseType: !387, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3569, file: !3570, line: 60, baseType: !302, size: 64, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3569, file: !3570, line: 62, baseType: !3265, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3569, file: !3570, line: 63, baseType: !3579, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!335, !290, !3272}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3569, file: !3570, line: 65, baseType: !3583, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{null, !3568}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3569, file: !3570, line: 66, baseType: !3274, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3569, file: !3570, line: 68, baseType: !3283, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3569, file: !3570, line: 70, baseType: !3067, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3569, file: !3570, line: 71, baseType: !3590, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!3084, !290}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3569, file: !3570, line: 73, baseType: !3594, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !290, !3101, !3102}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3569, file: !3570, line: 75, baseType: !3278, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3569, file: !3570, line: 77, baseType: !3395, size: 64, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !291, file: !67, line: 541, baseType: !387, size: 64, offset: 5248)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !291, file: !67, line: 543, baseType: !3274, size: 64, offset: 5312)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !291, file: !67, line: 544, baseType: !3602, size: 64, offset: 5376)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !291, file: !67, line: 545, baseType: !3605, size: 64, offset: 5440)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !291, file: !67, line: 547, baseType: !545, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !291, file: !67, line: 548, baseType: !545, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !291, file: !67, line: 549, baseType: !545, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !291, file: !67, line: 550, baseType: !545, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !287, file: !6, line: 426, baseType: !290, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !287, file: !6, line: 427, baseType: !214, size: 32, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !287, file: !6, line: 428, baseType: !298, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !287, file: !6, line: 429, baseType: !1318, size: 8, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !287, file: !6, line: 433, baseType: !1318, size: 8, offset: 264)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !287, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !287, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !287, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !287, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !287, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !287, file: !6, line: 444, baseType: !214, size: 32, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !287, file: !6, line: 446, baseType: !1139, size: 192, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !287, file: !6, line: 448, baseType: !3624, size: 128, offset: 576)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3625)
!3625 = !{!3626}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3624, file: !6, line: 418, baseType: !3627, size: 128)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 128, elements: !282)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !287, file: !6, line: 449, baseType: !210, size: 64, offset: 704)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !287, file: !6, line: 450, baseType: !286, size: 64, offset: 768)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !287, file: !6, line: 452, baseType: !214, size: 32, offset: 832)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !287, file: !6, line: 459, baseType: !214, size: 32, offset: 864)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !287, file: !6, line: 460, baseType: !214, size: 32, offset: 896)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !287, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !211, file: !6, line: 647, baseType: !3635, size: 640, offset: 640)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3636)
!3636 = !{!3637, !3649, !3657, !3665, !3666, !3667, !3670, !3672, !3673, !3674}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3635, file: !6, line: 68, baseType: !3638, size: 72)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3646, !3647, !3648}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3638, file: !88, line: 408, baseType: !1319, size: 8)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3638, file: !88, line: 409, baseType: !1319, size: 8, offset: 8)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3638, file: !88, line: 411, baseType: !1319, size: 8, offset: 16)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3638, file: !88, line: 412, baseType: !1319, size: 8, offset: 24)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3638, file: !88, line: 413, baseType: !3645, size: 16, offset: 32)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2784, line: 29, baseType: !906)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3638, file: !88, line: 414, baseType: !1319, size: 8, offset: 48)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3638, file: !88, line: 418, baseType: !1319, size: 8, offset: 56)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3638, file: !88, line: 419, baseType: !1319, size: 8, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3635, file: !6, line: 69, baseType: !3650, size: 48, offset: 72)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3650, file: !88, line: 690, baseType: !1319, size: 8)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3650, file: !88, line: 691, baseType: !1319, size: 8, offset: 8)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3650, file: !88, line: 693, baseType: !1319, size: 8, offset: 16)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3650, file: !88, line: 694, baseType: !1319, size: 8, offset: 24)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3650, file: !88, line: 695, baseType: !3645, size: 16, offset: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3635, file: !6, line: 70, baseType: !3658, size: 64, offset: 120)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3658, file: !88, line: 678, baseType: !1319, size: 8)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3658, file: !88, line: 679, baseType: !1319, size: 8, offset: 8)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3658, file: !88, line: 680, baseType: !3645, size: 16, offset: 16)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3658, file: !88, line: 681, baseType: !3664, size: 32, offset: 32)
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2784, line: 31, baseType: !223)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3635, file: !6, line: 71, baseType: !254, size: 128, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3635, file: !6, line: 72, baseType: !209, size: 64, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3635, file: !6, line: 73, baseType: !3668, size: 64, offset: 384)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3635, file: !6, line: 75, baseType: !3671, size: 64, offset: 448)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3635, file: !6, line: 76, baseType: !214, size: 32, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3635, file: !6, line: 77, baseType: !214, size: 32, offset: 544)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3635, file: !6, line: 78, baseType: !214, size: 32, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !211, file: !6, line: 649, baseType: !291, size: 5568, offset: 1280)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !211, file: !6, line: 651, baseType: !3677, size: 144, offset: 6848)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3677, file: !88, line: 290, baseType: !1319, size: 8)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3677, file: !88, line: 291, baseType: !1319, size: 8, offset: 8)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3677, file: !88, line: 293, baseType: !3645, size: 16, offset: 16)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3677, file: !88, line: 294, baseType: !1319, size: 8, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3677, file: !88, line: 295, baseType: !1319, size: 8, offset: 40)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3677, file: !88, line: 296, baseType: !1319, size: 8, offset: 48)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3677, file: !88, line: 297, baseType: !1319, size: 8, offset: 56)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3677, file: !88, line: 298, baseType: !3645, size: 16, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3677, file: !88, line: 299, baseType: !3645, size: 16, offset: 80)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3677, file: !88, line: 300, baseType: !3645, size: 16, offset: 96)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3677, file: !88, line: 301, baseType: !1319, size: 8, offset: 112)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3677, file: !88, line: 302, baseType: !1319, size: 8, offset: 120)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3677, file: !88, line: 303, baseType: !1319, size: 8, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3677, file: !88, line: 304, baseType: !1319, size: 8, offset: 136)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !211, file: !6, line: 652, baseType: !3694, size: 64, offset: 7040)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3696)
!3696 = !{!3697, !3705, !3713, !3725, !3738, !3747}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3695, file: !6, line: 397, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3699, file: !88, line: 845, baseType: !1319, size: 8)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3699, file: !88, line: 846, baseType: !1319, size: 8, offset: 8)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3699, file: !88, line: 848, baseType: !3645, size: 16, offset: 16)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3699, file: !88, line: 849, baseType: !1319, size: 8, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3695, file: !6, line: 400, baseType: !3706, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3707, file: !88, line: 896, baseType: !1319, size: 8)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3707, file: !88, line: 897, baseType: !1319, size: 8, offset: 8)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3707, file: !88, line: 898, baseType: !1319, size: 8, offset: 16)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3707, file: !88, line: 899, baseType: !3664, size: 32, offset: 24)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3695, file: !6, line: 401, baseType: !3714, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3715, file: !88, line: 918, baseType: !1319, size: 8)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3715, file: !88, line: 919, baseType: !1319, size: 8, offset: 8)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3715, file: !88, line: 920, baseType: !1319, size: 8, offset: 16)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3715, file: !88, line: 921, baseType: !1319, size: 8, offset: 24)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3715, file: !88, line: 923, baseType: !3645, size: 16, offset: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3715, file: !88, line: 928, baseType: !1319, size: 8, offset: 48)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3715, file: !88, line: 929, baseType: !1319, size: 8, offset: 56)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3715, file: !88, line: 930, baseType: !3645, size: 16, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3695, file: !6, line: 402, baseType: !3726, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3727, file: !88, line: 956, baseType: !1319, size: 8)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3727, file: !88, line: 957, baseType: !1319, size: 8, offset: 8)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3727, file: !88, line: 958, baseType: !1319, size: 8, offset: 16)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3727, file: !88, line: 959, baseType: !1319, size: 8, offset: 24)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3727, file: !88, line: 960, baseType: !3664, size: 32, offset: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3727, file: !88, line: 963, baseType: !3645, size: 16, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3727, file: !88, line: 967, baseType: !3645, size: 16, offset: 80)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3727, file: !88, line: 968, baseType: !3737, size: 32, offset: 96)
!3737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3664, size: 32, elements: !1337)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3695, file: !6, line: 403, baseType: !3739, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3740, file: !88, line: 941, baseType: !1319, size: 8)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3740, file: !88, line: 942, baseType: !1319, size: 8, offset: 8)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3740, file: !88, line: 943, baseType: !1319, size: 8, offset: 16)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3740, file: !88, line: 944, baseType: !1319, size: 8, offset: 24)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3740, file: !88, line: 945, baseType: !2585, size: 128, offset: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3695, file: !6, line: 404, baseType: !3748, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3749, file: !88, line: 1081, baseType: !1319, size: 8)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3749, file: !88, line: 1082, baseType: !1319, size: 8, offset: 8)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3749, file: !88, line: 1083, baseType: !1319, size: 8, offset: 16)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !211, file: !6, line: 653, baseType: !3755, size: 64, offset: 7104)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3757)
!3757 = !{!3758, !3769, !3770, !3783, !3825, !3834, !3835}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3756, file: !6, line: 375, baseType: !3759, size: 72)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3759, file: !88, line: 350, baseType: !1319, size: 8)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3759, file: !88, line: 351, baseType: !1319, size: 8, offset: 8)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3759, file: !88, line: 353, baseType: !3645, size: 16, offset: 16)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3759, file: !88, line: 354, baseType: !1319, size: 8, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3759, file: !88, line: 355, baseType: !1319, size: 8, offset: 40)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3759, file: !88, line: 356, baseType: !1319, size: 8, offset: 48)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3759, file: !88, line: 357, baseType: !1319, size: 8, offset: 56)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3759, file: !88, line: 358, baseType: !1319, size: 8, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3756, file: !6, line: 377, baseType: !335, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3756, file: !6, line: 381, baseType: !3771, size: 1024, offset: 192)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3772, size: 1024, elements: !218)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3773, file: !88, line: 784, baseType: !1319, size: 8)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3773, file: !88, line: 785, baseType: !1319, size: 8, offset: 8)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3773, file: !88, line: 787, baseType: !1319, size: 8, offset: 16)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3773, file: !88, line: 788, baseType: !1319, size: 8, offset: 24)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3773, file: !88, line: 789, baseType: !1319, size: 8, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3773, file: !88, line: 790, baseType: !1319, size: 8, offset: 40)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3773, file: !88, line: 791, baseType: !1319, size: 8, offset: 48)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3773, file: !88, line: 792, baseType: !1319, size: 8, offset: 56)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3756, file: !6, line: 385, baseType: !3784, size: 2048, offset: 1216)
!3784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3785, size: 2048, elements: !2169)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3787)
!3787 = !{!3788, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3786, file: !6, line: 235, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3791)
!3791 = !{!3792, !3804, !3805, !3806, !3808}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3790, file: !6, line: 83, baseType: !3793, size: 72)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3793, file: !88, line: 390, baseType: !1319, size: 8)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3793, file: !88, line: 391, baseType: !1319, size: 8, offset: 8)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3793, file: !88, line: 393, baseType: !1319, size: 8, offset: 16)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3793, file: !88, line: 394, baseType: !1319, size: 8, offset: 24)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3793, file: !88, line: 395, baseType: !1319, size: 8, offset: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3793, file: !88, line: 396, baseType: !1319, size: 8, offset: 40)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3793, file: !88, line: 397, baseType: !1319, size: 8, offset: 48)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3793, file: !88, line: 398, baseType: !1319, size: 8, offset: 56)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3793, file: !88, line: 399, baseType: !1319, size: 8, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3790, file: !6, line: 85, baseType: !214, size: 32, offset: 96)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3790, file: !6, line: 86, baseType: !3671, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3790, file: !6, line: 91, baseType: !3807, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3790, file: !6, line: 93, baseType: !335, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3786, file: !6, line: 237, baseType: !3789, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3786, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3786, file: !6, line: 243, baseType: !3772, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3786, file: !6, line: 245, baseType: !214, size: 32, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3786, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3786, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3786, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3786, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3786, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3786, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3786, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3786, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3786, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3786, file: !6, line: 257, baseType: !291, size: 5568, offset: 384)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3786, file: !6, line: 258, baseType: !290, size: 64, offset: 5952)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3786, file: !6, line: 259, baseType: !260, size: 256, offset: 6016)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3756, file: !6, line: 389, baseType: !3826, size: 2048, offset: 3264)
!3826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3827, size: 2048, elements: !2169)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3829)
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3828, file: !6, line: 323, baseType: !7, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3828, file: !6, line: 324, baseType: !3243, size: 32, offset: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3828, file: !6, line: 328, baseType: !3833, offset: 64)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3790, elements: !2270)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3756, file: !6, line: 391, baseType: !3671, size: 64, offset: 5312)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3756, file: !6, line: 392, baseType: !214, size: 32, offset: 5376)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !211, file: !6, line: 655, baseType: !3755, size: 64, offset: 7168)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !211, file: !6, line: 656, baseType: !3838, size: 1024, offset: 7232)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3807, size: 1024, elements: !218)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !211, file: !6, line: 657, baseType: !3838, size: 1024, offset: 8256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !211, file: !6, line: 659, baseType: !3841, size: 64, offset: 9280)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !211, file: !6, line: 661, baseType: !376, size: 16, offset: 9344)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !211, file: !6, line: 662, baseType: !1318, size: 8, offset: 9360)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !211, file: !6, line: 663, baseType: !1318, size: 8, offset: 9368)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !211, file: !6, line: 664, baseType: !1318, size: 8, offset: 9376)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !211, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !211, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !211, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !211, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !211, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !211, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !211, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !211, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !211, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !211, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !211, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !211, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !211, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !211, file: !6, line: 679, baseType: !214, size: 32, offset: 9408)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !211, file: !6, line: 682, baseType: !335, size: 64, offset: 9472)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !211, file: !6, line: 683, baseType: !335, size: 64, offset: 9536)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !211, file: !6, line: 684, baseType: !335, size: 64, offset: 9600)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !211, file: !6, line: 686, baseType: !254, size: 128, offset: 9664)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !211, file: !6, line: 688, baseType: !214, size: 32, offset: 9792)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !211, file: !6, line: 690, baseType: !221, size: 32, offset: 9824)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !211, file: !6, line: 691, baseType: !800, size: 32, offset: 9856)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !211, file: !6, line: 693, baseType: !208, size: 64, offset: 9920)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !211, file: !6, line: 696, baseType: !208, size: 64, offset: 9984)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !211, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !211, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !211, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !211, file: !6, line: 702, baseType: !3873, size: 64, offset: 10112)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !211, file: !6, line: 703, baseType: !214, size: 32, offset: 10176)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !211, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !211, file: !6, line: 705, baseType: !3878, size: 64, offset: 10240)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3878, file: !6, line: 506, baseType: !7, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3878, file: !6, line: 512, baseType: !214, size: 32, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !211, file: !6, line: 706, baseType: !3883, size: 128, offset: 10304)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3883, file: !6, line: 529, baseType: !7, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3883, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3883, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3883, file: !6, line: 551, baseType: !214, size: 32, offset: 96)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !211, file: !6, line: 707, baseType: !3883, size: 128, offset: 10432)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !211, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !211, file: !6, line: 710, baseType: !905, size: 16, offset: 10592)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !211, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !257)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lvs_rh", file: !3, line: 21, size: 704, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3903, !3928, !3983, !3984}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3896, file: !3, line: 23, baseType: !3785, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3896, file: !3, line: 25, baseType: !545, size: 8, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !3896, file: !3, line: 27, baseType: !214, size: 32, offset: 96)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3896, file: !3, line: 29, baseType: !3902, size: 64, offset: 128)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 64, elements: !1296)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !3896, file: !3, line: 31, baseType: !3904, size: 120, offset: 192)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hub_descriptor", file: !3905, line: 262, size: 120, elements: !3906)
!3905 = !DIFile(filename: "./include/uapi/linux/usb/ch11.h", directory: "/home/lizy2001/genbc/linux")
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bDescLength", scope: !3904, file: !3905, line: 263, baseType: !1319, size: 8)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3904, file: !3905, line: 264, baseType: !1319, size: 8, offset: 8)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bNbrPorts", scope: !3904, file: !3905, line: 265, baseType: !1319, size: 8, offset: 16)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "wHubCharacteristics", scope: !3904, file: !3905, line: 266, baseType: !3645, size: 16, offset: 24)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bPwrOn2PwrGood", scope: !3904, file: !3905, line: 267, baseType: !1319, size: 8, offset: 40)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bHubContrCurrent", scope: !3904, file: !3905, line: 268, baseType: !1319, size: 8, offset: 48)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3904, file: !3905, line: 283, baseType: !3914, size: 64, offset: 56)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3904, file: !3905, line: 271, size: 64, elements: !3915)
!3915 = !{!3916, !3922}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "hs", scope: !3914, file: !3905, line: 276, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !3905, line: 272, size: 64, elements: !3918)
!3918 = !{!3919, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceRemovable", scope: !3917, file: !3905, line: 274, baseType: !3920, size: 32)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 32, elements: !1121)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "PortPwrCtrlMask", scope: !3917, file: !3905, line: 275, baseType: !3920, size: 32, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3914, file: !3905, line: 282, baseType: !3923, size: 40)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !3905, line: 278, size: 40, elements: !3924)
!3924 = !{!3925, !3926, !3927}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bHubHdrDecLat", scope: !3923, file: !3905, line: 279, baseType: !1319, size: 8)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "wHubDelay", scope: !3923, file: !3905, line: 280, baseType: !3645, size: 16, offset: 8)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceRemovable", scope: !3923, file: !3905, line: 281, baseType: !3645, size: 16, offset: 24)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !3896, file: !3, line: 33, baseType: !3929, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !3931)
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3975}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3930, file: !6, line: 1563, baseType: !3243, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !3930, file: !6, line: 1564, baseType: !214, size: 32, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3930, file: !6, line: 1565, baseType: !209, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3930, file: !6, line: 1566, baseType: !800, size: 32, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !3930, file: !6, line: 1567, baseType: !800, size: 32, offset: 160)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3930, file: !6, line: 1570, baseType: !254, size: 128, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !3930, file: !6, line: 1572, baseType: !254, size: 128, offset: 320)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !3930, file: !6, line: 1573, baseType: !3940, size: 64, offset: 448)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3941, file: !6, line: 1361, baseType: !254, size: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3941, file: !6, line: 1362, baseType: !1447, size: 128, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3941, file: !6, line: 1363, baseType: !238, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3941, file: !6, line: 1364, baseType: !800, size: 32, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3941, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3930, file: !6, line: 1574, baseType: !210, size: 64, offset: 512)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3930, file: !6, line: 1575, baseType: !3807, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3930, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3930, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3930, file: !6, line: 1578, baseType: !214, size: 32, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !3930, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !3930, file: !6, line: 1580, baseType: !209, size: 64, offset: 768)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !3930, file: !6, line: 1581, baseType: !966, size: 64, offset: 832)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3930, file: !6, line: 1582, baseType: !3957, size: 64, offset: 896)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !3930, file: !6, line: 1583, baseType: !214, size: 32, offset: 960)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !3930, file: !6, line: 1584, baseType: !214, size: 32, offset: 992)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !3930, file: !6, line: 1585, baseType: !221, size: 32, offset: 1024)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3930, file: !6, line: 1586, baseType: !221, size: 32, offset: 1056)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !3930, file: !6, line: 1587, baseType: !3671, size: 64, offset: 1088)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !3930, file: !6, line: 1588, baseType: !966, size: 64, offset: 1152)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !3930, file: !6, line: 1589, baseType: !214, size: 32, offset: 1216)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !3930, file: !6, line: 1590, baseType: !214, size: 32, offset: 1248)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3930, file: !6, line: 1591, baseType: !214, size: 32, offset: 1280)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !3930, file: !6, line: 1593, baseType: !214, size: 32, offset: 1312)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3930, file: !6, line: 1594, baseType: !209, size: 64, offset: 1344)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3930, file: !6, line: 1595, baseType: !3971, size: 64, offset: 1408)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !3972)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3929}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !3930, file: !6, line: 1596, baseType: !3976, offset: 1472)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3977, elements: !2270)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3977, file: !6, line: 1352, baseType: !7, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3977, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3977, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3977, file: !6, line: 1355, baseType: !214, size: 32, offset: 96)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "rh_work", scope: !3896, file: !3, line: 35, baseType: !260, size: 256, offset: 384)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "port_status", scope: !3896, file: !3, line: 37, baseType: !3985, size: 64, offset: 640)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_port_status", file: !3905, line: 115, size: 64, elements: !3986)
!3986 = !{!3987, !3988, !3989}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "wPortStatus", scope: !3985, file: !3905, line: 116, baseType: !3645, size: 16)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "wPortChange", scope: !3985, file: !3905, line: 117, baseType: !3645, size: 16, offset: 16)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dwExtPortStatus", scope: !3985, file: !3905, line: 118, baseType: !3664, size: 32, offset: 32)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !185, line: 81, size: 4672, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996, !3997, !4001, !4002, !4003, !4004, !4005, !4126, !4223, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4245, !4246, !4247, !4275, !4276, !4278, !4279, !4280, !4281, !4285, !4286, !4289}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3991, file: !185, line: 86, baseType: !287, size: 960)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3991, file: !185, line: 87, baseType: !3243, size: 32, offset: 960)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !3991, file: !185, line: 89, baseType: !298, size: 64, offset: 1024)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !3991, file: !185, line: 90, baseType: !214, size: 32, offset: 1088)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !3991, file: !185, line: 94, baseType: !3998, size: 192, offset: 1120)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !3999)
!3999 = !{!4000}
!4000 = !DISubrange(count: 24)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !3991, file: !185, line: 96, baseType: !3443, size: 320, offset: 1344)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !3991, file: !185, line: 97, baseType: !3929, size: 64, offset: 1664)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !3991, file: !185, line: 99, baseType: !260, size: 256, offset: 1728)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !3991, file: !185, line: 101, baseType: !260, size: 256, offset: 1984)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3991, file: !185, line: 106, baseType: !4006, size: 64, offset: 2240)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !185, line: 249, size: 2880, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4018, !4019, !4023, !4024, !4028, !4029, !4033, !4034, !4035, !4039, !4043, !4044, !4048, !4052, !4053, !4057, !4061, !4062, !4063, !4067, !4071, !4075, !4079, !4080, !4084, !4088, !4093, !4097, !4101, !4102, !4103, !4104, !4105, !4106, !4110, !4111, !4112, !4116, !4120, !4121, !4122}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4008, file: !185, line: 250, baseType: !298, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4008, file: !185, line: 251, baseType: !298, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4008, file: !185, line: 252, baseType: !381, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4008, file: !185, line: 255, baseType: !4014, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!4017, !3990}
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !147, line: 17, baseType: !146)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4008, file: !185, line: 257, baseType: !214, size: 32, offset: 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4008, file: !185, line: 271, baseType: !4020, size: 64, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!214, !3990}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4008, file: !185, line: 272, baseType: !4020, size: 64, offset: 384)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4008, file: !185, line: 278, baseType: !4025, size: 64, offset: 448)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!214, !3990, !545}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4008, file: !185, line: 281, baseType: !4025, size: 64, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4008, file: !185, line: 284, baseType: !4030, size: 64, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !3990}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4008, file: !185, line: 287, baseType: !4030, size: 64, offset: 640)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4008, file: !185, line: 290, baseType: !4020, size: 64, offset: 704)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4008, file: !185, line: 293, baseType: !4036, size: 64, offset: 768)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!214, !3990, !3929, !206}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4008, file: !185, line: 295, baseType: !4040, size: 64, offset: 832)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!214, !3990, !3929, !214}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4008, file: !185, line: 307, baseType: !4036, size: 64, offset: 896)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4008, file: !185, line: 309, baseType: !4045, size: 64, offset: 960)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !3990, !3929}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4008, file: !185, line: 312, baseType: !4049, size: 64, offset: 1024)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !3990, !3807}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4008, file: !185, line: 317, baseType: !4049, size: 64, offset: 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4008, file: !185, line: 321, baseType: !4054, size: 64, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!214, !3990, !335}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4008, file: !185, line: 322, baseType: !4058, size: 64, offset: 1216)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!214, !3990, !905, !905, !905, !335, !905}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4008, file: !185, line: 325, baseType: !4020, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4008, file: !185, line: 326, baseType: !4020, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4008, file: !185, line: 327, baseType: !4064, size: 64, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!214, !3990, !7}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4008, file: !185, line: 328, baseType: !4068, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!208, !3990}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4008, file: !185, line: 331, baseType: !4072, size: 64, offset: 1536)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !3990, !214}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4008, file: !185, line: 333, baseType: !4076, size: 64, offset: 1600)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!214, !3990, !214}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4008, file: !185, line: 336, baseType: !4049, size: 64, offset: 1664)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4008, file: !185, line: 341, baseType: !4081, size: 64, offset: 1728)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!214, !3990, !210}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4008, file: !185, line: 343, baseType: !4085, size: 64, offset: 1792)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !3990, !210}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4008, file: !185, line: 345, baseType: !4089, size: 64, offset: 1856)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!214, !3990, !210, !4092, !7, !7, !206}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4008, file: !185, line: 351, baseType: !4094, size: 64, offset: 1920)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!214, !3990, !210, !4092, !7, !206}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4008, file: !185, line: 366, baseType: !4098, size: 64, offset: 1984)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!214, !3990, !210, !3807}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4008, file: !185, line: 369, baseType: !4098, size: 64, offset: 2048)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4008, file: !185, line: 376, baseType: !4081, size: 64, offset: 2112)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4008, file: !185, line: 384, baseType: !4085, size: 64, offset: 2176)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4008, file: !185, line: 386, baseType: !4081, size: 64, offset: 2240)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4008, file: !185, line: 388, baseType: !4081, size: 64, offset: 2304)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4008, file: !185, line: 392, baseType: !4107, size: 64, offset: 2368)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!214, !3990, !210, !230, !206}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4008, file: !185, line: 394, baseType: !4081, size: 64, offset: 2432)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4008, file: !185, line: 398, baseType: !4081, size: 64, offset: 2496)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4008, file: !185, line: 399, baseType: !4113, size: 64, offset: 2560)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!214, !3990, !210, !214}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4008, file: !185, line: 402, baseType: !4117, size: 64, offset: 2624)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!214, !3990, !210, !152}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4008, file: !185, line: 407, baseType: !4117, size: 64, offset: 2688)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4008, file: !185, line: 409, baseType: !4076, size: 64, offset: 2752)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4008, file: !185, line: 411, baseType: !4123, size: 64, offset: 2816)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!214, !3990, !214, !545}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !3991, file: !185, line: 112, baseType: !4127, size: 64, offset: 2304)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !159, line: 88, size: 2624, elements: !4129)
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135, !4138, !4139, !4151, !4152, !4156, !4157, !4169, !4170, !4171, !4172, !4173, !4184, !4185, !4190, !4191, !4192, !4193, !4197, !4201, !4205, !4209, !4210, !4214, !4218, !4219}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4128, file: !159, line: 89, baseType: !290, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !4128, file: !159, line: 90, baseType: !298, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4128, file: !159, line: 91, baseType: !7, size: 32, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4128, file: !159, line: 93, baseType: !158, size: 32, offset: 160)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "last_event", scope: !4128, file: !159, line: 94, baseType: !164, size: 32, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "otg", scope: !4128, file: !159, line: 96, baseType: !4136, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg", file: !159, line: 67, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "io_dev", scope: !4128, file: !159, line: 98, baseType: !290, size: 64, offset: 320)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "io_ops", scope: !4128, file: !159, line: 99, baseType: !4140, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_io_ops", file: !159, line: 72, size: 128, elements: !4142)
!4142 = !{!4143, !4147}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4141, file: !159, line: 73, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!214, !4127, !221}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4141, file: !159, line: 74, baseType: !4148, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!214, !4127, !221, !221}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "io_priv", scope: !4128, file: !159, line: 100, baseType: !209, size: 64, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !4128, file: !159, line: 103, baseType: !4153, size: 64, offset: 512)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_dev", file: !4155, line: 166, flags: DIFlagFwdDecl)
!4155 = !DIFile(filename: "./include/linux/extcon.h", directory: "/home/lizy2001/genbc/linux")
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "id_edev", scope: !4128, file: !159, line: 104, baseType: !4153, size: 64, offset: 576)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_nb", scope: !4128, file: !159, line: 105, baseType: !4158, size: 192, offset: 640)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4159, line: 54, size: 192, elements: !4160)
!4159 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4160 = !{!4161, !4167, !4168}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4158, file: !4159, line: 55, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4159, line: 51, baseType: !4163)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!214, !4166, !208, !209}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4158, file: !4159, line: 56, baseType: !4166, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4158, file: !4159, line: 57, baseType: !214, size: 32, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "id_nb", scope: !4128, file: !159, line: 106, baseType: !4158, size: 192, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "type_nb", scope: !4128, file: !159, line: 107, baseType: !4158, size: 192, offset: 1024)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "chg_type", scope: !4128, file: !159, line: 110, baseType: !171, size: 32, offset: 1216)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "chg_state", scope: !4128, file: !159, line: 111, baseType: !179, size: 32, offset: 1248)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "chg_cur", scope: !4128, file: !159, line: 112, baseType: !4174, size: 256, offset: 1280)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_charger_current", file: !159, line: 77, size: 256, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_min", scope: !4174, file: !159, line: 78, baseType: !7, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_max", scope: !4174, file: !159, line: 79, baseType: !7, size: 32, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_min", scope: !4174, file: !159, line: 80, baseType: !7, size: 32, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_max", scope: !4174, file: !159, line: 81, baseType: !7, size: 32, offset: 96)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_min", scope: !4174, file: !159, line: 82, baseType: !7, size: 32, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_max", scope: !4174, file: !159, line: 83, baseType: !7, size: 32, offset: 160)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "aca_min", scope: !4174, file: !159, line: 84, baseType: !7, size: 32, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "aca_max", scope: !4174, file: !159, line: 85, baseType: !7, size: 32, offset: 224)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "chg_work", scope: !4128, file: !159, line: 113, baseType: !260, size: 256, offset: 1536)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !4128, file: !159, line: 116, baseType: !4186, size: 64, offset: 1792)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !4159, line: 60, size: 64, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4186, file: !4159, line: 61, baseType: !238)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4186, file: !4159, line: 62, baseType: !4166, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "port_status", scope: !4128, file: !159, line: 119, baseType: !905, size: 16, offset: 1856)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "port_change", scope: !4128, file: !159, line: 120, baseType: !905, size: 16, offset: 1872)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4128, file: !159, line: 123, baseType: !254, size: 128, offset: 1920)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4128, file: !159, line: 126, baseType: !4194, size: 64, offset: 2048)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!214, !4127}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4128, file: !159, line: 127, baseType: !4198, size: 64, offset: 2112)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4127}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !4128, file: !159, line: 130, baseType: !4202, size: 64, offset: 2176)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!214, !4127, !214}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "set_power", scope: !4128, file: !159, line: 133, baseType: !4206, size: 64, offset: 2240)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!214, !4127, !7}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "set_suspend", scope: !4128, file: !159, line: 137, baseType: !4202, size: 64, offset: 2304)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup", scope: !4128, file: !159, line: 145, baseType: !4211, size: 64, offset: 2368)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!214, !4127, !545}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "notify_connect", scope: !4128, file: !159, line: 148, baseType: !4215, size: 64, offset: 2432)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!214, !4127, !99}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "notify_disconnect", scope: !4128, file: !159, line: 150, baseType: !4215, size: 64, offset: 2496)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "charger_detect", scope: !4128, file: !159, line: 157, baseType: !4220, size: 64, offset: 2560)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!171, !4127}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !3991, file: !185, line: 113, baseType: !4224, size: 64, offset: 2368)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !185, line: 113, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3991, file: !185, line: 119, baseType: !208, size: 64, offset: 2432)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !3991, file: !185, line: 151, baseType: !184, size: 32, offset: 2496)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !3991, file: !185, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !3991, file: !185, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3991, file: !185, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3991, file: !185, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !3991, file: !185, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !3991, file: !185, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !3991, file: !185, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !3991, file: !185, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !3991, file: !185, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !3991, file: !185, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !3991, file: !185, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !3991, file: !185, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3991, file: !185, line: 176, baseType: !7, size: 32, offset: 2560)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3991, file: !185, line: 177, baseType: !209, size: 64, offset: 2624)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !3991, file: !185, line: 178, baseType: !4243, size: 64, offset: 2688)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !207, line: 158, baseType: !4244)
!4244 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !207, line: 153, baseType: !476)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !3991, file: !185, line: 179, baseType: !4243, size: 64, offset: 2752)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !3991, file: !185, line: 180, baseType: !7, size: 32, offset: 2816)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !3991, file: !185, line: 182, baseType: !4248, size: 576, offset: 2880)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !185, line: 67, size: 576, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4274}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4248, file: !185, line: 68, baseType: !545, size: 8)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4248, file: !185, line: 69, baseType: !238, offset: 8)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4248, file: !185, line: 70, baseType: !254, size: 128, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !4248, file: !185, line: 71, baseType: !4254, size: 320, offset: 192)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !4255, line: 609, size: 320, elements: !4256)
!4255 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4256 = !{!4257, !4259, !4260, !4261, !4262, !4273}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4254, file: !4255, line: 611, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4254, file: !4255, line: 612, baseType: !208, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4254, file: !4255, line: 613, baseType: !800, size: 32, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4254, file: !4255, line: 614, baseType: !545, size: 8, offset: 160)
!4262 = !DIDerivedType(tag: DW_TAG_member, scope: !4254, file: !4255, line: 615, baseType: !4263, size: 64, offset: 192)
!4263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4254, file: !4255, line: 615, size: 64, elements: !4264)
!4264 = !{!4265, !4269}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4263, file: !4255, line: 616, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !208}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4263, file: !4255, line: 617, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !4258}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4254, file: !4255, line: 619, baseType: !208, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !4248, file: !185, line: 72, baseType: !3807, size: 64, offset: 512)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !3991, file: !185, line: 183, baseType: !4248, size: 576, offset: 3456)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !3991, file: !185, line: 196, baseType: !4277, size: 64, offset: 4032)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !3991, file: !185, line: 197, baseType: !4277, size: 64, offset: 4096)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !3991, file: !185, line: 198, baseType: !3990, size: 64, offset: 4160)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !3991, file: !185, line: 199, baseType: !3990, size: 64, offset: 4224)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !3991, file: !185, line: 203, baseType: !4282, size: 256, offset: 4288)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4283, size: 256, elements: !1121)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !185, line: 203, flags: DIFlagFwdDecl)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3991, file: !185, line: 205, baseType: !214, size: 32, offset: 4544)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !3991, file: !185, line: 220, baseType: !4287, size: 64, offset: 4608)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !185, line: 220, flags: DIFlagFwdDecl)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !3991, file: !185, line: 231, baseType: !2269, align: 64, offset: 4672)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!4291 = !{!0, !4292, !4297, !4302, !4307, !4310, !4371, !4374, !4376, !4379, !4393, !4395, !4397, !4399, !4401, !4403, !4405}
!4292 = !DIGlobalVariableExpression(var: !4293, expr: !DIExpression())
!4293 = distinct !DIGlobalVariable(name: "__exitcall_lvs_driver_exit", scope: !2, file: !3, line: 473, type: !4294, isLocal: true, isDefinition: true)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4295, line: 117, baseType: !4296)
!4295 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!4297 = !DIGlobalVariableExpression(var: !4298, expr: !DIExpression())
!4298 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 475, type: !4299, isLocal: true, isDefinition: true, align: 8)
!4299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 448, elements: !4300)
!4300 = !{!4301}
!4301 = !DISubrange(count: 56)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file223", scope: !2, file: !3, line: 476, type: !4304, isLocal: true, isDefinition: true, align: 8)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 304, elements: !4305)
!4305 = !{!4306}
!4306 = !DISubrange(count: 38)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license224", scope: !2, file: !3, line: 476, type: !4309, isLocal: true, isDefinition: true, align: 8)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 160, elements: !2140)
!4310 = !DIGlobalVariableExpression(var: !4311, expr: !DIExpression())
!4311 = distinct !DIGlobalVariable(name: "lvs_driver", scope: !2, file: !3, line: 466, type: !4312, isLocal: true, isDefinition: true)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4313)
!4313 = !{!4314, !4315, !4336, !4340, !4344, !4348, !4352, !4353, !4354, !4355, !4356, !4357, !4362, !4367, !4368, !4369, !4370}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4312, file: !6, line: 1185, baseType: !298, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4312, file: !6, line: 1187, baseType: !4316, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!214, !3785, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4321)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3336, line: 121, size: 256, elements: !4322)
!4322 = !{!4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4321, file: !3336, line: 123, baseType: !906, size: 16)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4321, file: !3336, line: 126, baseType: !906, size: 16, offset: 16)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4321, file: !3336, line: 127, baseType: !906, size: 16, offset: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4321, file: !3336, line: 128, baseType: !906, size: 16, offset: 48)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4321, file: !3336, line: 129, baseType: !906, size: 16, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4321, file: !3336, line: 132, baseType: !1319, size: 8, offset: 80)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4321, file: !3336, line: 133, baseType: !1319, size: 8, offset: 88)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4321, file: !3336, line: 134, baseType: !1319, size: 8, offset: 96)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4321, file: !3336, line: 137, baseType: !1319, size: 8, offset: 104)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4321, file: !3336, line: 138, baseType: !1319, size: 8, offset: 112)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4321, file: !3336, line: 139, baseType: !1319, size: 8, offset: 120)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4321, file: !3336, line: 142, baseType: !1319, size: 8, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4321, file: !3336, line: 145, baseType: !3355, size: 64, align: 64, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4312, file: !6, line: 1190, baseType: !4337, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !3785}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4312, file: !6, line: 1192, baseType: !4341, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!214, !3785, !7, !209}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4312, file: !6, line: 1195, baseType: !4345, size: 64, offset: 256)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!214, !3785, !3366}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4312, file: !6, line: 1196, baseType: !4349, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!214, !3785}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4312, file: !6, line: 1197, baseType: !4349, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4312, file: !6, line: 1199, baseType: !4349, size: 64, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4312, file: !6, line: 1200, baseType: !4349, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4312, file: !6, line: 1202, baseType: !4319, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4312, file: !6, line: 1203, baseType: !387, size: 64, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4312, file: !6, line: 1205, baseType: !4358, size: 128, offset: 704)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4359)
!4359 = !{!4360, !4361}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4358, file: !6, line: 1092, baseType: !238)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4358, file: !6, line: 1093, baseType: !254, size: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4312, file: !6, line: 1206, baseType: !4363, size: 1216, offset: 832)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4364)
!4364 = !{!4365, !4366}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4363, file: !6, line: 1114, baseType: !3324, size: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4363, file: !6, line: 1115, baseType: !214, size: 32, offset: 1152)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4312, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4312, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4312, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4312, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4371 = !DIGlobalVariableExpression(var: !4372, expr: !DIExpression())
!4372 = distinct !DIGlobalVariable(name: "lvs_groups", scope: !2, file: !3, line: 324, type: !4373, isLocal: true, isDefinition: true)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !282)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "lvs_group", scope: !2, file: !3, line: 324, type: !389, isLocal: true, isDefinition: true)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "lvs_attrs", scope: !2, file: !3, line: 313, type: !4378, isLocal: true, isDefinition: true)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 576, elements: !3352)
!4379 = !DIGlobalVariableExpression(var: !4380, expr: !DIExpression())
!4380 = distinct !DIGlobalVariable(name: "dev_attr_get_dev_desc", scope: !2, file: !3, line: 291, type: !4381, isLocal: true, isDefinition: true)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !67, line: 99, size: 256, elements: !4382)
!4382 = !{!4383, !4384, !4389}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4381, file: !67, line: 100, baseType: !371, size: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4381, file: !67, line: 101, baseType: !4385, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!366, !290, !4388, !335}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4381, file: !67, line: 103, baseType: !4390, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!366, !290, !4388, !298, !381}
!4393 = !DIGlobalVariableExpression(var: !4394, expr: !DIExpression())
!4394 = distinct !DIGlobalVariable(name: "dev_attr_u1_timeout", scope: !2, file: !3, line: 253, type: !4381, isLocal: true, isDefinition: true)
!4395 = !DIGlobalVariableExpression(var: !4396, expr: !DIExpression())
!4396 = distinct !DIGlobalVariable(name: "dev_attr_u2_timeout", scope: !2, file: !3, line: 224, type: !4381, isLocal: true, isDefinition: true)
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(name: "dev_attr_hot_reset", scope: !2, file: !3, line: 176, type: !4381, isLocal: true, isDefinition: true)
!4399 = !DIGlobalVariableExpression(var: !4400, expr: !DIExpression())
!4400 = distinct !DIGlobalVariable(name: "dev_attr_warm_reset", scope: !2, file: !3, line: 195, type: !4381, isLocal: true, isDefinition: true)
!4401 = !DIGlobalVariableExpression(var: !4402, expr: !DIExpression())
!4402 = distinct !DIGlobalVariable(name: "dev_attr_u3_entry", scope: !2, file: !3, line: 128, type: !4381, isLocal: true, isDefinition: true)
!4403 = !DIGlobalVariableExpression(var: !4404, expr: !DIExpression())
!4404 = distinct !DIGlobalVariable(name: "dev_attr_u3_exit", scope: !2, file: !3, line: 157, type: !4381, isLocal: true, isDefinition: true)
!4405 = !DIGlobalVariableExpression(var: !4406, expr: !DIExpression())
!4406 = distinct !DIGlobalVariable(name: "dev_attr_enable_compliance", scope: !2, file: !3, line: 311, type: !4381, isLocal: true, isDefinition: true)
!4407 = !{i32 7, !"Dwarf Version", i32 4}
!4408 = !{i32 2, !"Debug Info Version", i32 3}
!4409 = !{i32 1, !"wchar_size", i32 2}
!4410 = !{i32 1, !"Code Model", i32 2}
!4411 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4412 = distinct !DISubprogram(name: "lvs_driver_init", scope: !3, file: !3, line: 473, type: !4413, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!214}
!4415 = !DILocation(line: 473, column: 1, scope: !4412)
!4416 = distinct !DISubprogram(name: "lvs_driver_exit", scope: !3, file: !3, line: 473, type: !1841, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4417 = !DILocation(line: 473, column: 1, scope: !4416)
!4418 = distinct !DISubprogram(name: "lvs_rh_probe", scope: !3, file: !3, line: 392, type: !4317, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4419 = !DILocalVariable(name: "intf", arg: 1, scope: !4418, file: !3, line: 392, type: !3785)
!4420 = !DILocation(line: 392, column: 47, scope: !4418)
!4421 = !DILocalVariable(name: "id", arg: 2, scope: !4418, file: !3, line: 393, type: !4319)
!4422 = !DILocation(line: 393, column: 31, scope: !4418)
!4423 = !DILocalVariable(name: "hdev", scope: !4418, file: !3, line: 395, type: !210)
!4424 = !DILocation(line: 395, column: 21, scope: !4418)
!4425 = !DILocalVariable(name: "desc", scope: !4418, file: !3, line: 396, type: !3789)
!4426 = !DILocation(line: 396, column: 29, scope: !4418)
!4427 = !DILocalVariable(name: "endpoint", scope: !4418, file: !3, line: 397, type: !4428)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!4429 = !DILocation(line: 397, column: 34, scope: !4418)
!4430 = !DILocalVariable(name: "lvs", scope: !4418, file: !3, line: 398, type: !3895)
!4431 = !DILocation(line: 398, column: 17, scope: !4418)
!4432 = !DILocalVariable(name: "pipe", scope: !4418, file: !3, line: 399, type: !7)
!4433 = !DILocation(line: 399, column: 15, scope: !4418)
!4434 = !DILocalVariable(name: "ret", scope: !4418, file: !3, line: 400, type: !214)
!4435 = !DILocation(line: 400, column: 6, scope: !4418)
!4436 = !DILocalVariable(name: "maxp", scope: !4418, file: !3, line: 400, type: !214)
!4437 = !DILocation(line: 400, column: 11, scope: !4418)
!4438 = !DILocation(line: 402, column: 29, scope: !4418)
!4439 = !DILocation(line: 402, column: 9, scope: !4418)
!4440 = !DILocation(line: 402, column: 7, scope: !4418)
!4441 = !DILocation(line: 403, column: 9, scope: !4418)
!4442 = !DILocation(line: 403, column: 15, scope: !4418)
!4443 = !DILocation(line: 403, column: 7, scope: !4418)
!4444 = !DILocation(line: 405, column: 33, scope: !4418)
!4445 = !DILocation(line: 405, column: 8, scope: !4418)
!4446 = !DILocation(line: 405, column: 6, scope: !4418)
!4447 = !DILocation(line: 406, column: 6, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 406, column: 6)
!4449 = !DILocation(line: 406, column: 6, scope: !4418)
!4450 = !DILocation(line: 407, column: 10, scope: !4448)
!4451 = !DILocation(line: 407, column: 3, scope: !4448)
!4452 = !DILocation(line: 410, column: 6, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 410, column: 6)
!4454 = !DILocation(line: 410, column: 12, scope: !4453)
!4455 = !DILocation(line: 410, column: 23, scope: !4453)
!4456 = !DILocation(line: 410, column: 39, scope: !4453)
!4457 = !DILocation(line: 410, column: 56, scope: !4453)
!4458 = !DILocation(line: 410, column: 59, scope: !4453)
!4459 = !DILocation(line: 410, column: 65, scope: !4453)
!4460 = !DILocation(line: 410, column: 6, scope: !4418)
!4461 = !DILocation(line: 411, column: 3, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 410, column: 73)
!4463 = !DILocation(line: 412, column: 3, scope: !4462)
!4464 = !DILocation(line: 415, column: 22, scope: !4418)
!4465 = !DILocation(line: 415, column: 28, scope: !4418)
!4466 = !DILocation(line: 415, column: 8, scope: !4418)
!4467 = !DILocation(line: 415, column: 6, scope: !4418)
!4468 = !DILocation(line: 416, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 416, column: 6)
!4470 = !DILocation(line: 416, column: 6, scope: !4418)
!4471 = !DILocation(line: 417, column: 3, scope: !4469)
!4472 = !DILocation(line: 419, column: 14, scope: !4418)
!4473 = !DILocation(line: 419, column: 2, scope: !4418)
!4474 = !DILocation(line: 419, column: 7, scope: !4418)
!4475 = !DILocation(line: 419, column: 12, scope: !4418)
!4476 = !DILocation(line: 420, column: 19, scope: !4418)
!4477 = !DILocation(line: 420, column: 25, scope: !4418)
!4478 = !DILocation(line: 420, column: 2, scope: !4418)
!4479 = !DILocation(line: 423, column: 24, scope: !4418)
!4480 = !DILocation(line: 423, column: 30, scope: !4418)
!4481 = !DILocation(line: 425, column: 28, scope: !4418)
!4482 = !DILocation(line: 425, column: 33, scope: !4418)
!4483 = !DILocation(line: 425, column: 27, scope: !4418)
!4484 = !DILocation(line: 423, column: 8, scope: !4418)
!4485 = !DILocation(line: 423, column: 6, scope: !4418)
!4486 = !DILocation(line: 427, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 427, column: 6)
!4488 = !DILocation(line: 427, column: 10, scope: !4487)
!4489 = !DILocation(line: 427, column: 6, scope: !4418)
!4490 = !DILocation(line: 428, column: 3, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 427, column: 42)
!4492 = !DILocation(line: 429, column: 10, scope: !4491)
!4493 = !DILocation(line: 429, column: 14, scope: !4491)
!4494 = !DILocation(line: 429, column: 20, scope: !4491)
!4495 = !DILocation(line: 429, column: 3, scope: !4491)
!4496 = !DILocation(line: 433, column: 13, scope: !4418)
!4497 = !DILocation(line: 433, column: 2, scope: !4418)
!4498 = !DILocation(line: 433, column: 7, scope: !4418)
!4499 = !DILocation(line: 433, column: 11, scope: !4418)
!4500 = !DILocation(line: 434, column: 7, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 434, column: 6)
!4502 = !DILocation(line: 434, column: 12, scope: !4501)
!4503 = !DILocation(line: 434, column: 6, scope: !4418)
!4504 = !DILocation(line: 435, column: 3, scope: !4501)
!4505 = !DILocation(line: 437, column: 2, scope: !4418)
!4506 = !DILocation(line: 437, column: 2, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 437, column: 2)
!4508 = !DILocation(line: 439, column: 9, scope: !4418)
!4509 = !DILocation(line: 439, column: 7, scope: !4418)
!4510 = !DILocation(line: 440, column: 23, scope: !4418)
!4511 = !DILocation(line: 440, column: 29, scope: !4418)
!4512 = !DILocation(line: 440, column: 35, scope: !4418)
!4513 = !DILocation(line: 440, column: 9, scope: !4418)
!4514 = !DILocation(line: 440, column: 7, scope: !4418)
!4515 = !DILocation(line: 441, column: 19, scope: !4418)
!4516 = !DILocation(line: 441, column: 24, scope: !4418)
!4517 = !DILocation(line: 441, column: 29, scope: !4418)
!4518 = !DILocation(line: 441, column: 35, scope: !4418)
!4519 = !DILocation(line: 441, column: 42, scope: !4418)
!4520 = !DILocation(line: 441, column: 47, scope: !4418)
!4521 = !DILocation(line: 441, column: 58, scope: !4418)
!4522 = !DILocation(line: 442, column: 16, scope: !4418)
!4523 = !DILocation(line: 442, column: 21, scope: !4418)
!4524 = !DILocation(line: 442, column: 31, scope: !4418)
!4525 = !DILocation(line: 441, column: 2, scope: !4418)
!4526 = !DILocation(line: 444, column: 23, scope: !4418)
!4527 = !DILocation(line: 444, column: 28, scope: !4418)
!4528 = !DILocation(line: 444, column: 8, scope: !4418)
!4529 = !DILocation(line: 444, column: 6, scope: !4418)
!4530 = !DILocation(line: 445, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 445, column: 6)
!4532 = !DILocation(line: 445, column: 10, scope: !4531)
!4533 = !DILocation(line: 445, column: 6, scope: !4418)
!4534 = !DILocation(line: 446, column: 3, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 445, column: 15)
!4536 = !DILocation(line: 447, column: 3, scope: !4535)
!4537 = !DILocation(line: 450, column: 9, scope: !4418)
!4538 = !DILocation(line: 450, column: 2, scope: !4418)
!4539 = !DILabel(scope: !4418, name: "free_urb", file: !3, line: 452)
!4540 = !DILocation(line: 452, column: 1, scope: !4418)
!4541 = !DILocation(line: 453, column: 15, scope: !4418)
!4542 = !DILocation(line: 453, column: 20, scope: !4418)
!4543 = !DILocation(line: 453, column: 2, scope: !4418)
!4544 = !DILocation(line: 454, column: 9, scope: !4418)
!4545 = !DILocation(line: 454, column: 2, scope: !4418)
!4546 = !DILocation(line: 455, column: 1, scope: !4418)
!4547 = distinct !DISubprogram(name: "lvs_rh_disconnect", scope: !3, file: !3, line: 457, type: !4338, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4548 = !DILocalVariable(name: "intf", arg: 1, scope: !4547, file: !3, line: 457, type: !3785)
!4549 = !DILocation(line: 457, column: 53, scope: !4547)
!4550 = !DILocalVariable(name: "lvs", scope: !4547, file: !3, line: 459, type: !3895)
!4551 = !DILocation(line: 459, column: 17, scope: !4547)
!4552 = !DILocation(line: 459, column: 40, scope: !4547)
!4553 = !DILocation(line: 459, column: 23, scope: !4547)
!4554 = !DILocation(line: 461, column: 17, scope: !4547)
!4555 = !DILocation(line: 461, column: 22, scope: !4547)
!4556 = !DILocation(line: 461, column: 2, scope: !4547)
!4557 = !DILocation(line: 462, column: 14, scope: !4547)
!4558 = !DILocation(line: 462, column: 19, scope: !4547)
!4559 = !DILocation(line: 462, column: 2, scope: !4547)
!4560 = !DILocation(line: 463, column: 15, scope: !4547)
!4561 = !DILocation(line: 463, column: 20, scope: !4547)
!4562 = !DILocation(line: 463, column: 2, scope: !4547)
!4563 = !DILocation(line: 464, column: 1, scope: !4547)
!4564 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4565, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!210, !3785}
!4567 = !DILocalVariable(name: "intf", arg: 1, scope: !4564, file: !6, line: 715, type: !3785)
!4568 = !DILocation(line: 715, column: 76, scope: !4564)
!4569 = !DILocalVariable(name: "__mptr", scope: !4570, file: !6, line: 717, type: !209)
!4570 = distinct !DILexicalBlock(scope: !4564, file: !6, line: 717, column: 9)
!4571 = !DILocation(line: 717, column: 9, scope: !4570)
!4572 = !DILocation(line: 717, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4570, file: !6, line: 717, column: 9)
!4574 = !DILocation(line: 717, column: 2, scope: !4564)
!4575 = distinct !DISubprogram(name: "usb_find_int_in_endpoint", scope: !6, file: !6, line: 132, type: !4576, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!214, !3789, !4578}
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4579 = !DILocalVariable(name: "alt", arg: 1, scope: !4575, file: !6, line: 132, type: !3789)
!4580 = !DILocation(line: 132, column: 53, scope: !4575)
!4581 = !DILocalVariable(name: "int_in", arg: 2, scope: !4575, file: !6, line: 133, type: !4578)
!4582 = !DILocation(line: 133, column: 36, scope: !4575)
!4583 = !DILocation(line: 135, column: 35, scope: !4575)
!4584 = !DILocation(line: 135, column: 52, scope: !4575)
!4585 = !DILocation(line: 135, column: 9, scope: !4575)
!4586 = !DILocation(line: 135, column: 2, scope: !4575)
!4587 = distinct !DISubprogram(name: "devm_kzalloc", scope: !67, file: !67, line: 215, type: !4588, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!209, !290, !381, !206}
!4590 = !DILocalVariable(name: "dev", arg: 1, scope: !4587, file: !67, line: 215, type: !290)
!4591 = !DILocation(line: 215, column: 49, scope: !4587)
!4592 = !DILocalVariable(name: "size", arg: 2, scope: !4587, file: !67, line: 215, type: !381)
!4593 = !DILocation(line: 215, column: 61, scope: !4587)
!4594 = !DILocalVariable(name: "gfp", arg: 3, scope: !4587, file: !67, line: 215, type: !206)
!4595 = !DILocation(line: 215, column: 73, scope: !4587)
!4596 = !DILocation(line: 217, column: 22, scope: !4587)
!4597 = !DILocation(line: 217, column: 27, scope: !4587)
!4598 = !DILocation(line: 217, column: 33, scope: !4587)
!4599 = !DILocation(line: 217, column: 37, scope: !4587)
!4600 = !DILocation(line: 217, column: 9, scope: !4587)
!4601 = !DILocation(line: 217, column: 2, scope: !4587)
!4602 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !4603, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !3785, !209}
!4605 = !DILocalVariable(name: "intf", arg: 1, scope: !4602, file: !6, line: 268, type: !3785)
!4606 = !DILocation(line: 268, column: 59, scope: !4602)
!4607 = !DILocalVariable(name: "data", arg: 2, scope: !4602, file: !6, line: 268, type: !209)
!4608 = !DILocation(line: 268, column: 71, scope: !4602)
!4609 = !DILocation(line: 270, column: 19, scope: !4602)
!4610 = !DILocation(line: 270, column: 25, scope: !4602)
!4611 = !DILocation(line: 270, column: 30, scope: !4602)
!4612 = !DILocation(line: 270, column: 2, scope: !4602)
!4613 = !DILocation(line: 271, column: 1, scope: !4602)
!4614 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !4615, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!7, !210, !7}
!4617 = !DILocalVariable(name: "dev", arg: 1, scope: !4614, file: !6, line: 1945, type: !210)
!4618 = !DILocation(line: 1945, column: 61, scope: !4614)
!4619 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4614, file: !6, line: 1946, type: !7)
!4620 = !DILocation(line: 1946, column: 16, scope: !4614)
!4621 = !DILocation(line: 1948, column: 10, scope: !4614)
!4622 = !DILocation(line: 1948, column: 15, scope: !4614)
!4623 = !DILocation(line: 1948, column: 22, scope: !4614)
!4624 = !DILocation(line: 1948, column: 31, scope: !4614)
!4625 = !DILocation(line: 1948, column: 40, scope: !4614)
!4626 = !DILocation(line: 1948, column: 28, scope: !4614)
!4627 = !DILocation(line: 1948, column: 2, scope: !4614)
!4628 = distinct !DISubprogram(name: "__init_work", scope: !114, file: !114, line: 215, type: !4629, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{null, !278, !214}
!4631 = !DILocalVariable(name: "work", arg: 1, scope: !4628, file: !114, line: 215, type: !278)
!4632 = !DILocation(line: 215, column: 52, scope: !4628)
!4633 = !DILocalVariable(name: "onstack", arg: 2, scope: !4628, file: !114, line: 215, type: !214)
!4634 = !DILocation(line: 215, column: 62, scope: !4628)
!4635 = !DILocation(line: 215, column: 73, scope: !4628)
!4636 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4637, file: !4637, line: 33, type: !4638, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4637 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !257}
!4640 = !DILocalVariable(name: "list", arg: 1, scope: !4636, file: !4637, line: 33, type: !257)
!4641 = !DILocation(line: 33, column: 53, scope: !4636)
!4642 = !DILocation(line: 35, column: 2, scope: !4636)
!4643 = !DILocation(line: 35, column: 2, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4636, file: !4637, line: 35, column: 2)
!4645 = !DILocation(line: 35, column: 2, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4644, file: !4637, line: 35, column: 2)
!4647 = !DILocation(line: 35, column: 2, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4644, file: !4637, line: 35, column: 2)
!4649 = !DILocation(line: 36, column: 15, scope: !4636)
!4650 = !DILocation(line: 36, column: 2, scope: !4636)
!4651 = !DILocation(line: 36, column: 8, scope: !4636)
!4652 = !DILocation(line: 36, column: 13, scope: !4636)
!4653 = !DILocation(line: 37, column: 1, scope: !4636)
!4654 = distinct !DISubprogram(name: "lvs_rh_work", scope: !3, file: !3, line: 326, type: !276, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4655 = !DILocalVariable(name: "work", arg: 1, scope: !4654, file: !3, line: 326, type: !278)
!4656 = !DILocation(line: 326, column: 45, scope: !4654)
!4657 = !DILocalVariable(name: "lvs", scope: !4654, file: !3, line: 328, type: !3895)
!4658 = !DILocation(line: 328, column: 17, scope: !4654)
!4659 = !DILocalVariable(name: "__mptr", scope: !4660, file: !3, line: 328, type: !209)
!4660 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 328, column: 23)
!4661 = !DILocation(line: 328, column: 23, scope: !4660)
!4662 = !DILocation(line: 328, column: 23, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 328, column: 23)
!4664 = !DILocalVariable(name: "intf", scope: !4654, file: !3, line: 329, type: !3785)
!4665 = !DILocation(line: 329, column: 24, scope: !4654)
!4666 = !DILocation(line: 329, column: 31, scope: !4654)
!4667 = !DILocation(line: 329, column: 36, scope: !4654)
!4668 = !DILocalVariable(name: "hdev", scope: !4654, file: !3, line: 330, type: !210)
!4669 = !DILocation(line: 330, column: 21, scope: !4654)
!4670 = !DILocation(line: 330, column: 48, scope: !4654)
!4671 = !DILocation(line: 330, column: 28, scope: !4654)
!4672 = !DILocalVariable(name: "hcd", scope: !4654, file: !3, line: 331, type: !3990)
!4673 = !DILocation(line: 331, column: 18, scope: !4654)
!4674 = !DILocation(line: 331, column: 35, scope: !4654)
!4675 = !DILocation(line: 331, column: 41, scope: !4654)
!4676 = !DILocation(line: 331, column: 24, scope: !4654)
!4677 = !DILocalVariable(name: "descriptor", scope: !4654, file: !3, line: 332, type: !4678)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!4679 = !DILocation(line: 332, column: 29, scope: !4654)
!4680 = !DILocation(line: 332, column: 43, scope: !4654)
!4681 = !DILocation(line: 332, column: 48, scope: !4654)
!4682 = !DILocalVariable(name: "port_status", scope: !4654, file: !3, line: 333, type: !4683)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!4684 = !DILocation(line: 333, column: 26, scope: !4654)
!4685 = !DILocation(line: 333, column: 41, scope: !4654)
!4686 = !DILocation(line: 333, column: 46, scope: !4654)
!4687 = !DILocalVariable(name: "i", scope: !4654, file: !3, line: 334, type: !214)
!4688 = !DILocation(line: 334, column: 6, scope: !4654)
!4689 = !DILocalVariable(name: "ret", scope: !4654, file: !3, line: 334, type: !214)
!4690 = !DILocation(line: 334, column: 9, scope: !4654)
!4691 = !DILocalVariable(name: "portchange", scope: !4654, file: !3, line: 335, type: !905)
!4692 = !DILocation(line: 335, column: 6, scope: !4654)
!4693 = !DILocation(line: 338, column: 9, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 338, column: 2)
!4695 = !DILocation(line: 338, column: 7, scope: !4694)
!4696 = !DILocation(line: 338, column: 14, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 338, column: 2)
!4698 = !DILocation(line: 338, column: 19, scope: !4697)
!4699 = !DILocation(line: 338, column: 31, scope: !4697)
!4700 = !DILocation(line: 338, column: 16, scope: !4697)
!4701 = !DILocation(line: 338, column: 2, scope: !4694)
!4702 = !DILocation(line: 339, column: 25, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 338, column: 47)
!4704 = !DILocation(line: 339, column: 31, scope: !4703)
!4705 = !DILocation(line: 340, column: 53, scope: !4703)
!4706 = !DILocation(line: 341, column: 4, scope: !4703)
!4707 = !DILocation(line: 339, column: 9, scope: !4703)
!4708 = !DILocation(line: 339, column: 7, scope: !4703)
!4709 = !DILocation(line: 342, column: 7, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 342, column: 7)
!4711 = !DILocation(line: 342, column: 11, scope: !4710)
!4712 = !DILocation(line: 342, column: 7, scope: !4703)
!4713 = !DILocation(line: 343, column: 4, scope: !4710)
!4714 = !DILocation(line: 345, column: 16, scope: !4703)
!4715 = !DILocation(line: 345, column: 14, scope: !4703)
!4716 = !DILocation(line: 347, column: 7, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 347, column: 7)
!4718 = !DILocation(line: 347, column: 18, scope: !4717)
!4719 = !DILocation(line: 347, column: 7, scope: !4703)
!4720 = !DILocation(line: 348, column: 30, scope: !4717)
!4721 = !DILocation(line: 348, column: 36, scope: !4717)
!4722 = !DILocation(line: 348, column: 4, scope: !4717)
!4723 = !DILocation(line: 350, column: 7, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 350, column: 7)
!4725 = !DILocation(line: 350, column: 18, scope: !4724)
!4726 = !DILocation(line: 350, column: 7, scope: !4703)
!4727 = !DILocation(line: 351, column: 30, scope: !4724)
!4728 = !DILocation(line: 351, column: 36, scope: !4724)
!4729 = !DILocation(line: 351, column: 4, scope: !4724)
!4730 = !DILocation(line: 353, column: 7, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 353, column: 7)
!4732 = !DILocation(line: 353, column: 18, scope: !4731)
!4733 = !DILocation(line: 353, column: 7, scope: !4703)
!4734 = !DILocation(line: 354, column: 30, scope: !4731)
!4735 = !DILocation(line: 354, column: 36, scope: !4731)
!4736 = !DILocation(line: 354, column: 4, scope: !4731)
!4737 = !DILocation(line: 356, column: 7, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 356, column: 7)
!4739 = !DILocation(line: 356, column: 18, scope: !4738)
!4740 = !DILocation(line: 356, column: 7, scope: !4703)
!4741 = !DILocation(line: 357, column: 30, scope: !4738)
!4742 = !DILocation(line: 357, column: 36, scope: !4738)
!4743 = !DILocation(line: 357, column: 4, scope: !4738)
!4744 = !DILocation(line: 359, column: 7, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 359, column: 7)
!4746 = !DILocation(line: 359, column: 18, scope: !4745)
!4747 = !DILocation(line: 359, column: 7, scope: !4703)
!4748 = !DILocation(line: 360, column: 30, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 359, column: 48)
!4750 = !DILocation(line: 360, column: 36, scope: !4749)
!4751 = !DILocation(line: 360, column: 4, scope: !4749)
!4752 = !DILocation(line: 363, column: 8, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 363, column: 8)
!4754 = !DILocation(line: 363, column: 46, scope: !4753)
!4755 = !DILocation(line: 363, column: 8, scope: !4749)
!4756 = !DILocation(line: 365, column: 5, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 364, column: 32)
!4758 = !DILocation(line: 365, column: 10, scope: !4757)
!4759 = !DILocation(line: 365, column: 18, scope: !4757)
!4760 = !DILocation(line: 366, column: 20, scope: !4757)
!4761 = !DILocation(line: 366, column: 5, scope: !4757)
!4762 = !DILocation(line: 366, column: 10, scope: !4757)
!4763 = !DILocation(line: 366, column: 18, scope: !4757)
!4764 = !DILocation(line: 367, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 367, column: 9)
!4766 = !DILocation(line: 367, column: 14, scope: !4765)
!4767 = !DILocation(line: 367, column: 9, scope: !4757)
!4768 = !DILocation(line: 368, column: 29, scope: !4765)
!4769 = !DILocation(line: 368, column: 34, scope: !4765)
!4770 = !DILocation(line: 368, column: 6, scope: !4765)
!4771 = !DILocation(line: 370, column: 4, scope: !4757)
!4772 = !DILocation(line: 371, column: 5, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 370, column: 11)
!4774 = !DILocation(line: 371, column: 10, scope: !4773)
!4775 = !DILocation(line: 371, column: 18, scope: !4773)
!4776 = !DILocation(line: 372, column: 9, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 372, column: 9)
!4778 = !DILocation(line: 372, column: 14, scope: !4777)
!4779 = !DILocation(line: 372, column: 9, scope: !4773)
!4780 = !DILocation(line: 373, column: 32, scope: !4777)
!4781 = !DILocation(line: 373, column: 37, scope: !4777)
!4782 = !DILocation(line: 373, column: 6, scope: !4777)
!4783 = !DILocation(line: 376, column: 4, scope: !4749)
!4784 = !DILocation(line: 378, column: 2, scope: !4703)
!4785 = !DILocation(line: 338, column: 43, scope: !4697)
!4786 = !DILocation(line: 338, column: 2, scope: !4697)
!4787 = distinct !{!4787, !4701, !4788}
!4788 = !DILocation(line: 378, column: 2, scope: !4694)
!4789 = !DILocation(line: 380, column: 23, scope: !4654)
!4790 = !DILocation(line: 380, column: 28, scope: !4654)
!4791 = !DILocation(line: 380, column: 8, scope: !4654)
!4792 = !DILocation(line: 380, column: 6, scope: !4654)
!4793 = !DILocation(line: 381, column: 6, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 381, column: 6)
!4795 = !DILocation(line: 381, column: 10, scope: !4794)
!4796 = !DILocation(line: 381, column: 15, scope: !4794)
!4797 = !DILocation(line: 381, column: 18, scope: !4794)
!4798 = !DILocation(line: 381, column: 22, scope: !4794)
!4799 = !DILocation(line: 381, column: 33, scope: !4794)
!4800 = !DILocation(line: 381, column: 36, scope: !4794)
!4801 = !DILocation(line: 381, column: 40, scope: !4794)
!4802 = !DILocation(line: 381, column: 6, scope: !4654)
!4803 = !DILocation(line: 382, column: 3, scope: !4794)
!4804 = !DILocation(line: 383, column: 1, scope: !4654)
!4805 = distinct !DISubprogram(name: "usb_maxpacket", scope: !6, file: !6, line: 1980, type: !4806, scopeLine: 1981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!906, !210, !214, !214}
!4808 = !DILocalVariable(name: "udev", arg: 1, scope: !4805, file: !6, line: 1980, type: !210)
!4809 = !DILocation(line: 1980, column: 34, scope: !4805)
!4810 = !DILocalVariable(name: "pipe", arg: 2, scope: !4805, file: !6, line: 1980, type: !214)
!4811 = !DILocation(line: 1980, column: 44, scope: !4805)
!4812 = !DILocalVariable(name: "is_out", arg: 3, scope: !4805, file: !6, line: 1980, type: !214)
!4813 = !DILocation(line: 1980, column: 54, scope: !4805)
!4814 = !DILocalVariable(name: "ep", scope: !4805, file: !6, line: 1982, type: !3807)
!4815 = !DILocation(line: 1982, column: 28, scope: !4805)
!4816 = !DILocalVariable(name: "epnum", scope: !4805, file: !6, line: 1983, type: !7)
!4817 = !DILocation(line: 1983, column: 13, scope: !4805)
!4818 = !DILocation(line: 1983, column: 21, scope: !4805)
!4819 = !DILocation(line: 1985, column: 6, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4805, file: !6, line: 1985, column: 6)
!4821 = !DILocation(line: 1985, column: 6, scope: !4805)
!4822 = !DILocalVariable(name: "__ret_warn_on", scope: !4823, file: !6, line: 1986, type: !214)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !6, line: 1986, column: 3)
!4824 = distinct !DILexicalBlock(scope: !4820, file: !6, line: 1985, column: 14)
!4825 = !DILocation(line: 1986, column: 3, scope: !4823)
!4826 = !DILocation(line: 1986, column: 3, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4823, file: !6, line: 1986, column: 3)
!4828 = !DILocation(line: 1986, column: 3, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4827, file: !6, line: 1986, column: 3)
!4830 = !DILocation(line: 1986, column: 3, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4829, file: !6, line: 1986, column: 3)
!4832 = !DILocation(line: 1986, column: 3, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !6, line: 1986, column: 3)
!4834 = !{i32 -2142611688, i32 -2142611659, i32 -2142611613, i32 -2142611555, i32 -2142611501, i32 -2142611447, i32 -2142611392, i32 -2142611361}
!4835 = !DILocation(line: 1986, column: 3, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4829, file: !6, line: 1986, column: 3)
!4837 = !{i32 -2142610959, i32 -2142610952, i32 -2142610900, i32 -2142610869, i32 -2142610839}
!4838 = !DILocation(line: 1986, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4829, file: !6, line: 1986, column: 3)
!4840 = !DILocation(line: 1987, column: 8, scope: !4824)
!4841 = !DILocation(line: 1987, column: 14, scope: !4824)
!4842 = !DILocation(line: 1987, column: 21, scope: !4824)
!4843 = !DILocation(line: 1987, column: 6, scope: !4824)
!4844 = !DILocation(line: 1988, column: 2, scope: !4824)
!4845 = !DILocalVariable(name: "__ret_warn_on", scope: !4846, file: !6, line: 1989, type: !214)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !6, line: 1989, column: 3)
!4847 = distinct !DILexicalBlock(scope: !4820, file: !6, line: 1988, column: 9)
!4848 = !DILocation(line: 1989, column: 3, scope: !4846)
!4849 = !DILocation(line: 1989, column: 3, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4846, file: !6, line: 1989, column: 3)
!4851 = !DILocation(line: 1989, column: 3, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4850, file: !6, line: 1989, column: 3)
!4853 = !DILocation(line: 1989, column: 3, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4852, file: !6, line: 1989, column: 3)
!4855 = !DILocation(line: 1989, column: 3, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !6, line: 1989, column: 3)
!4857 = !{i32 -2142610187, i32 -2142610158, i32 -2142610112, i32 -2142610054, i32 -2142610000, i32 -2142609946, i32 -2142609891, i32 -2142609860}
!4858 = !DILocation(line: 1989, column: 3, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4852, file: !6, line: 1989, column: 3)
!4860 = !{i32 -2142609458, i32 -2142609451, i32 -2142609399, i32 -2142609368, i32 -2142609338}
!4861 = !DILocation(line: 1989, column: 3, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4852, file: !6, line: 1989, column: 3)
!4863 = !DILocation(line: 1990, column: 8, scope: !4847)
!4864 = !DILocation(line: 1990, column: 14, scope: !4847)
!4865 = !DILocation(line: 1990, column: 20, scope: !4847)
!4866 = !DILocation(line: 1990, column: 6, scope: !4847)
!4867 = !DILocation(line: 1992, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4805, file: !6, line: 1992, column: 6)
!4869 = !DILocation(line: 1992, column: 6, scope: !4805)
!4870 = !DILocation(line: 1993, column: 3, scope: !4868)
!4871 = !DILocation(line: 1996, column: 28, scope: !4805)
!4872 = !DILocation(line: 1996, column: 32, scope: !4805)
!4873 = !DILocation(line: 1996, column: 9, scope: !4805)
!4874 = !DILocation(line: 1996, column: 2, scope: !4805)
!4875 = !DILocation(line: 1997, column: 1, scope: !4805)
!4876 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !4877, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{null, !3929, !210, !7, !209, !214, !3971, !209, !214}
!4879 = !DILocalVariable(name: "urb", arg: 1, scope: !4876, file: !6, line: 1688, type: !3929)
!4880 = !DILocation(line: 1688, column: 49, scope: !4876)
!4881 = !DILocalVariable(name: "dev", arg: 2, scope: !4876, file: !6, line: 1689, type: !210)
!4882 = !DILocation(line: 1689, column: 28, scope: !4876)
!4883 = !DILocalVariable(name: "pipe", arg: 3, scope: !4876, file: !6, line: 1690, type: !7)
!4884 = !DILocation(line: 1690, column: 22, scope: !4876)
!4885 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !4876, file: !6, line: 1691, type: !209)
!4886 = !DILocation(line: 1691, column: 15, scope: !4876)
!4887 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !4876, file: !6, line: 1692, type: !214)
!4888 = !DILocation(line: 1692, column: 13, scope: !4876)
!4889 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !4876, file: !6, line: 1693, type: !3971)
!4890 = !DILocation(line: 1693, column: 24, scope: !4876)
!4891 = !DILocalVariable(name: "context", arg: 7, scope: !4876, file: !6, line: 1694, type: !209)
!4892 = !DILocation(line: 1694, column: 15, scope: !4876)
!4893 = !DILocalVariable(name: "interval", arg: 8, scope: !4876, file: !6, line: 1695, type: !214)
!4894 = !DILocation(line: 1695, column: 13, scope: !4876)
!4895 = !DILocation(line: 1697, column: 13, scope: !4876)
!4896 = !DILocation(line: 1697, column: 2, scope: !4876)
!4897 = !DILocation(line: 1697, column: 7, scope: !4876)
!4898 = !DILocation(line: 1697, column: 11, scope: !4876)
!4899 = !DILocation(line: 1698, column: 14, scope: !4876)
!4900 = !DILocation(line: 1698, column: 2, scope: !4876)
!4901 = !DILocation(line: 1698, column: 7, scope: !4876)
!4902 = !DILocation(line: 1698, column: 12, scope: !4876)
!4903 = !DILocation(line: 1699, column: 25, scope: !4876)
!4904 = !DILocation(line: 1699, column: 2, scope: !4876)
!4905 = !DILocation(line: 1699, column: 7, scope: !4876)
!4906 = !DILocation(line: 1699, column: 23, scope: !4876)
!4907 = !DILocation(line: 1700, column: 32, scope: !4876)
!4908 = !DILocation(line: 1700, column: 2, scope: !4876)
!4909 = !DILocation(line: 1700, column: 7, scope: !4876)
!4910 = !DILocation(line: 1700, column: 30, scope: !4876)
!4911 = !DILocation(line: 1701, column: 18, scope: !4876)
!4912 = !DILocation(line: 1701, column: 2, scope: !4876)
!4913 = !DILocation(line: 1701, column: 7, scope: !4876)
!4914 = !DILocation(line: 1701, column: 16, scope: !4876)
!4915 = !DILocation(line: 1702, column: 17, scope: !4876)
!4916 = !DILocation(line: 1702, column: 2, scope: !4876)
!4917 = !DILocation(line: 1702, column: 7, scope: !4876)
!4918 = !DILocation(line: 1702, column: 15, scope: !4876)
!4919 = !DILocation(line: 1704, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4876, file: !6, line: 1704, column: 6)
!4921 = !DILocation(line: 1704, column: 11, scope: !4920)
!4922 = !DILocation(line: 1704, column: 17, scope: !4920)
!4923 = !DILocation(line: 1704, column: 35, scope: !4920)
!4924 = !DILocation(line: 1704, column: 38, scope: !4920)
!4925 = !DILocation(line: 1704, column: 43, scope: !4920)
!4926 = !DILocation(line: 1704, column: 49, scope: !4920)
!4927 = !DILocation(line: 1704, column: 6, scope: !4876)
!4928 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !4929, file: !6, line: 1706, type: !214)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !6, line: 1706, column: 14)
!4930 = distinct !DILexicalBlock(scope: !4920, file: !6, line: 1704, column: 69)
!4931 = !DILocation(line: 1706, column: 14, scope: !4929)
!4932 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !4933, file: !6, line: 1706, type: !214)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !6, line: 1706, column: 14)
!4934 = !DILocation(line: 1706, column: 14, scope: !4933)
!4935 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !4933, file: !6, line: 1706, type: !214)
!4936 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !4929, file: !6, line: 1706, type: !214)
!4937 = !DILocation(line: 1706, column: 12, scope: !4930)
!4938 = !DILocation(line: 1708, column: 25, scope: !4930)
!4939 = !DILocation(line: 1708, column: 34, scope: !4930)
!4940 = !DILocation(line: 1708, column: 21, scope: !4930)
!4941 = !DILocation(line: 1708, column: 3, scope: !4930)
!4942 = !DILocation(line: 1708, column: 8, scope: !4930)
!4943 = !DILocation(line: 1708, column: 17, scope: !4930)
!4944 = !DILocation(line: 1709, column: 2, scope: !4930)
!4945 = !DILocation(line: 1710, column: 19, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4920, file: !6, line: 1709, column: 9)
!4947 = !DILocation(line: 1710, column: 3, scope: !4946)
!4948 = !DILocation(line: 1710, column: 8, scope: !4946)
!4949 = !DILocation(line: 1710, column: 17, scope: !4946)
!4950 = !DILocation(line: 1713, column: 2, scope: !4876)
!4951 = !DILocation(line: 1713, column: 7, scope: !4876)
!4952 = !DILocation(line: 1713, column: 19, scope: !4876)
!4953 = !DILocation(line: 1714, column: 1, scope: !4876)
!4954 = distinct !DISubprogram(name: "lvs_rh_irq", scope: !3, file: !3, line: 385, type: !3973, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4955 = !DILocalVariable(name: "urb", arg: 1, scope: !4954, file: !3, line: 385, type: !3929)
!4956 = !DILocation(line: 385, column: 36, scope: !4954)
!4957 = !DILocalVariable(name: "lvs", scope: !4954, file: !3, line: 387, type: !3895)
!4958 = !DILocation(line: 387, column: 17, scope: !4954)
!4959 = !DILocation(line: 387, column: 23, scope: !4954)
!4960 = !DILocation(line: 387, column: 28, scope: !4954)
!4961 = !DILocation(line: 389, column: 17, scope: !4954)
!4962 = !DILocation(line: 389, column: 22, scope: !4954)
!4963 = !DILocation(line: 389, column: 2, scope: !4954)
!4964 = !DILocation(line: 390, column: 1, scope: !4954)
!4965 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !4966, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{null, !290, !209}
!4968 = !DILocalVariable(name: "dev", arg: 1, scope: !4965, file: !67, line: 660, type: !290)
!4969 = !DILocation(line: 660, column: 51, scope: !4965)
!4970 = !DILocalVariable(name: "data", arg: 2, scope: !4965, file: !67, line: 660, type: !209)
!4971 = !DILocation(line: 660, column: 62, scope: !4965)
!4972 = !DILocation(line: 662, column: 21, scope: !4965)
!4973 = !DILocation(line: 662, column: 2, scope: !4965)
!4974 = !DILocation(line: 662, column: 7, scope: !4965)
!4975 = !DILocation(line: 662, column: 19, scope: !4965)
!4976 = !DILocation(line: 663, column: 1, scope: !4965)
!4977 = distinct !DISubprogram(name: "bus_to_hcd", scope: !185, file: !185, line: 241, type: !4978, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!3990, !286}
!4980 = !DILocalVariable(name: "bus", arg: 1, scope: !4977, file: !185, line: 241, type: !286)
!4981 = !DILocation(line: 241, column: 58, scope: !4977)
!4982 = !DILocalVariable(name: "__mptr", scope: !4983, file: !185, line: 243, type: !209)
!4983 = distinct !DILexicalBlock(scope: !4977, file: !185, line: 243, column: 9)
!4984 = !DILocation(line: 243, column: 9, scope: !4983)
!4985 = !DILocation(line: 243, column: 9, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4983, file: !185, line: 243, column: 9)
!4987 = !DILocation(line: 243, column: 2, scope: !4977)
!4988 = distinct !DISubprogram(name: "lvs_rh_clear_port_feature", scope: !3, file: !3, line: 85, type: !4989, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!214, !210, !214, !214}
!4991 = !DILocalVariable(name: "hdev", arg: 1, scope: !4988, file: !3, line: 85, type: !210)
!4992 = !DILocation(line: 85, column: 57, scope: !4988)
!4993 = !DILocalVariable(name: "port1", arg: 2, scope: !4988, file: !3, line: 86, type: !214)
!4994 = !DILocation(line: 86, column: 7, scope: !4988)
!4995 = !DILocalVariable(name: "feature", arg: 3, scope: !4988, file: !3, line: 86, type: !214)
!4996 = !DILocation(line: 86, column: 18, scope: !4988)
!4997 = !DILocation(line: 88, column: 25, scope: !4988)
!4998 = !DILocation(line: 88, column: 31, scope: !4988)
!4999 = !DILocation(line: 89, column: 39, scope: !4988)
!5000 = !DILocation(line: 89, column: 48, scope: !4988)
!5001 = !DILocation(line: 88, column: 9, scope: !4988)
!5002 = !DILocation(line: 88, column: 2, scope: !4988)
!5003 = distinct !DISubprogram(name: "usb_phy_notify_connect", scope: !159, file: !159, line: 320, type: !4216, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5004 = !DILocalVariable(name: "x", arg: 1, scope: !5003, file: !159, line: 320, type: !4127)
!5005 = !DILocation(line: 320, column: 40, scope: !5003)
!5006 = !DILocalVariable(name: "speed", arg: 2, scope: !5003, file: !159, line: 320, type: !99)
!5007 = !DILocation(line: 320, column: 65, scope: !5003)
!5008 = !DILocation(line: 322, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5003, file: !159, line: 322, column: 6)
!5010 = !DILocation(line: 322, column: 8, scope: !5009)
!5011 = !DILocation(line: 322, column: 11, scope: !5009)
!5012 = !DILocation(line: 322, column: 14, scope: !5009)
!5013 = !DILocation(line: 322, column: 6, scope: !5003)
!5014 = !DILocation(line: 323, column: 10, scope: !5009)
!5015 = !DILocation(line: 323, column: 13, scope: !5009)
!5016 = !DILocation(line: 323, column: 28, scope: !5009)
!5017 = !DILocation(line: 323, column: 31, scope: !5009)
!5018 = !DILocation(line: 323, column: 3, scope: !5009)
!5019 = !DILocation(line: 325, column: 3, scope: !5009)
!5020 = !DILocation(line: 326, column: 1, scope: !5003)
!5021 = distinct !DISubprogram(name: "usb_phy_notify_disconnect", scope: !159, file: !159, line: 329, type: !4216, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5022 = !DILocalVariable(name: "x", arg: 1, scope: !5021, file: !159, line: 329, type: !4127)
!5023 = !DILocation(line: 329, column: 43, scope: !5021)
!5024 = !DILocalVariable(name: "speed", arg: 2, scope: !5021, file: !159, line: 329, type: !99)
!5025 = !DILocation(line: 329, column: 68, scope: !5021)
!5026 = !DILocation(line: 331, column: 6, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5021, file: !159, line: 331, column: 6)
!5028 = !DILocation(line: 331, column: 8, scope: !5027)
!5029 = !DILocation(line: 331, column: 11, scope: !5027)
!5030 = !DILocation(line: 331, column: 14, scope: !5027)
!5031 = !DILocation(line: 331, column: 6, scope: !5021)
!5032 = !DILocation(line: 332, column: 10, scope: !5027)
!5033 = !DILocation(line: 332, column: 13, scope: !5027)
!5034 = !DILocation(line: 332, column: 31, scope: !5027)
!5035 = !DILocation(line: 332, column: 34, scope: !5027)
!5036 = !DILocation(line: 332, column: 3, scope: !5027)
!5037 = !DILocation(line: 334, column: 3, scope: !5027)
!5038 = !DILocation(line: 335, column: 1, scope: !5021)
!5039 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !88, file: !88, line: 647, type: !5040, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!214, !5042}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3638)
!5044 = !DILocalVariable(name: "epd", arg: 1, scope: !5039, file: !88, line: 647, type: !5042)
!5045 = !DILocation(line: 647, column: 75, scope: !5039)
!5046 = !DILocation(line: 649, column: 9, scope: !5039)
!5047 = !DILocation(line: 649, column: 44, scope: !5039)
!5048 = !DILocation(line: 649, column: 2, scope: !5039)
!5049 = distinct !DISubprogram(name: "schedule_work", scope: !114, file: !114, line: 566, type: !5050, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!545, !278}
!5052 = !DILocalVariable(name: "work", arg: 1, scope: !5049, file: !114, line: 566, type: !278)
!5053 = !DILocation(line: 566, column: 54, scope: !5049)
!5054 = !DILocation(line: 568, column: 20, scope: !5049)
!5055 = !DILocation(line: 568, column: 31, scope: !5049)
!5056 = !DILocation(line: 568, column: 9, scope: !5049)
!5057 = !DILocation(line: 568, column: 2, scope: !5049)
!5058 = distinct !DISubprogram(name: "queue_work", scope: !114, file: !114, line: 504, type: !5059, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!545, !2671, !278}
!5061 = !DILocalVariable(name: "wq", arg: 1, scope: !5058, file: !114, line: 504, type: !2671)
!5062 = !DILocation(line: 504, column: 56, scope: !5058)
!5063 = !DILocalVariable(name: "work", arg: 2, scope: !5058, file: !114, line: 505, type: !278)
!5064 = !DILocation(line: 505, column: 30, scope: !5058)
!5065 = !DILocation(line: 507, column: 41, scope: !5058)
!5066 = !DILocation(line: 507, column: 45, scope: !5058)
!5067 = !DILocation(line: 507, column: 9, scope: !5058)
!5068 = !DILocation(line: 507, column: 2, scope: !5058)
!5069 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !5070, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!209, !3785}
!5072 = !DILocalVariable(name: "intf", arg: 1, scope: !5069, file: !6, line: 263, type: !3785)
!5073 = !DILocation(line: 263, column: 60, scope: !5069)
!5074 = !DILocation(line: 265, column: 26, scope: !5069)
!5075 = !DILocation(line: 265, column: 32, scope: !5069)
!5076 = !DILocation(line: 265, column: 9, scope: !5069)
!5077 = !DILocation(line: 265, column: 2, scope: !5069)
!5078 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5079, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!209, !5081}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!5083 = !DILocalVariable(name: "dev", arg: 1, scope: !5078, file: !67, line: 655, type: !5081)
!5084 = !DILocation(line: 655, column: 58, scope: !5078)
!5085 = !DILocation(line: 657, column: 9, scope: !5078)
!5086 = !DILocation(line: 657, column: 14, scope: !5078)
!5087 = !DILocation(line: 657, column: 2, scope: !5078)
!5088 = distinct !DISubprogram(name: "get_dev_desc_store", scope: !3, file: !3, line: 255, type: !4391, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5089 = !DILocalVariable(name: "s", arg: 1, scope: !5090, file: !196, line: 445, type: !981)
!5090 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !196, file: !196, line: 445, type: !5091, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!209, !981, !206, !381}
!5093 = !DILocation(line: 445, column: 72, scope: !5090, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 552, column: 10, scope: !5095, inlinedAt: !5100)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !196, line: 540, column: 34)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !196, line: 540, column: 6)
!5097 = distinct !DISubprogram(name: "kmalloc", scope: !196, file: !196, line: 538, type: !5098, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!209, !381, !206}
!5100 = distinct !DILocation(line: 263, column: 15, scope: !5088)
!5101 = !DILocalVariable(name: "flags", arg: 2, scope: !5090, file: !196, line: 446, type: !206)
!5102 = !DILocation(line: 446, column: 9, scope: !5090, inlinedAt: !5094)
!5103 = !DILocalVariable(name: "size", arg: 3, scope: !5090, file: !196, line: 446, type: !381)
!5104 = !DILocation(line: 446, column: 23, scope: !5090, inlinedAt: !5094)
!5105 = !DILocalVariable(name: "ret", scope: !5090, file: !196, line: 448, type: !209)
!5106 = !DILocation(line: 448, column: 8, scope: !5090, inlinedAt: !5094)
!5107 = !DILocalVariable(name: "flags", arg: 1, scope: !5108, file: !196, line: 318, type: !206)
!5108 = distinct !DISubprogram(name: "kmalloc_type", scope: !196, file: !196, line: 318, type: !5109, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!195, !206}
!5111 = !DILocation(line: 318, column: 67, scope: !5108, inlinedAt: !5112)
!5112 = distinct !DILocation(line: 553, column: 20, scope: !5095, inlinedAt: !5100)
!5113 = !DILocalVariable(name: "size", arg: 1, scope: !5114, file: !196, line: 346, type: !381)
!5114 = distinct !DISubprogram(name: "kmalloc_index", scope: !196, file: !196, line: 346, type: !5115, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!7, !381}
!5117 = !DILocation(line: 346, column: 58, scope: !5114, inlinedAt: !5118)
!5118 = distinct !DILocation(line: 547, column: 11, scope: !5095, inlinedAt: !5100)
!5119 = !DILocalVariable(name: "size", arg: 1, scope: !5120, file: !196, line: 472, type: !381)
!5120 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !196, file: !196, line: 472, type: !5121, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!209, !381, !206, !7}
!5123 = !DILocation(line: 472, column: 28, scope: !5120, inlinedAt: !5124)
!5124 = distinct !DILocation(line: 481, column: 9, scope: !5125, inlinedAt: !5126)
!5125 = distinct !DISubprogram(name: "kmalloc_large", scope: !196, file: !196, line: 478, type: !5098, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5126 = distinct !DILocation(line: 545, column: 11, scope: !5127, inlinedAt: !5100)
!5127 = distinct !DILexicalBlock(scope: !5095, file: !196, line: 544, column: 7)
!5128 = !DILocalVariable(name: "flags", arg: 2, scope: !5120, file: !196, line: 472, type: !206)
!5129 = !DILocation(line: 472, column: 40, scope: !5120, inlinedAt: !5124)
!5130 = !DILocalVariable(name: "order", arg: 3, scope: !5120, file: !196, line: 472, type: !7)
!5131 = !DILocation(line: 472, column: 60, scope: !5120, inlinedAt: !5124)
!5132 = !DILocalVariable(name: "size", arg: 1, scope: !5125, file: !196, line: 478, type: !381)
!5133 = !DILocation(line: 478, column: 51, scope: !5125, inlinedAt: !5126)
!5134 = !DILocalVariable(name: "flags", arg: 2, scope: !5125, file: !196, line: 478, type: !206)
!5135 = !DILocation(line: 478, column: 63, scope: !5125, inlinedAt: !5126)
!5136 = !DILocalVariable(name: "order", scope: !5125, file: !196, line: 480, type: !7)
!5137 = !DILocation(line: 480, column: 15, scope: !5125, inlinedAt: !5126)
!5138 = !DILocalVariable(name: "size", arg: 1, scope: !5097, file: !196, line: 538, type: !381)
!5139 = !DILocation(line: 538, column: 45, scope: !5097, inlinedAt: !5100)
!5140 = !DILocalVariable(name: "flags", arg: 2, scope: !5097, file: !196, line: 538, type: !206)
!5141 = !DILocation(line: 538, column: 57, scope: !5097, inlinedAt: !5100)
!5142 = !DILocalVariable(name: "index", scope: !5095, file: !196, line: 542, type: !7)
!5143 = !DILocation(line: 542, column: 16, scope: !5095, inlinedAt: !5100)
!5144 = !DILocalVariable(name: "dev", arg: 1, scope: !5088, file: !3, line: 255, type: !290)
!5145 = !DILocation(line: 255, column: 50, scope: !5088)
!5146 = !DILocalVariable(name: "attr", arg: 2, scope: !5088, file: !3, line: 256, type: !4388)
!5147 = !DILocation(line: 256, column: 28, scope: !5088)
!5148 = !DILocalVariable(name: "buf", arg: 3, scope: !5088, file: !3, line: 256, type: !298)
!5149 = !DILocation(line: 256, column: 46, scope: !5088)
!5150 = !DILocalVariable(name: "count", arg: 4, scope: !5088, file: !3, line: 256, type: !381)
!5151 = !DILocation(line: 256, column: 58, scope: !5088)
!5152 = !DILocalVariable(name: "intf", scope: !5088, file: !3, line: 258, type: !3785)
!5153 = !DILocation(line: 258, column: 24, scope: !5088)
!5154 = !DILocalVariable(name: "__mptr", scope: !5155, file: !3, line: 258, type: !209)
!5155 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 258, column: 31)
!5156 = !DILocation(line: 258, column: 31, scope: !5155)
!5157 = !DILocation(line: 258, column: 31, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 258, column: 31)
!5159 = !DILocalVariable(name: "udev", scope: !5088, file: !3, line: 259, type: !210)
!5160 = !DILocation(line: 259, column: 21, scope: !5088)
!5161 = !DILocalVariable(name: "descriptor", scope: !5088, file: !3, line: 260, type: !5162)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!5163 = !DILocation(line: 260, column: 32, scope: !5088)
!5164 = !DILocalVariable(name: "ret", scope: !5088, file: !3, line: 261, type: !214)
!5165 = !DILocation(line: 261, column: 6, scope: !5088)
!5166 = !DILocation(line: 540, column: 27, scope: !5096, inlinedAt: !5100)
!5167 = !DILocation(line: 540, column: 6, scope: !5096, inlinedAt: !5100)
!5168 = !DILocation(line: 540, column: 6, scope: !5097, inlinedAt: !5100)
!5169 = !DILocation(line: 544, column: 7, scope: !5127, inlinedAt: !5100)
!5170 = !DILocation(line: 544, column: 12, scope: !5127, inlinedAt: !5100)
!5171 = !DILocation(line: 544, column: 7, scope: !5095, inlinedAt: !5100)
!5172 = !DILocation(line: 545, column: 25, scope: !5127, inlinedAt: !5100)
!5173 = !DILocation(line: 545, column: 31, scope: !5127, inlinedAt: !5100)
!5174 = !DILocation(line: 480, column: 33, scope: !5125, inlinedAt: !5126)
!5175 = !DILocation(line: 480, column: 23, scope: !5125, inlinedAt: !5126)
!5176 = !DILocation(line: 481, column: 29, scope: !5125, inlinedAt: !5126)
!5177 = !DILocation(line: 481, column: 35, scope: !5125, inlinedAt: !5126)
!5178 = !DILocation(line: 481, column: 42, scope: !5125, inlinedAt: !5126)
!5179 = !DILocation(line: 474, column: 23, scope: !5120, inlinedAt: !5124)
!5180 = !DILocation(line: 474, column: 29, scope: !5120, inlinedAt: !5124)
!5181 = !DILocation(line: 474, column: 36, scope: !5120, inlinedAt: !5124)
!5182 = !DILocation(line: 474, column: 9, scope: !5120, inlinedAt: !5124)
!5183 = !DILocation(line: 545, column: 4, scope: !5127, inlinedAt: !5100)
!5184 = !DILocation(line: 547, column: 25, scope: !5095, inlinedAt: !5100)
!5185 = !DILocation(line: 348, column: 7, scope: !5186, inlinedAt: !5118)
!5186 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 348, column: 6)
!5187 = !DILocation(line: 348, column: 6, scope: !5114, inlinedAt: !5118)
!5188 = !DILocation(line: 349, column: 3, scope: !5186, inlinedAt: !5118)
!5189 = !DILocation(line: 351, column: 6, scope: !5190, inlinedAt: !5118)
!5190 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 351, column: 6)
!5191 = !DILocation(line: 351, column: 11, scope: !5190, inlinedAt: !5118)
!5192 = !DILocation(line: 351, column: 6, scope: !5114, inlinedAt: !5118)
!5193 = !DILocation(line: 352, column: 3, scope: !5190, inlinedAt: !5118)
!5194 = !DILocation(line: 354, column: 32, scope: !5195, inlinedAt: !5118)
!5195 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 354, column: 6)
!5196 = !DILocation(line: 354, column: 37, scope: !5195, inlinedAt: !5118)
!5197 = !DILocation(line: 354, column: 42, scope: !5195, inlinedAt: !5118)
!5198 = !DILocation(line: 354, column: 45, scope: !5195, inlinedAt: !5118)
!5199 = !DILocation(line: 354, column: 50, scope: !5195, inlinedAt: !5118)
!5200 = !DILocation(line: 354, column: 6, scope: !5114, inlinedAt: !5118)
!5201 = !DILocation(line: 355, column: 3, scope: !5195, inlinedAt: !5118)
!5202 = !DILocation(line: 356, column: 32, scope: !5203, inlinedAt: !5118)
!5203 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 356, column: 6)
!5204 = !DILocation(line: 356, column: 37, scope: !5203, inlinedAt: !5118)
!5205 = !DILocation(line: 356, column: 43, scope: !5203, inlinedAt: !5118)
!5206 = !DILocation(line: 356, column: 46, scope: !5203, inlinedAt: !5118)
!5207 = !DILocation(line: 356, column: 51, scope: !5203, inlinedAt: !5118)
!5208 = !DILocation(line: 356, column: 6, scope: !5114, inlinedAt: !5118)
!5209 = !DILocation(line: 357, column: 3, scope: !5203, inlinedAt: !5118)
!5210 = !DILocation(line: 358, column: 6, scope: !5211, inlinedAt: !5118)
!5211 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 358, column: 6)
!5212 = !DILocation(line: 358, column: 11, scope: !5211, inlinedAt: !5118)
!5213 = !DILocation(line: 358, column: 6, scope: !5114, inlinedAt: !5118)
!5214 = !DILocation(line: 358, column: 26, scope: !5211, inlinedAt: !5118)
!5215 = !DILocation(line: 359, column: 6, scope: !5216, inlinedAt: !5118)
!5216 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 359, column: 6)
!5217 = !DILocation(line: 359, column: 11, scope: !5216, inlinedAt: !5118)
!5218 = !DILocation(line: 359, column: 6, scope: !5114, inlinedAt: !5118)
!5219 = !DILocation(line: 359, column: 26, scope: !5216, inlinedAt: !5118)
!5220 = !DILocation(line: 360, column: 6, scope: !5221, inlinedAt: !5118)
!5221 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 360, column: 6)
!5222 = !DILocation(line: 360, column: 11, scope: !5221, inlinedAt: !5118)
!5223 = !DILocation(line: 360, column: 6, scope: !5114, inlinedAt: !5118)
!5224 = !DILocation(line: 360, column: 26, scope: !5221, inlinedAt: !5118)
!5225 = !DILocation(line: 361, column: 6, scope: !5226, inlinedAt: !5118)
!5226 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 361, column: 6)
!5227 = !DILocation(line: 361, column: 11, scope: !5226, inlinedAt: !5118)
!5228 = !DILocation(line: 361, column: 6, scope: !5114, inlinedAt: !5118)
!5229 = !DILocation(line: 361, column: 26, scope: !5226, inlinedAt: !5118)
!5230 = !DILocation(line: 362, column: 6, scope: !5231, inlinedAt: !5118)
!5231 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 362, column: 6)
!5232 = !DILocation(line: 362, column: 11, scope: !5231, inlinedAt: !5118)
!5233 = !DILocation(line: 362, column: 6, scope: !5114, inlinedAt: !5118)
!5234 = !DILocation(line: 362, column: 26, scope: !5231, inlinedAt: !5118)
!5235 = !DILocation(line: 363, column: 6, scope: !5236, inlinedAt: !5118)
!5236 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 363, column: 6)
!5237 = !DILocation(line: 363, column: 11, scope: !5236, inlinedAt: !5118)
!5238 = !DILocation(line: 363, column: 6, scope: !5114, inlinedAt: !5118)
!5239 = !DILocation(line: 363, column: 26, scope: !5236, inlinedAt: !5118)
!5240 = !DILocation(line: 364, column: 6, scope: !5241, inlinedAt: !5118)
!5241 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 364, column: 6)
!5242 = !DILocation(line: 364, column: 11, scope: !5241, inlinedAt: !5118)
!5243 = !DILocation(line: 364, column: 6, scope: !5114, inlinedAt: !5118)
!5244 = !DILocation(line: 364, column: 26, scope: !5241, inlinedAt: !5118)
!5245 = !DILocation(line: 365, column: 6, scope: !5246, inlinedAt: !5118)
!5246 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 365, column: 6)
!5247 = !DILocation(line: 365, column: 11, scope: !5246, inlinedAt: !5118)
!5248 = !DILocation(line: 365, column: 6, scope: !5114, inlinedAt: !5118)
!5249 = !DILocation(line: 365, column: 26, scope: !5246, inlinedAt: !5118)
!5250 = !DILocation(line: 366, column: 6, scope: !5251, inlinedAt: !5118)
!5251 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 366, column: 6)
!5252 = !DILocation(line: 366, column: 11, scope: !5251, inlinedAt: !5118)
!5253 = !DILocation(line: 366, column: 6, scope: !5114, inlinedAt: !5118)
!5254 = !DILocation(line: 366, column: 26, scope: !5251, inlinedAt: !5118)
!5255 = !DILocation(line: 367, column: 6, scope: !5256, inlinedAt: !5118)
!5256 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 367, column: 6)
!5257 = !DILocation(line: 367, column: 11, scope: !5256, inlinedAt: !5118)
!5258 = !DILocation(line: 367, column: 6, scope: !5114, inlinedAt: !5118)
!5259 = !DILocation(line: 367, column: 26, scope: !5256, inlinedAt: !5118)
!5260 = !DILocation(line: 368, column: 6, scope: !5261, inlinedAt: !5118)
!5261 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 368, column: 6)
!5262 = !DILocation(line: 368, column: 11, scope: !5261, inlinedAt: !5118)
!5263 = !DILocation(line: 368, column: 6, scope: !5114, inlinedAt: !5118)
!5264 = !DILocation(line: 368, column: 26, scope: !5261, inlinedAt: !5118)
!5265 = !DILocation(line: 369, column: 6, scope: !5266, inlinedAt: !5118)
!5266 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 369, column: 6)
!5267 = !DILocation(line: 369, column: 11, scope: !5266, inlinedAt: !5118)
!5268 = !DILocation(line: 369, column: 6, scope: !5114, inlinedAt: !5118)
!5269 = !DILocation(line: 369, column: 26, scope: !5266, inlinedAt: !5118)
!5270 = !DILocation(line: 370, column: 6, scope: !5271, inlinedAt: !5118)
!5271 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 370, column: 6)
!5272 = !DILocation(line: 370, column: 11, scope: !5271, inlinedAt: !5118)
!5273 = !DILocation(line: 370, column: 6, scope: !5114, inlinedAt: !5118)
!5274 = !DILocation(line: 370, column: 26, scope: !5271, inlinedAt: !5118)
!5275 = !DILocation(line: 371, column: 6, scope: !5276, inlinedAt: !5118)
!5276 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 371, column: 6)
!5277 = !DILocation(line: 371, column: 11, scope: !5276, inlinedAt: !5118)
!5278 = !DILocation(line: 371, column: 6, scope: !5114, inlinedAt: !5118)
!5279 = !DILocation(line: 371, column: 26, scope: !5276, inlinedAt: !5118)
!5280 = !DILocation(line: 372, column: 6, scope: !5281, inlinedAt: !5118)
!5281 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 372, column: 6)
!5282 = !DILocation(line: 372, column: 11, scope: !5281, inlinedAt: !5118)
!5283 = !DILocation(line: 372, column: 6, scope: !5114, inlinedAt: !5118)
!5284 = !DILocation(line: 372, column: 26, scope: !5281, inlinedAt: !5118)
!5285 = !DILocation(line: 373, column: 6, scope: !5286, inlinedAt: !5118)
!5286 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 373, column: 6)
!5287 = !DILocation(line: 373, column: 11, scope: !5286, inlinedAt: !5118)
!5288 = !DILocation(line: 373, column: 6, scope: !5114, inlinedAt: !5118)
!5289 = !DILocation(line: 373, column: 26, scope: !5286, inlinedAt: !5118)
!5290 = !DILocation(line: 374, column: 6, scope: !5291, inlinedAt: !5118)
!5291 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 374, column: 6)
!5292 = !DILocation(line: 374, column: 11, scope: !5291, inlinedAt: !5118)
!5293 = !DILocation(line: 374, column: 6, scope: !5114, inlinedAt: !5118)
!5294 = !DILocation(line: 374, column: 26, scope: !5291, inlinedAt: !5118)
!5295 = !DILocation(line: 375, column: 6, scope: !5296, inlinedAt: !5118)
!5296 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 375, column: 6)
!5297 = !DILocation(line: 375, column: 11, scope: !5296, inlinedAt: !5118)
!5298 = !DILocation(line: 375, column: 6, scope: !5114, inlinedAt: !5118)
!5299 = !DILocation(line: 375, column: 27, scope: !5296, inlinedAt: !5118)
!5300 = !DILocation(line: 376, column: 6, scope: !5301, inlinedAt: !5118)
!5301 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 376, column: 6)
!5302 = !DILocation(line: 376, column: 11, scope: !5301, inlinedAt: !5118)
!5303 = !DILocation(line: 376, column: 6, scope: !5114, inlinedAt: !5118)
!5304 = !DILocation(line: 376, column: 32, scope: !5301, inlinedAt: !5118)
!5305 = !DILocation(line: 377, column: 6, scope: !5306, inlinedAt: !5118)
!5306 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 377, column: 6)
!5307 = !DILocation(line: 377, column: 11, scope: !5306, inlinedAt: !5118)
!5308 = !DILocation(line: 377, column: 6, scope: !5114, inlinedAt: !5118)
!5309 = !DILocation(line: 377, column: 32, scope: !5306, inlinedAt: !5118)
!5310 = !DILocation(line: 378, column: 6, scope: !5311, inlinedAt: !5118)
!5311 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 378, column: 6)
!5312 = !DILocation(line: 378, column: 11, scope: !5311, inlinedAt: !5118)
!5313 = !DILocation(line: 378, column: 6, scope: !5114, inlinedAt: !5118)
!5314 = !DILocation(line: 378, column: 32, scope: !5311, inlinedAt: !5118)
!5315 = !DILocation(line: 379, column: 6, scope: !5316, inlinedAt: !5118)
!5316 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 379, column: 6)
!5317 = !DILocation(line: 379, column: 11, scope: !5316, inlinedAt: !5118)
!5318 = !DILocation(line: 379, column: 6, scope: !5114, inlinedAt: !5118)
!5319 = !DILocation(line: 379, column: 33, scope: !5316, inlinedAt: !5118)
!5320 = !DILocation(line: 380, column: 6, scope: !5321, inlinedAt: !5118)
!5321 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 380, column: 6)
!5322 = !DILocation(line: 380, column: 11, scope: !5321, inlinedAt: !5118)
!5323 = !DILocation(line: 380, column: 6, scope: !5114, inlinedAt: !5118)
!5324 = !DILocation(line: 380, column: 33, scope: !5321, inlinedAt: !5118)
!5325 = !DILocation(line: 381, column: 6, scope: !5326, inlinedAt: !5118)
!5326 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 381, column: 6)
!5327 = !DILocation(line: 381, column: 11, scope: !5326, inlinedAt: !5118)
!5328 = !DILocation(line: 381, column: 6, scope: !5114, inlinedAt: !5118)
!5329 = !DILocation(line: 381, column: 33, scope: !5326, inlinedAt: !5118)
!5330 = !DILocation(line: 382, column: 2, scope: !5331, inlinedAt: !5118)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !196, line: 382, column: 2)
!5332 = distinct !DILexicalBlock(scope: !5114, file: !196, line: 382, column: 2)
!5333 = !{i32 -2143545999, i32 -2143545970, i32 -2143545924, i32 -2143545866, i32 -2143545812, i32 -2143545758, i32 -2143545703, i32 -2143545672}
!5334 = !DILocation(line: 382, column: 2, scope: !5335, inlinedAt: !5118)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !196, line: 382, column: 2)
!5336 = distinct !DILexicalBlock(scope: !5332, file: !196, line: 382, column: 2)
!5337 = !{i32 -2143545229, i32 -2143545222, i32 -2143545168, i32 -2143545137, i32 -2143545107}
!5338 = !DILocation(line: 382, column: 2, scope: !5336, inlinedAt: !5118)
!5339 = !DILocation(line: 386, column: 1, scope: !5114, inlinedAt: !5118)
!5340 = !DILocation(line: 547, column: 9, scope: !5095, inlinedAt: !5100)
!5341 = !DILocation(line: 549, column: 8, scope: !5342, inlinedAt: !5100)
!5342 = distinct !DILexicalBlock(scope: !5095, file: !196, line: 549, column: 7)
!5343 = !DILocation(line: 549, column: 7, scope: !5095, inlinedAt: !5100)
!5344 = !DILocation(line: 550, column: 4, scope: !5342, inlinedAt: !5100)
!5345 = !DILocation(line: 553, column: 33, scope: !5095, inlinedAt: !5100)
!5346 = !DILocation(line: 325, column: 6, scope: !5347, inlinedAt: !5112)
!5347 = distinct !DILexicalBlock(scope: !5108, file: !196, line: 325, column: 6)
!5348 = !DILocation(line: 325, column: 6, scope: !5108, inlinedAt: !5112)
!5349 = !DILocation(line: 326, column: 3, scope: !5347, inlinedAt: !5112)
!5350 = !DILocation(line: 332, column: 9, scope: !5108, inlinedAt: !5112)
!5351 = !DILocation(line: 332, column: 15, scope: !5108, inlinedAt: !5112)
!5352 = !DILocation(line: 332, column: 2, scope: !5108, inlinedAt: !5112)
!5353 = !DILocation(line: 336, column: 1, scope: !5108, inlinedAt: !5112)
!5354 = !DILocation(line: 553, column: 5, scope: !5095, inlinedAt: !5100)
!5355 = !DILocation(line: 553, column: 41, scope: !5095, inlinedAt: !5100)
!5356 = !DILocation(line: 554, column: 5, scope: !5095, inlinedAt: !5100)
!5357 = !DILocation(line: 554, column: 12, scope: !5095, inlinedAt: !5100)
!5358 = !DILocation(line: 448, column: 31, scope: !5090, inlinedAt: !5094)
!5359 = !DILocation(line: 448, column: 34, scope: !5090, inlinedAt: !5094)
!5360 = !DILocation(line: 448, column: 14, scope: !5090, inlinedAt: !5094)
!5361 = !DILocation(line: 450, column: 22, scope: !5090, inlinedAt: !5094)
!5362 = !DILocation(line: 450, column: 25, scope: !5090, inlinedAt: !5094)
!5363 = !DILocation(line: 450, column: 30, scope: !5090, inlinedAt: !5094)
!5364 = !DILocation(line: 450, column: 36, scope: !5090, inlinedAt: !5094)
!5365 = !DILocation(line: 450, column: 8, scope: !5090, inlinedAt: !5094)
!5366 = !DILocation(line: 450, column: 6, scope: !5090, inlinedAt: !5094)
!5367 = !DILocation(line: 451, column: 9, scope: !5090, inlinedAt: !5094)
!5368 = !DILocation(line: 552, column: 3, scope: !5095, inlinedAt: !5100)
!5369 = !DILocation(line: 557, column: 19, scope: !5097, inlinedAt: !5100)
!5370 = !DILocation(line: 557, column: 25, scope: !5097, inlinedAt: !5100)
!5371 = !DILocation(line: 557, column: 9, scope: !5097, inlinedAt: !5100)
!5372 = !DILocation(line: 557, column: 2, scope: !5097, inlinedAt: !5100)
!5373 = !DILocation(line: 558, column: 1, scope: !5097, inlinedAt: !5100)
!5374 = !DILocation(line: 263, column: 15, scope: !5088)
!5375 = !DILocation(line: 263, column: 13, scope: !5088)
!5376 = !DILocation(line: 264, column: 7, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 264, column: 6)
!5378 = !DILocation(line: 264, column: 6, scope: !5088)
!5379 = !DILocation(line: 265, column: 3, scope: !5377)
!5380 = !DILocation(line: 267, column: 27, scope: !5088)
!5381 = !DILocation(line: 267, column: 9, scope: !5088)
!5382 = !DILocation(line: 267, column: 7, scope: !5088)
!5383 = !DILocation(line: 268, column: 7, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 268, column: 6)
!5385 = !DILocation(line: 268, column: 6, scope: !5088)
!5386 = !DILocation(line: 269, column: 3, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 268, column: 13)
!5388 = !DILocation(line: 270, column: 7, scope: !5387)
!5389 = !DILocation(line: 271, column: 3, scope: !5387)
!5390 = !DILocation(line: 274, column: 24, scope: !5088)
!5391 = !DILocation(line: 276, column: 7, scope: !5088)
!5392 = !DILocation(line: 274, column: 8, scope: !5088)
!5393 = !DILocation(line: 274, column: 6, scope: !5088)
!5394 = !DILocation(line: 278, column: 6, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 278, column: 6)
!5396 = !DILocation(line: 278, column: 10, scope: !5395)
!5397 = !DILocation(line: 278, column: 6, scope: !5088)
!5398 = !DILocation(line: 279, column: 3, scope: !5395)
!5399 = !DILocation(line: 281, column: 21, scope: !5088)
!5400 = !DILocation(line: 281, column: 2, scope: !5088)
!5401 = !DILabel(scope: !5088, name: "free_desc", file: !3, line: 283)
!5402 = !DILocation(line: 283, column: 1, scope: !5088)
!5403 = !DILocation(line: 284, column: 8, scope: !5088)
!5404 = !DILocation(line: 284, column: 2, scope: !5088)
!5405 = !DILocation(line: 286, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 286, column: 6)
!5407 = !DILocation(line: 286, column: 10, scope: !5406)
!5408 = !DILocation(line: 286, column: 6, scope: !5088)
!5409 = !DILocation(line: 287, column: 10, scope: !5406)
!5410 = !DILocation(line: 287, column: 3, scope: !5406)
!5411 = !DILocation(line: 289, column: 9, scope: !5088)
!5412 = !DILocation(line: 289, column: 2, scope: !5088)
!5413 = !DILocation(line: 290, column: 1, scope: !5088)
!5414 = distinct !DISubprogram(name: "create_lvs_device", scope: !3, file: !3, line: 40, type: !4565, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5415 = !DILocalVariable(name: "intf", arg: 1, scope: !5414, file: !3, line: 40, type: !3785)
!5416 = !DILocation(line: 40, column: 67, scope: !5414)
!5417 = !DILocalVariable(name: "udev", scope: !5414, file: !3, line: 42, type: !210)
!5418 = !DILocation(line: 42, column: 21, scope: !5414)
!5419 = !DILocalVariable(name: "hdev", scope: !5414, file: !3, line: 42, type: !210)
!5420 = !DILocation(line: 42, column: 28, scope: !5414)
!5421 = !DILocalVariable(name: "hcd", scope: !5414, file: !3, line: 43, type: !3990)
!5422 = !DILocation(line: 43, column: 18, scope: !5414)
!5423 = !DILocalVariable(name: "lvs", scope: !5414, file: !3, line: 44, type: !3895)
!5424 = !DILocation(line: 44, column: 17, scope: !5414)
!5425 = !DILocation(line: 44, column: 40, scope: !5414)
!5426 = !DILocation(line: 44, column: 23, scope: !5414)
!5427 = !DILocation(line: 46, column: 7, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 46, column: 6)
!5429 = !DILocation(line: 46, column: 12, scope: !5428)
!5430 = !DILocation(line: 46, column: 6, scope: !5414)
!5431 = !DILocation(line: 47, column: 3, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 46, column: 21)
!5433 = !DILocation(line: 48, column: 3, scope: !5432)
!5434 = !DILocation(line: 51, column: 29, scope: !5414)
!5435 = !DILocation(line: 51, column: 9, scope: !5414)
!5436 = !DILocation(line: 51, column: 7, scope: !5414)
!5437 = !DILocation(line: 52, column: 19, scope: !5414)
!5438 = !DILocation(line: 52, column: 25, scope: !5414)
!5439 = !DILocation(line: 52, column: 8, scope: !5414)
!5440 = !DILocation(line: 52, column: 6, scope: !5414)
!5441 = !DILocation(line: 54, column: 23, scope: !5414)
!5442 = !DILocation(line: 54, column: 29, scope: !5414)
!5443 = !DILocation(line: 54, column: 35, scope: !5414)
!5444 = !DILocation(line: 54, column: 40, scope: !5414)
!5445 = !DILocation(line: 54, column: 45, scope: !5414)
!5446 = !DILocation(line: 54, column: 9, scope: !5414)
!5447 = !DILocation(line: 54, column: 7, scope: !5414)
!5448 = !DILocation(line: 55, column: 7, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 55, column: 6)
!5450 = !DILocation(line: 55, column: 6, scope: !5414)
!5451 = !DILocation(line: 56, column: 3, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 55, column: 13)
!5453 = !DILocation(line: 57, column: 3, scope: !5452)
!5454 = !DILocation(line: 59, column: 2, scope: !5414)
!5455 = !DILocation(line: 59, column: 8, scope: !5414)
!5456 = !DILocation(line: 59, column: 14, scope: !5414)
!5457 = !DILocation(line: 60, column: 2, scope: !5414)
!5458 = !DILocation(line: 60, column: 8, scope: !5414)
!5459 = !DILocation(line: 60, column: 12, scope: !5414)
!5460 = !DILocation(line: 60, column: 17, scope: !5414)
!5461 = !DILocation(line: 60, column: 32, scope: !5414)
!5462 = !DILocation(line: 61, column: 23, scope: !5414)
!5463 = !DILocation(line: 61, column: 2, scope: !5414)
!5464 = !DILocation(line: 63, column: 6, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 63, column: 6)
!5466 = !DILocation(line: 63, column: 11, scope: !5465)
!5467 = !DILocation(line: 63, column: 19, scope: !5465)
!5468 = !DILocation(line: 63, column: 6, scope: !5414)
!5469 = !DILocation(line: 64, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 64, column: 7)
!5471 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 63, column: 34)
!5472 = !DILocation(line: 64, column: 12, scope: !5470)
!5473 = !DILocation(line: 64, column: 20, scope: !5470)
!5474 = !DILocation(line: 64, column: 34, scope: !5470)
!5475 = !DILocation(line: 64, column: 39, scope: !5470)
!5476 = !DILocation(line: 64, column: 45, scope: !5470)
!5477 = !DILocation(line: 64, column: 7, scope: !5471)
!5478 = !DILocation(line: 65, column: 4, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 64, column: 50)
!5480 = !DILocation(line: 66, column: 16, scope: !5479)
!5481 = !DILocation(line: 66, column: 4, scope: !5479)
!5482 = !DILocation(line: 67, column: 4, scope: !5479)
!5483 = !DILocation(line: 69, column: 2, scope: !5471)
!5484 = !DILocation(line: 71, column: 9, scope: !5414)
!5485 = !DILocation(line: 71, column: 2, scope: !5414)
!5486 = !DILocation(line: 72, column: 1, scope: !5414)
!5487 = distinct !DISubprogram(name: "destroy_lvs_device", scope: !3, file: !3, line: 74, type: !5488, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{null, !210}
!5490 = !DILocalVariable(name: "udev", arg: 1, scope: !5487, file: !3, line: 74, type: !210)
!5491 = !DILocation(line: 74, column: 51, scope: !5487)
!5492 = !DILocalVariable(name: "hdev", scope: !5487, file: !3, line: 76, type: !210)
!5493 = !DILocation(line: 76, column: 21, scope: !5487)
!5494 = !DILocation(line: 76, column: 28, scope: !5487)
!5495 = !DILocation(line: 76, column: 34, scope: !5487)
!5496 = !DILocalVariable(name: "hcd", scope: !5487, file: !3, line: 77, type: !3990)
!5497 = !DILocation(line: 77, column: 18, scope: !5487)
!5498 = !DILocation(line: 77, column: 35, scope: !5487)
!5499 = !DILocation(line: 77, column: 41, scope: !5487)
!5500 = !DILocation(line: 77, column: 24, scope: !5487)
!5501 = !DILocation(line: 79, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 79, column: 6)
!5503 = !DILocation(line: 79, column: 11, scope: !5502)
!5504 = !DILocation(line: 79, column: 19, scope: !5502)
!5505 = !DILocation(line: 79, column: 6, scope: !5487)
!5506 = !DILocation(line: 80, column: 3, scope: !5502)
!5507 = !DILocation(line: 80, column: 8, scope: !5502)
!5508 = !DILocation(line: 80, column: 16, scope: !5502)
!5509 = !DILocation(line: 80, column: 25, scope: !5502)
!5510 = !DILocation(line: 80, column: 30, scope: !5502)
!5511 = !DILocation(line: 82, column: 14, scope: !5487)
!5512 = !DILocation(line: 82, column: 2, scope: !5487)
!5513 = !DILocation(line: 83, column: 1, scope: !5487)
!5514 = distinct !DISubprogram(name: "get_order", scope: !5515, file: !5515, line: 29, type: !5516, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5515 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!214, !208}
!5518 = !DILocalVariable(name: "x", arg: 1, scope: !5519, file: !5520, line: 366, type: !477)
!5519 = distinct !DISubprogram(name: "fls64", scope: !5520, file: !5520, line: 366, type: !5521, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5520 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!214, !477}
!5523 = !DILocation(line: 366, column: 40, scope: !5519, inlinedAt: !5524)
!5524 = distinct !DILocation(line: 46, column: 9, scope: !5514)
!5525 = !DILocalVariable(name: "bitpos", scope: !5519, file: !5520, line: 368, type: !214)
!5526 = !DILocation(line: 368, column: 6, scope: !5519, inlinedAt: !5524)
!5527 = !DILocalVariable(name: "size", arg: 1, scope: !5514, file: !5515, line: 29, type: !208)
!5528 = !DILocation(line: 29, column: 63, scope: !5514)
!5529 = !DILocation(line: 31, column: 27, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5514, file: !5515, line: 31, column: 6)
!5531 = !DILocation(line: 31, column: 6, scope: !5530)
!5532 = !DILocation(line: 31, column: 6, scope: !5514)
!5533 = !DILocation(line: 32, column: 8, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !5515, line: 32, column: 7)
!5535 = distinct !DILexicalBlock(scope: !5530, file: !5515, line: 31, column: 34)
!5536 = !DILocation(line: 32, column: 7, scope: !5535)
!5537 = !DILocation(line: 33, column: 4, scope: !5534)
!5538 = !DILocation(line: 35, column: 7, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5535, file: !5515, line: 35, column: 7)
!5540 = !DILocation(line: 35, column: 12, scope: !5539)
!5541 = !DILocation(line: 35, column: 7, scope: !5535)
!5542 = !DILocation(line: 36, column: 4, scope: !5539)
!5543 = !DILocation(line: 38, column: 10, scope: !5535)
!5544 = !DILocation(line: 38, column: 28, scope: !5535)
!5545 = !DILocation(line: 38, column: 41, scope: !5535)
!5546 = !DILocation(line: 38, column: 3, scope: !5535)
!5547 = !DILocation(line: 41, column: 6, scope: !5514)
!5548 = !DILocation(line: 42, column: 7, scope: !5514)
!5549 = !DILocation(line: 46, column: 15, scope: !5514)
!5550 = !DILocation(line: 374, column: 2, scope: !5519, inlinedAt: !5524)
!5551 = !DILocation(line: 376, column: 14, scope: !5519, inlinedAt: !5524)
!5552 = !{i32 261518}
!5553 = !DILocation(line: 377, column: 9, scope: !5519, inlinedAt: !5524)
!5554 = !DILocation(line: 377, column: 16, scope: !5519, inlinedAt: !5524)
!5555 = !DILocation(line: 46, column: 2, scope: !5514)
!5556 = !DILocation(line: 48, column: 1, scope: !5514)
!5557 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5558, file: !5558, line: 30, type: !5559, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5558 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5559 = !DISubroutineType(types: !5560)
!5560 = !{!214, !476}
!5561 = !DILocation(line: 366, column: 40, scope: !5519, inlinedAt: !5562)
!5562 = distinct !DILocation(line: 32, column: 9, scope: !5557)
!5563 = !DILocation(line: 368, column: 6, scope: !5519, inlinedAt: !5562)
!5564 = !DILocalVariable(name: "n", arg: 1, scope: !5557, file: !5558, line: 30, type: !476)
!5565 = !DILocation(line: 30, column: 21, scope: !5557)
!5566 = !DILocation(line: 32, column: 15, scope: !5557)
!5567 = !DILocation(line: 374, column: 2, scope: !5519, inlinedAt: !5562)
!5568 = !DILocation(line: 376, column: 14, scope: !5519, inlinedAt: !5562)
!5569 = !DILocation(line: 377, column: 9, scope: !5519, inlinedAt: !5562)
!5570 = !DILocation(line: 377, column: 16, scope: !5519, inlinedAt: !5562)
!5571 = !DILocation(line: 32, column: 18, scope: !5557)
!5572 = !DILocation(line: 32, column: 2, scope: !5557)
!5573 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5574, file: !5574, line: 137, type: !5575, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5574 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!209, !981, !3084, !381, !206}
!5577 = !DILocalVariable(name: "s", arg: 1, scope: !5573, file: !5574, line: 137, type: !981)
!5578 = !DILocation(line: 137, column: 54, scope: !5573)
!5579 = !DILocalVariable(name: "object", arg: 2, scope: !5573, file: !5574, line: 137, type: !3084)
!5580 = !DILocation(line: 137, column: 69, scope: !5573)
!5581 = !DILocalVariable(name: "size", arg: 3, scope: !5573, file: !5574, line: 138, type: !381)
!5582 = !DILocation(line: 138, column: 12, scope: !5573)
!5583 = !DILocalVariable(name: "flags", arg: 4, scope: !5573, file: !5574, line: 138, type: !206)
!5584 = !DILocation(line: 138, column: 24, scope: !5573)
!5585 = !DILocation(line: 140, column: 17, scope: !5573)
!5586 = !DILocation(line: 140, column: 2, scope: !5573)
!5587 = distinct !DISubprogram(name: "u1_timeout_store", scope: !3, file: !3, line: 226, type: !4391, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5588 = !DILocalVariable(name: "dev", arg: 1, scope: !5587, file: !3, line: 226, type: !290)
!5589 = !DILocation(line: 226, column: 48, scope: !5587)
!5590 = !DILocalVariable(name: "attr", arg: 2, scope: !5587, file: !3, line: 227, type: !4388)
!5591 = !DILocation(line: 227, column: 28, scope: !5587)
!5592 = !DILocalVariable(name: "buf", arg: 3, scope: !5587, file: !3, line: 227, type: !298)
!5593 = !DILocation(line: 227, column: 46, scope: !5587)
!5594 = !DILocalVariable(name: "count", arg: 4, scope: !5587, file: !3, line: 227, type: !381)
!5595 = !DILocation(line: 227, column: 58, scope: !5587)
!5596 = !DILocalVariable(name: "intf", scope: !5587, file: !3, line: 229, type: !3785)
!5597 = !DILocation(line: 229, column: 24, scope: !5587)
!5598 = !DILocalVariable(name: "__mptr", scope: !5599, file: !3, line: 229, type: !209)
!5599 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 229, column: 31)
!5600 = !DILocation(line: 229, column: 31, scope: !5599)
!5601 = !DILocation(line: 229, column: 31, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 229, column: 31)
!5603 = !DILocalVariable(name: "hdev", scope: !5587, file: !3, line: 230, type: !210)
!5604 = !DILocation(line: 230, column: 21, scope: !5587)
!5605 = !DILocation(line: 230, column: 48, scope: !5587)
!5606 = !DILocation(line: 230, column: 28, scope: !5587)
!5607 = !DILocalVariable(name: "lvs", scope: !5587, file: !3, line: 231, type: !3895)
!5608 = !DILocation(line: 231, column: 17, scope: !5587)
!5609 = !DILocation(line: 231, column: 40, scope: !5587)
!5610 = !DILocation(line: 231, column: 23, scope: !5587)
!5611 = !DILocalVariable(name: "val", scope: !5587, file: !3, line: 232, type: !208)
!5612 = !DILocation(line: 232, column: 16, scope: !5587)
!5613 = !DILocalVariable(name: "ret", scope: !5587, file: !3, line: 233, type: !214)
!5614 = !DILocation(line: 233, column: 6, scope: !5587)
!5615 = !DILocation(line: 235, column: 17, scope: !5587)
!5616 = !DILocation(line: 235, column: 8, scope: !5587)
!5617 = !DILocation(line: 235, column: 6, scope: !5587)
!5618 = !DILocation(line: 236, column: 6, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 236, column: 6)
!5620 = !DILocation(line: 236, column: 10, scope: !5619)
!5621 = !DILocation(line: 236, column: 6, scope: !5587)
!5622 = !DILocation(line: 237, column: 3, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 236, column: 15)
!5624 = !DILocation(line: 238, column: 10, scope: !5623)
!5625 = !DILocation(line: 238, column: 3, scope: !5623)
!5626 = !DILocation(line: 241, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 241, column: 6)
!5628 = !DILocation(line: 241, column: 10, scope: !5627)
!5629 = !DILocation(line: 241, column: 6, scope: !5587)
!5630 = !DILocation(line: 242, column: 3, scope: !5627)
!5631 = !DILocation(line: 244, column: 32, scope: !5587)
!5632 = !DILocation(line: 244, column: 38, scope: !5587)
!5633 = !DILocation(line: 244, column: 43, scope: !5587)
!5634 = !DILocation(line: 244, column: 54, scope: !5587)
!5635 = !DILocation(line: 244, column: 58, scope: !5587)
!5636 = !DILocation(line: 244, column: 51, scope: !5587)
!5637 = !DILocation(line: 244, column: 8, scope: !5587)
!5638 = !DILocation(line: 244, column: 6, scope: !5587)
!5639 = !DILocation(line: 246, column: 6, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 246, column: 6)
!5641 = !DILocation(line: 246, column: 10, scope: !5640)
!5642 = !DILocation(line: 246, column: 6, scope: !5587)
!5643 = !DILocation(line: 247, column: 3, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 246, column: 15)
!5645 = !DILocation(line: 248, column: 10, scope: !5644)
!5646 = !DILocation(line: 248, column: 3, scope: !5644)
!5647 = !DILocation(line: 251, column: 9, scope: !5587)
!5648 = !DILocation(line: 251, column: 2, scope: !5587)
!5649 = !DILocation(line: 252, column: 1, scope: !5587)
!5650 = distinct !DISubprogram(name: "kstrtoul", scope: !5651, file: !5651, line: 351, type: !5652, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5651 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!214, !298, !7, !5654}
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!5655 = !DILocalVariable(name: "s", arg: 1, scope: !5650, file: !5651, line: 351, type: !298)
!5656 = !DILocation(line: 351, column: 53, scope: !5650)
!5657 = !DILocalVariable(name: "base", arg: 2, scope: !5650, file: !5651, line: 351, type: !7)
!5658 = !DILocation(line: 351, column: 69, scope: !5650)
!5659 = !DILocalVariable(name: "res", arg: 3, scope: !5650, file: !5651, line: 351, type: !5654)
!5660 = !DILocation(line: 351, column: 90, scope: !5650)
!5661 = !DILocation(line: 359, column: 20, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5650, file: !5651, line: 357, column: 6)
!5663 = !DILocation(line: 359, column: 23, scope: !5662)
!5664 = !DILocation(line: 359, column: 51, scope: !5662)
!5665 = !DILocation(line: 359, column: 10, scope: !5662)
!5666 = !DILocation(line: 359, column: 3, scope: !5662)
!5667 = distinct !DISubprogram(name: "lvs_rh_set_port_feature", scope: !3, file: !3, line: 93, type: !4989, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5668 = !DILocalVariable(name: "hdev", arg: 1, scope: !5667, file: !3, line: 93, type: !210)
!5669 = !DILocation(line: 93, column: 55, scope: !5667)
!5670 = !DILocalVariable(name: "port1", arg: 2, scope: !5667, file: !3, line: 94, type: !214)
!5671 = !DILocation(line: 94, column: 7, scope: !5667)
!5672 = !DILocalVariable(name: "feature", arg: 3, scope: !5667, file: !3, line: 94, type: !214)
!5673 = !DILocation(line: 94, column: 18, scope: !5667)
!5674 = !DILocation(line: 96, column: 25, scope: !5667)
!5675 = !DILocation(line: 96, column: 31, scope: !5667)
!5676 = !DILocation(line: 97, column: 37, scope: !5667)
!5677 = !DILocation(line: 97, column: 46, scope: !5667)
!5678 = !DILocation(line: 96, column: 9, scope: !5667)
!5679 = !DILocation(line: 96, column: 2, scope: !5667)
!5680 = distinct !DISubprogram(name: "u2_timeout_store", scope: !3, file: !3, line: 197, type: !4391, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5681 = !DILocalVariable(name: "dev", arg: 1, scope: !5680, file: !3, line: 197, type: !290)
!5682 = !DILocation(line: 197, column: 48, scope: !5680)
!5683 = !DILocalVariable(name: "attr", arg: 2, scope: !5680, file: !3, line: 198, type: !4388)
!5684 = !DILocation(line: 198, column: 28, scope: !5680)
!5685 = !DILocalVariable(name: "buf", arg: 3, scope: !5680, file: !3, line: 198, type: !298)
!5686 = !DILocation(line: 198, column: 46, scope: !5680)
!5687 = !DILocalVariable(name: "count", arg: 4, scope: !5680, file: !3, line: 198, type: !381)
!5688 = !DILocation(line: 198, column: 58, scope: !5680)
!5689 = !DILocalVariable(name: "intf", scope: !5680, file: !3, line: 200, type: !3785)
!5690 = !DILocation(line: 200, column: 24, scope: !5680)
!5691 = !DILocalVariable(name: "__mptr", scope: !5692, file: !3, line: 200, type: !209)
!5692 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 200, column: 31)
!5693 = !DILocation(line: 200, column: 31, scope: !5692)
!5694 = !DILocation(line: 200, column: 31, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 200, column: 31)
!5696 = !DILocalVariable(name: "hdev", scope: !5680, file: !3, line: 201, type: !210)
!5697 = !DILocation(line: 201, column: 21, scope: !5680)
!5698 = !DILocation(line: 201, column: 48, scope: !5680)
!5699 = !DILocation(line: 201, column: 28, scope: !5680)
!5700 = !DILocalVariable(name: "lvs", scope: !5680, file: !3, line: 202, type: !3895)
!5701 = !DILocation(line: 202, column: 17, scope: !5680)
!5702 = !DILocation(line: 202, column: 40, scope: !5680)
!5703 = !DILocation(line: 202, column: 23, scope: !5680)
!5704 = !DILocalVariable(name: "val", scope: !5680, file: !3, line: 203, type: !208)
!5705 = !DILocation(line: 203, column: 16, scope: !5680)
!5706 = !DILocalVariable(name: "ret", scope: !5680, file: !3, line: 204, type: !214)
!5707 = !DILocation(line: 204, column: 6, scope: !5680)
!5708 = !DILocation(line: 206, column: 17, scope: !5680)
!5709 = !DILocation(line: 206, column: 8, scope: !5680)
!5710 = !DILocation(line: 206, column: 6, scope: !5680)
!5711 = !DILocation(line: 207, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 207, column: 6)
!5713 = !DILocation(line: 207, column: 10, scope: !5712)
!5714 = !DILocation(line: 207, column: 6, scope: !5680)
!5715 = !DILocation(line: 208, column: 3, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 207, column: 15)
!5717 = !DILocation(line: 209, column: 10, scope: !5716)
!5718 = !DILocation(line: 209, column: 3, scope: !5716)
!5719 = !DILocation(line: 212, column: 6, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 212, column: 6)
!5721 = !DILocation(line: 212, column: 10, scope: !5720)
!5722 = !DILocation(line: 212, column: 6, scope: !5680)
!5723 = !DILocation(line: 213, column: 3, scope: !5720)
!5724 = !DILocation(line: 215, column: 32, scope: !5680)
!5725 = !DILocation(line: 215, column: 38, scope: !5680)
!5726 = !DILocation(line: 215, column: 43, scope: !5680)
!5727 = !DILocation(line: 215, column: 54, scope: !5680)
!5728 = !DILocation(line: 215, column: 58, scope: !5680)
!5729 = !DILocation(line: 215, column: 51, scope: !5680)
!5730 = !DILocation(line: 215, column: 8, scope: !5680)
!5731 = !DILocation(line: 215, column: 6, scope: !5680)
!5732 = !DILocation(line: 217, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 217, column: 6)
!5734 = !DILocation(line: 217, column: 10, scope: !5733)
!5735 = !DILocation(line: 217, column: 6, scope: !5680)
!5736 = !DILocation(line: 218, column: 3, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 217, column: 15)
!5738 = !DILocation(line: 219, column: 10, scope: !5737)
!5739 = !DILocation(line: 219, column: 3, scope: !5737)
!5740 = !DILocation(line: 222, column: 9, scope: !5680)
!5741 = !DILocation(line: 222, column: 2, scope: !5680)
!5742 = !DILocation(line: 223, column: 1, scope: !5680)
!5743 = distinct !DISubprogram(name: "hot_reset_store", scope: !3, file: !3, line: 159, type: !4391, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5744 = !DILocalVariable(name: "dev", arg: 1, scope: !5743, file: !3, line: 159, type: !290)
!5745 = !DILocation(line: 159, column: 47, scope: !5743)
!5746 = !DILocalVariable(name: "attr", arg: 2, scope: !5743, file: !3, line: 160, type: !4388)
!5747 = !DILocation(line: 160, column: 28, scope: !5743)
!5748 = !DILocalVariable(name: "buf", arg: 3, scope: !5743, file: !3, line: 160, type: !298)
!5749 = !DILocation(line: 160, column: 46, scope: !5743)
!5750 = !DILocalVariable(name: "count", arg: 4, scope: !5743, file: !3, line: 160, type: !381)
!5751 = !DILocation(line: 160, column: 58, scope: !5743)
!5752 = !DILocalVariable(name: "intf", scope: !5743, file: !3, line: 162, type: !3785)
!5753 = !DILocation(line: 162, column: 24, scope: !5743)
!5754 = !DILocalVariable(name: "__mptr", scope: !5755, file: !3, line: 162, type: !209)
!5755 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 162, column: 31)
!5756 = !DILocation(line: 162, column: 31, scope: !5755)
!5757 = !DILocation(line: 162, column: 31, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 162, column: 31)
!5759 = !DILocalVariable(name: "hdev", scope: !5743, file: !3, line: 163, type: !210)
!5760 = !DILocation(line: 163, column: 21, scope: !5743)
!5761 = !DILocation(line: 163, column: 48, scope: !5743)
!5762 = !DILocation(line: 163, column: 28, scope: !5743)
!5763 = !DILocalVariable(name: "lvs", scope: !5743, file: !3, line: 164, type: !3895)
!5764 = !DILocation(line: 164, column: 17, scope: !5743)
!5765 = !DILocation(line: 164, column: 40, scope: !5743)
!5766 = !DILocation(line: 164, column: 23, scope: !5743)
!5767 = !DILocalVariable(name: "ret", scope: !5743, file: !3, line: 165, type: !214)
!5768 = !DILocation(line: 165, column: 6, scope: !5743)
!5769 = !DILocation(line: 167, column: 32, scope: !5743)
!5770 = !DILocation(line: 167, column: 38, scope: !5743)
!5771 = !DILocation(line: 167, column: 43, scope: !5743)
!5772 = !DILocation(line: 167, column: 8, scope: !5743)
!5773 = !DILocation(line: 167, column: 6, scope: !5743)
!5774 = !DILocation(line: 169, column: 6, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 169, column: 6)
!5776 = !DILocation(line: 169, column: 10, scope: !5775)
!5777 = !DILocation(line: 169, column: 6, scope: !5743)
!5778 = !DILocation(line: 170, column: 3, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 169, column: 15)
!5780 = !DILocation(line: 171, column: 10, scope: !5779)
!5781 = !DILocation(line: 171, column: 3, scope: !5779)
!5782 = !DILocation(line: 174, column: 9, scope: !5743)
!5783 = !DILocation(line: 174, column: 2, scope: !5743)
!5784 = !DILocation(line: 175, column: 1, scope: !5743)
!5785 = distinct !DISubprogram(name: "warm_reset_store", scope: !3, file: !3, line: 178, type: !4391, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5786 = !DILocalVariable(name: "dev", arg: 1, scope: !5785, file: !3, line: 178, type: !290)
!5787 = !DILocation(line: 178, column: 48, scope: !5785)
!5788 = !DILocalVariable(name: "attr", arg: 2, scope: !5785, file: !3, line: 179, type: !4388)
!5789 = !DILocation(line: 179, column: 28, scope: !5785)
!5790 = !DILocalVariable(name: "buf", arg: 3, scope: !5785, file: !3, line: 179, type: !298)
!5791 = !DILocation(line: 179, column: 46, scope: !5785)
!5792 = !DILocalVariable(name: "count", arg: 4, scope: !5785, file: !3, line: 179, type: !381)
!5793 = !DILocation(line: 179, column: 58, scope: !5785)
!5794 = !DILocalVariable(name: "intf", scope: !5785, file: !3, line: 181, type: !3785)
!5795 = !DILocation(line: 181, column: 24, scope: !5785)
!5796 = !DILocalVariable(name: "__mptr", scope: !5797, file: !3, line: 181, type: !209)
!5797 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 181, column: 31)
!5798 = !DILocation(line: 181, column: 31, scope: !5797)
!5799 = !DILocation(line: 181, column: 31, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 181, column: 31)
!5801 = !DILocalVariable(name: "hdev", scope: !5785, file: !3, line: 182, type: !210)
!5802 = !DILocation(line: 182, column: 21, scope: !5785)
!5803 = !DILocation(line: 182, column: 48, scope: !5785)
!5804 = !DILocation(line: 182, column: 28, scope: !5785)
!5805 = !DILocalVariable(name: "lvs", scope: !5785, file: !3, line: 183, type: !3895)
!5806 = !DILocation(line: 183, column: 17, scope: !5785)
!5807 = !DILocation(line: 183, column: 40, scope: !5785)
!5808 = !DILocation(line: 183, column: 23, scope: !5785)
!5809 = !DILocalVariable(name: "ret", scope: !5785, file: !3, line: 184, type: !214)
!5810 = !DILocation(line: 184, column: 6, scope: !5785)
!5811 = !DILocation(line: 186, column: 32, scope: !5785)
!5812 = !DILocation(line: 186, column: 38, scope: !5785)
!5813 = !DILocation(line: 186, column: 43, scope: !5785)
!5814 = !DILocation(line: 186, column: 8, scope: !5785)
!5815 = !DILocation(line: 186, column: 6, scope: !5785)
!5816 = !DILocation(line: 188, column: 6, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 188, column: 6)
!5818 = !DILocation(line: 188, column: 10, scope: !5817)
!5819 = !DILocation(line: 188, column: 6, scope: !5785)
!5820 = !DILocation(line: 189, column: 3, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 188, column: 15)
!5822 = !DILocation(line: 190, column: 10, scope: !5821)
!5823 = !DILocation(line: 190, column: 3, scope: !5821)
!5824 = !DILocation(line: 193, column: 9, scope: !5785)
!5825 = !DILocation(line: 193, column: 2, scope: !5785)
!5826 = !DILocation(line: 194, column: 1, scope: !5785)
!5827 = distinct !DISubprogram(name: "u3_entry_store", scope: !3, file: !3, line: 101, type: !4391, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5828 = !DILocalVariable(name: "dev", arg: 1, scope: !5827, file: !3, line: 101, type: !290)
!5829 = !DILocation(line: 101, column: 46, scope: !5827)
!5830 = !DILocalVariable(name: "attr", arg: 2, scope: !5827, file: !3, line: 102, type: !4388)
!5831 = !DILocation(line: 102, column: 28, scope: !5827)
!5832 = !DILocalVariable(name: "buf", arg: 3, scope: !5827, file: !3, line: 102, type: !298)
!5833 = !DILocation(line: 102, column: 46, scope: !5827)
!5834 = !DILocalVariable(name: "count", arg: 4, scope: !5827, file: !3, line: 102, type: !381)
!5835 = !DILocation(line: 102, column: 58, scope: !5827)
!5836 = !DILocalVariable(name: "intf", scope: !5827, file: !3, line: 104, type: !3785)
!5837 = !DILocation(line: 104, column: 24, scope: !5827)
!5838 = !DILocalVariable(name: "__mptr", scope: !5839, file: !3, line: 104, type: !209)
!5839 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 104, column: 31)
!5840 = !DILocation(line: 104, column: 31, scope: !5839)
!5841 = !DILocation(line: 104, column: 31, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 104, column: 31)
!5843 = !DILocalVariable(name: "hdev", scope: !5827, file: !3, line: 105, type: !210)
!5844 = !DILocation(line: 105, column: 21, scope: !5827)
!5845 = !DILocation(line: 105, column: 48, scope: !5827)
!5846 = !DILocation(line: 105, column: 28, scope: !5827)
!5847 = !DILocalVariable(name: "lvs", scope: !5827, file: !3, line: 106, type: !3895)
!5848 = !DILocation(line: 106, column: 17, scope: !5827)
!5849 = !DILocation(line: 106, column: 40, scope: !5827)
!5850 = !DILocation(line: 106, column: 23, scope: !5827)
!5851 = !DILocalVariable(name: "udev", scope: !5827, file: !3, line: 107, type: !210)
!5852 = !DILocation(line: 107, column: 21, scope: !5827)
!5853 = !DILocalVariable(name: "ret", scope: !5827, file: !3, line: 108, type: !214)
!5854 = !DILocation(line: 108, column: 6, scope: !5827)
!5855 = !DILocation(line: 110, column: 27, scope: !5827)
!5856 = !DILocation(line: 110, column: 9, scope: !5827)
!5857 = !DILocation(line: 110, column: 7, scope: !5827)
!5858 = !DILocation(line: 111, column: 7, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 111, column: 6)
!5860 = !DILocation(line: 111, column: 6, scope: !5827)
!5861 = !DILocation(line: 112, column: 3, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 111, column: 13)
!5863 = !DILocation(line: 113, column: 3, scope: !5862)
!5864 = !DILocation(line: 116, column: 32, scope: !5827)
!5865 = !DILocation(line: 116, column: 38, scope: !5827)
!5866 = !DILocation(line: 116, column: 43, scope: !5827)
!5867 = !DILocation(line: 116, column: 8, scope: !5827)
!5868 = !DILocation(line: 116, column: 6, scope: !5827)
!5869 = !DILocation(line: 118, column: 6, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 118, column: 6)
!5871 = !DILocation(line: 118, column: 10, scope: !5870)
!5872 = !DILocation(line: 118, column: 6, scope: !5827)
!5873 = !DILocation(line: 119, column: 3, scope: !5870)
!5874 = !DILocation(line: 121, column: 21, scope: !5827)
!5875 = !DILocation(line: 121, column: 2, scope: !5827)
!5876 = !DILocation(line: 123, column: 6, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 123, column: 6)
!5878 = !DILocation(line: 123, column: 10, scope: !5877)
!5879 = !DILocation(line: 123, column: 6, scope: !5827)
!5880 = !DILocation(line: 124, column: 10, scope: !5877)
!5881 = !DILocation(line: 124, column: 3, scope: !5877)
!5882 = !DILocation(line: 126, column: 9, scope: !5827)
!5883 = !DILocation(line: 126, column: 2, scope: !5827)
!5884 = !DILocation(line: 127, column: 1, scope: !5827)
!5885 = distinct !DISubprogram(name: "u3_exit_store", scope: !3, file: !3, line: 130, type: !4391, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5886 = !DILocalVariable(name: "dev", arg: 1, scope: !5885, file: !3, line: 130, type: !290)
!5887 = !DILocation(line: 130, column: 45, scope: !5885)
!5888 = !DILocalVariable(name: "attr", arg: 2, scope: !5885, file: !3, line: 131, type: !4388)
!5889 = !DILocation(line: 131, column: 28, scope: !5885)
!5890 = !DILocalVariable(name: "buf", arg: 3, scope: !5885, file: !3, line: 131, type: !298)
!5891 = !DILocation(line: 131, column: 46, scope: !5885)
!5892 = !DILocalVariable(name: "count", arg: 4, scope: !5885, file: !3, line: 131, type: !381)
!5893 = !DILocation(line: 131, column: 58, scope: !5885)
!5894 = !DILocalVariable(name: "intf", scope: !5885, file: !3, line: 133, type: !3785)
!5895 = !DILocation(line: 133, column: 24, scope: !5885)
!5896 = !DILocalVariable(name: "__mptr", scope: !5897, file: !3, line: 133, type: !209)
!5897 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 133, column: 31)
!5898 = !DILocation(line: 133, column: 31, scope: !5897)
!5899 = !DILocation(line: 133, column: 31, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 133, column: 31)
!5901 = !DILocalVariable(name: "hdev", scope: !5885, file: !3, line: 134, type: !210)
!5902 = !DILocation(line: 134, column: 21, scope: !5885)
!5903 = !DILocation(line: 134, column: 48, scope: !5885)
!5904 = !DILocation(line: 134, column: 28, scope: !5885)
!5905 = !DILocalVariable(name: "lvs", scope: !5885, file: !3, line: 135, type: !3895)
!5906 = !DILocation(line: 135, column: 17, scope: !5885)
!5907 = !DILocation(line: 135, column: 40, scope: !5885)
!5908 = !DILocation(line: 135, column: 23, scope: !5885)
!5909 = !DILocalVariable(name: "udev", scope: !5885, file: !3, line: 136, type: !210)
!5910 = !DILocation(line: 136, column: 21, scope: !5885)
!5911 = !DILocalVariable(name: "ret", scope: !5885, file: !3, line: 137, type: !214)
!5912 = !DILocation(line: 137, column: 6, scope: !5885)
!5913 = !DILocation(line: 139, column: 27, scope: !5885)
!5914 = !DILocation(line: 139, column: 9, scope: !5885)
!5915 = !DILocation(line: 139, column: 7, scope: !5885)
!5916 = !DILocation(line: 140, column: 7, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 140, column: 6)
!5918 = !DILocation(line: 140, column: 6, scope: !5885)
!5919 = !DILocation(line: 141, column: 3, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 140, column: 13)
!5921 = !DILocation(line: 142, column: 3, scope: !5920)
!5922 = !DILocation(line: 145, column: 34, scope: !5885)
!5923 = !DILocation(line: 145, column: 40, scope: !5885)
!5924 = !DILocation(line: 145, column: 45, scope: !5885)
!5925 = !DILocation(line: 145, column: 8, scope: !5885)
!5926 = !DILocation(line: 145, column: 6, scope: !5885)
!5927 = !DILocation(line: 147, column: 6, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 147, column: 6)
!5929 = !DILocation(line: 147, column: 10, scope: !5928)
!5930 = !DILocation(line: 147, column: 6, scope: !5885)
!5931 = !DILocation(line: 148, column: 3, scope: !5928)
!5932 = !DILocation(line: 150, column: 21, scope: !5885)
!5933 = !DILocation(line: 150, column: 2, scope: !5885)
!5934 = !DILocation(line: 152, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 152, column: 6)
!5936 = !DILocation(line: 152, column: 10, scope: !5935)
!5937 = !DILocation(line: 152, column: 6, scope: !5885)
!5938 = !DILocation(line: 153, column: 10, scope: !5935)
!5939 = !DILocation(line: 153, column: 3, scope: !5935)
!5940 = !DILocation(line: 155, column: 9, scope: !5885)
!5941 = !DILocation(line: 155, column: 2, scope: !5885)
!5942 = !DILocation(line: 156, column: 1, scope: !5885)
!5943 = distinct !DISubprogram(name: "enable_compliance_store", scope: !3, file: !3, line: 293, type: !4391, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5944 = !DILocalVariable(name: "dev", arg: 1, scope: !5943, file: !3, line: 293, type: !290)
!5945 = !DILocation(line: 293, column: 55, scope: !5943)
!5946 = !DILocalVariable(name: "attr", arg: 2, scope: !5943, file: !3, line: 294, type: !4388)
!5947 = !DILocation(line: 294, column: 28, scope: !5943)
!5948 = !DILocalVariable(name: "buf", arg: 3, scope: !5943, file: !3, line: 294, type: !298)
!5949 = !DILocation(line: 294, column: 46, scope: !5943)
!5950 = !DILocalVariable(name: "count", arg: 4, scope: !5943, file: !3, line: 294, type: !381)
!5951 = !DILocation(line: 294, column: 58, scope: !5943)
!5952 = !DILocalVariable(name: "intf", scope: !5943, file: !3, line: 296, type: !3785)
!5953 = !DILocation(line: 296, column: 24, scope: !5943)
!5954 = !DILocalVariable(name: "__mptr", scope: !5955, file: !3, line: 296, type: !209)
!5955 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 296, column: 31)
!5956 = !DILocation(line: 296, column: 31, scope: !5955)
!5957 = !DILocation(line: 296, column: 31, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5955, file: !3, line: 296, column: 31)
!5959 = !DILocalVariable(name: "hdev", scope: !5943, file: !3, line: 297, type: !210)
!5960 = !DILocation(line: 297, column: 21, scope: !5943)
!5961 = !DILocation(line: 297, column: 48, scope: !5943)
!5962 = !DILocation(line: 297, column: 28, scope: !5943)
!5963 = !DILocalVariable(name: "lvs", scope: !5943, file: !3, line: 298, type: !3895)
!5964 = !DILocation(line: 298, column: 17, scope: !5943)
!5965 = !DILocation(line: 298, column: 40, scope: !5943)
!5966 = !DILocation(line: 298, column: 23, scope: !5943)
!5967 = !DILocalVariable(name: "ret", scope: !5943, file: !3, line: 299, type: !214)
!5968 = !DILocation(line: 299, column: 6, scope: !5943)
!5969 = !DILocation(line: 301, column: 32, scope: !5943)
!5970 = !DILocation(line: 302, column: 4, scope: !5943)
!5971 = !DILocation(line: 302, column: 9, scope: !5943)
!5972 = !DILocation(line: 302, column: 17, scope: !5943)
!5973 = !DILocation(line: 301, column: 8, scope: !5943)
!5974 = !DILocation(line: 301, column: 6, scope: !5943)
!5975 = !DILocation(line: 304, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 304, column: 6)
!5977 = !DILocation(line: 304, column: 10, scope: !5976)
!5978 = !DILocation(line: 304, column: 6, scope: !5943)
!5979 = !DILocation(line: 305, column: 3, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 304, column: 15)
!5981 = !DILocation(line: 306, column: 10, scope: !5980)
!5982 = !DILocation(line: 306, column: 3, scope: !5980)
!5983 = !DILocation(line: 309, column: 9, scope: !5943)
!5984 = !DILocation(line: 309, column: 2, scope: !5943)
!5985 = !DILocation(line: 310, column: 1, scope: !5943)
