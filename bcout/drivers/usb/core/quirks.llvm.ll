; ModuleID = '../bcout/drivers/usb/core/quirks.llvm.bc'
source_filename = "drivers/usb/core/quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.kparam_string = type { i32, i8* }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.quirk_entry = type { i16, i16, i32 }
%struct.kmem_cache = type opaque
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
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
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_phy = type opaque
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.65, i64 }
%union.anon.65 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque

@__param_str_quirks = internal constant [15 x i8] c"usbcore.quirks\00", align 1, !dbg !0
@quirks_param_ops = internal constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @quirks_param_set, i32 (i8*, %struct.kernel_param*)* @param_get_string, void (i8*)* null }, align 8, !dbg !4372
@quirks_param_string = internal global %struct.kparam_string { i32 128, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @quirks_param, i32 0, i32 0) }, align 8, !dbg !4376
@__param_quirks = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_quirks, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @quirks_param_ops, i16 420, i8 6, i8 0, %union.anon { i8* bitcast (%struct.kparam_string* @quirks_param_string to i8*) } }, section "__param", align 8, !dbg !4307
@__UNIQUE_ID_quirks221 = internal constant [89 x i8] c"usbcore.parm=quirks:Add/modify USB quirks by specifying quirks=vendorID:productID:quirks\00", section ".modinfo", align 1, !dbg !4359
@usb_endpoint_ignore = internal constant [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i64 1 }, %struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i64 129 }, %struct.usb_device_id { i16 1027, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i64 133 }, %struct.usb_device_id { i16 1027, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i64 133 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4380
@usb_quirk_list = internal constant [100 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 516, i16 24613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 536, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 536, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1008, i16 1793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 16192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1054, i16 12320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1060, i16 13571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1130, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2085, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1133, i16 2241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16094, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1137, i16 341, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1204, i16 1318, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1240, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1255, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1255, i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1256, i16 26113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1267, i16 137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1267, i16 8632, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1410, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1410, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1423, i16 -28076, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1452, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1484, i16 8807, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1592, i16 2579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1699, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1784, i16 2052, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 12293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32768 }, %struct.usb_device_id { i16 3, i16 1891, i16 402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1921, i16 21891, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1921, i16 21905, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 2284, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2308, i16 24833, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24834, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24835, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2048 }, %struct.usb_device_id { i16 3, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 13107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 2385, i16 5734, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 2417, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4 }, %struct.usb_device_id { i16 3, i16 2652, i16 8225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2706, i16 145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2821, i16 6112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 512 }, %struct.usb_device_id { i16 3, i16 3034, i16 1159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 3141, i16 28758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 512 }, %struct.usb_device_id { i16 3, i16 4310, i16 8704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4817, i16 5563, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4096 }, %struct.usb_device_id { i16 3, i16 4817, i16 5571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4096 }, %struct.usb_device_id { i16 3, i16 5398, i16 -31192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 5426, i16 278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 128 }, %struct.usb_device_id { i16 3, i16 6127, i16 -24558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4096 }, %struct.usb_device_id { i16 3, i16 6408, i16 4885, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32 }, %struct.usb_device_id { i16 3, i16 6666, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 128 }, %struct.usb_device_id { i16 3, i16 6720, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 16384 }, %struct.usb_device_id { i16 3, i16 6940, i16 6931, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6933, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6966, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 7285, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 7649, i16 -16126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17073, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 8256, i16 29184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 9094, i16 12564, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 12569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 13582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 11427, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 -32634, i16 -3675, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 4661, i16 97, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4401
@usb_amd_resume_quirk_list = internal constant [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6127, i16 24622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9505, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1008, i16 11082, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4406
@usb_interface_quirk_list = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 1133, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i64 2 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4411
@quirk_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @quirk_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @quirk_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4414
@quirk_list = internal global %struct.quirk_entry* null, align 8, !dbg !4364
@quirk_count = internal global i32 0, align 4, !dbg !4374
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@quirks_param = internal global [128 x i8] zeroinitializer, align 16, !dbg !4378
@llvm.used = appending global [2 x i8*] [i8* bitcast (%struct.kernel_param* @__param_quirks to i8*), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__UNIQUE_ID_quirks221, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @usb_endpoint_is_ignored(%struct.usb_device* %udev, %struct.usb_host_interface* %intf, %struct.usb_endpoint_descriptor* %epd) #0 !dbg !4424 {
entry:
  %retval = alloca i1, align 1
  %udev.addr = alloca %struct.usb_device*, align 8
  %intf.addr = alloca %struct.usb_host_interface*, align 8
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  %id = alloca %struct.usb_device_id*, align 8
  %address = alloca i32, align 4
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  store %struct.usb_host_interface* %intf, %struct.usb_host_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %intf.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id, metadata !4434, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.declare(metadata i32* %address, metadata !4437, metadata !DIExpression()), !dbg !4438
  store %struct.usb_device_id* getelementptr inbounds ([5 x %struct.usb_device_id], [5 x %struct.usb_device_id]* @usb_endpoint_ignore, i64 0, i64 0), %struct.usb_device_id** %id, align 8, !dbg !4439
  br label %for.cond, !dbg !4441

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.usb_device_id*, %struct.usb_device_id** %id, align 8, !dbg !4442
  %match_flags = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %0, i32 0, i32 0, !dbg !4444
  %1 = load i16, i16* %match_flags, align 8, !dbg !4444
  %tobool = icmp ne i16 %1, 0, !dbg !4445
  br i1 %tobool, label %for.body, label %for.end, !dbg !4445

for.body:                                         ; preds = %for.cond
  %2 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4446
  %3 = load %struct.usb_device_id*, %struct.usb_device_id** %id, align 8, !dbg !4449
  %call = call i32 @usb_match_device(%struct.usb_device* %2, %struct.usb_device_id* %3) #7, !dbg !4450
  %tobool1 = icmp ne i32 %call, 0, !dbg !4450
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4451

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4452

if.end:                                           ; preds = %for.body
  %4 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4453
  %5 = load %struct.usb_host_interface*, %struct.usb_host_interface** %intf.addr, align 8, !dbg !4455
  %6 = load %struct.usb_device_id*, %struct.usb_device_id** %id, align 8, !dbg !4456
  %call2 = call i32 @usb_match_one_id_intf(%struct.usb_device* %4, %struct.usb_host_interface* %5, %struct.usb_device_id* %6) #7, !dbg !4457
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4457
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4458

if.then4:                                         ; preds = %if.end
  br label %for.inc, !dbg !4459

if.end5:                                          ; preds = %if.end
  %7 = load %struct.usb_device_id*, %struct.usb_device_id** %id, align 8, !dbg !4460
  %driver_info = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %7, i32 0, i32 12, !dbg !4461
  %8 = load i64, i64* %driver_info, align 8, !dbg !4461
  %conv = trunc i64 %8 to i32, !dbg !4460
  store i32 %conv, i32* %address, align 4, !dbg !4462
  %9 = load i32, i32* %address, align 4, !dbg !4463
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4465
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %10, i32 0, i32 2, !dbg !4466
  %11 = load i8, i8* %bEndpointAddress, align 1, !dbg !4466
  %conv6 = zext i8 %11 to i32, !dbg !4465
  %cmp = icmp eq i32 %9, %conv6, !dbg !4467
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !4468

if.then8:                                         ; preds = %if.end5
  store i1 true, i1* %retval, align 1, !dbg !4469
  br label %return, !dbg !4469

if.end9:                                          ; preds = %if.end5
  br label %for.inc, !dbg !4470

for.inc:                                          ; preds = %if.end9, %if.then4, %if.then
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %id, align 8, !dbg !4471
  %incdec.ptr = getelementptr %struct.usb_device_id, %struct.usb_device_id* %12, i32 1, !dbg !4471
  store %struct.usb_device_id* %incdec.ptr, %struct.usb_device_id** %id, align 8, !dbg !4471
  br label %for.cond, !dbg !4472, !llvm.loop !4473

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !4475
  br label %return, !dbg !4475

return:                                           ; preds = %for.end, %if.then8
  %13 = load i1, i1* %retval, align 1, !dbg !4476
  ret i1 %13, !dbg !4476
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_match_device(%struct.usb_device*, %struct.usb_device_id*) #2

; Function Attrs: noredzone
declare dso_local i32 @usb_match_one_id_intf(%struct.usb_device*, %struct.usb_host_interface*, %struct.usb_device_id*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_detect_quirks(%struct.usb_device* %udev) #0 !dbg !4477 {
entry:
  %udev.addr = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4480, metadata !DIExpression()), !dbg !4481
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4482
  %call = call i32 @usb_detect_static_quirks(%struct.usb_device* %0, %struct.usb_device_id* getelementptr inbounds ([100 x %struct.usb_device_id], [100 x %struct.usb_device_id]* @usb_quirk_list, i64 0, i64 0)) #7, !dbg !4483
  %1 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4484
  %quirks = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 36, !dbg !4485
  store i32 %call, i32* %quirks, align 4, !dbg !4486
  %2 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4487
  %call1 = call i32 @usb_amd_resume_quirk(%struct.usb_device* %2) #7, !dbg !4489
  %tobool = icmp ne i32 %call1, 0, !dbg !4489
  br i1 %tobool, label %if.then, label %if.end, !dbg !4490

if.then:                                          ; preds = %entry
  %3 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4491
  %call2 = call i32 @usb_detect_static_quirks(%struct.usb_device* %3, %struct.usb_device_id* getelementptr inbounds ([7 x %struct.usb_device_id], [7 x %struct.usb_device_id]* @usb_amd_resume_quirk_list, i64 0, i64 0)) #7, !dbg !4492
  %4 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4493
  %quirks3 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 36, !dbg !4494
  %5 = load i32, i32* %quirks3, align 4, !dbg !4495
  %or = or i32 %5, %call2, !dbg !4495
  store i32 %or, i32* %quirks3, align 4, !dbg !4495
  br label %if.end, !dbg !4493

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4496
  %call4 = call i32 @usb_detect_dynamic_quirks(%struct.usb_device* %6) #7, !dbg !4497
  %7 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4498
  %quirks5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 36, !dbg !4499
  %8 = load i32, i32* %quirks5, align 4, !dbg !4500
  %xor = xor i32 %8, %call4, !dbg !4500
  store i32 %xor, i32* %quirks5, align 4, !dbg !4500
  %9 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4501
  %quirks6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 36, !dbg !4503
  %10 = load i32, i32* %quirks6, align 4, !dbg !4503
  %tobool7 = icmp ne i32 %10, 0, !dbg !4501
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4504

if.then8:                                         ; preds = %if.end
  br label %if.end9, !dbg !4505

if.end9:                                          ; preds = %if.then8, %if.end
  %11 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4506
  %quirks10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 36, !dbg !4508
  %12 = load i32, i32* %quirks10, align 4, !dbg !4508
  %conv = zext i32 %12 to i64, !dbg !4506
  %and = and i64 %conv, 16, !dbg !4509
  %tobool11 = icmp ne i64 %and, 0, !dbg !4509
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4510

if.then12:                                        ; preds = %if.end9
  %13 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4511
  %persist_enabled = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 27, !dbg !4512
  %bf.load = load i16, i16* %persist_enabled, align 1, !dbg !4513
  %bf.clear = and i16 %bf.load, -3, !dbg !4513
  %bf.set = or i16 %bf.clear, 2, !dbg !4513
  store i16 %bf.set, i16* %persist_enabled, align 1, !dbg !4513
  br label %if.end13, !dbg !4511

if.end13:                                         ; preds = %if.then12, %if.end9
  ret void, !dbg !4514
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_detect_static_quirks(%struct.usb_device* %udev, %struct.usb_device_id* %id) #0 !dbg !4515 {
entry:
  %udev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %quirks = alloca i32, align 4
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.declare(metadata i32* %quirks, metadata !4522, metadata !DIExpression()), !dbg !4523
  store i32 0, i32* %quirks, align 4, !dbg !4523
  br label %for.cond, !dbg !4524

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4525
  %match_flags = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %0, i32 0, i32 0, !dbg !4528
  %1 = load i16, i16* %match_flags, align 8, !dbg !4528
  %tobool = icmp ne i16 %1, 0, !dbg !4529
  br i1 %tobool, label %for.body, label %for.end, !dbg !4529

for.body:                                         ; preds = %for.cond
  %2 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4530
  %3 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4533
  %call = call i32 @usb_match_device(%struct.usb_device* %2, %struct.usb_device_id* %3) #7, !dbg !4534
  %tobool1 = icmp ne i32 %call, 0, !dbg !4534
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4535

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4536

if.end:                                           ; preds = %for.body
  %4 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4537
  %match_flags2 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %4, i32 0, i32 0, !dbg !4539
  %5 = load i16, i16* %match_flags2, align 8, !dbg !4539
  %conv = zext i16 %5 to i32, !dbg !4537
  %and = and i32 %conv, 896, !dbg !4540
  %tobool3 = icmp ne i32 %and, 0, !dbg !4540
  br i1 %tobool3, label %land.lhs.true, label %if.end6, !dbg !4541

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4542
  %7 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4543
  %call4 = call zeroext i1 @usb_match_any_interface(%struct.usb_device* %6, %struct.usb_device_id* %7) #7, !dbg !4544
  br i1 %call4, label %if.end6, label %if.then5, !dbg !4545

if.then5:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !4546

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4547
  %driver_info = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %8, i32 0, i32 12, !dbg !4548
  %9 = load i64, i64* %driver_info, align 8, !dbg !4548
  %conv7 = trunc i64 %9 to i32, !dbg !4549
  %10 = load i32, i32* %quirks, align 4, !dbg !4550
  %or = or i32 %10, %conv7, !dbg !4550
  store i32 %or, i32* %quirks, align 4, !dbg !4550
  br label %for.inc, !dbg !4551

for.inc:                                          ; preds = %if.end6, %if.then5, %if.then
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4552
  %incdec.ptr = getelementptr %struct.usb_device_id, %struct.usb_device_id* %11, i32 1, !dbg !4552
  store %struct.usb_device_id* %incdec.ptr, %struct.usb_device_id** %id.addr, align 8, !dbg !4552
  br label %for.cond, !dbg !4553, !llvm.loop !4554

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %quirks, align 4, !dbg !4556
  ret i32 %12, !dbg !4557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_amd_resume_quirk(%struct.usb_device* %udev) #0 !dbg !4558 {
entry:
  %retval = alloca i32, align 4
  %udev.addr = alloca %struct.usb_device*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !4563, metadata !DIExpression()), !dbg !4564
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4565
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 12, !dbg !4566
  %1 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4566
  %call = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %1) #7, !dbg !4567
  store %struct.usb_hcd* %call, %struct.usb_hcd** %hcd, align 8, !dbg !4568
  %2 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4569
  %level = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 25, !dbg !4571
  %3 = load i8, i8* %level, align 1, !dbg !4571
  %conv = zext i8 %3 to i32, !dbg !4569
  %cmp = icmp eq i32 %conv, 1, !dbg !4572
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4573

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !4574
  %amd_resume_bug = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 14, !dbg !4575
  %bf.load = load i16, i16* %amd_resume_bug, align 4, !dbg !4575
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !4575
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4575
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4575
  %cmp2 = icmp eq i32 %bf.cast, 1, !dbg !4576
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4577

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !4579
  br label %return, !dbg !4579

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !4580
  ret i32 %5, !dbg !4580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_detect_dynamic_quirks(%struct.usb_device* %udev) #0 !dbg !4581 {
entry:
  %udev.addr = alloca %struct.usb_device*, align 8
  %vid = alloca i16, align 2
  %pid = alloca i16, align 2
  %i = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4584, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.declare(metadata i16* %vid, metadata !4586, metadata !DIExpression()), !dbg !4587
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4588
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 15, !dbg !4588
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !4588
  %1 = load i16, i16* %idVendor, align 8, !dbg !4588
  store i16 %1, i16* %vid, align 2, !dbg !4587
  call void @llvm.dbg.declare(metadata i16* %pid, metadata !4589, metadata !DIExpression()), !dbg !4590
  %2 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4591
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 15, !dbg !4591
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !4591
  %3 = load i16, i16* %idProduct, align 2, !dbg !4591
  store i16 %3, i16* %pid, align 2, !dbg !4590
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4592, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !4594, metadata !DIExpression()), !dbg !4595
  store i32 0, i32* %flags, align 4, !dbg !4595
  call void @mutex_lock(%struct.mutex* @quirk_mutex) #7, !dbg !4596
  store i32 0, i32* %i, align 4, !dbg !4597
  br label %for.cond, !dbg !4599

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !4600
  %5 = load i32, i32* @quirk_count, align 4, !dbg !4602
  %cmp = icmp ult i32 %4, %5, !dbg !4603
  br i1 %cmp, label %for.body, label %for.end, !dbg !4604

for.body:                                         ; preds = %for.cond
  %6 = load i16, i16* %vid, align 2, !dbg !4605
  %conv = zext i16 %6 to i32, !dbg !4605
  %7 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4608
  %8 = load i32, i32* %i, align 4, !dbg !4609
  %idxprom = sext i32 %8 to i64, !dbg !4608
  %arrayidx = getelementptr %struct.quirk_entry, %struct.quirk_entry* %7, i64 %idxprom, !dbg !4608
  %vid2 = getelementptr inbounds %struct.quirk_entry, %struct.quirk_entry* %arrayidx, i32 0, i32 0, !dbg !4610
  %9 = load i16, i16* %vid2, align 4, !dbg !4610
  %conv3 = zext i16 %9 to i32, !dbg !4608
  %cmp4 = icmp eq i32 %conv, %conv3, !dbg !4611
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !4612

land.lhs.true:                                    ; preds = %for.body
  %10 = load i16, i16* %pid, align 2, !dbg !4613
  %conv6 = zext i16 %10 to i32, !dbg !4613
  %11 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4614
  %12 = load i32, i32* %i, align 4, !dbg !4615
  %idxprom7 = sext i32 %12 to i64, !dbg !4614
  %arrayidx8 = getelementptr %struct.quirk_entry, %struct.quirk_entry* %11, i64 %idxprom7, !dbg !4614
  %pid9 = getelementptr inbounds %struct.quirk_entry, %struct.quirk_entry* %arrayidx8, i32 0, i32 1, !dbg !4616
  %13 = load i16, i16* %pid9, align 2, !dbg !4616
  %conv10 = zext i16 %13 to i32, !dbg !4614
  %cmp11 = icmp eq i32 %conv6, %conv10, !dbg !4617
  br i1 %cmp11, label %if.then, label %if.end, !dbg !4618

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4619
  %15 = load i32, i32* %i, align 4, !dbg !4621
  %idxprom13 = sext i32 %15 to i64, !dbg !4619
  %arrayidx14 = getelementptr %struct.quirk_entry, %struct.quirk_entry* %14, i64 %idxprom13, !dbg !4619
  %flags15 = getelementptr inbounds %struct.quirk_entry, %struct.quirk_entry* %arrayidx14, i32 0, i32 2, !dbg !4622
  %16 = load i32, i32* %flags15, align 4, !dbg !4622
  store i32 %16, i32* %flags, align 4, !dbg !4623
  br label %for.end, !dbg !4624

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4625

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !4626
  %inc = add i32 %17, 1, !dbg !4626
  store i32 %inc, i32* %i, align 4, !dbg !4626
  br label %for.cond, !dbg !4627, !llvm.loop !4628

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(%struct.mutex* @quirk_mutex) #7, !dbg !4630
  %18 = load i32, i32* %flags, align 4, !dbg !4631
  ret i32 %18, !dbg !4632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_detect_interface_quirks(%struct.usb_device* %udev) #0 !dbg !4633 {
entry:
  %udev.addr = alloca %struct.usb_device*, align 8
  %quirks = alloca i32, align 4
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.declare(metadata i32* %quirks, metadata !4636, metadata !DIExpression()), !dbg !4637
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4638
  %call = call i32 @usb_detect_static_quirks(%struct.usb_device* %0, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @usb_interface_quirk_list, i64 0, i64 0)) #7, !dbg !4639
  store i32 %call, i32* %quirks, align 4, !dbg !4640
  %1 = load i32, i32* %quirks, align 4, !dbg !4641
  %cmp = icmp eq i32 %1, 0, !dbg !4643
  br i1 %cmp, label %if.then, label %if.end, !dbg !4644

if.then:                                          ; preds = %entry
  br label %return, !dbg !4645

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %quirks, align 4, !dbg !4646
  %3 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4647
  %quirks1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 36, !dbg !4648
  %4 = load i32, i32* %quirks1, align 4, !dbg !4649
  %or = or i32 %4, %2, !dbg !4649
  store i32 %or, i32* %quirks1, align 4, !dbg !4649
  br label %return, !dbg !4650

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_release_quirk_list() #0 !dbg !4651 {
entry:
  call void @mutex_lock(%struct.mutex* @quirk_mutex) #7, !dbg !4652
  %0 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4653
  %1 = bitcast %struct.quirk_entry* %0 to i8*, !dbg !4653
  call void @kfree(i8* %1) #7, !dbg !4654
  store %struct.quirk_entry* null, %struct.quirk_entry** @quirk_list, align 8, !dbg !4655
  call void @mutex_unlock(%struct.mutex* @quirk_mutex) #7, !dbg !4656
  ret void, !dbg !4657
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @quirks_param_set(i8* %value, %struct.kernel_param* %kp) #0 !dbg !4658 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %kp.addr = alloca %struct.kernel_param*, align 8
  %val = alloca i8*, align 8
  %p = alloca i8*, align 8
  %field = alloca i8*, align 8
  %vid = alloca i16, align 2
  %pid = alloca i16, align 2
  %flags = alloca i32, align 4
  %i = alloca i64, align 8
  %err = alloca i32, align 4
  %.compoundliteral = alloca %struct.quirk_entry, align 4
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  store %struct.kernel_param* %kp, %struct.kernel_param** %kp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kernel_param** %kp.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata i8** %val, metadata !4663, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.declare(metadata i8** %p, metadata !4665, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.declare(metadata i8** %field, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.declare(metadata i16* %vid, metadata !4669, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.declare(metadata i16* %pid, metadata !4671, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4677, metadata !DIExpression()), !dbg !4678
  %0 = load i8*, i8** %value.addr, align 8, !dbg !4679
  %call = call noalias i8* @kstrdup(i8* %0, i32 3264) #7, !dbg !4680
  store i8* %call, i8** %val, align 8, !dbg !4681
  %1 = load i8*, i8** %val, align 8, !dbg !4682
  %tobool = icmp ne i8* %1, null, !dbg !4682
  br i1 %tobool, label %if.end, label %if.then, !dbg !4684

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4685
  br label %return, !dbg !4685

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %val, align 8, !dbg !4686
  %3 = load %struct.kernel_param*, %struct.kernel_param** %kp.addr, align 8, !dbg !4687
  %call1 = call i32 @param_set_copystring(i8* %2, %struct.kernel_param* %3) #7, !dbg !4688
  store i32 %call1, i32* %err, align 4, !dbg !4689
  %4 = load i32, i32* %err, align 4, !dbg !4690
  %tobool2 = icmp ne i32 %4, 0, !dbg !4690
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4692

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %val, align 8, !dbg !4693
  call void @kfree(i8* %5) #7, !dbg !4695
  %6 = load i32, i32* %err, align 4, !dbg !4696
  store i32 %6, i32* %retval, align 4, !dbg !4697
  br label %return, !dbg !4697

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @quirk_mutex) #7, !dbg !4698
  %7 = load i8*, i8** %val, align 8, !dbg !4699
  %8 = load i8, i8* %7, align 1, !dbg !4701
  %tobool5 = icmp ne i8 %8, 0, !dbg !4701
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4702

if.then6:                                         ; preds = %if.end4
  store i32 0, i32* @quirk_count, align 4, !dbg !4703
  %9 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4705
  %10 = bitcast %struct.quirk_entry* %9 to i8*, !dbg !4705
  call void @kfree(i8* %10) #7, !dbg !4706
  store %struct.quirk_entry* null, %struct.quirk_entry** @quirk_list, align 8, !dbg !4707
  br label %unlock, !dbg !4708

if.end7:                                          ; preds = %if.end4
  store i32 1, i32* @quirk_count, align 4, !dbg !4709
  store i64 0, i64* %i, align 8, !dbg !4711
  br label %for.cond, !dbg !4712

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load i8*, i8** %val, align 8, !dbg !4713
  %12 = load i64, i64* %i, align 8, !dbg !4715
  %arrayidx = getelementptr i8, i8* %11, i64 %12, !dbg !4713
  %13 = load i8, i8* %arrayidx, align 1, !dbg !4713
  %tobool8 = icmp ne i8 %13, 0, !dbg !4716
  br i1 %tobool8, label %for.body, label %for.end, !dbg !4716

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %val, align 8, !dbg !4717
  %15 = load i64, i64* %i, align 8, !dbg !4719
  %arrayidx9 = getelementptr i8, i8* %14, i64 %15, !dbg !4717
  %16 = load i8, i8* %arrayidx9, align 1, !dbg !4717
  %conv = sext i8 %16 to i32, !dbg !4717
  %cmp = icmp eq i32 %conv, 44, !dbg !4720
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !4721

if.then11:                                        ; preds = %for.body
  %17 = load i32, i32* @quirk_count, align 4, !dbg !4722
  %inc = add i32 %17, 1, !dbg !4722
  store i32 %inc, i32* @quirk_count, align 4, !dbg !4722
  br label %if.end12, !dbg !4723

if.end12:                                         ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !4724

for.inc:                                          ; preds = %if.end12
  %18 = load i64, i64* %i, align 8, !dbg !4725
  %inc13 = add i64 %18, 1, !dbg !4725
  store i64 %inc13, i64* %i, align 8, !dbg !4725
  br label %for.cond, !dbg !4726, !llvm.loop !4727

for.end:                                          ; preds = %for.cond
  %19 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4729
  %tobool14 = icmp ne %struct.quirk_entry* %19, null, !dbg !4729
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4731

if.then15:                                        ; preds = %for.end
  %20 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4732
  %21 = bitcast %struct.quirk_entry* %20 to i8*, !dbg !4732
  call void @kfree(i8* %21) #7, !dbg !4734
  store %struct.quirk_entry* null, %struct.quirk_entry** @quirk_list, align 8, !dbg !4735
  br label %if.end16, !dbg !4736

if.end16:                                         ; preds = %if.then15, %for.end
  %22 = load i32, i32* @quirk_count, align 4, !dbg !4737
  %conv17 = zext i32 %22 to i64, !dbg !4737
  %call18 = call i8* @kcalloc(i64 %conv17, i64 8, i32 3264) #7, !dbg !4738
  %23 = bitcast i8* %call18 to %struct.quirk_entry*, !dbg !4738
  store %struct.quirk_entry* %23, %struct.quirk_entry** @quirk_list, align 8, !dbg !4739
  %24 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4740
  %tobool19 = icmp ne %struct.quirk_entry* %24, null, !dbg !4740
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !4742

if.then20:                                        ; preds = %if.end16
  store i32 0, i32* @quirk_count, align 4, !dbg !4743
  call void @mutex_unlock(%struct.mutex* @quirk_mutex) #7, !dbg !4745
  %25 = load i8*, i8** %val, align 8, !dbg !4746
  call void @kfree(i8* %25) #7, !dbg !4747
  store i32 -12, i32* %retval, align 4, !dbg !4748
  br label %return, !dbg !4748

if.end21:                                         ; preds = %if.end16
  store i64 0, i64* %i, align 8, !dbg !4749
  %26 = load i8*, i8** %val, align 8, !dbg !4751
  store i8* %26, i8** %p, align 8, !dbg !4752
  br label %for.cond22, !dbg !4753

for.cond22:                                       ; preds = %for.end111, %if.end21
  %27 = load i8*, i8** %p, align 8, !dbg !4754
  %tobool23 = icmp ne i8* %27, null, !dbg !4754
  br i1 %tobool23, label %land.rhs, label %land.end, !dbg !4756

land.rhs:                                         ; preds = %for.cond22
  %28 = load i8*, i8** %p, align 8, !dbg !4757
  %29 = load i8, i8* %28, align 1, !dbg !4758
  %conv24 = sext i8 %29 to i32, !dbg !4758
  %tobool25 = icmp ne i32 %conv24, 0, !dbg !4756
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond22
  %30 = phi i1 [ false, %for.cond22 ], [ %tobool25, %land.rhs ], !dbg !4759
  br i1 %30, label %for.body26, label %for.end117, !dbg !4760

for.body26:                                       ; preds = %land.end
  %call27 = call i8* @strsep(i8** %p, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !4761
  store i8* %call27, i8** %field, align 8, !dbg !4763
  %31 = load i8*, i8** %field, align 8, !dbg !4764
  %tobool28 = icmp ne i8* %31, null, !dbg !4764
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4766

if.then29:                                        ; preds = %for.body26
  br label %for.end117, !dbg !4767

if.end30:                                         ; preds = %for.body26
  %32 = load i8*, i8** %field, align 8, !dbg !4768
  %call31 = call i32 @kstrtou16(i8* %32, i32 16, i16* %vid) #7, !dbg !4770
  %tobool32 = icmp ne i32 %call31, 0, !dbg !4770
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !4771

if.then33:                                        ; preds = %if.end30
  br label %for.end117, !dbg !4772

if.end34:                                         ; preds = %if.end30
  %call35 = call i8* @strsep(i8** %p, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !4773
  store i8* %call35, i8** %field, align 8, !dbg !4774
  %33 = load i8*, i8** %field, align 8, !dbg !4775
  %tobool36 = icmp ne i8* %33, null, !dbg !4775
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !4777

if.then37:                                        ; preds = %if.end34
  br label %for.end117, !dbg !4778

if.end38:                                         ; preds = %if.end34
  %34 = load i8*, i8** %field, align 8, !dbg !4779
  %call39 = call i32 @kstrtou16(i8* %34, i32 16, i16* %pid) #7, !dbg !4781
  %tobool40 = icmp ne i32 %call39, 0, !dbg !4781
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4782

if.then41:                                        ; preds = %if.end38
  br label %for.end117, !dbg !4783

if.end42:                                         ; preds = %if.end38
  %call43 = call i8* @strsep(i8** %p, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !4784
  store i8* %call43, i8** %field, align 8, !dbg !4785
  %35 = load i8*, i8** %field, align 8, !dbg !4786
  %tobool44 = icmp ne i8* %35, null, !dbg !4786
  br i1 %tobool44, label %lor.lhs.false, label %if.then46, !dbg !4788

lor.lhs.false:                                    ; preds = %if.end42
  %36 = load i8*, i8** %field, align 8, !dbg !4789
  %37 = load i8, i8* %36, align 1, !dbg !4790
  %tobool45 = icmp ne i8 %37, 0, !dbg !4790
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !4791

if.then46:                                        ; preds = %lor.lhs.false, %if.end42
  br label %for.end117, !dbg !4792

if.end47:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %flags, align 4, !dbg !4793
  br label %for.cond48, !dbg !4795

for.cond48:                                       ; preds = %for.inc110, %if.end47
  %38 = load i8*, i8** %field, align 8, !dbg !4796
  %39 = load i8, i8* %38, align 1, !dbg !4798
  %tobool49 = icmp ne i8 %39, 0, !dbg !4799
  br i1 %tobool49, label %for.body50, label %for.end111, !dbg !4799

for.body50:                                       ; preds = %for.cond48
  %40 = load i8*, i8** %field, align 8, !dbg !4800
  %41 = load i8, i8* %40, align 1, !dbg !4802
  %conv51 = sext i8 %41 to i32, !dbg !4802
  switch i32 %conv51, label %sw.epilog [
    i32 97, label %sw.bb
    i32 98, label %sw.bb54
    i32 99, label %sw.bb58
    i32 100, label %sw.bb62
    i32 101, label %sw.bb66
    i32 102, label %sw.bb70
    i32 103, label %sw.bb74
    i32 104, label %sw.bb78
    i32 105, label %sw.bb82
    i32 106, label %sw.bb86
    i32 107, label %sw.bb90
    i32 108, label %sw.bb94
    i32 109, label %sw.bb98
    i32 110, label %sw.bb102
    i32 111, label %sw.bb106
  ], !dbg !4803

sw.bb:                                            ; preds = %for.body50
  %42 = load i32, i32* %flags, align 4, !dbg !4804
  %conv52 = zext i32 %42 to i64, !dbg !4804
  %or = or i64 %conv52, 1, !dbg !4804
  %conv53 = trunc i64 %or to i32, !dbg !4804
  store i32 %conv53, i32* %flags, align 4, !dbg !4804
  br label %sw.epilog, !dbg !4806

sw.bb54:                                          ; preds = %for.body50
  %43 = load i32, i32* %flags, align 4, !dbg !4807
  %conv55 = zext i32 %43 to i64, !dbg !4807
  %or56 = or i64 %conv55, 2, !dbg !4807
  %conv57 = trunc i64 %or56 to i32, !dbg !4807
  store i32 %conv57, i32* %flags, align 4, !dbg !4807
  br label %sw.epilog, !dbg !4808

sw.bb58:                                          ; preds = %for.body50
  %44 = load i32, i32* %flags, align 4, !dbg !4809
  %conv59 = zext i32 %44 to i64, !dbg !4809
  %or60 = or i64 %conv59, 4, !dbg !4809
  %conv61 = trunc i64 %or60 to i32, !dbg !4809
  store i32 %conv61, i32* %flags, align 4, !dbg !4809
  br label %sw.epilog, !dbg !4810

sw.bb62:                                          ; preds = %for.body50
  %45 = load i32, i32* %flags, align 4, !dbg !4811
  %conv63 = zext i32 %45 to i64, !dbg !4811
  %or64 = or i64 %conv63, 8, !dbg !4811
  %conv65 = trunc i64 %or64 to i32, !dbg !4811
  store i32 %conv65, i32* %flags, align 4, !dbg !4811
  br label %sw.epilog, !dbg !4812

sw.bb66:                                          ; preds = %for.body50
  %46 = load i32, i32* %flags, align 4, !dbg !4813
  %conv67 = zext i32 %46 to i64, !dbg !4813
  %or68 = or i64 %conv67, 16, !dbg !4813
  %conv69 = trunc i64 %or68 to i32, !dbg !4813
  store i32 %conv69, i32* %flags, align 4, !dbg !4813
  br label %sw.epilog, !dbg !4814

sw.bb70:                                          ; preds = %for.body50
  %47 = load i32, i32* %flags, align 4, !dbg !4815
  %conv71 = zext i32 %47 to i64, !dbg !4815
  %or72 = or i64 %conv71, 32, !dbg !4815
  %conv73 = trunc i64 %or72 to i32, !dbg !4815
  store i32 %conv73, i32* %flags, align 4, !dbg !4815
  br label %sw.epilog, !dbg !4816

sw.bb74:                                          ; preds = %for.body50
  %48 = load i32, i32* %flags, align 4, !dbg !4817
  %conv75 = zext i32 %48 to i64, !dbg !4817
  %or76 = or i64 %conv75, 64, !dbg !4817
  %conv77 = trunc i64 %or76 to i32, !dbg !4817
  store i32 %conv77, i32* %flags, align 4, !dbg !4817
  br label %sw.epilog, !dbg !4818

sw.bb78:                                          ; preds = %for.body50
  %49 = load i32, i32* %flags, align 4, !dbg !4819
  %conv79 = zext i32 %49 to i64, !dbg !4819
  %or80 = or i64 %conv79, 128, !dbg !4819
  %conv81 = trunc i64 %or80 to i32, !dbg !4819
  store i32 %conv81, i32* %flags, align 4, !dbg !4819
  br label %sw.epilog, !dbg !4820

sw.bb82:                                          ; preds = %for.body50
  %50 = load i32, i32* %flags, align 4, !dbg !4821
  %conv83 = zext i32 %50 to i64, !dbg !4821
  %or84 = or i64 %conv83, 256, !dbg !4821
  %conv85 = trunc i64 %or84 to i32, !dbg !4821
  store i32 %conv85, i32* %flags, align 4, !dbg !4821
  br label %sw.epilog, !dbg !4822

sw.bb86:                                          ; preds = %for.body50
  %51 = load i32, i32* %flags, align 4, !dbg !4823
  %conv87 = zext i32 %51 to i64, !dbg !4823
  %or88 = or i64 %conv87, 512, !dbg !4823
  %conv89 = trunc i64 %or88 to i32, !dbg !4823
  store i32 %conv89, i32* %flags, align 4, !dbg !4823
  br label %sw.epilog, !dbg !4824

sw.bb90:                                          ; preds = %for.body50
  %52 = load i32, i32* %flags, align 4, !dbg !4825
  %conv91 = zext i32 %52 to i64, !dbg !4825
  %or92 = or i64 %conv91, 1024, !dbg !4825
  %conv93 = trunc i64 %or92 to i32, !dbg !4825
  store i32 %conv93, i32* %flags, align 4, !dbg !4825
  br label %sw.epilog, !dbg !4826

sw.bb94:                                          ; preds = %for.body50
  %53 = load i32, i32* %flags, align 4, !dbg !4827
  %conv95 = zext i32 %53 to i64, !dbg !4827
  %or96 = or i64 %conv95, 2048, !dbg !4827
  %conv97 = trunc i64 %or96 to i32, !dbg !4827
  store i32 %conv97, i32* %flags, align 4, !dbg !4827
  br label %sw.epilog, !dbg !4828

sw.bb98:                                          ; preds = %for.body50
  %54 = load i32, i32* %flags, align 4, !dbg !4829
  %conv99 = zext i32 %54 to i64, !dbg !4829
  %or100 = or i64 %conv99, 4096, !dbg !4829
  %conv101 = trunc i64 %or100 to i32, !dbg !4829
  store i32 %conv101, i32* %flags, align 4, !dbg !4829
  br label %sw.epilog, !dbg !4830

sw.bb102:                                         ; preds = %for.body50
  %55 = load i32, i32* %flags, align 4, !dbg !4831
  %conv103 = zext i32 %55 to i64, !dbg !4831
  %or104 = or i64 %conv103, 8192, !dbg !4831
  %conv105 = trunc i64 %or104 to i32, !dbg !4831
  store i32 %conv105, i32* %flags, align 4, !dbg !4831
  br label %sw.epilog, !dbg !4832

sw.bb106:                                         ; preds = %for.body50
  %56 = load i32, i32* %flags, align 4, !dbg !4833
  %conv107 = zext i32 %56 to i64, !dbg !4833
  %or108 = or i64 %conv107, 16384, !dbg !4833
  %conv109 = trunc i64 %or108 to i32, !dbg !4833
  store i32 %conv109, i32* %flags, align 4, !dbg !4833
  br label %sw.epilog, !dbg !4834

sw.epilog:                                        ; preds = %for.body50, %sw.bb106, %sw.bb102, %sw.bb98, %sw.bb94, %sw.bb90, %sw.bb86, %sw.bb82, %sw.bb78, %sw.bb74, %sw.bb70, %sw.bb66, %sw.bb62, %sw.bb58, %sw.bb54, %sw.bb
  br label %for.inc110, !dbg !4835

for.inc110:                                       ; preds = %sw.epilog
  %57 = load i8*, i8** %field, align 8, !dbg !4836
  %incdec.ptr = getelementptr i8, i8* %57, i32 1, !dbg !4836
  store i8* %incdec.ptr, i8** %field, align 8, !dbg !4836
  br label %for.cond48, !dbg !4837, !llvm.loop !4838

for.end111:                                       ; preds = %for.cond48
  %58 = load %struct.quirk_entry*, %struct.quirk_entry** @quirk_list, align 8, !dbg !4840
  %59 = load i64, i64* %i, align 8, !dbg !4841
  %inc112 = add i64 %59, 1, !dbg !4841
  store i64 %inc112, i64* %i, align 8, !dbg !4841
  %arrayidx113 = getelementptr %struct.quirk_entry, %struct.quirk_entry* %58, i64 %59, !dbg !4840
  %vid114 = getelementptr inbounds %struct.quirk_entry, %struct.quirk_entry* %.compoundliteral, i32 0, i32 0, !dbg !4842
  %60 = load i16, i16* %vid, align 2, !dbg !4843
  store i16 %60, i16* %vid114, align 4, !dbg !4842
  %pid115 = getelementptr inbounds %struct.quirk_entry, %struct.quirk_entry* %.compoundliteral, i32 0, i32 1, !dbg !4842
  %61 = load i16, i16* %pid, align 2, !dbg !4844
  store i16 %61, i16* %pid115, align 2, !dbg !4842
  %flags116 = getelementptr inbounds %struct.quirk_entry, %struct.quirk_entry* %.compoundliteral, i32 0, i32 2, !dbg !4842
  %62 = load i32, i32* %flags, align 4, !dbg !4845
  store i32 %62, i32* %flags116, align 4, !dbg !4842
  %63 = bitcast %struct.quirk_entry* %arrayidx113 to i8*, !dbg !4846
  %64 = bitcast %struct.quirk_entry* %.compoundliteral to i8*, !dbg !4846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 8, i1 false), !dbg !4846
  br label %for.cond22, !dbg !4847, !llvm.loop !4848

for.end117:                                       ; preds = %if.then46, %if.then41, %if.then37, %if.then33, %if.then29, %land.end
  %65 = load i64, i64* %i, align 8, !dbg !4850
  %66 = load i32, i32* @quirk_count, align 4, !dbg !4852
  %conv118 = zext i32 %66 to i64, !dbg !4852
  %cmp119 = icmp ult i64 %65, %conv118, !dbg !4853
  br i1 %cmp119, label %if.then121, label %if.end123, !dbg !4854

if.then121:                                       ; preds = %for.end117
  %67 = load i64, i64* %i, align 8, !dbg !4855
  %conv122 = trunc i64 %67 to i32, !dbg !4855
  store i32 %conv122, i32* @quirk_count, align 4, !dbg !4856
  br label %if.end123, !dbg !4857

if.end123:                                        ; preds = %if.then121, %for.end117
  br label %unlock, !dbg !4852

unlock:                                           ; preds = %if.end123, %if.then6
  call void @llvm.dbg.label(metadata !4858), !dbg !4859
  call void @mutex_unlock(%struct.mutex* @quirk_mutex) #7, !dbg !4860
  %68 = load i8*, i8** %val, align 8, !dbg !4861
  call void @kfree(i8* %68) #7, !dbg !4862
  store i32 0, i32* %retval, align 4, !dbg !4863
  br label %return, !dbg !4863

return:                                           ; preds = %unlock, %if.then20, %if.then3, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !4864
  ret i32 %69, !dbg !4864
}

; Function Attrs: noredzone
declare dso_local i32 @param_get_string(i8*, %struct.kernel_param*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @param_set_copystring(i8*, %struct.kernel_param*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4865 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  %0 = load i64, i64* %n.addr, align 8, !dbg !4874
  %1 = load i64, i64* %size.addr, align 8, !dbg !4875
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4876
  %or = or i32 %2, 256, !dbg !4877
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !4878
  ret i8* %call, !dbg !4879
}

; Function Attrs: noredzone
declare dso_local i8* @strsep(i8**, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtou16(i8*, i32, i16*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4880 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4881, metadata !DIExpression()), !dbg !4885
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4894, metadata !DIExpression()), !dbg !4895
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4896, metadata !DIExpression()), !dbg !4897
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4898, metadata !DIExpression()), !dbg !4899
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4900, metadata !DIExpression()), !dbg !4904
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4906, metadata !DIExpression()), !dbg !4910
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4912, metadata !DIExpression()), !dbg !4916
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4921, metadata !DIExpression()), !dbg !4922
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4923, metadata !DIExpression()), !dbg !4924
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4925, metadata !DIExpression()), !dbg !4926
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4927, metadata !DIExpression()), !dbg !4928
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4929, metadata !DIExpression()), !dbg !4930
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4931, metadata !DIExpression()), !dbg !4932
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4933, metadata !DIExpression()), !dbg !4934
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4935, metadata !DIExpression()), !dbg !4936
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4941, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4943, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4945, metadata !DIExpression()), !dbg !4948
  %0 = load i64, i64* %n.addr, align 8, !dbg !4948
  store i64 %0, i64* %__a, align 8, !dbg !4948
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4949, metadata !DIExpression()), !dbg !4948
  %1 = load i64, i64* %size.addr, align 8, !dbg !4948
  store i64 %1, i64* %__b, align 8, !dbg !4948
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4950, metadata !DIExpression()), !dbg !4948
  store i64* %bytes, i64** %__d, align 8, !dbg !4948
  %cmp = icmp eq i64* %__a, %__b, !dbg !4948
  %conv = zext i1 %cmp to i32, !dbg !4948
  %2 = load i64*, i64** %__d, align 8, !dbg !4948
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4948
  %conv2 = zext i1 %cmp1 to i32, !dbg !4948
  %3 = load i64, i64* %__a, align 8, !dbg !4948
  %4 = load i64, i64* %__b, align 8, !dbg !4948
  %5 = load i64*, i64** %__d, align 8, !dbg !4948
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4948
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4948
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4948
  store i64 %8, i64* %5, align 8, !dbg !4948
  %frombool = zext i1 %7 to i8, !dbg !4948
  store i8 %frombool, i8* %tmp, align 1, !dbg !4948
  %9 = load i8, i8* %tmp, align 1, !dbg !4948
  %tobool = trunc i8 %9 to i1, !dbg !4948
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !4952
  %lnot = xor i1 %call, true, !dbg !4952
  %lnot3 = xor i1 %lnot, true, !dbg !4952
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4952
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4952
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4952
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4953

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4954
  br label %return, !dbg !4954

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4955
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4956
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4957

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4958
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4959
  br i1 %13, label %if.then6, label %if.end8, !dbg !4960

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4961
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4962
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4963
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #8, !dbg !4964
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4965

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4966
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4967
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4968

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4969
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4970
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4971
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !4972
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4930
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4973
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4974
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4975
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4976
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4977
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4978
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #10, !dbg !4979
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4979
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4979
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4979
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4979
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4980
  br label %kmalloc.exit, !dbg !4980

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4981
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4982
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4984

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4985
  br label %kmalloc_index.exit.i, !dbg !4985

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4986
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4988
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4989

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4990
  br label %kmalloc_index.exit.i, !dbg !4990

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4991
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4993
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4994

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4995
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4996
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4997

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5001
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5002

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5003
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5004
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5005

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5006
  br label %kmalloc_index.exit.i, !dbg !5006

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5007
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5009
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5010

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5011
  br label %kmalloc_index.exit.i, !dbg !5011

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5012
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5014
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5015

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5016
  br label %kmalloc_index.exit.i, !dbg !5016

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5017
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5019
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5020

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5021
  br label %kmalloc_index.exit.i, !dbg !5021

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5022
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5024
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5025

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5029
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5030

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5031
  br label %kmalloc_index.exit.i, !dbg !5031

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5032
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5034
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5035

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5036
  br label %kmalloc_index.exit.i, !dbg !5036

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5037
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5039
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5040

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5044
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5045

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5046
  br label %kmalloc_index.exit.i, !dbg !5046

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5047
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5049
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5050

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5051
  br label %kmalloc_index.exit.i, !dbg !5051

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5052
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5054
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5055

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5056
  br label %kmalloc_index.exit.i, !dbg !5056

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5057
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5059
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5060

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5061
  br label %kmalloc_index.exit.i, !dbg !5061

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5062
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5064
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5065

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5066
  br label %kmalloc_index.exit.i, !dbg !5066

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5067
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5069
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5070

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5071
  br label %kmalloc_index.exit.i, !dbg !5071

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5072
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5074
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5075

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5079
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5080

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5084
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5085

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5086
  br label %kmalloc_index.exit.i, !dbg !5086

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5089
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5090

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5091
  br label %kmalloc_index.exit.i, !dbg !5091

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5092
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5094
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5095

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5096
  br label %kmalloc_index.exit.i, !dbg !5096

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5097
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5099
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5100

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5101
  br label %kmalloc_index.exit.i, !dbg !5101

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5102
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5104
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5105

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5106
  br label %kmalloc_index.exit.i, !dbg !5106

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5107
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5109
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5110

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5111
  br label %kmalloc_index.exit.i, !dbg !5111

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5112
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5114
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5115

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5116
  br label %kmalloc_index.exit.i, !dbg !5116

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5117
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5119
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5120

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5121
  br label %kmalloc_index.exit.i, !dbg !5121

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5122
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5124
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5125

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5126
  br label %kmalloc_index.exit.i, !dbg !5126

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !5127, !srcloc !5130
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 208) #8, !dbg !5131, !srcloc !5134
  unreachable, !dbg !5135

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5136
  store i32 %59, i32* %index.i, align 4, !dbg !5137
  %60 = load i32, i32* %index.i, align 4, !dbg !5138
  %tobool.i = icmp ne i32 %60, 0, !dbg !5138
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5140

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5141
  br label %kmalloc.exit, !dbg !5141

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5142
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5143
  %and.i.i = and i32 %62, 17, !dbg !5143
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5143
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5143
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5143
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5143
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5145

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5146
  br label %kmalloc_type.exit.i, !dbg !5146

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5147
  %and2.i.i = and i32 %63, 1, !dbg !5148
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5147
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5147
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5147
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5149
  br label %kmalloc_type.exit.i, !dbg !5149

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5150
  %idxprom.i = zext i32 %65 to i64, !dbg !5151
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5151
  %66 = load i32, i32* %index.i, align 4, !dbg !5152
  %idxprom6.i = zext i32 %66 to i64, !dbg !5151
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5151
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5151
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5153
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5154
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5155
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5156
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #10, !dbg !5157
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5157
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5157
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5157
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !5157
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4899
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5158
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5159
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5160
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5161
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #10, !dbg !5162
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5163
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5164
  store i8* %76, i8** %retval.i, align 8, !dbg !5165
  br label %kmalloc.exit, !dbg !5165

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5166
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5167
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #10, !dbg !5168
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5168
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5168
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5168
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !5168
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5169
  br label %kmalloc.exit, !dbg !5169

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5170
  store i8* %79, i8** %retval, align 8, !dbg !5171
  br label %return, !dbg !5171

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5172
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5173
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !5174
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5174
  %maskedptr = and i64 %ptrint, 7, !dbg !5174
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5174
  call void @llvm.assume(i1 %maskcond), !dbg !5174
  store i8* %call9, i8** %retval, align 8, !dbg !5175
  br label %return, !dbg !5175

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5176
  ret i8* %82, !dbg !5176
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5177 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5183
  %tobool = trunc i8 %0 to i1, !dbg !5183
  %lnot = xor i1 %tobool, true, !dbg !5183
  %lnot1 = xor i1 %lnot, true, !dbg !5183
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5183
  %conv = sext i32 %lnot.ext to i64, !dbg !5183
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5183
  ret i1 %tobool2, !dbg !5184
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5185 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5189, metadata !DIExpression()), !dbg !5194
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5196, metadata !DIExpression()), !dbg !5197
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  %0 = load i64, i64* %size.addr, align 8, !dbg !5200
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5202
  br i1 %1, label %if.then, label %if.end447, !dbg !5203

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5204
  %tobool = icmp ne i64 %2, 0, !dbg !5204
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5207

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5208
  br label %return, !dbg !5208

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5209
  %cmp = icmp ult i64 %3, 4096, !dbg !5211
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5212

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5213
  br label %return, !dbg !5213

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub = sub i64 %4, 1, !dbg !5214
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5214
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5214

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub4 = sub i64 %6, 1, !dbg !5214
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5214
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5214

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub6 = sub i64 %8, 1, !dbg !5214
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5214
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5214

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5214

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub9 = sub i64 %9, 1, !dbg !5214
  %and = and i64 %sub9, -9223372036854775808, !dbg !5214
  %tobool10 = icmp ne i64 %and, 0, !dbg !5214
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5214

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5214

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub13 = sub i64 %10, 1, !dbg !5214
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5214
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5214
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5214

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5214

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub18 = sub i64 %11, 1, !dbg !5214
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5214
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5214
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5214

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5214

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub23 = sub i64 %12, 1, !dbg !5214
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5214
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5214
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5214

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5214

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub28 = sub i64 %13, 1, !dbg !5214
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5214
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5214
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5214

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5214

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub33 = sub i64 %14, 1, !dbg !5214
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5214
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5214
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5214

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5214

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub38 = sub i64 %15, 1, !dbg !5214
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5214
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5214
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5214

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5214

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub43 = sub i64 %16, 1, !dbg !5214
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5214
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5214
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5214

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5214

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub48 = sub i64 %17, 1, !dbg !5214
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5214
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5214
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5214

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5214

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub53 = sub i64 %18, 1, !dbg !5214
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5214
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5214
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5214

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5214

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub58 = sub i64 %19, 1, !dbg !5214
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5214
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5214
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5214

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5214

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub63 = sub i64 %20, 1, !dbg !5214
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5214
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5214
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5214

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5214

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub68 = sub i64 %21, 1, !dbg !5214
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5214
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5214
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5214

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5214

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub73 = sub i64 %22, 1, !dbg !5214
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5214
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5214
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5214

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5214

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub78 = sub i64 %23, 1, !dbg !5214
  %and79 = and i64 %sub78, 562949953421312, !dbg !5214
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5214
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5214

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5214

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub83 = sub i64 %24, 1, !dbg !5214
  %and84 = and i64 %sub83, 281474976710656, !dbg !5214
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5214
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5214

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5214

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub88 = sub i64 %25, 1, !dbg !5214
  %and89 = and i64 %sub88, 140737488355328, !dbg !5214
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5214
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5214

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5214

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub93 = sub i64 %26, 1, !dbg !5214
  %and94 = and i64 %sub93, 70368744177664, !dbg !5214
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5214
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5214

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5214

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub98 = sub i64 %27, 1, !dbg !5214
  %and99 = and i64 %sub98, 35184372088832, !dbg !5214
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5214
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5214

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5214

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub103 = sub i64 %28, 1, !dbg !5214
  %and104 = and i64 %sub103, 17592186044416, !dbg !5214
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5214
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5214

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5214

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub108 = sub i64 %29, 1, !dbg !5214
  %and109 = and i64 %sub108, 8796093022208, !dbg !5214
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5214
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5214

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5214

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub113 = sub i64 %30, 1, !dbg !5214
  %and114 = and i64 %sub113, 4398046511104, !dbg !5214
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5214
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5214

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5214

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub118 = sub i64 %31, 1, !dbg !5214
  %and119 = and i64 %sub118, 2199023255552, !dbg !5214
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5214
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5214

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5214

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub123 = sub i64 %32, 1, !dbg !5214
  %and124 = and i64 %sub123, 1099511627776, !dbg !5214
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5214
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5214

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5214

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub128 = sub i64 %33, 1, !dbg !5214
  %and129 = and i64 %sub128, 549755813888, !dbg !5214
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5214
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5214

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5214

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub133 = sub i64 %34, 1, !dbg !5214
  %and134 = and i64 %sub133, 274877906944, !dbg !5214
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5214
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5214

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5214

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub138 = sub i64 %35, 1, !dbg !5214
  %and139 = and i64 %sub138, 137438953472, !dbg !5214
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5214
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5214

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5214

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub143 = sub i64 %36, 1, !dbg !5214
  %and144 = and i64 %sub143, 68719476736, !dbg !5214
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5214
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5214

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5214

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub148 = sub i64 %37, 1, !dbg !5214
  %and149 = and i64 %sub148, 34359738368, !dbg !5214
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5214
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5214

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5214

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub153 = sub i64 %38, 1, !dbg !5214
  %and154 = and i64 %sub153, 17179869184, !dbg !5214
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5214
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5214

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5214

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub158 = sub i64 %39, 1, !dbg !5214
  %and159 = and i64 %sub158, 8589934592, !dbg !5214
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5214
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5214

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5214

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub163 = sub i64 %40, 1, !dbg !5214
  %and164 = and i64 %sub163, 4294967296, !dbg !5214
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5214
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5214

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5214

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub168 = sub i64 %41, 1, !dbg !5214
  %and169 = and i64 %sub168, 2147483648, !dbg !5214
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5214
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5214

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5214

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub173 = sub i64 %42, 1, !dbg !5214
  %and174 = and i64 %sub173, 1073741824, !dbg !5214
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5214
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5214

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5214

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub178 = sub i64 %43, 1, !dbg !5214
  %and179 = and i64 %sub178, 536870912, !dbg !5214
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5214
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5214

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5214

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub183 = sub i64 %44, 1, !dbg !5214
  %and184 = and i64 %sub183, 268435456, !dbg !5214
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5214
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5214

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5214

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub188 = sub i64 %45, 1, !dbg !5214
  %and189 = and i64 %sub188, 134217728, !dbg !5214
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5214
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5214

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5214

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub193 = sub i64 %46, 1, !dbg !5214
  %and194 = and i64 %sub193, 67108864, !dbg !5214
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5214
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5214

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5214

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub198 = sub i64 %47, 1, !dbg !5214
  %and199 = and i64 %sub198, 33554432, !dbg !5214
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5214
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5214

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5214

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub203 = sub i64 %48, 1, !dbg !5214
  %and204 = and i64 %sub203, 16777216, !dbg !5214
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5214
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5214

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5214

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub208 = sub i64 %49, 1, !dbg !5214
  %and209 = and i64 %sub208, 8388608, !dbg !5214
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5214
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5214

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5214

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub213 = sub i64 %50, 1, !dbg !5214
  %and214 = and i64 %sub213, 4194304, !dbg !5214
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5214
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5214

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5214

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub218 = sub i64 %51, 1, !dbg !5214
  %and219 = and i64 %sub218, 2097152, !dbg !5214
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5214
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5214

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5214

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub223 = sub i64 %52, 1, !dbg !5214
  %and224 = and i64 %sub223, 1048576, !dbg !5214
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5214
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5214

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5214

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub228 = sub i64 %53, 1, !dbg !5214
  %and229 = and i64 %sub228, 524288, !dbg !5214
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5214
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5214

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5214

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub233 = sub i64 %54, 1, !dbg !5214
  %and234 = and i64 %sub233, 262144, !dbg !5214
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5214
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5214

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5214

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub238 = sub i64 %55, 1, !dbg !5214
  %and239 = and i64 %sub238, 131072, !dbg !5214
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5214
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5214

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5214

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub243 = sub i64 %56, 1, !dbg !5214
  %and244 = and i64 %sub243, 65536, !dbg !5214
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5214
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5214

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5214

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub248 = sub i64 %57, 1, !dbg !5214
  %and249 = and i64 %sub248, 32768, !dbg !5214
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5214
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5214

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5214

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub253 = sub i64 %58, 1, !dbg !5214
  %and254 = and i64 %sub253, 16384, !dbg !5214
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5214
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5214

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5214

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub258 = sub i64 %59, 1, !dbg !5214
  %and259 = and i64 %sub258, 8192, !dbg !5214
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5214
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5214

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5214

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub263 = sub i64 %60, 1, !dbg !5214
  %and264 = and i64 %sub263, 4096, !dbg !5214
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5214
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5214

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5214

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub268 = sub i64 %61, 1, !dbg !5214
  %and269 = and i64 %sub268, 2048, !dbg !5214
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5214
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5214

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5214

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub273 = sub i64 %62, 1, !dbg !5214
  %and274 = and i64 %sub273, 1024, !dbg !5214
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5214
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5214

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5214

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub278 = sub i64 %63, 1, !dbg !5214
  %and279 = and i64 %sub278, 512, !dbg !5214
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5214
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5214

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5214

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub283 = sub i64 %64, 1, !dbg !5214
  %and284 = and i64 %sub283, 256, !dbg !5214
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5214
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5214

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5214

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub288 = sub i64 %65, 1, !dbg !5214
  %and289 = and i64 %sub288, 128, !dbg !5214
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5214
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5214

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5214

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub293 = sub i64 %66, 1, !dbg !5214
  %and294 = and i64 %sub293, 64, !dbg !5214
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5214
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5214

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5214

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub298 = sub i64 %67, 1, !dbg !5214
  %and299 = and i64 %sub298, 32, !dbg !5214
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5214
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5214

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5214

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub303 = sub i64 %68, 1, !dbg !5214
  %and304 = and i64 %sub303, 16, !dbg !5214
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5214
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5214

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5214

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub308 = sub i64 %69, 1, !dbg !5214
  %and309 = and i64 %sub308, 8, !dbg !5214
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5214
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5214

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5214

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub313 = sub i64 %70, 1, !dbg !5214
  %and314 = and i64 %sub313, 4, !dbg !5214
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5214
  %71 = zext i1 %tobool315 to i64, !dbg !5214
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5214
  br label %cond.end, !dbg !5214

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5214
  br label %cond.end317, !dbg !5214

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5214
  br label %cond.end319, !dbg !5214

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5214
  br label %cond.end321, !dbg !5214

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5214
  br label %cond.end323, !dbg !5214

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5214
  br label %cond.end325, !dbg !5214

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5214
  br label %cond.end327, !dbg !5214

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5214
  br label %cond.end329, !dbg !5214

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5214
  br label %cond.end331, !dbg !5214

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5214
  br label %cond.end333, !dbg !5214

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5214
  br label %cond.end335, !dbg !5214

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5214
  br label %cond.end337, !dbg !5214

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5214
  br label %cond.end339, !dbg !5214

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5214
  br label %cond.end341, !dbg !5214

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5214
  br label %cond.end343, !dbg !5214

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5214
  br label %cond.end345, !dbg !5214

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5214
  br label %cond.end347, !dbg !5214

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5214
  br label %cond.end349, !dbg !5214

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5214
  br label %cond.end351, !dbg !5214

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5214
  br label %cond.end353, !dbg !5214

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5214
  br label %cond.end355, !dbg !5214

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5214
  br label %cond.end357, !dbg !5214

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5214
  br label %cond.end359, !dbg !5214

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5214
  br label %cond.end361, !dbg !5214

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5214
  br label %cond.end363, !dbg !5214

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5214
  br label %cond.end365, !dbg !5214

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5214
  br label %cond.end367, !dbg !5214

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5214
  br label %cond.end369, !dbg !5214

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5214
  br label %cond.end371, !dbg !5214

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5214
  br label %cond.end373, !dbg !5214

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5214
  br label %cond.end375, !dbg !5214

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5214
  br label %cond.end377, !dbg !5214

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5214
  br label %cond.end379, !dbg !5214

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5214
  br label %cond.end381, !dbg !5214

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5214
  br label %cond.end383, !dbg !5214

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5214
  br label %cond.end385, !dbg !5214

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5214
  br label %cond.end387, !dbg !5214

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5214
  br label %cond.end389, !dbg !5214

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5214
  br label %cond.end391, !dbg !5214

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5214
  br label %cond.end393, !dbg !5214

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5214
  br label %cond.end395, !dbg !5214

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5214
  br label %cond.end397, !dbg !5214

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5214
  br label %cond.end399, !dbg !5214

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5214
  br label %cond.end401, !dbg !5214

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5214
  br label %cond.end403, !dbg !5214

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5214
  br label %cond.end405, !dbg !5214

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5214
  br label %cond.end407, !dbg !5214

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5214
  br label %cond.end409, !dbg !5214

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5214
  br label %cond.end411, !dbg !5214

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5214
  br label %cond.end413, !dbg !5214

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5214
  br label %cond.end415, !dbg !5214

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5214
  br label %cond.end417, !dbg !5214

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5214
  br label %cond.end419, !dbg !5214

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5214
  br label %cond.end421, !dbg !5214

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5214
  br label %cond.end423, !dbg !5214

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5214
  br label %cond.end425, !dbg !5214

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5214
  br label %cond.end427, !dbg !5214

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5214
  br label %cond.end429, !dbg !5214

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5214
  br label %cond.end431, !dbg !5214

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5214
  br label %cond.end433, !dbg !5214

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5214
  br label %cond.end435, !dbg !5214

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5214
  br label %cond.end437, !dbg !5214

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5214
  br label %cond.end440, !dbg !5214

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5214

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5214
  br label %cond.end444, !dbg !5214

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5214
  %sub443 = sub i64 %72, 1, !dbg !5214
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !5214
  br label %cond.end444, !dbg !5214

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5214
  %sub446 = sub i32 %cond445, 12, !dbg !5215
  %add = add i32 %sub446, 1, !dbg !5216
  store i32 %add, i32* %retval, align 4, !dbg !5217
  br label %return, !dbg !5217

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5218
  %dec = add i64 %73, -1, !dbg !5218
  store i64 %dec, i64* %size.addr, align 8, !dbg !5218
  %74 = load i64, i64* %size.addr, align 8, !dbg !5219
  %shr = lshr i64 %74, 12, !dbg !5219
  store i64 %shr, i64* %size.addr, align 8, !dbg !5219
  %75 = load i64, i64* %size.addr, align 8, !dbg !5220
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5197
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5221
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5222
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !5221, !srcloc !5223
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5221
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5224
  %add.i = add i32 %79, 1, !dbg !5225
  store i32 %add.i, i32* %retval, align 4, !dbg !5226
  br label %return, !dbg !5226

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5227
  ret i32 %80, !dbg !5227
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5228 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5189, metadata !DIExpression()), !dbg !5232
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5196, metadata !DIExpression()), !dbg !5234
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  %0 = load i64, i64* %n.addr, align 8, !dbg !5237
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5234
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5238
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5239
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !5238, !srcloc !5223
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5238
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5240
  %add.i = add i32 %4, 1, !dbg !5241
  %sub = sub i32 %add.i, 1, !dbg !5242
  ret i32 %sub, !dbg !5243
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5244 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5256
  ret i8* %0, !dbg !5257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @usb_match_any_interface(%struct.usb_device* %udev, %struct.usb_device_id* %id) #0 !dbg !5258 {
entry:
  %retval = alloca i1, align 1
  %udev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %i = alloca i32, align 4
  %cfg = alloca %struct.usb_host_config*, align 8
  %j = alloca i32, align 4
  %cache = alloca %struct.usb_interface_cache*, align 8
  %intf = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5265, metadata !DIExpression()), !dbg !5266
  store i32 0, i32* %i, align 4, !dbg !5267
  br label %for.cond, !dbg !5269

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5270
  %1 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5272
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5273
  %bNumConfigurations = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 13, !dbg !5274
  %2 = load i8, i8* %bNumConfigurations, align 1, !dbg !5274
  %conv = zext i8 %2 to i32, !dbg !5272
  %cmp = icmp ult i32 %0, %conv, !dbg !5275
  br i1 %cmp, label %for.body, label %for.end16, !dbg !5276

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.usb_host_config** %cfg, metadata !5277, metadata !DIExpression()), !dbg !5279
  %3 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5280
  %config = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 18, !dbg !5281
  %4 = load %struct.usb_host_config*, %struct.usb_host_config** %config, align 8, !dbg !5281
  %5 = load i32, i32* %i, align 4, !dbg !5282
  %idxprom = zext i32 %5 to i64, !dbg !5280
  %arrayidx = getelementptr %struct.usb_host_config, %struct.usb_host_config* %4, i64 %idxprom, !dbg !5280
  store %struct.usb_host_config* %arrayidx, %struct.usb_host_config** %cfg, align 8, !dbg !5279
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5283, metadata !DIExpression()), !dbg !5284
  store i32 0, i32* %j, align 4, !dbg !5285
  br label %for.cond2, !dbg !5287

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !dbg !5288
  %7 = load %struct.usb_host_config*, %struct.usb_host_config** %cfg, align 8, !dbg !5290
  %desc = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %7, i32 0, i32 0, !dbg !5291
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %desc, i32 0, i32 3, !dbg !5292
  %8 = load i8, i8* %bNumInterfaces, align 4, !dbg !5292
  %conv3 = zext i8 %8 to i32, !dbg !5290
  %cmp4 = icmp ult i32 %6, %conv3, !dbg !5293
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !5294

for.body6:                                        ; preds = %for.cond2
  call void @llvm.dbg.declare(metadata %struct.usb_interface_cache** %cache, metadata !5295, metadata !DIExpression()), !dbg !5297
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %intf, metadata !5298, metadata !DIExpression()), !dbg !5299
  %9 = load %struct.usb_host_config*, %struct.usb_host_config** %cfg, align 8, !dbg !5300
  %intf_cache = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %9, i32 0, i32 4, !dbg !5301
  %10 = load i32, i32* %j, align 4, !dbg !5302
  %idxprom7 = zext i32 %10 to i64, !dbg !5300
  %arrayidx8 = getelementptr [32 x %struct.usb_interface_cache*], [32 x %struct.usb_interface_cache*]* %intf_cache, i64 0, i64 %idxprom7, !dbg !5300
  %11 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %arrayidx8, align 8, !dbg !5300
  store %struct.usb_interface_cache* %11, %struct.usb_interface_cache** %cache, align 8, !dbg !5303
  %12 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %cache, align 8, !dbg !5304
  %num_altsetting = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %12, i32 0, i32 0, !dbg !5306
  %13 = load i32, i32* %num_altsetting, align 8, !dbg !5306
  %cmp9 = icmp eq i32 %13, 0, !dbg !5307
  br i1 %cmp9, label %if.then, label %if.end, !dbg !5308

if.then:                                          ; preds = %for.body6
  br label %for.inc, !dbg !5309

if.end:                                           ; preds = %for.body6
  %14 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %cache, align 8, !dbg !5310
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %14, i32 0, i32 2, !dbg !5311
  %arrayidx11 = getelementptr [0 x %struct.usb_host_interface], [0 x %struct.usb_host_interface]* %altsetting, i64 0, i64 0, !dbg !5310
  store %struct.usb_host_interface* %arrayidx11, %struct.usb_host_interface** %intf, align 8, !dbg !5312
  %15 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5313
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %intf, align 8, !dbg !5315
  %17 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5316
  %call = call i32 @usb_match_one_id_intf(%struct.usb_device* %15, %struct.usb_host_interface* %16, %struct.usb_device_id* %17) #7, !dbg !5317
  %tobool = icmp ne i32 %call, 0, !dbg !5317
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !5318

if.then12:                                        ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !5319
  br label %return, !dbg !5319

if.end13:                                         ; preds = %if.end
  br label %for.inc, !dbg !5320

for.inc:                                          ; preds = %if.end13, %if.then
  %18 = load i32, i32* %j, align 4, !dbg !5321
  %inc = add i32 %18, 1, !dbg !5321
  store i32 %inc, i32* %j, align 4, !dbg !5321
  br label %for.cond2, !dbg !5322, !llvm.loop !5323

for.end:                                          ; preds = %for.cond2
  br label %for.inc14, !dbg !5325

for.inc14:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4, !dbg !5326
  %inc15 = add i32 %19, 1, !dbg !5326
  store i32 %inc15, i32* %i, align 4, !dbg !5326
  br label %for.cond, !dbg !5327, !llvm.loop !5328

for.end16:                                        ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !5330
  br label %return, !dbg !5330

return:                                           ; preds = %for.end16, %if.then12
  %20 = load i1, i1* %retval, align 1, !dbg !5331
  ret i1 %20, !dbg !5331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %bus) #0 !dbg !5332 {
entry:
  %bus.addr = alloca %struct.usb_bus*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_hcd*, align 8
  store %struct.usb_bus* %bus, %struct.usb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_bus** %bus.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5337, metadata !DIExpression()), !dbg !5339
  %0 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !5339
  %1 = bitcast %struct.usb_bus* %0 to i8*, !dbg !5339
  store i8* %1, i8** %__mptr, align 8, !dbg !5339
  br label %do.body, !dbg !5339

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5340

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5339
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5339
  %3 = bitcast i8* %add.ptr to %struct.usb_hcd*, !dbg !5339
  store %struct.usb_hcd* %3, %struct.usb_hcd** %tmp, align 8, !dbg !5340
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %tmp, align 8, !dbg !5339
  ret %struct.usb_hcd* %4, !dbg !5342
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4419, !4420, !4421, !4422}
!llvm.ident = !{!4423}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_quirks", scope: !2, file: !3, line: 169, type: !4416, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !157, globals: !4306, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/quirks.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !18, !27, !34, !39, !45, !51, !60, !68, !74, !80, !87, !95, !101, !115, !122, !127, !132, !139, !145, !151}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !6, line: 1156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !6, line: 1146, baseType: !7, size: 32, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !28, line: 15, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !35, line: 65, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !40, line: 16, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !46, line: 54, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !52, line: 296, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!58 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!59 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !61, line: 9, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65, !66, !67}
!63 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!67 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !69, line: 26, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !75, line: 44, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!79 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !81, line: 343, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !88, line: 524, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!94 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !88, line: 502, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !102, line: 76, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!104 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!108 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!110 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!111 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!112 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!113 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!114 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !116, line: 96, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!119 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!121 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !116, line: 476, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 10, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131}
!130 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !133, line: 305, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!134 = !{!135, !136, !137, !138}
!135 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !140, line: 11, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !6, line: 1181, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!150 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !152, line: 75, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!157 = !{!158, !160, !161, !165, !824, !3798}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !159, line: 148, baseType: !7)
!159 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !162, line: 21, baseType: !163)
!162 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !164, line: 27, baseType: !7)
!164 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !152, line: 81, size: 4672, elements: !167)
!167 = !{!168, !4051, !4052, !4053, !4054, !4058, !4059, !4114, !4115, !4116, !4237, !4240, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4261, !4262, !4263, !4291, !4292, !4294, !4295, !4296, !4297, !4301, !4302, !4305}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !166, file: !152, line: 86, baseType: !169, size: 960)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !116, line: 424, size: 960, elements: !170)
!170 = !{!171, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3759, !4046, !4047, !4048, !4049, !4050}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !169, file: !116, line: 425, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !81, line: 461, size: 5568, elements: !174)
!174 = !{!175, !3196, !3197, !3200, !3201, !3252, !3343, !3344, !3345, !3346, !3347, !3356, !3461, !3474, !3669, !3670, !3674, !3676, !3677, !3678, !3682, !3688, !3689, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3730, !3731, !3732, !3735, !3738, !3739, !3740, !3741}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !173, file: !81, line: 462, baseType: !176, size: 512)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !177, line: 64, size: 512, elements: !178)
!177 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !183, !189, !191, !252, !3047, !3186, !3191, !3192, !3193, !3194, !3195}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !177, line: 65, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !176, file: !177, line: 66, baseType: !184, size: 128, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !159, line: 178, size: 128, elements: !185)
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !159, line: 179, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !159, line: 179, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !177, line: 67, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !176, file: !177, line: 68, baseType: !192, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !177, line: 192, size: 704, elements: !194)
!194 = !{!195, !196, !212, !213}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !193, file: !177, line: 193, baseType: !184, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !193, file: !177, line: 194, baseType: !197, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !198, line: 83, baseType: !199)
!198 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !198, line: 71, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !198, line: 72, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !198, line: 72, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !202, file: !198, line: 73, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !198, line: 20, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !205, file: !198, line: 21, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !209, line: 25, baseType: !210)
!209 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 25, elements: !211)
!211 = !{}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !193, file: !177, line: 195, baseType: !176, size: 512, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !193, file: !177, line: 196, baseType: !214, size: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !177, line: 156, size: 192, elements: !217)
!217 = !{!218, !224, !229}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !216, file: !177, line: 157, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !192, !190}
!223 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !177, line: 158, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!180, !192, !190}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !216, file: !177, line: 159, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!223, !192, !190, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !177, line: 148, size: 20736, elements: !236)
!236 = !{!237, !242, !246, !247, !251}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !235, file: !177, line: 149, baseType: !238, size: 192)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 192, elements: !240)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!240 = !{!241}
!241 = !DISubrange(count: 3)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !235, file: !177, line: 150, baseType: !243, size: 4096, offset: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 4096, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !235, file: !177, line: 151, baseType: !223, size: 32, offset: 4288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !235, file: !177, line: 152, baseType: !248, size: 16384, offset: 4320)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 16384, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 2048)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !235, file: !177, line: 153, baseType: !223, size: 32, offset: 20704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !176, file: !177, line: 69, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !177, line: 138, size: 448, elements: !255)
!255 = !{!256, !260, !290, !292, !3009, !3037, !3041}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !254, file: !177, line: 139, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !190}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !254, file: !177, line: 140, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !264, line: 230, size: 128, elements: !265)
!264 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !282}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !263, file: !264, line: 231, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !190, !275, !239}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !159, line: 60, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !272, line: 73, baseType: !273)
!272 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !272, line: 15, baseType: !274)
!274 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !264, line: 30, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !264, line: 31, baseType: !180, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !276, file: !264, line: 32, baseType: !280, size: 16, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !159, line: 19, baseType: !281)
!281 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !263, file: !264, line: 232, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!270, !190, !275, !180, !286}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 55, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !272, line: 72, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !272, line: 16, baseType: !289)
!289 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !254, file: !177, line: 141, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !254, file: !177, line: 142, baseType: !293, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !264, line: 84, size: 320, elements: !297)
!297 = !{!298, !299, !303, !3006, !3007}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !264, line: 85, baseType: !180, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !296, file: !264, line: 86, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!280, !190, !275, !223}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !296, file: !264, line: 88, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!280, !190, !307, !223}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !264, line: 168, size: 448, elements: !309)
!309 = !{!310, !311, !312, !313, !3001, !3002}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !308, file: !264, line: 169, baseType: !276, size: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !264, line: 170, baseType: !286, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !308, file: !264, line: 171, baseType: !160, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !308, file: !264, line: 172, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!270, !317, !190, !307, !239, !492, !286}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !52, line: 916, size: 1856, align: 32, elements: !319)
!319 = !{!320, !338, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2984, !2985, !2994, !2995, !2996, !2997, !2998, !2999, !3000}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !318, file: !52, line: 920, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !52, line: 917, size: 128, elements: !322)
!322 = !{!323, !329}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !321, file: !52, line: 918, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !325, line: 58, size: 64, elements: !326)
!325 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !325, line: 59, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !321, file: !52, line: 919, baseType: !330, size: 128, align: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !159, line: 216, size: 128, align: 64, elements: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !159, line: 217, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !330, file: !159, line: 218, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !333}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !318, file: !52, line: 921, baseType: !339, size: 128, offset: 128)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !340, line: 8, size: 128, elements: !341)
!340 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!341 = !{!342, !346}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !339, file: !340, line: 9, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !345, line: 18, flags: DIFlagFwdDecl)
!345 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !339, file: !340, line: 10, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !345, line: 89, size: 1536, elements: !349)
!349 = !{!350, !351, !361, !369, !370, !389, !2934, !2936, !2948, !2949, !2950, !2951, !2952, !2958, !2959, !2960}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !348, file: !345, line: 91, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !348, file: !345, line: 92, baseType: !352, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !353, line: 277, baseType: !354)
!353 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !353, line: 277, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !354, file: !353, line: 277, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !353, line: 70, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !353, line: 65, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !358, file: !353, line: 66, baseType: !7, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !348, file: !345, line: 93, baseType: !362, size: 128, offset: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !363, line: 38, size: 128, elements: !364)
!363 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !363, line: 39, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !362, file: !363, line: 39, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !348, file: !345, line: 94, baseType: !347, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !348, file: !345, line: 95, baseType: !371, size: 128, offset: 256)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !345, line: 47, size: 128, elements: !372)
!372 = !{!373, !385}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !345, line: 48, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !345, line: 48, size: 64, elements: !375)
!375 = !{!376, !381}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !345, line: 49, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !345, line: 49, size: 64, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !377, file: !345, line: 50, baseType: !161, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !377, file: !345, line: 50, baseType: !161, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !374, file: !345, line: 52, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !162, line: 23, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !164, line: 31, baseType: !384)
!384 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !345, line: 54, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !348, file: !345, line: 96, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !52, line: 610, size: 4224, elements: !392)
!392 = !{!393, !394, !395, !403, !410, !411, !559, !2645, !2646, !2647, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2910, !2918, !2919, !2920, !2930, !2931, !2932, !2933}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !391, file: !52, line: 611, baseType: !280, size: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !391, file: !52, line: 612, baseType: !281, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !391, file: !52, line: 613, baseType: !396, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !397, line: 23, baseType: !398)
!397 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 21, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !397, line: 22, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !159, line: 32, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !272, line: 49, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !391, file: !52, line: 614, baseType: !404, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !397, line: 28, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 26, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !397, line: 27, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !159, line: 33, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !272, line: 50, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !391, file: !52, line: 615, baseType: !7, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !391, file: !52, line: 622, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !52, line: 1864, size: 1536, align: 512, elements: !415)
!415 = !{!416, !420, !433, !437, !443, !447, !453, !457, !461, !465, !469, !470, !476, !480, !506, !535, !539, !545, !550, !554, !555}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !414, file: !52, line: 1865, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!347, !390, !347, !7}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !414, file: !52, line: 1866, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!180, !347, !390, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !426, line: 10, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !425, file: !426, line: 11, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !160}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !425, file: !426, line: 12, baseType: !160, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !414, file: !52, line: 1867, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!223, !390, !223}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !414, file: !52, line: 1868, baseType: !438, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !390, !223}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !52, line: 581, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !414, file: !52, line: 1870, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!223, !347, !239, !223}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !414, file: !52, line: 1872, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!223, !390, !347, !280, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !159, line: 30, baseType: !452)
!452 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !414, file: !52, line: 1873, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!223, !347, !390, !347}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !414, file: !52, line: 1874, baseType: !458, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!223, !390, !347}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !414, file: !52, line: 1875, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!223, !390, !347, !180}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !414, file: !52, line: 1876, baseType: !466, size: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!223, !390, !347, !280}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !414, file: !52, line: 1877, baseType: !458, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !414, file: !52, line: 1878, baseType: !471, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!223, !390, !347, !280, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !159, line: 16, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !159, line: 13, baseType: !161)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !414, file: !52, line: 1879, baseType: !477, size: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!223, !390, !347, !390, !347, !7}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !414, file: !52, line: 1881, baseType: !481, size: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!223, !347, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !52, line: 219, size: 640, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !495, !503, !504, !505}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !485, file: !52, line: 220, baseType: !7, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !485, file: !52, line: 221, baseType: !280, size: 16, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !485, file: !52, line: 222, baseType: !396, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !485, file: !52, line: 223, baseType: !404, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !485, file: !52, line: 224, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !159, line: 46, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !272, line: 88, baseType: !494)
!494 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !485, file: !52, line: 225, baseType: !496, size: 128, offset: 192)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !497, line: 13, size: 128, elements: !498)
!497 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !496, file: !497, line: 14, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !497, line: 8, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !164, line: 30, baseType: !494)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !496, file: !497, line: 15, baseType: !274, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !485, file: !52, line: 226, baseType: !496, size: 128, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !485, file: !52, line: 227, baseType: !496, size: 128, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !485, file: !52, line: 234, baseType: !317, size: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !414, file: !52, line: 1882, baseType: !507, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!223, !510, !512, !161, !7}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !514, line: 22, size: 1152, elements: !515)
!514 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !517, !518, !519, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !513, file: !514, line: 23, baseType: !161, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !513, file: !514, line: 24, baseType: !280, size: 16, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !513, file: !514, line: 25, baseType: !7, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !513, file: !514, line: 26, baseType: !520, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !159, line: 104, baseType: !161)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !513, file: !514, line: 27, baseType: !382, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !513, file: !514, line: 28, baseType: !382, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !513, file: !514, line: 37, baseType: !382, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !513, file: !514, line: 38, baseType: !474, size: 32, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !513, file: !514, line: 39, baseType: !474, size: 32, offset: 352)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !513, file: !514, line: 40, baseType: !396, size: 32, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !513, file: !514, line: 41, baseType: !404, size: 32, offset: 416)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !513, file: !514, line: 42, baseType: !492, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !513, file: !514, line: 43, baseType: !496, size: 128, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !513, file: !514, line: 44, baseType: !496, size: 128, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !513, file: !514, line: 45, baseType: !496, size: 128, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !513, file: !514, line: 46, baseType: !496, size: 128, offset: 896)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !513, file: !514, line: 47, baseType: !382, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !513, file: !514, line: 48, baseType: !382, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !414, file: !52, line: 1883, baseType: !536, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!270, !347, !239, !286}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !414, file: !52, line: 1884, baseType: !540, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!223, !390, !543, !382, !382}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !52, line: 50, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !414, file: !52, line: 1886, baseType: !546, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!223, !390, !549, !223}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !414, file: !52, line: 1887, baseType: !551, size: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!223, !390, !347, !317, !7, !280}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !414, file: !52, line: 1890, baseType: !466, size: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !414, file: !52, line: 1891, baseType: !556, size: 64, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!223, !390, !441, !223}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !391, file: !52, line: 623, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !52, line: 1416, size: 9472, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !618, !2252, !2334, !2417, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2433, !2437, !2438, !2441, !2442, !2445, !2446, !2447, !2488, !2515, !2516, !2517, !2518, !2519, !2520, !2523, !2525, !2532, !2533, !2535, !2536, !2537, !2596, !2597, !2612, !2613, !2614, !2615, !2616, !2619, !2620, !2621, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !561, file: !52, line: 1417, baseType: !184, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !561, file: !52, line: 1418, baseType: !474, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !561, file: !52, line: 1419, baseType: !388, size: 8, offset: 160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !561, file: !52, line: 1420, baseType: !289, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !561, file: !52, line: 1421, baseType: !492, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !561, file: !52, line: 1422, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !52, line: 2228, size: 576, elements: !571)
!571 = !{!572, !573, !574, !581, !585, !589, !593, !597, !598, !608, !611, !612, !613, !615, !616, !617}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !52, line: 2229, baseType: !180, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !570, file: !52, line: 2230, baseType: !223, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !570, file: !52, line: 2238, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!223, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !580, line: 28, flags: DIFlagFwdDecl)
!580 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !570, file: !52, line: 2239, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !52, line: 70, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !570, file: !52, line: 2240, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!347, !569, !223, !180, !160}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !570, file: !52, line: 2242, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !560}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !570, file: !52, line: 2243, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !596, line: 76, flags: DIFlagFwdDecl)
!596 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !52, line: 2244, baseType: !569, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !570, file: !52, line: 2245, baseType: !599, size: 64, offset: 512)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !159, line: 182, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !599, file: !159, line: 183, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !159, line: 186, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !159, line: 187, baseType: !602, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !603, file: !159, line: 187, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !570, file: !52, line: 2247, baseType: !609, offset: 576)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !610, line: 187, elements: !211)
!610 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !570, file: !52, line: 2248, baseType: !609, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !570, file: !52, line: 2249, baseType: !609, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !570, file: !52, line: 2250, baseType: !614, offset: 576)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, elements: !240)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !570, file: !52, line: 2252, baseType: !609, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !570, file: !52, line: 2253, baseType: !609, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !570, file: !52, line: 2254, baseType: !609, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !561, file: !52, line: 1423, baseType: !619, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !52, line: 1935, size: 1472, elements: !622)
!622 = !{!623, !627, !631, !632, !636, !642, !646, !647, !648, !652, !656, !657, !658, !659, !665, !670, !671, !678, !679, !680, !681, !2236, !2251}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !621, file: !52, line: 1936, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!390, !560}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !621, file: !52, line: 1937, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !390}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !621, file: !52, line: 1938, baseType: !628, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !621, file: !52, line: 1940, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !390, !223}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !621, file: !52, line: 1941, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!223, !390, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !52, line: 289, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !621, file: !52, line: 1942, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!223, !390}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !621, file: !52, line: 1943, baseType: !628, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !621, file: !52, line: 1944, baseType: !590, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !621, file: !52, line: 1945, baseType: !649, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!223, !560, !223}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !621, file: !52, line: 1946, baseType: !653, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!223, !560}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !621, file: !52, line: 1947, baseType: !653, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !621, file: !52, line: 1948, baseType: !653, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !621, file: !52, line: 1949, baseType: !653, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !621, file: !52, line: 1950, baseType: !660, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!223, !347, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !52, line: 57, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !621, file: !52, line: 1951, baseType: !666, size: 64, offset: 896)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!223, !560, !669, !239}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !621, file: !52, line: 1952, baseType: !590, size: 64, offset: 960)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !621, file: !52, line: 1954, baseType: !672, size: 64, offset: 1024)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!223, !675, !347}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !677, line: 539, flags: DIFlagFwdDecl)
!677 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!678 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !621, file: !52, line: 1955, baseType: !672, size: 64, offset: 1088)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !621, file: !52, line: 1956, baseType: !672, size: 64, offset: 1152)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !621, file: !52, line: 1957, baseType: !672, size: 64, offset: 1216)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !621, file: !52, line: 1963, baseType: !682, size: 64, offset: 1280)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!223, !560, !685, !158}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !687, line: 68, size: 512, align: 128, elements: !688)
!687 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690, !2228, !2235}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 69, baseType: !289, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 77, baseType: !691, size: 320, offset: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 77, size: 320, elements: !692)
!692 = !{!693, !880, !885, !913, !921, !927, !2220, !2227}
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 78, baseType: !694, size: 320)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 78, size: 320, elements: !695)
!695 = !{!696, !697, !878, !879}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !694, file: !687, line: 84, baseType: !184, size: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !694, file: !687, line: 86, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !52, line: 451, size: 1216, align: 64, elements: !700)
!700 = !{!701, !702, !709, !710, !715, !730, !746, !747, !748, !749, !871, !872, !875, !876, !877}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !699, file: !52, line: 452, baseType: !390, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !699, file: !52, line: 453, baseType: !703, size: 128, offset: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !704, line: 292, size: 128, elements: !705)
!704 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !707, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !703, file: !704, line: 293, baseType: !197)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !703, file: !704, line: 295, baseType: !158, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !703, file: !704, line: 296, baseType: !160, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !699, file: !52, line: 454, baseType: !158, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !699, file: !52, line: 455, baseType: !711, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !159, line: 168, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 166, size: 32, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !712, file: !159, line: 167, baseType: !223, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !699, file: !52, line: 460, baseType: !716, size: 128, offset: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !717, line: 125, size: 128, elements: !718)
!717 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !729}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !716, file: !717, line: 126, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !717, line: 31, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !720, file: !717, line: 32, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !717, line: 24, size: 192, align: 64, elements: !725)
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !724, file: !717, line: 25, baseType: !289, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !724, file: !717, line: 26, baseType: !723, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !724, file: !717, line: 27, baseType: !723, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !716, file: !717, line: 127, baseType: !723, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !699, file: !52, line: 461, baseType: !731, size: 256, offset: 384)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !732, line: 35, size: 256, elements: !733)
!732 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !742, !743, !745}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 36, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !736, line: 13, baseType: !737)
!736 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !159, line: 175, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 173, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !738, file: !159, line: 174, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !162, line: 22, baseType: !501)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !731, file: !732, line: 42, baseType: !735, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !731, file: !732, line: 46, baseType: !744, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !198, line: 29, baseType: !205)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !731, file: !732, line: 47, baseType: !184, size: 128, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !699, file: !52, line: 462, baseType: !289, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !699, file: !52, line: 463, baseType: !289, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !699, file: !52, line: 464, baseType: !289, size: 64, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !699, file: !52, line: 465, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !52, line: 367, size: 1408, elements: !753)
!753 = !{!754, !758, !762, !766, !770, !774, !780, !786, !790, !795, !799, !803, !807, !835, !839, !845, !846, !847, !851, !856, !860, !867}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !752, file: !52, line: 368, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!223, !685, !640}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !752, file: !52, line: 369, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!223, !317, !685}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !752, file: !52, line: 372, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!223, !698, !640}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !752, file: !52, line: 375, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!223, !685}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !752, file: !52, line: 381, baseType: !771, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!223, !317, !698, !187, !7}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !752, file: !52, line: 383, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !52, line: 290, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !752, file: !52, line: 385, baseType: !781, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!223, !317, !698, !492, !7, !7, !784, !785}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !752, file: !52, line: 388, baseType: !787, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!223, !317, !698, !492, !7, !7, !685, !160}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !752, file: !52, line: 393, baseType: !791, size: 64, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!794, !698, !794}
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !159, line: 125, baseType: !382)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !752, file: !52, line: 394, baseType: !796, size: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !685, !7, !7}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !752, file: !52, line: 395, baseType: !800, size: 64, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!223, !685, !158}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !752, file: !52, line: 396, baseType: !804, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !685}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !752, file: !52, line: 397, baseType: !808, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!270, !811, !833}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !52, line: 320, size: 384, elements: !813)
!813 = !{!814, !815, !816, !820, !821, !822, !825, !826}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !812, file: !52, line: 321, baseType: !317, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !812, file: !52, line: 326, baseType: !492, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !812, file: !52, line: 327, baseType: !817, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !811, !274, !274}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !812, file: !52, line: 328, baseType: !160, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !812, file: !52, line: 329, baseType: !223, size: 32, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !812, file: !52, line: 330, baseType: !823, size: 16, offset: 288)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !162, line: 19, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !164, line: 24, baseType: !281)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !812, file: !52, line: 331, baseType: !823, size: 16, offset: 304)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !52, line: 332, baseType: !827, size: 64, offset: 320)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !812, file: !52, line: 332, size: 64, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !827, file: !52, line: 333, baseType: !7, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !827, file: !52, line: 334, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !52, line: 334, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !52, line: 64, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !752, file: !52, line: 402, baseType: !836, size: 64, offset: 832)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!223, !698, !685, !685, !27}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !752, file: !52, line: 404, baseType: !840, size: 64, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!451, !685, !843}
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !844, line: 305, baseType: !7)
!844 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !752, file: !52, line: 405, baseType: !804, size: 64, offset: 960)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !752, file: !52, line: 406, baseType: !767, size: 64, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !752, file: !52, line: 407, baseType: !848, size: 64, offset: 1088)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!223, !685, !289, !289}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !752, file: !52, line: 409, baseType: !852, size: 64, offset: 1152)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !685, !855, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !752, file: !52, line: 410, baseType: !857, size: 64, offset: 1216)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!223, !698, !685}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !752, file: !52, line: 413, baseType: !861, size: 64, offset: 1280)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!223, !864, !317, !866}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !52, line: 61, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !752, file: !52, line: 415, baseType: !868, size: 64, offset: 1344)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !317}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !52, line: 466, baseType: !289, size: 64, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !699, file: !52, line: 467, baseType: !873, size: 32, offset: 960)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !874, line: 8, baseType: !161)
!874 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!875 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !699, file: !52, line: 468, baseType: !197, offset: 992)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !699, file: !52, line: 469, baseType: !184, size: 128, offset: 1024)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !699, file: !52, line: 470, baseType: !160, size: 64, offset: 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !694, file: !687, line: 87, baseType: !289, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !694, file: !687, line: 94, baseType: !289, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 96, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 96, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !881, file: !687, line: 101, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !159, line: 143, baseType: !382)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 103, baseType: !886, size: 320)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 103, size: 320, elements: !887)
!887 = !{!888, !898, !901, !902}
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !687, line: 104, baseType: !889, size: 128)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !687, line: 104, size: 128, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !889, file: !687, line: 105, baseType: !184, size: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !687, line: 106, baseType: !893, size: 128)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !687, line: 106, size: 128, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !893, file: !687, line: 107, baseType: !685, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !893, file: !687, line: 109, baseType: !223, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !893, file: !687, line: 110, baseType: !223, size: 32, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !886, file: !687, line: 117, baseType: !899, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !687, line: 117, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !886, file: !687, line: 119, baseType: !160, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !687, line: 120, baseType: !903, size: 64, offset: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !687, line: 120, size: 64, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !903, file: !687, line: 121, baseType: !160, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !903, file: !687, line: 122, baseType: !289, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !687, line: 123, baseType: !908, size: 32)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !903, file: !687, line: 123, size: 32, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !908, file: !687, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !908, file: !687, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !908, file: !687, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 130, baseType: !914, size: 192)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 130, size: 192, elements: !915)
!915 = !{!916, !917, !918, !919, !920}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !914, file: !687, line: 131, baseType: !289, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !914, file: !687, line: 134, baseType: !388, size: 8, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !914, file: !687, line: 135, baseType: !388, size: 8, offset: 72)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !914, file: !687, line: 136, baseType: !711, size: 32, offset: 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !914, file: !687, line: 137, baseType: !7, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 139, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 139, size: 256, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !922, file: !687, line: 140, baseType: !289, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !922, file: !687, line: 141, baseType: !711, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !922, file: !687, line: 143, baseType: !184, size: 128, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 145, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 145, size: 256, elements: !929)
!929 = !{!930, !931, !933, !934, !2219}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !928, file: !687, line: 146, baseType: !289, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !928, file: !687, line: 147, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !677, line: 509, baseType: !685)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !928, file: !687, line: 148, baseType: !289, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !687, line: 149, baseType: !935, size: 64, offset: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !687, line: 149, size: 64, elements: !936)
!936 = !{!937, !2218}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !935, file: !687, line: 150, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !687, line: 388, size: 7296, elements: !940)
!940 = !{!941, !2214}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !687, line: 389, baseType: !942, size: 7296)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !687, line: 389, size: 7296, elements: !943)
!943 = !{!944, !982, !983, !984, !988, !989, !990, !991, !992, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1033, !1041, !1044, !1090, !1091, !2198, !2199, !2202, !2203, !2204, !2207, !2208, !2209, !2212, !2213}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !942, file: !687, line: 390, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !687, line: 305, size: 1472, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !962, !963, !968, !969, !972, !976, !977, !978, !979, !980}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !946, file: !687, line: 308, baseType: !289, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !946, file: !687, line: 309, baseType: !289, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !946, file: !687, line: 313, baseType: !945, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !946, file: !687, line: 313, baseType: !945, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !946, file: !687, line: 315, baseType: !724, size: 192, align: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !946, file: !687, line: 323, baseType: !289, size: 64, offset: 448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !946, file: !687, line: 327, baseType: !938, size: 64, offset: 512)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !946, file: !687, line: 333, baseType: !956, size: 64, offset: 576)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !677, line: 284, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !677, line: 284, size: 64, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !957, file: !677, line: 284, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !961, line: 19, baseType: !289)
!961 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !946, file: !687, line: 334, baseType: !289, size: 64, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !946, file: !687, line: 343, baseType: !964, size: 256, offset: 704)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !687, line: 340, size: 256, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !964, file: !687, line: 341, baseType: !724, size: 192, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !964, file: !687, line: 342, baseType: !289, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !946, file: !687, line: 351, baseType: !184, size: 128, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !946, file: !687, line: 353, baseType: !970, size: 64, offset: 1088)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !687, line: 353, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !946, file: !687, line: 356, baseType: !973, size: 64, offset: 1152)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !687, line: 356, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !946, file: !687, line: 359, baseType: !289, size: 64, offset: 1216)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !946, file: !687, line: 361, baseType: !317, size: 64, offset: 1280)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !946, file: !687, line: 362, baseType: !160, size: 64, offset: 1344)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !946, file: !687, line: 365, baseType: !735, size: 64, offset: 1408)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !946, file: !687, line: 373, baseType: !981, offset: 1472)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !687, line: 296, elements: !211)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !942, file: !687, line: 391, baseType: !720, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !942, file: !687, line: 392, baseType: !382, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !942, file: !687, line: 394, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!289, !317, !289, !289, !289, !289}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !942, file: !687, line: 398, baseType: !289, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !942, file: !687, line: 399, baseType: !289, size: 64, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !942, file: !687, line: 405, baseType: !289, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !942, file: !687, line: 406, baseType: !289, size: 64, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !942, file: !687, line: 407, baseType: !993, size: 64, offset: 512)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !677, line: 286, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 286, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !995, file: !677, line: 286, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !961, line: 18, baseType: !289)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !942, file: !687, line: 416, baseType: !711, size: 32, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !942, file: !687, line: 428, baseType: !711, size: 32, offset: 608)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !942, file: !687, line: 437, baseType: !711, size: 32, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !942, file: !687, line: 447, baseType: !711, size: 32, offset: 672)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !942, file: !687, line: 450, baseType: !735, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !942, file: !687, line: 452, baseType: !223, size: 32, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !942, file: !687, line: 454, baseType: !197, offset: 800)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !942, file: !687, line: 457, baseType: !731, size: 256, offset: 832)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !942, file: !687, line: 459, baseType: !184, size: 128, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !942, file: !687, line: 466, baseType: !289, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !942, file: !687, line: 467, baseType: !289, size: 64, offset: 1280)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !942, file: !687, line: 469, baseType: !289, size: 64, offset: 1344)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !942, file: !687, line: 470, baseType: !289, size: 64, offset: 1408)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !942, file: !687, line: 471, baseType: !737, size: 64, offset: 1472)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !942, file: !687, line: 472, baseType: !289, size: 64, offset: 1536)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !942, file: !687, line: 473, baseType: !289, size: 64, offset: 1600)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !942, file: !687, line: 474, baseType: !289, size: 64, offset: 1664)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !942, file: !687, line: 475, baseType: !289, size: 64, offset: 1728)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !942, file: !687, line: 477, baseType: !197, offset: 1792)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !942, file: !687, line: 478, baseType: !289, size: 64, offset: 1792)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !942, file: !687, line: 478, baseType: !289, size: 64, offset: 1856)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !942, file: !687, line: 478, baseType: !289, size: 64, offset: 1920)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !942, file: !687, line: 478, baseType: !289, size: 64, offset: 1984)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !942, file: !687, line: 479, baseType: !289, size: 64, offset: 2048)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !942, file: !687, line: 479, baseType: !289, size: 64, offset: 2112)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !942, file: !687, line: 479, baseType: !289, size: 64, offset: 2176)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !942, file: !687, line: 480, baseType: !289, size: 64, offset: 2240)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !942, file: !687, line: 480, baseType: !289, size: 64, offset: 2304)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !942, file: !687, line: 480, baseType: !289, size: 64, offset: 2368)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !942, file: !687, line: 480, baseType: !289, size: 64, offset: 2432)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !942, file: !687, line: 482, baseType: !1030, size: 2816, offset: 2496)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 2816, elements: !1031)
!1031 = !{!1032}
!1032 = !DISubrange(count: 44)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !942, file: !687, line: 488, baseType: !1034, size: 256, offset: 5312)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1035, line: 60, size: 256, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1034, file: !1035, line: 61, baseType: !1038, size: 256)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 256, elements: !1039)
!1039 = !{!1040}
!1040 = !DISubrange(count: 4)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !942, file: !687, line: 490, baseType: !1042, size: 64, offset: 5568)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !687, line: 490, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !942, file: !687, line: 493, baseType: !1045, size: 896, offset: 5632)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1046, line: 53, baseType: !1047)
!1046 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1046, line: 13, size: 896, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1055, !1056, !1063, !1064, !1084, !1085, !1086}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1047, file: !1046, line: 18, baseType: !382, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1047, file: !1046, line: 28, baseType: !737, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1047, file: !1046, line: 31, baseType: !731, size: 256, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1047, file: !1046, line: 32, baseType: !1053, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1046, line: 32, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1047, file: !1046, line: 37, baseType: !281, size: 16, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1047, file: !1046, line: 40, baseType: !1057, size: 192, offset: 512)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1058, line: 53, size: 192, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1057, file: !1058, line: 54, baseType: !735, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1057, file: !1058, line: 55, baseType: !197, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1057, file: !1058, line: 59, baseType: !184, size: 128, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1047, file: !1046, line: 41, baseType: !160, size: 64, offset: 704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1047, file: !1046, line: 42, baseType: !1065, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1068, line: 13, size: 896, elements: !1069)
!1068 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1067, file: !1068, line: 14, baseType: !160, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1067, file: !1068, line: 15, baseType: !289, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1067, file: !1068, line: 17, baseType: !289, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1067, file: !1068, line: 17, baseType: !289, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1067, file: !1068, line: 19, baseType: !274, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1067, file: !1068, line: 21, baseType: !274, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1067, file: !1068, line: 22, baseType: !274, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1067, file: !1068, line: 23, baseType: !274, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1067, file: !1068, line: 24, baseType: !274, size: 64, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1067, file: !1068, line: 25, baseType: !274, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1067, file: !1068, line: 26, baseType: !274, size: 64, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1067, file: !1068, line: 27, baseType: !274, size: 64, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1067, file: !1068, line: 28, baseType: !274, size: 64, offset: 768)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1067, file: !1068, line: 29, baseType: !274, size: 64, offset: 832)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1047, file: !1046, line: 44, baseType: !711, size: 32, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1047, file: !1046, line: 50, baseType: !823, size: 16, offset: 864)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1047, file: !1046, line: 51, baseType: !1087, size: 16, offset: 880)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !162, line: 18, baseType: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !164, line: 23, baseType: !1089)
!1089 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !687, line: 495, baseType: !289, size: 64, offset: 6528)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !942, file: !687, line: 497, baseType: !1092, size: 64, offset: 6592)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !687, line: 381, size: 384, elements: !1094)
!1094 = !{!1095, !1096, !2197}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1093, file: !687, line: 382, baseType: !711, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1093, file: !687, line: 383, baseType: !1097, size: 128, offset: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !687, line: 376, size: 128, elements: !1098)
!1098 = !{!1099, !2195}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1097, file: !687, line: 377, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1102, line: 640, size: 48640, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !{!1104, !1110, !1112, !1113, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1130, !1148, !1159, !1244, !1245, !1246, !1257, !1258, !1260, !1261, !1262, !1263, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1342, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1380, !1382, !1383, !1384, !1396, !1397, !1398, !1399, !1400, !1401, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1425, !1430, !1614, !1615, !1616, !1617, !1621, !1624, !1627, !1630, !1633, !1636, !1737, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1783, !1784, !1785, !1786, !1787, !1792, !1793, !1794, !1797, !1798, !1801, !1804, !1807, !1810, !1853, !1856, !1857, !1936, !1937, !1940, !1941, !1944, !1945, !1946, !1950, !1951, !1952, !1965, !1966, !1967, !1977, !1982, !1985, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1101, file: !1102, line: 646, baseType: !1105, size: 128)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1106, line: 56, size: 128, elements: !1107)
!1106 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1105, file: !1106, line: 57, baseType: !289, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1105, file: !1106, line: 58, baseType: !161, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1101, file: !1102, line: 649, baseType: !1111, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !274)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1101, file: !1102, line: 657, baseType: !160, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1101, file: !1102, line: 658, baseType: !1114, size: 32, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1115, line: 113, baseType: !1116)
!1115 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1115, line: 111, size: 32, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1116, file: !1115, line: 112, baseType: !711, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !1102, line: 660, baseType: !7, size: 32, offset: 288)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1101, file: !1102, line: 661, baseType: !7, size: 32, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1101, file: !1102, line: 684, baseType: !223, size: 32, offset: 352)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1101, file: !1102, line: 686, baseType: !223, size: 32, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1101, file: !1102, line: 687, baseType: !223, size: 32, offset: 416)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1101, file: !1102, line: 688, baseType: !223, size: 32, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1101, file: !1102, line: 689, baseType: !7, size: 32, offset: 480)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1101, file: !1102, line: 691, baseType: !1127, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1102, line: 691, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1101, file: !1102, line: 692, baseType: !1131, size: 832, offset: 576)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1102, line: 451, size: 832, elements: !1132)
!1132 = !{!1133, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1131, file: !1102, line: 453, baseType: !1134, size: 128)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1102, line: 325, size: 128, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1134, file: !1102, line: 326, baseType: !289, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1134, file: !1102, line: 327, baseType: !161, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1131, file: !1102, line: 454, baseType: !724, size: 192, align: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1131, file: !1102, line: 455, baseType: !184, size: 128, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1131, file: !1102, line: 456, baseType: !7, size: 32, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1131, file: !1102, line: 458, baseType: !382, size: 64, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1131, file: !1102, line: 459, baseType: !382, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1131, file: !1102, line: 460, baseType: !382, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1131, file: !1102, line: 461, baseType: !382, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1131, file: !1102, line: 463, baseType: !382, size: 64, offset: 768)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1131, file: !1102, line: 465, baseType: !1147, offset: 832)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1102, line: 415, elements: !211)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1101, file: !1102, line: 693, baseType: !1149, size: 384, offset: 1408)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1102, line: 489, size: 384, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1149, file: !1102, line: 490, baseType: !184, size: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1149, file: !1102, line: 491, baseType: !289, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1149, file: !1102, line: 492, baseType: !289, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1149, file: !1102, line: 493, baseType: !7, size: 32, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1149, file: !1102, line: 494, baseType: !281, size: 16, offset: 288)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1149, file: !1102, line: 495, baseType: !281, size: 16, offset: 304)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1149, file: !1102, line: 497, baseType: !1158, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1101, file: !1102, line: 697, baseType: !1160, size: 1792, offset: 1792)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1102, line: 507, size: 1792, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1241, !1242}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1160, file: !1102, line: 508, baseType: !724, size: 192, align: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1160, file: !1102, line: 515, baseType: !382, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1160, file: !1102, line: 516, baseType: !382, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1160, file: !1102, line: 517, baseType: !382, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1160, file: !1102, line: 518, baseType: !382, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1160, file: !1102, line: 519, baseType: !382, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1160, file: !1102, line: 526, baseType: !741, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1160, file: !1102, line: 527, baseType: !382, size: 64, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1160, file: !1102, line: 528, baseType: !7, size: 32, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1160, file: !1102, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1160, file: !1102, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1160, file: !1102, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1160, file: !1102, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1160, file: !1102, line: 563, baseType: !1176, size: 512, offset: 704)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !35, line: 118, size: 512, elements: !1177)
!1177 = !{!1178, !1186, !1187, !1192, !1235, !1238, !1239, !1240}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1176, file: !35, line: 119, baseType: !1179, size: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1180, line: 9, size: 256, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1179, file: !1180, line: 10, baseType: !724, size: 192, align: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1179, file: !1180, line: 11, baseType: !1184, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1185, line: 29, baseType: !741)
!1185 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1176, file: !35, line: 120, baseType: !1184, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1176, file: !35, line: 121, baseType: !1188, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!34, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1176, file: !35, line: 122, baseType: !1193, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !35, line: 159, size: 512, align: 512, elements: !1195)
!1195 = !{!1196, !1216, !1217, !1220, !1225, !1226, !1230, !1234}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1194, file: !35, line: 160, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !35, line: 214, size: 4608, align: 512, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1198, file: !35, line: 215, baseType: !744)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1198, file: !35, line: 216, baseType: !7, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1198, file: !35, line: 217, baseType: !7, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1198, file: !35, line: 218, baseType: !7, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1198, file: !35, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1198, file: !35, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1198, file: !35, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1198, file: !35, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1198, file: !35, line: 233, baseType: !1184, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1198, file: !35, line: 234, baseType: !1191, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1198, file: !35, line: 235, baseType: !1184, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1198, file: !35, line: 236, baseType: !1191, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1198, file: !35, line: 237, baseType: !1213, size: 4096, offset: 512)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 4096, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 8)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1194, file: !35, line: 161, baseType: !7, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1194, file: !35, line: 162, baseType: !1218, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !159, line: 27, baseType: !1219)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !272, line: 96, baseType: !223)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1194, file: !35, line: 163, baseType: !1221, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !353, line: 276, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !353, line: 276, size: 32, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1222, file: !353, line: 276, baseType: !357, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1194, file: !35, line: 164, baseType: !1191, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1194, file: !35, line: 165, baseType: !1227, size: 128, offset: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1180, line: 14, size: 128, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1227, file: !1180, line: 15, baseType: !716, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1194, file: !35, line: 166, baseType: !1231, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1184}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1194, file: !35, line: 167, baseType: !1184, size: 64, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1176, file: !35, line: 123, baseType: !1236, size: 8, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !162, line: 17, baseType: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !164, line: 21, baseType: !388)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1176, file: !35, line: 124, baseType: !1236, size: 8, offset: 456)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1176, file: !35, line: 125, baseType: !1236, size: 8, offset: 464)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1176, file: !35, line: 126, baseType: !1236, size: 8, offset: 472)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1160, file: !1102, line: 572, baseType: !1176, size: 512, offset: 1216)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1160, file: !1102, line: 580, baseType: !1243, size: 64, offset: 1728)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1101, file: !1102, line: 721, baseType: !7, size: 32, offset: 3584)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1101, file: !1102, line: 722, baseType: !223, size: 32, offset: 3616)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1101, file: !1102, line: 723, baseType: !1247, size: 64, offset: 3648)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1250, line: 17, baseType: !1251)
!1250 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1250, line: 17, size: 64, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1251, file: !1250, line: 17, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 64, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 1)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1101, file: !1102, line: 724, baseType: !1249, size: 64, offset: 3712)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1101, file: !1102, line: 749, baseType: !1259, offset: 3776)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1102, line: 290, elements: !211)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1101, file: !1102, line: 751, baseType: !184, size: 128, offset: 3776)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1101, file: !1102, line: 757, baseType: !938, size: 64, offset: 3904)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1101, file: !1102, line: 758, baseType: !938, size: 64, offset: 3968)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1101, file: !1102, line: 761, baseType: !1264, size: 320, offset: 4032)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1035, line: 34, size: 320, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1264, file: !1035, line: 35, baseType: !382, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1264, file: !1035, line: 36, baseType: !1268, size: 256, offset: 64)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 256, elements: !1039)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1101, file: !1102, line: 766, baseType: !223, size: 32, offset: 4352)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1101, file: !1102, line: 767, baseType: !223, size: 32, offset: 4384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1101, file: !1102, line: 768, baseType: !223, size: 32, offset: 4416)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1101, file: !1102, line: 770, baseType: !223, size: 32, offset: 4448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1101, file: !1102, line: 772, baseType: !289, size: 64, offset: 4480)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1101, file: !1102, line: 775, baseType: !7, size: 32, offset: 4544)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1101, file: !1102, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1101, file: !1102, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1101, file: !1102, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1101, file: !1102, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1101, file: !1102, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1101, file: !1102, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1101, file: !1102, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1101, file: !1102, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1101, file: !1102, line: 831, baseType: !289, size: 64, offset: 4672)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1101, file: !1102, line: 833, baseType: !1285, size: 384, offset: 4736)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !40, line: 25, size: 384, elements: !1286)
!1286 = !{!1287, !1292}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1285, file: !40, line: 26, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!274, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !40, line: 27, baseType: !1293, size: 320, offset: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !40, line: 27, size: 320, elements: !1294)
!1294 = !{!1295, !1305, !1332}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1293, file: !40, line: 36, baseType: !1296, size: 320)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !40, line: 29, size: 320, elements: !1297)
!1297 = !{!1298, !1300, !1301, !1302, !1303, !1304}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1296, file: !40, line: 30, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1296, file: !40, line: 31, baseType: !161, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1296, file: !40, line: 32, baseType: !161, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1296, file: !40, line: 33, baseType: !161, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1296, file: !40, line: 34, baseType: !382, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1296, file: !40, line: 35, baseType: !1299, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1293, file: !40, line: 46, baseType: !1306, size: 192)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !40, line: 38, size: 192, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1331}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1306, file: !40, line: 39, baseType: !1218, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1306, file: !40, line: 40, baseType: !39, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !40, line: 41, baseType: !1311, size: 64, offset: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !40, line: 41, size: 64, elements: !1312)
!1312 = !{!1313, !1321}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1311, file: !40, line: 42, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1316, line: 7, size: 128, elements: !1317)
!1316 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !{!1318, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1315, file: !1316, line: 8, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !272, line: 93, baseType: !494)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1315, file: !1316, line: 9, baseType: !494, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1311, file: !40, line: 43, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1324, line: 7, size: 64, elements: !1325)
!1324 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326, !1330}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1323, file: !1324, line: 8, baseType: !1327, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1324, line: 5, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !162, line: 20, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !164, line: 26, baseType: !223)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1323, file: !1324, line: 9, baseType: !1328, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1306, file: !40, line: 45, baseType: !382, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1293, file: !40, line: 54, baseType: !1333, size: 256)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !40, line: 48, size: 256, elements: !1334)
!1334 = !{!1335, !1338, !1339, !1340, !1341}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1333, file: !40, line: 49, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !40, line: 14, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1333, file: !40, line: 50, baseType: !223, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1333, file: !40, line: 51, baseType: !223, size: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1333, file: !40, line: 52, baseType: !289, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1333, file: !40, line: 53, baseType: !289, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1101, file: !1102, line: 835, baseType: !1343, size: 32, offset: 5120)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !159, line: 22, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !272, line: 28, baseType: !223)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1101, file: !1102, line: 836, baseType: !1343, size: 32, offset: 5152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1101, file: !1102, line: 840, baseType: !289, size: 64, offset: 5184)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1101, file: !1102, line: 849, baseType: !1100, size: 64, offset: 5248)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1101, file: !1102, line: 852, baseType: !1100, size: 64, offset: 5312)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1101, file: !1102, line: 857, baseType: !184, size: 128, offset: 5376)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1101, file: !1102, line: 858, baseType: !184, size: 128, offset: 5504)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1101, file: !1102, line: 859, baseType: !1100, size: 64, offset: 5632)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1101, file: !1102, line: 867, baseType: !184, size: 128, offset: 5696)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1101, file: !1102, line: 868, baseType: !184, size: 128, offset: 5824)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1101, file: !1102, line: 871, baseType: !1355, size: 64, offset: 5952)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !61, line: 59, size: 768, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1363, !1364, !1371, !1372}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1356, file: !61, line: 61, baseType: !1114, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1356, file: !61, line: 62, baseType: !7, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !61, line: 63, baseType: !197, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1356, file: !61, line: 65, baseType: !1362, size: 256, offset: 64)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 256, elements: !1039)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1356, file: !61, line: 66, baseType: !599, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1356, file: !61, line: 68, baseType: !1365, size: 128, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1366, line: 40, baseType: !1367)
!1366 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1366, line: 36, size: 128, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1367, file: !1366, line: 37, baseType: !197)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1367, file: !1366, line: 38, baseType: !184, size: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1356, file: !61, line: 69, baseType: !330, size: 128, align: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1356, file: !61, line: 70, baseType: !1373, size: 128, offset: 640)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 128, elements: !1255)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !61, line: 54, size: 128, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1374, file: !61, line: 55, baseType: !223, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1374, file: !61, line: 56, baseType: !1378, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !61, line: 56, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1101, file: !1102, line: 872, baseType: !1381, size: 512, offset: 6016)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 512, elements: !1039)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1101, file: !1102, line: 873, baseType: !184, size: 128, offset: 6528)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1101, file: !1102, line: 874, baseType: !184, size: 128, offset: 6656)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1101, file: !1102, line: 876, baseType: !1385, size: 64, offset: 6784)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1387, line: 26, size: 192, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1386, file: !1387, line: 27, baseType: !7, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1386, file: !1387, line: 28, baseType: !1391, size: 128, offset: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1392, line: 43, size: 128, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !1392, line: 44, baseType: !744)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1391, file: !1392, line: 45, baseType: !184, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1101, file: !1102, line: 879, baseType: !669, size: 64, offset: 6848)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1101, file: !1102, line: 882, baseType: !669, size: 64, offset: 6912)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1101, file: !1102, line: 884, baseType: !382, size: 64, offset: 6976)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1101, file: !1102, line: 885, baseType: !382, size: 64, offset: 7040)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1101, file: !1102, line: 890, baseType: !382, size: 64, offset: 7104)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1101, file: !1102, line: 891, baseType: !1402, size: 128, offset: 7168)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1102, line: 242, size: 128, elements: !1403)
!1403 = !{!1404, !1405, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1402, file: !1102, line: 244, baseType: !382, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1402, file: !1102, line: 245, baseType: !382, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1402, file: !1102, line: 246, baseType: !744, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1101, file: !1102, line: 900, baseType: !289, size: 64, offset: 7296)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1101, file: !1102, line: 901, baseType: !289, size: 64, offset: 7360)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1101, file: !1102, line: 904, baseType: !382, size: 64, offset: 7424)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1101, file: !1102, line: 907, baseType: !382, size: 64, offset: 7488)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1101, file: !1102, line: 910, baseType: !289, size: 64, offset: 7552)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1101, file: !1102, line: 911, baseType: !289, size: 64, offset: 7616)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1101, file: !1102, line: 914, baseType: !1414, size: 640, offset: 7680)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1415, line: 123, size: 640, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1423, !1424}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1414, file: !1415, line: 124, baseType: !1418, size: 576)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 576, elements: !240)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1415, line: 108, size: 192, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1419, file: !1415, line: 109, baseType: !382, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1419, file: !1415, line: 110, baseType: !1227, size: 128, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1414, file: !1415, line: 125, baseType: !7, size: 32, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1414, file: !1415, line: 126, baseType: !7, size: 32, offset: 608)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1101, file: !1102, line: 917, baseType: !1426, size: 192, offset: 8320)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1415, line: 134, size: 192, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1426, file: !1415, line: 135, baseType: !330, size: 128, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1426, file: !1415, line: 136, baseType: !7, size: 32, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1101, file: !1102, line: 923, baseType: !1431, size: 64, offset: 8512)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1434, line: 111, size: 1280, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1455, !1456, !1457, !1458, !1459, !1460, !1567, !1568, !1569, !1570, !1596, !1599, !1609}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1433, file: !1434, line: 112, baseType: !711, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1433, file: !1434, line: 120, baseType: !396, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1433, file: !1434, line: 121, baseType: !404, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1433, file: !1434, line: 122, baseType: !396, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1433, file: !1434, line: 123, baseType: !404, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1433, file: !1434, line: 124, baseType: !396, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1433, file: !1434, line: 125, baseType: !404, size: 32, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1433, file: !1434, line: 126, baseType: !396, size: 32, offset: 224)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1433, file: !1434, line: 127, baseType: !404, size: 32, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1433, file: !1434, line: 128, baseType: !7, size: 32, offset: 288)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1433, file: !1434, line: 129, baseType: !1447, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1448, line: 26, baseType: !1449)
!1448 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1448, line: 24, size: 64, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1449, file: !1448, line: 25, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 2)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1433, file: !1434, line: 130, baseType: !1447, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1433, file: !1434, line: 131, baseType: !1447, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1433, file: !1434, line: 132, baseType: !1447, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1433, file: !1434, line: 133, baseType: !1447, size: 64, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1433, file: !1434, line: 135, baseType: !388, size: 8, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1433, file: !1434, line: 137, baseType: !1461, size: 64, offset: 704)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1463, line: 189, size: 1664, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1464 = !{!1465, !1466, !1469, !1474, !1475, !1478, !1479, !1484, !1485, !1486, !1487, !1489, !1490, !1491, !1492, !1493, !1531, !1552}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1462, file: !1463, line: 190, baseType: !1114, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1462, file: !1463, line: 191, baseType: !1467, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1463, line: 28, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !159, line: 98, baseType: !1328)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 192, baseType: !1470, size: 192, offset: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 192, size: 192, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1470, file: !1463, line: 193, baseType: !184, size: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1470, file: !1463, line: 194, baseType: !724, size: 192, align: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1462, file: !1463, line: 199, baseType: !731, size: 256, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1462, file: !1463, line: 200, baseType: !1476, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1463, line: 200, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1462, file: !1463, line: 201, baseType: !160, size: 64, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 202, baseType: !1480, size: 64, offset: 640)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 202, size: 64, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1480, file: !1463, line: 203, baseType: !500, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1480, file: !1463, line: 204, baseType: !500, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1462, file: !1463, line: 206, baseType: !500, size: 64, offset: 704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1462, file: !1463, line: 207, baseType: !396, size: 32, offset: 768)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1462, file: !1463, line: 208, baseType: !404, size: 32, offset: 800)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1462, file: !1463, line: 209, baseType: !1488, size: 32, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1463, line: 31, baseType: !520)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1462, file: !1463, line: 210, baseType: !281, size: 16, offset: 864)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1462, file: !1463, line: 211, baseType: !281, size: 16, offset: 880)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1462, file: !1463, line: 215, baseType: !1089, size: 16, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !1463, line: 222, baseType: !289, size: 64, offset: 960)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 239, baseType: !1494, size: 320, offset: 1024)
!1494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 239, size: 320, elements: !1495)
!1495 = !{!1496, !1523}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1494, file: !1463, line: 240, baseType: !1497, size: 320)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1463, line: 108, size: 320, elements: !1498)
!1498 = !{!1499, !1500, !1512, !1515, !1522}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1497, file: !1463, line: 110, baseType: !289, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1463, line: 111, baseType: !1501, size: 64, offset: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1463, line: 111, size: 64, elements: !1502)
!1502 = !{!1503, !1511}
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1463, line: 112, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !1463, line: 112, size: 64, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1504, file: !1463, line: 114, baseType: !823, size: 16)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1504, file: !1463, line: 115, baseType: !1508, size: 48, offset: 16)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !1509)
!1509 = !{!1510}
!1510 = !DISubrange(count: 6)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1501, file: !1463, line: 121, baseType: !289, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1497, file: !1463, line: 123, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1463, line: 96, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1497, file: !1463, line: 124, baseType: !1516, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1463, line: 102, size: 192, elements: !1518)
!1518 = !{!1519, !1520, !1521}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1517, file: !1463, line: 103, baseType: !330, size: 128, align: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1517, file: !1463, line: 104, baseType: !1114, size: 32, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1517, file: !1463, line: 105, baseType: !451, size: 8, offset: 160)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1497, file: !1463, line: 125, baseType: !180, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1494, file: !1463, line: 241, baseType: !1524, size: 320)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1494, file: !1463, line: 241, size: 320, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1524, file: !1463, line: 242, baseType: !289, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1524, file: !1463, line: 243, baseType: !289, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1524, file: !1463, line: 244, baseType: !1513, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1524, file: !1463, line: 245, baseType: !1516, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1524, file: !1463, line: 246, baseType: !239, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 254, baseType: !1532, size: 256, offset: 1344)
!1532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 254, size: 256, elements: !1533)
!1533 = !{!1534, !1540}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1532, file: !1463, line: 255, baseType: !1535, size: 256)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1463, line: 128, size: 256, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1535, file: !1463, line: 129, baseType: !160, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1535, file: !1463, line: 130, baseType: !1539, size: 256)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !1039)
!1540 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1463, line: 256, baseType: !1541, size: 256)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1532, file: !1463, line: 256, size: 256, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1541, file: !1463, line: 258, baseType: !184, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1541, file: !1463, line: 259, baseType: !1545, size: 128, offset: 128)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1546, line: 22, size: 128, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !{!1548, !1551}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1545, file: !1546, line: 23, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1546, line: 23, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1545, file: !1546, line: 24, baseType: !289, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1462, file: !1463, line: 274, baseType: !1553, size: 64, offset: 1600)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1463, line: 170, size: 192, elements: !1555)
!1555 = !{!1556, !1565, !1566}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1554, file: !1463, line: 171, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1463, line: 165, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!223, !1461, !1561, !1563, !1461}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1554, file: !1463, line: 172, baseType: !1461, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1554, file: !1463, line: 173, baseType: !1513, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1433, file: !1434, line: 138, baseType: !1461, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1433, file: !1434, line: 139, baseType: !1461, size: 64, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1433, file: !1434, line: 140, baseType: !1461, size: 64, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1433, file: !1434, line: 145, baseType: !1571, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1573, line: 13, size: 896, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1572, file: !1573, line: 14, baseType: !1114, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1572, file: !1573, line: 15, baseType: !711, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1572, file: !1573, line: 16, baseType: !711, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1572, file: !1573, line: 21, baseType: !735, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1572, file: !1573, line: 27, baseType: !289, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1572, file: !1573, line: 28, baseType: !289, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1572, file: !1573, line: 29, baseType: !735, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1572, file: !1573, line: 32, baseType: !603, size: 128, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1572, file: !1573, line: 33, baseType: !396, size: 32, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1572, file: !1573, line: 37, baseType: !735, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1572, file: !1573, line: 44, baseType: !1586, size: 256, offset: 640)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1587, line: 15, size: 256, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1586, file: !1587, line: 16, baseType: !744)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1586, file: !1587, line: 18, baseType: !223, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1586, file: !1587, line: 19, baseType: !223, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1586, file: !1587, line: 20, baseType: !223, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1586, file: !1587, line: 21, baseType: !223, size: 32, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1586, file: !1587, line: 22, baseType: !289, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1586, file: !1587, line: 23, baseType: !289, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1433, file: !1434, line: 146, baseType: !1597, size: 64, offset: 1024)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !397, line: 18, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1433, file: !1434, line: 147, baseType: !1600, size: 64, offset: 1088)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1434, line: 25, size: 64, elements: !1602)
!1602 = !{!1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1601, file: !1434, line: 26, baseType: !711, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1601, file: !1434, line: 27, baseType: !223, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1601, file: !1434, line: 28, baseType: !1606, offset: 64)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, elements: !1607)
!1607 = !{!1608}
!1608 = !DISubrange(count: 0)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1434, line: 149, baseType: !1610, size: 128, offset: 1152)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1434, line: 149, size: 128, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1610, file: !1434, line: 150, baseType: !223, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1610, file: !1434, line: 151, baseType: !330, size: 128, align: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1101, file: !1102, line: 926, baseType: !1431, size: 64, offset: 8576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1101, file: !1102, line: 929, baseType: !1431, size: 64, offset: 8640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1101, file: !1102, line: 933, baseType: !1461, size: 64, offset: 8704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1101, file: !1102, line: 943, baseType: !1618, size: 128, offset: 8768)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1619)
!1619 = !{!1620}
!1620 = !DISubrange(count: 16)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1101, file: !1102, line: 945, baseType: !1622, size: 64, offset: 8896)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1102, line: 49, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1101, file: !1102, line: 956, baseType: !1625, size: 64, offset: 8960)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1102, line: 45, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1101, file: !1102, line: 959, baseType: !1628, size: 64, offset: 9024)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1102, line: 959, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1101, file: !1102, line: 962, baseType: !1631, size: 64, offset: 9088)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1102, line: 66, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1101, file: !1102, line: 966, baseType: !1634, size: 64, offset: 9152)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1102, line: 50, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1101, file: !1102, line: 969, baseType: !1637, size: 64, offset: 9216)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1639, line: 82, size: 7296, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1676, !1685, !1686, !1688, !1689, !1690, !1693, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1723, !1724, !1731, !1732, !1733, !1734, !1735, !1736}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1638, file: !1639, line: 83, baseType: !1114, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1638, file: !1639, line: 84, baseType: !711, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1638, file: !1639, line: 85, baseType: !223, size: 32, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1638, file: !1639, line: 86, baseType: !184, size: 128, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1638, file: !1639, line: 88, baseType: !1365, size: 128, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1638, file: !1639, line: 91, baseType: !1100, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1638, file: !1639, line: 94, baseType: !1648, size: 192, offset: 448)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1649, line: 30, size: 192, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1648, file: !1649, line: 31, baseType: !184, size: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1648, file: !1649, line: 32, baseType: !1653, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1654, line: 25, baseType: !1655)
!1654 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1654, line: 23, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1655, file: !1654, line: 24, baseType: !1254, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1638, file: !1639, line: 97, baseType: !599, size: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1638, file: !1639, line: 100, baseType: !223, size: 32, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1638, file: !1639, line: 106, baseType: !223, size: 32, offset: 736)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1638, file: !1639, line: 107, baseType: !1100, size: 64, offset: 768)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1638, file: !1639, line: 110, baseType: !223, size: 32, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1638, file: !1639, line: 111, baseType: !7, size: 32, offset: 864)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1638, file: !1639, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1638, file: !1639, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1638, file: !1639, line: 128, baseType: !223, size: 32, offset: 928)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1638, file: !1639, line: 129, baseType: !184, size: 128, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1638, file: !1639, line: 132, baseType: !1176, size: 512, offset: 1088)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1638, file: !1639, line: 133, baseType: !1184, size: 64, offset: 1600)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1638, file: !1639, line: 140, baseType: !1671, size: 256, offset: 1664)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1672, size: 256, elements: !1453)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1639, line: 38, size: 128, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1672, file: !1639, line: 39, baseType: !382, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1672, file: !1639, line: 40, baseType: !382, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1638, file: !1639, line: 146, baseType: !1677, size: 192, offset: 1920)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1639, line: 66, size: 192, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1677, file: !1639, line: 67, baseType: !1680, size: 192)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1639, line: 47, size: 192, elements: !1681)
!1681 = !{!1682, !1683, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1680, file: !1639, line: 48, baseType: !737, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1680, file: !1639, line: 49, baseType: !737, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1680, file: !1639, line: 50, baseType: !737, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1638, file: !1639, line: 150, baseType: !1414, size: 640, offset: 2112)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1638, file: !1639, line: 153, baseType: !1687, size: 256, offset: 2752)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !1039)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1638, file: !1639, line: 159, baseType: !1355, size: 64, offset: 3008)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1638, file: !1639, line: 162, baseType: !223, size: 32, offset: 3072)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1638, file: !1639, line: 164, baseType: !1691, size: 64, offset: 3136)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1639, line: 164, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1638, file: !1639, line: 175, baseType: !1694, size: 32, offset: 3200)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !353, line: 805, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 798, size: 32, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1695, file: !353, line: 803, baseType: !352, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1695, file: !353, line: 804, baseType: !197, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1638, file: !1639, line: 176, baseType: !382, size: 64, offset: 3264)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1638, file: !1639, line: 176, baseType: !382, size: 64, offset: 3328)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1638, file: !1639, line: 176, baseType: !382, size: 64, offset: 3392)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1638, file: !1639, line: 176, baseType: !382, size: 64, offset: 3456)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1638, file: !1639, line: 177, baseType: !382, size: 64, offset: 3520)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1638, file: !1639, line: 178, baseType: !382, size: 64, offset: 3584)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1638, file: !1639, line: 179, baseType: !1402, size: 128, offset: 3648)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1638, file: !1639, line: 180, baseType: !289, size: 64, offset: 3776)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1638, file: !1639, line: 180, baseType: !289, size: 64, offset: 3840)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1638, file: !1639, line: 180, baseType: !289, size: 64, offset: 3904)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1638, file: !1639, line: 180, baseType: !289, size: 64, offset: 3968)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1638, file: !1639, line: 181, baseType: !289, size: 64, offset: 4032)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1638, file: !1639, line: 181, baseType: !289, size: 64, offset: 4096)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1638, file: !1639, line: 181, baseType: !289, size: 64, offset: 4160)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1638, file: !1639, line: 181, baseType: !289, size: 64, offset: 4224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1638, file: !1639, line: 182, baseType: !289, size: 64, offset: 4288)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1638, file: !1639, line: 182, baseType: !289, size: 64, offset: 4352)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1638, file: !1639, line: 182, baseType: !289, size: 64, offset: 4416)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1638, file: !1639, line: 182, baseType: !289, size: 64, offset: 4480)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1638, file: !1639, line: 183, baseType: !289, size: 64, offset: 4544)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1638, file: !1639, line: 183, baseType: !289, size: 64, offset: 4608)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1638, file: !1639, line: 184, baseType: !1721, offset: 4672)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1722, line: 12, elements: !211)
!1722 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1638, file: !1639, line: 192, baseType: !384, size: 64, offset: 4672)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1638, file: !1639, line: 203, baseType: !1725, size: 2048, offset: 4736)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1726, size: 2048, elements: !1619)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1727, line: 43, size: 128, elements: !1728)
!1727 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1726, file: !1727, line: 44, baseType: !288, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1726, file: !1727, line: 45, baseType: !288, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1638, file: !1639, line: 220, baseType: !451, size: 8, offset: 6784)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1638, file: !1639, line: 221, baseType: !1089, size: 16, offset: 6800)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1638, file: !1639, line: 222, baseType: !1089, size: 16, offset: 6816)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1638, file: !1639, line: 224, baseType: !938, size: 64, offset: 6848)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1638, file: !1639, line: 227, baseType: !1057, size: 192, offset: 6912)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1638, file: !1639, line: 233, baseType: !1057, size: 192, offset: 7104)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1101, file: !1102, line: 970, baseType: !1738, size: 64, offset: 9280)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1639, line: 20, size: 16576, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1739, file: !1639, line: 21, baseType: !197)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1739, file: !1639, line: 22, baseType: !1114, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1739, file: !1639, line: 23, baseType: !1365, size: 128, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1739, file: !1639, line: 24, baseType: !1745, size: 16384, offset: 192)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1746, size: 16384, elements: !244)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1649, line: 49, size: 256, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1746, file: !1649, line: 50, baseType: !1749, size: 256)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1649, line: 35, size: 256, elements: !1750)
!1750 = !{!1751, !1758, !1759, !1765}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1749, file: !1649, line: 37, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1753, line: 19, baseType: !1754)
!1753 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1753, line: 18, baseType: !1756)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !223}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1749, file: !1649, line: 38, baseType: !289, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1749, file: !1649, line: 44, baseType: !1760, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1753, line: 22, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1753, line: 21, baseType: !1763)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1749, file: !1649, line: 46, baseType: !1653, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1101, file: !1102, line: 971, baseType: !1653, size: 64, offset: 9344)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1101, file: !1102, line: 972, baseType: !1653, size: 64, offset: 9408)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1101, file: !1102, line: 974, baseType: !1653, size: 64, offset: 9472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1101, file: !1102, line: 975, baseType: !1648, size: 192, offset: 9536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1101, file: !1102, line: 976, baseType: !289, size: 64, offset: 9728)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1101, file: !1102, line: 977, baseType: !286, size: 64, offset: 9792)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1101, file: !1102, line: 978, baseType: !7, size: 32, offset: 9856)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1101, file: !1102, line: 980, baseType: !333, size: 64, offset: 9920)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1101, file: !1102, line: 989, baseType: !1775, size: 128, offset: 9984)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1776, line: 35, size: 128, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779, !1780}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1775, file: !1776, line: 36, baseType: !223, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1775, file: !1776, line: 37, baseType: !711, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1775, file: !1776, line: 38, baseType: !1781, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1776, line: 23, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1101, file: !1102, line: 992, baseType: !382, size: 64, offset: 10112)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1101, file: !1102, line: 993, baseType: !382, size: 64, offset: 10176)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1101, file: !1102, line: 996, baseType: !197, offset: 10240)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1101, file: !1102, line: 999, baseType: !744, offset: 10240)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1101, file: !1102, line: 1001, baseType: !1788, size: 64, offset: 10240)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1102, line: 636, size: 64, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1788, file: !1102, line: 637, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1101, file: !1102, line: 1005, baseType: !716, size: 128, offset: 10304)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1101, file: !1102, line: 1007, baseType: !1100, size: 64, offset: 10432)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1101, file: !1102, line: 1009, baseType: !1795, size: 64, offset: 10496)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1102, line: 1009, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1101, file: !1102, line: 1043, baseType: !160, size: 64, offset: 10560)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1101, file: !1102, line: 1046, baseType: !1799, size: 64, offset: 10624)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1102, line: 41, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1101, file: !1102, line: 1050, baseType: !1802, size: 64, offset: 10688)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1102, line: 42, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1101, file: !1102, line: 1054, baseType: !1805, size: 64, offset: 10752)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1102, line: 55, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1101, file: !1102, line: 1056, baseType: !1808, size: 64, offset: 10816)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1102, line: 40, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1101, file: !1102, line: 1058, baseType: !1811, size: 64, offset: 10880)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1813, line: 99, size: 704, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820, !1821, !1840, !1841}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1812, file: !1813, line: 100, baseType: !735, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1812, file: !1813, line: 101, baseType: !711, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1812, file: !1813, line: 102, baseType: !711, size: 32, offset: 96)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1812, file: !1813, line: 105, baseType: !197, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1812, file: !1813, line: 107, baseType: !281, size: 16, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1812, file: !1813, line: 109, baseType: !703, size: 128, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1812, file: !1813, line: 110, baseType: !1822, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1813, line: 73, size: 448, elements: !1824)
!1824 = !{!1825, !1828, !1829, !1834, !1839}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1823, file: !1813, line: 74, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1813, line: 74, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1823, file: !1813, line: 75, baseType: !1811, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !1813, line: 83, baseType: !1830, size: 128, offset: 128)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !1813, line: 83, size: 128, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1830, file: !1813, line: 84, baseType: !184, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1830, file: !1813, line: 85, baseType: !899, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !1813, line: 87, baseType: !1835, size: 128, offset: 256)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !1813, line: 87, size: 128, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1835, file: !1813, line: 88, baseType: !603, size: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1835, file: !1813, line: 89, baseType: !330, size: 128, align: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1823, file: !1813, line: 92, baseType: !7, size: 32, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1812, file: !1813, line: 111, baseType: !599, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1812, file: !1813, line: 113, baseType: !1842, size: 256, offset: 448)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1843, line: 102, size: 256, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1844 = !{!1845, !1846, !1847}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1842, file: !1843, line: 103, baseType: !735, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1842, file: !1843, line: 104, baseType: !184, size: 128, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1842, file: !1843, line: 105, baseType: !1848, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1843, line: 21, baseType: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1101, file: !1102, line: 1061, baseType: !1854, size: 64, offset: 10944)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1102, line: 43, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1101, file: !1102, line: 1064, baseType: !289, size: 64, offset: 11008)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1101, file: !1102, line: 1065, baseType: !1858, size: 64, offset: 11072)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1649, line: 14, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1649, line: 12, size: 384, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !1649, line: 13, baseType: !1863, size: 384)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !1649, line: 13, size: 384, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1863, file: !1649, line: 13, baseType: !223, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1863, file: !1649, line: 13, baseType: !223, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1863, file: !1649, line: 13, baseType: !223, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1863, file: !1649, line: 13, baseType: !1869, size: 256, offset: 128)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1870, line: 32, size: 256, elements: !1871)
!1870 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1877, !1890, !1896, !1905, !1925, !1930}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1869, file: !1870, line: 37, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1870, line: 34, size: 64, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1873, file: !1870, line: 35, baseType: !1344, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1873, file: !1870, line: 36, baseType: !402, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1869, file: !1870, line: 45, baseType: !1878, size: 192)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1870, line: 40, size: 192, elements: !1879)
!1879 = !{!1880, !1882, !1883, !1889}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1878, file: !1870, line: 41, baseType: !1881, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !272, line: 95, baseType: !223)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1878, file: !1870, line: 42, baseType: !223, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1878, file: !1870, line: 43, baseType: !1884, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1870, line: 11, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1870, line: 8, size: 64, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1885, file: !1870, line: 9, baseType: !223, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1885, file: !1870, line: 10, baseType: !160, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1878, file: !1870, line: 44, baseType: !223, size: 32, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1869, file: !1870, line: 52, baseType: !1891, size: 128)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1870, line: 48, size: 128, elements: !1892)
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1891, file: !1870, line: 49, baseType: !1344, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1891, file: !1870, line: 50, baseType: !402, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1891, file: !1870, line: 51, baseType: !1884, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1869, file: !1870, line: 61, baseType: !1897, size: 256)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1870, line: 55, size: 256, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902, !1904}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1897, file: !1870, line: 56, baseType: !1344, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1897, file: !1870, line: 57, baseType: !402, size: 32, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1897, file: !1870, line: 58, baseType: !223, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1897, file: !1870, line: 59, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !272, line: 94, baseType: !273)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1897, file: !1870, line: 60, baseType: !1903, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1869, file: !1870, line: 95, baseType: !1906, size: 256)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1870, line: 64, size: 256, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1906, file: !1870, line: 65, baseType: !160, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1870, line: 77, baseType: !1910, size: 192, offset: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1870, line: 77, size: 192, elements: !1911)
!1911 = !{!1912, !1913, !1920}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1910, file: !1870, line: 82, baseType: !1089, size: 16)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1910, file: !1870, line: 88, baseType: !1914, size: 192)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1910, file: !1870, line: 84, size: 192, elements: !1915)
!1915 = !{!1916, !1918, !1919}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1914, file: !1870, line: 85, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !1214)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1914, file: !1870, line: 86, baseType: !160, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1914, file: !1870, line: 87, baseType: !160, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1910, file: !1870, line: 93, baseType: !1921, size: 96)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1910, file: !1870, line: 90, size: 96, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1921, file: !1870, line: 91, baseType: !1917, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1921, file: !1870, line: 92, baseType: !163, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1869, file: !1870, line: 101, baseType: !1926, size: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1870, line: 98, size: 128, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1926, file: !1870, line: 99, baseType: !274, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1926, file: !1870, line: 100, baseType: !223, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1869, file: !1870, line: 108, baseType: !1931, size: 128)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1870, line: 104, size: 128, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1931, file: !1870, line: 105, baseType: !160, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1931, file: !1870, line: 106, baseType: !223, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1931, file: !1870, line: 107, baseType: !7, size: 32, offset: 96)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1101, file: !1102, line: 1067, baseType: !1721, offset: 11136)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1101, file: !1102, line: 1099, baseType: !1938, size: 64, offset: 11136)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1102, line: 56, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1101, file: !1102, line: 1103, baseType: !184, size: 128, offset: 11200)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1101, file: !1102, line: 1104, baseType: !1942, size: 64, offset: 11328)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1102, line: 46, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1101, file: !1102, line: 1105, baseType: !1057, size: 192, offset: 11392)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1101, file: !1102, line: 1106, baseType: !7, size: 32, offset: 11584)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1101, file: !1102, line: 1109, baseType: !1947, size: 128, offset: 11648)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1948, size: 128, elements: !1453)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1102, line: 51, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1101, file: !1102, line: 1110, baseType: !1057, size: 192, offset: 11776)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1101, file: !1102, line: 1111, baseType: !184, size: 128, offset: 11968)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1101, file: !1102, line: 1173, baseType: !1953, size: 64, offset: 12096)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1955, line: 62, size: 256, align: 256, elements: !1956)
!1955 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1958, !1959, !1964}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1954, file: !1955, line: 75, baseType: !163, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1954, file: !1955, line: 90, baseType: !163, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1954, file: !1955, line: 124, baseType: !1960, size: 64, offset: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !1955, line: 109, size: 64, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1960, file: !1955, line: 110, baseType: !383, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1960, file: !1955, line: 112, baseType: !383, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !1955, line: 144, baseType: !163, size: 32, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1101, file: !1102, line: 1174, baseType: !161, size: 32, offset: 12160)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1101, file: !1102, line: 1179, baseType: !289, size: 64, offset: 12224)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1101, file: !1102, line: 1182, baseType: !1968, size: 128, offset: 12288)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1035, line: 76, size: 128, elements: !1969)
!1969 = !{!1970, !1975, !1976}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1968, file: !1035, line: 85, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1972, line: 7, size: 64, elements: !1973)
!1972 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1971, file: !1972, line: 12, baseType: !1251, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1968, file: !1035, line: 88, baseType: !451, size: 8, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1968, file: !1035, line: 95, baseType: !451, size: 8, offset: 72)
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !1102, line: 1184, baseType: !1978, size: 128, offset: 12416)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !1102, line: 1184, size: 128, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1978, file: !1102, line: 1185, baseType: !1114, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1978, file: !1102, line: 1186, baseType: !330, size: 128, align: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1101, file: !1102, line: 1190, baseType: !1983, size: 64, offset: 12544)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1102, line: 53, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1101, file: !1102, line: 1192, baseType: !1986, size: 128, offset: 12608)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1035, line: 64, size: 128, elements: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1986, file: !1035, line: 65, baseType: !685, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1986, file: !1035, line: 67, baseType: !163, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1986, file: !1035, line: 68, baseType: !163, size: 32, offset: 96)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1101, file: !1102, line: 1206, baseType: !223, size: 32, offset: 12736)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1101, file: !1102, line: 1207, baseType: !223, size: 32, offset: 12768)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1101, file: !1102, line: 1209, baseType: !289, size: 64, offset: 12800)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1101, file: !1102, line: 1219, baseType: !382, size: 64, offset: 12864)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1101, file: !1102, line: 1220, baseType: !382, size: 64, offset: 12928)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1101, file: !1102, line: 1317, baseType: !223, size: 32, offset: 12992)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1101, file: !1102, line: 1319, baseType: !1100, size: 64, offset: 13056)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1101, file: !1102, line: 1322, baseType: !1999, size: 64, offset: 13120)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2001, line: 56, size: 512, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009, !2011}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2000, file: !2001, line: 57, baseType: !1999, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2000, file: !2001, line: 58, baseType: !160, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2000, file: !2001, line: 59, baseType: !289, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2000, file: !2001, line: 60, baseType: !289, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2000, file: !2001, line: 61, baseType: !784, size: 64, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2000, file: !2001, line: 62, baseType: !7, size: 32, offset: 320)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2000, file: !2001, line: 63, baseType: !2010, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !159, line: 153, baseType: !382)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2000, file: !2001, line: 64, baseType: !2012, size: 64, offset: 448)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1101, file: !1102, line: 1326, baseType: !1114, size: 32, offset: 13184)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1101, file: !1102, line: 1342, baseType: !160, size: 64, offset: 13248)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1101, file: !1102, line: 1343, baseType: !383, size: 64, offset: 13312)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1101, file: !1102, line: 1344, baseType: !382, size: 64, offset: 13376)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1101, file: !1102, line: 1345, baseType: !383, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1101, file: !1102, line: 1346, baseType: !383, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1101, file: !1102, line: 1347, baseType: !383, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1101, file: !1102, line: 1348, baseType: !330, size: 128, align: 64, offset: 13504)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1101, file: !1102, line: 1358, baseType: !2023, size: 34816, offset: 13824)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2024, line: 485, size: 34816, elements: !2025)
!2024 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2055, !2056, !2057, !2058, !2059, !2060, !2063, !2064, !2065}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2023, file: !2024, line: 487, baseType: !2027, size: 192)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2028, size: 192, elements: !240)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2029, line: 16, size: 64, elements: !2030)
!2029 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2028, file: !2029, line: 17, baseType: !823, size: 16)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2028, file: !2029, line: 18, baseType: !823, size: 16, offset: 16)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2028, file: !2029, line: 19, baseType: !823, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2028, file: !2029, line: 19, baseType: !823, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2028, file: !2029, line: 19, baseType: !823, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2028, file: !2029, line: 19, baseType: !823, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2028, file: !2029, line: 19, baseType: !823, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2028, file: !2029, line: 20, baseType: !823, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2028, file: !2029, line: 20, baseType: !823, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2028, file: !2029, line: 20, baseType: !823, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2028, file: !2029, line: 20, baseType: !823, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2028, file: !2029, line: 20, baseType: !823, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2028, file: !2029, line: 20, baseType: !823, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2023, file: !2024, line: 491, baseType: !289, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2023, file: !2024, line: 495, baseType: !281, size: 16, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2023, file: !2024, line: 496, baseType: !281, size: 16, offset: 272)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2023, file: !2024, line: 497, baseType: !281, size: 16, offset: 288)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2023, file: !2024, line: 498, baseType: !281, size: 16, offset: 304)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2023, file: !2024, line: 502, baseType: !289, size: 64, offset: 320)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2023, file: !2024, line: 503, baseType: !289, size: 64, offset: 384)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2023, file: !2024, line: 514, baseType: !2052, size: 256, offset: 448)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2053, size: 256, elements: !1039)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2024, line: 483, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2023, file: !2024, line: 516, baseType: !289, size: 64, offset: 704)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2023, file: !2024, line: 518, baseType: !289, size: 64, offset: 768)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2023, file: !2024, line: 520, baseType: !289, size: 64, offset: 832)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2023, file: !2024, line: 521, baseType: !289, size: 64, offset: 896)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2023, file: !2024, line: 522, baseType: !289, size: 64, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2023, file: !2024, line: 528, baseType: !2061, size: 64, offset: 1024)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2024, line: 10, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2023, file: !2024, line: 535, baseType: !289, size: 64, offset: 1088)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2023, file: !2024, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2023, file: !2024, line: 540, baseType: !2066, size: 33280, offset: 1536)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2067, line: 317, size: 33280, elements: !2068)
!2067 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2066, file: !2067, line: 330, baseType: !7, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2066, file: !2067, line: 337, baseType: !289, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2066, file: !2067, line: 348, baseType: !2072, size: 32768, offset: 512)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2067, line: 304, size: 32768, elements: !2073)
!2073 = !{!2074, !2089, !2128, !2178, !2191}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2072, file: !2067, line: 305, baseType: !2075, size: 896)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2067, line: 12, size: 896, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2088}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2075, file: !2067, line: 13, baseType: !161, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2075, file: !2067, line: 14, baseType: !161, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2075, file: !2067, line: 15, baseType: !161, size: 32, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2075, file: !2067, line: 16, baseType: !161, size: 32, offset: 96)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2075, file: !2067, line: 17, baseType: !161, size: 32, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2075, file: !2067, line: 18, baseType: !161, size: 32, offset: 160)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2075, file: !2067, line: 19, baseType: !161, size: 32, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2075, file: !2067, line: 22, baseType: !2085, size: 640, offset: 224)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 640, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 20)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2075, file: !2067, line: 25, baseType: !161, size: 32, offset: 864)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2072, file: !2067, line: 306, baseType: !2090, size: 4096, align: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2067, line: 34, size: 4096, align: 128, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2111, !2112, !2113, !2117, !2119, !2123}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2090, file: !2067, line: 35, baseType: !823, size: 16)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2090, file: !2067, line: 36, baseType: !823, size: 16, offset: 16)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2090, file: !2067, line: 37, baseType: !823, size: 16, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2090, file: !2067, line: 38, baseType: !823, size: 16, offset: 48)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2090, file: !2067, line: 39, baseType: !2097, size: 128, offset: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2090, file: !2067, line: 39, size: 128, elements: !2098)
!2098 = !{!2099, !2104}
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !2067, line: 40, baseType: !2100, size: 128)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2097, file: !2067, line: 40, size: 128, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2100, file: !2067, line: 41, baseType: !382, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2100, file: !2067, line: 42, baseType: !382, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !2067, line: 44, baseType: !2105, size: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2097, file: !2067, line: 44, size: 128, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2105, file: !2067, line: 45, baseType: !161, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2105, file: !2067, line: 46, baseType: !161, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2105, file: !2067, line: 47, baseType: !161, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2105, file: !2067, line: 48, baseType: !161, size: 32, offset: 96)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2090, file: !2067, line: 51, baseType: !161, size: 32, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2090, file: !2067, line: 52, baseType: !161, size: 32, offset: 224)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2090, file: !2067, line: 55, baseType: !2114, size: 1024, offset: 256)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2090, file: !2067, line: 58, baseType: !2118, size: 2048, offset: 1280)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2048, elements: !244)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2090, file: !2067, line: 60, baseType: !2120, size: 384, offset: 3328)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, elements: !2121)
!2121 = !{!2122}
!2122 = !DISubrange(count: 12)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2090, file: !2067, line: 62, baseType: !2124, size: 384, offset: 3712)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2090, file: !2067, line: 62, size: 384, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2124, file: !2067, line: 63, baseType: !2120, size: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2124, file: !2067, line: 64, baseType: !2120, size: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2072, file: !2067, line: 307, baseType: !2129, size: 1088)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2067, line: 79, size: 1088, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2177}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2129, file: !2067, line: 80, baseType: !161, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2129, file: !2067, line: 81, baseType: !161, size: 32, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2129, file: !2067, line: 82, baseType: !161, size: 32, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2129, file: !2067, line: 83, baseType: !161, size: 32, offset: 96)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2129, file: !2067, line: 84, baseType: !161, size: 32, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2129, file: !2067, line: 85, baseType: !161, size: 32, offset: 160)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2129, file: !2067, line: 86, baseType: !161, size: 32, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2129, file: !2067, line: 88, baseType: !2085, size: 640, offset: 224)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2129, file: !2067, line: 89, baseType: !1236, size: 8, offset: 864)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2129, file: !2067, line: 90, baseType: !1236, size: 8, offset: 872)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2129, file: !2067, line: 91, baseType: !1236, size: 8, offset: 880)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2129, file: !2067, line: 92, baseType: !1236, size: 8, offset: 888)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2129, file: !2067, line: 93, baseType: !1236, size: 8, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2129, file: !2067, line: 94, baseType: !1236, size: 8, offset: 904)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2129, file: !2067, line: 95, baseType: !2146, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2148, line: 11, size: 128, elements: !2149)
!2148 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !{!2150, !2151}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2147, file: !2148, line: 12, baseType: !274, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2147, file: !2148, line: 13, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2154, line: 56, size: 1344, elements: !2155)
!2154 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2153, file: !2154, line: 61, baseType: !289, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2153, file: !2154, line: 62, baseType: !289, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2153, file: !2154, line: 63, baseType: !289, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2153, file: !2154, line: 64, baseType: !289, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2153, file: !2154, line: 65, baseType: !289, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2153, file: !2154, line: 66, baseType: !289, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2153, file: !2154, line: 68, baseType: !289, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2153, file: !2154, line: 69, baseType: !289, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2153, file: !2154, line: 70, baseType: !289, size: 64, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2153, file: !2154, line: 71, baseType: !289, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2153, file: !2154, line: 72, baseType: !289, size: 64, offset: 640)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2153, file: !2154, line: 73, baseType: !289, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2153, file: !2154, line: 74, baseType: !289, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2153, file: !2154, line: 75, baseType: !289, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2153, file: !2154, line: 76, baseType: !289, size: 64, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2153, file: !2154, line: 81, baseType: !289, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2153, file: !2154, line: 83, baseType: !289, size: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2153, file: !2154, line: 84, baseType: !289, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 85, baseType: !289, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2153, file: !2154, line: 86, baseType: !289, size: 64, offset: 1216)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2153, file: !2154, line: 87, baseType: !289, size: 64, offset: 1280)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2129, file: !2067, line: 96, baseType: !161, size: 32, offset: 1024)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2072, file: !2067, line: 308, baseType: !2179, size: 4608, align: 512)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2067, line: 289, size: 4608, align: 512, elements: !2180)
!2180 = !{!2181, !2182, !2189}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2179, file: !2067, line: 290, baseType: !2090, size: 4096, align: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2179, file: !2067, line: 291, baseType: !2183, size: 512, offset: 4096)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2067, line: 268, size: 512, elements: !2184)
!2184 = !{!2185, !2186, !2187}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2183, file: !2067, line: 269, baseType: !382, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2183, file: !2067, line: 270, baseType: !382, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2183, file: !2067, line: 271, baseType: !2188, size: 384, offset: 128)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, elements: !1509)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2179, file: !2067, line: 292, baseType: !2190, offset: 4608)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, elements: !1607)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2072, file: !2067, line: 309, baseType: !2192, size: 32768)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, size: 32768, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: 4096)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !687, line: 378, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1093, file: !687, line: 384, baseType: !1386, size: 192, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !942, file: !687, line: 500, baseType: !197, offset: 6656)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !942, file: !687, line: 501, baseType: !2200, size: 64, offset: 6656)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !687, line: 387, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !942, file: !687, line: 516, baseType: !1597, size: 64, offset: 6720)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !942, file: !687, line: 519, baseType: !317, size: 64, offset: 6784)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !942, file: !687, line: 521, baseType: !2205, size: 64, offset: 6848)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !687, line: 521, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !942, file: !687, line: 545, baseType: !711, size: 32, offset: 6912)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !942, file: !687, line: 548, baseType: !451, size: 8, offset: 6944)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !942, file: !687, line: 550, baseType: !2210, offset: 6952)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2211, line: 142, elements: !211)
!2211 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !942, file: !687, line: 554, baseType: !1842, size: 256, offset: 6976)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !942, file: !687, line: 557, baseType: !161, size: 32, offset: 7232)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !939, file: !687, line: 565, baseType: !2215, offset: 7296)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, elements: !2216)
!2216 = !{!2217}
!2217 = !DISubrange(count: -1)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !935, file: !687, line: 151, baseType: !711, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !928, file: !687, line: 156, baseType: !197, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 159, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 159, size: 128, elements: !2222)
!2222 = !{!2223, !2226}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2221, file: !687, line: 161, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !687, line: 161, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2221, file: !687, line: 162, baseType: !160, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !691, file: !687, line: 176, baseType: !330, size: 128, align: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 179, baseType: !2229, size: 32, offset: 384)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 179, size: 32, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2229, file: !687, line: 184, baseType: !711, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2229, file: !687, line: 192, baseType: !7, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2229, file: !687, line: 194, baseType: !7, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2229, file: !687, line: 195, baseType: !223, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !686, file: !687, line: 199, baseType: !711, size: 32, offset: 416)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !621, file: !52, line: 1964, baseType: !2237, size: 64, offset: 1344)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!274, !560, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2242, line: 12, size: 256, elements: !2243)
!2242 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2243 = !{!2244, !2245, !2246, !2247, !2248}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2241, file: !2242, line: 13, baseType: !158, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2241, file: !2242, line: 16, baseType: !223, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2241, file: !2242, line: 23, baseType: !289, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2241, file: !2242, line: 30, baseType: !289, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2241, file: !2242, line: 33, baseType: !2249, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !687, line: 27, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !621, file: !52, line: 1966, baseType: !2237, size: 64, offset: 1408)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !561, file: !52, line: 1424, baseType: !2253, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !46, line: 322, size: 704, elements: !2256)
!2256 = !{!2257, !2303, !2307, !2311, !2312, !2313, !2314, !2315, !2320, !2325, !2329}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2255, file: !46, line: 323, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!223, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !46, line: 294, size: 1600, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2288, !2289, !2290}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2262, file: !46, line: 295, baseType: !603, size: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2262, file: !46, line: 296, baseType: !184, size: 128, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2262, file: !46, line: 297, baseType: !184, size: 128, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2262, file: !46, line: 298, baseType: !184, size: 128, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2262, file: !46, line: 299, baseType: !1057, size: 192, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2262, file: !46, line: 300, baseType: !197, offset: 704)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2262, file: !46, line: 301, baseType: !711, size: 32, offset: 704)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2262, file: !46, line: 302, baseType: !560, size: 64, offset: 768)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2262, file: !46, line: 303, baseType: !2273, size: 64, offset: 832)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !46, line: 68, size: 64, elements: !2274)
!2274 = !{!2275, !2287}
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !46, line: 69, baseType: !2276, size: 32)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !46, line: 69, size: 32, elements: !2277)
!2277 = !{!2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2276, file: !46, line: 70, baseType: !396, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2276, file: !46, line: 71, baseType: !404, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2276, file: !46, line: 72, baseType: !2281, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2282, line: 24, baseType: !2283)
!2282 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2282, line: 22, size: 32, elements: !2284)
!2284 = !{!2285}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2283, file: !2282, line: 23, baseType: !2286, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2282, line: 20, baseType: !402)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2273, file: !46, line: 74, baseType: !45, size: 32, offset: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2262, file: !46, line: 304, baseType: !492, size: 64, offset: 896)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2262, file: !46, line: 305, baseType: !289, size: 64, offset: 960)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2262, file: !46, line: 306, baseType: !2291, size: 576, offset: 1024)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !46, line: 205, size: 576, elements: !2292)
!2292 = !{!2293, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2291, file: !46, line: 206, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !46, line: 66, baseType: !494)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2291, file: !46, line: 207, baseType: !2294, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2291, file: !46, line: 208, baseType: !2294, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2291, file: !46, line: 209, baseType: !2294, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2291, file: !46, line: 210, baseType: !2294, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2291, file: !46, line: 211, baseType: !2294, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2291, file: !46, line: 212, baseType: !2294, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2291, file: !46, line: 213, baseType: !500, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2291, file: !46, line: 214, baseType: !500, size: 64, offset: 512)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2255, file: !46, line: 324, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!2261, !560, !223}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2255, file: !46, line: 325, baseType: !2308, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2261}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2255, file: !46, line: 326, baseType: !2258, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2255, file: !46, line: 327, baseType: !2258, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2255, file: !46, line: 328, baseType: !2258, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2255, file: !46, line: 329, baseType: !649, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2255, file: !46, line: 332, baseType: !2316, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!2319, !390}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2255, file: !46, line: 333, baseType: !2321, size: 64, offset: 512)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!223, !390, !2324}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2255, file: !46, line: 335, baseType: !2326, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!223, !390, !2319}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2255, file: !46, line: 337, baseType: !2330, size: 64, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!223, !560, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !561, file: !52, line: 1425, baseType: !2335, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !46, line: 428, size: 704, elements: !2338)
!2338 = !{!2339, !2343, !2344, !2348, !2349, !2350, !2365, !2388, !2392, !2393, !2416}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2337, file: !46, line: 429, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!223, !560, !223, !223, !510}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2337, file: !46, line: 430, baseType: !649, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2337, file: !46, line: 431, baseType: !2345, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!223, !560, !7}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2337, file: !46, line: 432, baseType: !2345, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2337, file: !46, line: 433, baseType: !649, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2337, file: !46, line: 434, baseType: !2351, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!223, !560, !223, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !46, line: 415, size: 256, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2355, file: !46, line: 416, baseType: !223, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2355, file: !46, line: 417, baseType: !7, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2355, file: !46, line: 418, baseType: !7, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2355, file: !46, line: 420, baseType: !7, size: 32, offset: 96)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2355, file: !46, line: 421, baseType: !7, size: 32, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2355, file: !46, line: 422, baseType: !7, size: 32, offset: 160)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2355, file: !46, line: 423, baseType: !7, size: 32, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2355, file: !46, line: 424, baseType: !7, size: 32, offset: 224)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2337, file: !46, line: 435, baseType: !2366, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!223, !560, !2273, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !46, line: 343, size: 960, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2370, file: !46, line: 344, baseType: !223, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2370, file: !46, line: 345, baseType: !382, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2370, file: !46, line: 346, baseType: !382, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2370, file: !46, line: 347, baseType: !382, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2370, file: !46, line: 348, baseType: !382, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2370, file: !46, line: 349, baseType: !382, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2370, file: !46, line: 350, baseType: !382, size: 64, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2370, file: !46, line: 351, baseType: !741, size: 64, offset: 448)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2370, file: !46, line: 353, baseType: !741, size: 64, offset: 512)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2370, file: !46, line: 354, baseType: !223, size: 32, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2370, file: !46, line: 355, baseType: !223, size: 32, offset: 608)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2370, file: !46, line: 356, baseType: !382, size: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2370, file: !46, line: 357, baseType: !382, size: 64, offset: 704)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2370, file: !46, line: 358, baseType: !382, size: 64, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2370, file: !46, line: 359, baseType: !741, size: 64, offset: 832)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2370, file: !46, line: 360, baseType: !223, size: 32, offset: 896)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2337, file: !46, line: 436, baseType: !2389, size: 64, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!223, !560, !2333, !2369}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2337, file: !46, line: 438, baseType: !2366, size: 64, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2337, file: !46, line: 439, baseType: !2394, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!223, !560, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !46, line: 409, size: 1408, elements: !2399)
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2398, file: !46, line: 410, baseType: !7, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2398, file: !46, line: 411, baseType: !2402, size: 1344, offset: 64)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, size: 1344, elements: !240)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !46, line: 395, size: 448, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2415}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2403, file: !46, line: 396, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2403, file: !46, line: 397, baseType: !7, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2403, file: !46, line: 399, baseType: !7, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2403, file: !46, line: 400, baseType: !7, size: 32, offset: 96)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2403, file: !46, line: 401, baseType: !7, size: 32, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2403, file: !46, line: 402, baseType: !7, size: 32, offset: 160)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2403, file: !46, line: 403, baseType: !7, size: 32, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2403, file: !46, line: 404, baseType: !384, size: 64, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2403, file: !46, line: 405, baseType: !2414, size: 64, offset: 320)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !159, line: 126, baseType: !382)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2403, file: !46, line: 406, baseType: !2414, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2337, file: !46, line: 440, baseType: !2345, size: 64, offset: 640)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !561, file: !52, line: 1426, baseType: !2418, size: 64, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !52, line: 49, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !561, file: !52, line: 1427, baseType: !289, size: 64, offset: 640)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !561, file: !52, line: 1428, baseType: !289, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !561, file: !52, line: 1429, baseType: !289, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !561, file: !52, line: 1430, baseType: !347, size: 64, offset: 832)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !561, file: !52, line: 1431, baseType: !731, size: 256, offset: 896)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !561, file: !52, line: 1432, baseType: !223, size: 32, offset: 1152)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !561, file: !52, line: 1433, baseType: !711, size: 32, offset: 1184)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !561, file: !52, line: 1437, baseType: !2429, size: 64, offset: 1216)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2432)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !52, line: 1437, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !561, file: !52, line: 1449, baseType: !2434, size: 64, offset: 1280)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !363, line: 34, size: 64, elements: !2435)
!2435 = !{!2436}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2434, file: !363, line: 35, baseType: !366, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !561, file: !52, line: 1450, baseType: !184, size: 128, offset: 1344)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !561, file: !52, line: 1451, baseType: !2439, size: 64, offset: 1472)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !52, line: 699, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !561, file: !52, line: 1452, baseType: !1808, size: 64, offset: 1536)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !561, file: !52, line: 1453, baseType: !2443, size: 64, offset: 1600)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !52, line: 1453, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !561, file: !52, line: 1454, baseType: !603, size: 128, offset: 1664)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !561, file: !52, line: 1455, baseType: !7, size: 32, offset: 1792)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !561, file: !52, line: 1456, baseType: !2448, size: 2432, offset: 1856)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !46, line: 518, size: 2432, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2454, !2486}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2448, file: !46, line: 519, baseType: !7, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2448, file: !46, line: 520, baseType: !731, size: 256, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2448, file: !46, line: 521, baseType: !2453, size: 192, offset: 320)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !240)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2448, file: !46, line: 522, baseType: !2455, size: 1728, offset: 512)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2456, size: 1728, elements: !240)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !46, line: 222, size: 576, elements: !2457)
!2457 = !{!2458, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2456, file: !46, line: 223, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !46, line: 443, size: 256, elements: !2461)
!2461 = !{!2462, !2463, !2476, !2477}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2460, file: !46, line: 444, baseType: !223, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2460, file: !46, line: 445, baseType: !2464, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2466)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !46, line: 310, size: 512, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2466, file: !46, line: 311, baseType: !649, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2466, file: !46, line: 312, baseType: !649, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2466, file: !46, line: 313, baseType: !649, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2466, file: !46, line: 314, baseType: !649, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2466, file: !46, line: 315, baseType: !2258, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2466, file: !46, line: 316, baseType: !2258, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2466, file: !46, line: 317, baseType: !2258, size: 64, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2466, file: !46, line: 318, baseType: !2330, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2460, file: !46, line: 446, baseType: !594, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2460, file: !46, line: 447, baseType: !2459, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2456, file: !46, line: 224, baseType: !223, size: 32, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2456, file: !46, line: 226, baseType: !184, size: 128, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2456, file: !46, line: 227, baseType: !289, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2456, file: !46, line: 228, baseType: !7, size: 32, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2456, file: !46, line: 229, baseType: !7, size: 32, offset: 352)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2456, file: !46, line: 230, baseType: !2294, size: 64, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2456, file: !46, line: 231, baseType: !2294, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2456, file: !46, line: 232, baseType: !160, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2448, file: !46, line: 523, baseType: !2487, size: 192, offset: 2240)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2464, size: 192, elements: !240)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !561, file: !52, line: 1458, baseType: !2489, size: 2112, offset: 4288)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !52, line: 1410, size: 2112, elements: !2490)
!2490 = !{!2491, !2492, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2489, file: !52, line: 1411, baseType: !223, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2489, file: !52, line: 1412, baseType: !1365, size: 128, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2489, file: !52, line: 1413, baseType: !2494, size: 1920, offset: 192)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 1920, elements: !240)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2496, line: 12, size: 640, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2497 = !{!2498, !2506, !2508, !2513, !2514}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2495, file: !2496, line: 13, baseType: !2499, size: 320)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2500, line: 17, size: 320, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2501 = !{!2502, !2503, !2504, !2505}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2499, file: !2500, line: 18, baseType: !223, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2499, file: !2500, line: 19, baseType: !223, size: 32, offset: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2499, file: !2500, line: 20, baseType: !1365, size: 128, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2499, file: !2500, line: 22, baseType: !330, size: 128, align: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2495, file: !2496, line: 14, baseType: !2507, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2495, file: !2496, line: 15, baseType: !2509, size: 64, offset: 384)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2510, line: 16, size: 64, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2511 = !{!2512}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2509, file: !2510, line: 17, baseType: !1100, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2495, file: !2496, line: 16, baseType: !1365, size: 128, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2495, file: !2496, line: 17, baseType: !711, size: 32, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !561, file: !52, line: 1465, baseType: !160, size: 64, offset: 6400)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !561, file: !52, line: 1468, baseType: !161, size: 32, offset: 6464)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !561, file: !52, line: 1470, baseType: !500, size: 64, offset: 6528)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !561, file: !52, line: 1471, baseType: !500, size: 64, offset: 6592)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !561, file: !52, line: 1473, baseType: !163, size: 32, offset: 6656)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !561, file: !52, line: 1474, baseType: !2521, size: 64, offset: 6720)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !52, line: 603, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !561, file: !52, line: 1477, baseType: !2524, size: 256, offset: 6784)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !2115)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !561, file: !52, line: 1478, baseType: !2526, size: 128, offset: 7040)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2527, line: 18, baseType: !2528)
!2527 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2527, line: 16, size: 128, elements: !2529)
!2529 = !{!2530}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2528, file: !2527, line: 17, baseType: !2531, size: 128)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 128, elements: !1619)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !561, file: !52, line: 1480, baseType: !7, size: 32, offset: 7168)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !561, file: !52, line: 1481, baseType: !2534, size: 32, offset: 7200)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !159, line: 150, baseType: !7)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !561, file: !52, line: 1487, baseType: !1057, size: 192, offset: 7232)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !561, file: !52, line: 1493, baseType: !180, size: 64, offset: 7424)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !561, file: !52, line: 1495, baseType: !2538, size: 64, offset: 7488)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !345, line: 135, size: 1024, align: 512, elements: !2541)
!2541 = !{!2542, !2546, !2547, !2554, !2560, !2564, !2568, !2572, !2573, !2577, !2581, !2586, !2590}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2540, file: !345, line: 136, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!223, !347, !7}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2540, file: !345, line: 137, baseType: !2543, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2540, file: !345, line: 138, baseType: !2548, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!223, !2551, !2553}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2540, file: !345, line: 139, baseType: !2555, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!223, !2551, !7, !180, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2540, file: !345, line: 141, baseType: !2561, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!223, !2551}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2540, file: !345, line: 142, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!223, !347}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2540, file: !345, line: 143, baseType: !2569, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !347}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2540, file: !345, line: 144, baseType: !2569, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2540, file: !345, line: 145, baseType: !2574, size: 64, offset: 512)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !347, !390}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2540, file: !345, line: 146, baseType: !2578, size: 64, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!239, !347, !239, !223}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2540, file: !345, line: 147, baseType: !2582, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!343, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2540, file: !345, line: 148, baseType: !2587, size: 64, offset: 704)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!223, !510, !451}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2540, file: !345, line: 149, baseType: !2591, size: 64, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!347, !347, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !561, file: !52, line: 1500, baseType: !223, size: 32, offset: 7552)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !561, file: !52, line: 1502, baseType: !2598, size: 448, offset: 7616)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2242, line: 60, size: 448, elements: !2599)
!2599 = !{!2600, !2605, !2606, !2607, !2608, !2609, !2610}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2598, file: !2242, line: 61, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!289, !2604, !2240}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2598, file: !2242, line: 63, baseType: !2601, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2598, file: !2242, line: 66, baseType: !274, size: 64, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2598, file: !2242, line: 67, baseType: !223, size: 32, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2598, file: !2242, line: 68, baseType: !7, size: 32, offset: 224)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2598, file: !2242, line: 71, baseType: !184, size: 128, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2598, file: !2242, line: 77, baseType: !2611, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !561, file: !52, line: 1505, baseType: !735, size: 64, offset: 8064)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !561, file: !52, line: 1508, baseType: !735, size: 64, offset: 8128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !561, file: !52, line: 1511, baseType: !223, size: 32, offset: 8192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !561, file: !52, line: 1514, baseType: !873, size: 32, offset: 8224)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !561, file: !52, line: 1517, baseType: !2617, size: 64, offset: 8256)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1843, line: 18, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !561, file: !52, line: 1518, baseType: !599, size: 64, offset: 8320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !561, file: !52, line: 1525, baseType: !1597, size: 64, offset: 8384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !561, file: !52, line: 1532, baseType: !2622, size: 64, offset: 8448)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2623, line: 52, size: 64, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2622, file: !2623, line: 53, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2623, line: 40, size: 256, elements: !2628)
!2628 = !{!2629, !2630, !2635}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2627, file: !2623, line: 42, baseType: !197)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2627, file: !2623, line: 44, baseType: !2631, size: 192)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2623, line: 28, size: 192, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2631, file: !2623, line: 29, baseType: !184, size: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2631, file: !2623, line: 31, baseType: !274, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2627, file: !2623, line: 49, baseType: !274, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !561, file: !52, line: 1533, baseType: !2622, size: 64, offset: 8512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !561, file: !52, line: 1534, baseType: !330, size: 128, align: 64, offset: 8576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !561, file: !52, line: 1535, baseType: !1842, size: 256, offset: 8704)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !561, file: !52, line: 1537, baseType: !1057, size: 192, offset: 8960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !561, file: !52, line: 1542, baseType: !223, size: 32, offset: 9152)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !561, file: !52, line: 1545, baseType: !197, offset: 9184)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !561, file: !52, line: 1546, baseType: !184, size: 128, offset: 9216)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !561, file: !52, line: 1548, baseType: !197, offset: 9344)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !561, file: !52, line: 1549, baseType: !184, size: 128, offset: 9344)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !391, file: !52, line: 624, baseType: !698, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !391, file: !52, line: 631, baseType: !289, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !52, line: 639, baseType: !2648, size: 32, offset: 384)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !52, line: 639, size: 32, elements: !2649)
!2649 = !{!2650, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2648, file: !52, line: 640, baseType: !2651, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2648, file: !52, line: 641, baseType: !7, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !391, file: !52, line: 643, baseType: !474, size: 32, offset: 416)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !391, file: !52, line: 644, baseType: !492, size: 64, offset: 448)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !391, file: !52, line: 645, baseType: !496, size: 128, offset: 512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !391, file: !52, line: 646, baseType: !496, size: 128, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !391, file: !52, line: 647, baseType: !496, size: 128, offset: 768)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !391, file: !52, line: 648, baseType: !197, offset: 896)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !391, file: !52, line: 649, baseType: !281, size: 16, offset: 896)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !391, file: !52, line: 650, baseType: !1236, size: 8, offset: 912)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !391, file: !52, line: 651, baseType: !1236, size: 8, offset: 920)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !391, file: !52, line: 652, baseType: !2414, size: 64, offset: 960)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !391, file: !52, line: 659, baseType: !289, size: 64, offset: 1024)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !391, file: !52, line: 660, baseType: !731, size: 256, offset: 1088)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !391, file: !52, line: 662, baseType: !289, size: 64, offset: 1344)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !391, file: !52, line: 663, baseType: !289, size: 64, offset: 1408)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !391, file: !52, line: 665, baseType: !603, size: 128, offset: 1472)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !391, file: !52, line: 666, baseType: !184, size: 128, offset: 1600)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !391, file: !52, line: 675, baseType: !184, size: 128, offset: 1728)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !391, file: !52, line: 676, baseType: !184, size: 128, offset: 1856)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !391, file: !52, line: 677, baseType: !184, size: 128, offset: 1984)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !52, line: 678, baseType: !2673, size: 128, offset: 2112)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !52, line: 678, size: 128, elements: !2674)
!2674 = !{!2675, !2676}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2673, file: !52, line: 679, baseType: !599, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2673, file: !52, line: 680, baseType: !330, size: 128, align: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !391, file: !52, line: 682, baseType: !737, size: 64, offset: 2240)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !391, file: !52, line: 683, baseType: !737, size: 64, offset: 2304)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !391, file: !52, line: 684, baseType: !711, size: 32, offset: 2368)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !391, file: !52, line: 685, baseType: !711, size: 32, offset: 2400)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !391, file: !52, line: 686, baseType: !711, size: 32, offset: 2432)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !391, file: !52, line: 688, baseType: !711, size: 32, offset: 2464)
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !52, line: 690, baseType: !2684, size: 64, offset: 2496)
!2684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !52, line: 690, size: 64, elements: !2685)
!2685 = !{!2686, !2909}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2684, file: !52, line: 691, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !52, line: 1822, size: 2048, elements: !2690)
!2690 = !{!2691, !2692, !2696, !2701, !2705, !2706, !2707, !2711, !2724, !2725, !2733, !2737, !2738, !2742, !2743, !2747, !2752, !2753, !2757, !2761, !2869, !2873, !2874, !2878, !2879, !2883, !2887, !2892, !2896, !2900, !2904, !2908}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2689, file: !52, line: 1823, baseType: !594, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2689, file: !52, line: 1824, baseType: !2693, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!492, !317, !492, !223}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2689, file: !52, line: 1825, baseType: !2697, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!270, !317, !239, !286, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2689, file: !52, line: 1826, baseType: !2702, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!270, !317, !180, !286, !2700}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2689, file: !52, line: 1827, baseType: !808, size: 64, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2689, file: !52, line: 1828, baseType: !808, size: 64, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2689, file: !52, line: 1829, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!223, !811, !451}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2689, file: !52, line: 1830, baseType: !2712, size: 64, offset: 448)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!223, !317, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !52, line: 1776, size: 128, elements: !2717)
!2717 = !{!2718, !2723}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2716, file: !52, line: 1777, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !52, line: 1773, baseType: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!223, !2715, !180, !223, !492, !382, !7}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2716, file: !52, line: 1778, baseType: !492, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2689, file: !52, line: 1831, baseType: !2712, size: 64, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2689, file: !52, line: 1832, baseType: !2726, size: 64, offset: 576)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!2729, !317, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2730, line: 52, baseType: !7)
!2730 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !580, line: 27, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2689, file: !52, line: 1833, baseType: !2734, size: 64, offset: 640)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!274, !317, !7, !289}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2689, file: !52, line: 1834, baseType: !2734, size: 64, offset: 704)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2689, file: !52, line: 1835, baseType: !2739, size: 64, offset: 768)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!223, !317, !945}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2689, file: !52, line: 1836, baseType: !289, size: 64, offset: 832)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2689, file: !52, line: 1837, baseType: !2744, size: 64, offset: 896)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!223, !390, !317}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2689, file: !52, line: 1838, baseType: !2748, size: 64, offset: 960)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!223, !317, !2751}
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !52, line: 1007, baseType: !160)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2689, file: !52, line: 1839, baseType: !2744, size: 64, offset: 1024)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2689, file: !52, line: 1840, baseType: !2754, size: 64, offset: 1088)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!223, !317, !492, !492, !223}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2689, file: !52, line: 1841, baseType: !2758, size: 64, offset: 1152)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!223, !223, !317, !223}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2689, file: !52, line: 1842, baseType: !2762, size: 64, offset: 1216)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!223, !317, !223, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !52, line: 1062, size: 1664, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2799, !2800, !2801, !2814, !2845}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2766, file: !52, line: 1063, baseType: !2765, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2766, file: !52, line: 1064, baseType: !184, size: 128, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2766, file: !52, line: 1065, baseType: !603, size: 128, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2766, file: !52, line: 1066, baseType: !184, size: 128, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2766, file: !52, line: 1069, baseType: !184, size: 128, offset: 448)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2766, file: !52, line: 1072, baseType: !2751, size: 64, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2766, file: !52, line: 1073, baseType: !7, size: 32, offset: 640)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2766, file: !52, line: 1074, baseType: !388, size: 8, offset: 672)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2766, file: !52, line: 1075, baseType: !7, size: 32, offset: 704)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2766, file: !52, line: 1076, baseType: !223, size: 32, offset: 736)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2766, file: !52, line: 1077, baseType: !1365, size: 128, offset: 768)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2766, file: !52, line: 1078, baseType: !317, size: 64, offset: 896)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2766, file: !52, line: 1079, baseType: !492, size: 64, offset: 960)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2766, file: !52, line: 1080, baseType: !492, size: 64, offset: 1024)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2766, file: !52, line: 1082, baseType: !2783, size: 64, offset: 1088)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !52, line: 1314, size: 320, elements: !2785)
!2785 = !{!2786, !2794, !2795, !2796, !2797, !2798}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2784, file: !52, line: 1315, baseType: !2787)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2788, line: 20, baseType: !2789)
!2788 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2788, line: 11, elements: !2790)
!2790 = !{!2791}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2789, file: !2788, line: 12, baseType: !2792)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !209, line: 33, baseType: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 31, elements: !211)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2784, file: !52, line: 1316, baseType: !223, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2784, file: !52, line: 1317, baseType: !223, size: 32, offset: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2784, file: !52, line: 1318, baseType: !2783, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2784, file: !52, line: 1319, baseType: !317, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2784, file: !52, line: 1320, baseType: !330, size: 128, align: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2766, file: !52, line: 1084, baseType: !289, size: 64, offset: 1152)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2766, file: !52, line: 1085, baseType: !289, size: 64, offset: 1216)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2766, file: !52, line: 1087, baseType: !2802, size: 64, offset: 1280)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2804)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !52, line: 1011, size: 128, elements: !2805)
!2805 = !{!2806, !2810}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2804, file: !52, line: 1012, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !2765, !2765}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2804, file: !52, line: 1013, baseType: !2811, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2765}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2766, file: !52, line: 1088, baseType: !2815, size: 64, offset: 1344)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2817)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !52, line: 1016, size: 512, elements: !2818)
!2818 = !{!2819, !2823, !2827, !2828, !2832, !2836, !2840, !2844}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2817, file: !52, line: 1017, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!2751, !2751}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2817, file: !52, line: 1018, baseType: !2824, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2751}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2817, file: !52, line: 1019, baseType: !2811, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2817, file: !52, line: 1020, baseType: !2829, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!223, !2765, !223}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2817, file: !52, line: 1021, baseType: !2833, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!451, !2765}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2817, file: !52, line: 1022, baseType: !2837, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!223, !2765, !223, !187}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2817, file: !52, line: 1023, baseType: !2841, size: 64, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2765, !785}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2817, file: !52, line: 1024, baseType: !2833, size: 64, offset: 448)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2766, file: !52, line: 1097, baseType: !2846, size: 256, offset: 1408)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !52, line: 1089, size: 256, elements: !2847)
!2847 = !{!2848, !2857, !2863}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2846, file: !52, line: 1090, baseType: !2849, size: 256)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2850, line: 10, size: 256, elements: !2851)
!2850 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2851 = !{!2852, !2853, !2856}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2849, file: !2850, line: 11, baseType: !161, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2849, file: !2850, line: 12, baseType: !2854, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2850, line: 5, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2849, file: !2850, line: 13, baseType: !184, size: 128, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2846, file: !52, line: 1091, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2850, line: 17, size: 64, elements: !2859)
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2858, file: !2850, line: 18, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2850, line: 16, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2846, file: !52, line: 1096, baseType: !2864, size: 192)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !52, line: 1092, size: 192, elements: !2865)
!2865 = !{!2866, !2867, !2868}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2864, file: !52, line: 1093, baseType: !184, size: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2864, file: !52, line: 1094, baseType: !223, size: 32, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2864, file: !52, line: 1095, baseType: !7, size: 32, offset: 160)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2689, file: !52, line: 1843, baseType: !2870, size: 64, offset: 1280)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!270, !317, !685, !223, !286, !2700, !223}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2689, file: !52, line: 1844, baseType: !985, size: 64, offset: 1344)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2689, file: !52, line: 1845, baseType: !2875, size: 64, offset: 1408)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!223, !223}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2689, file: !52, line: 1846, baseType: !2762, size: 64, offset: 1472)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2689, file: !52, line: 1847, baseType: !2880, size: 64, offset: 1536)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!270, !1983, !317, !2700, !286, !7}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2689, file: !52, line: 1848, baseType: !2884, size: 64, offset: 1600)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!270, !317, !2700, !1983, !286, !7}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2689, file: !52, line: 1849, baseType: !2888, size: 64, offset: 1664)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!223, !317, !274, !2891, !785}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2689, file: !52, line: 1850, baseType: !2893, size: 64, offset: 1728)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!274, !317, !223, !492, !492}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2689, file: !52, line: 1852, baseType: !2897, size: 64, offset: 1792)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !675, !317}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2689, file: !52, line: 1856, baseType: !2901, size: 64, offset: 1856)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!270, !317, !492, !317, !492, !286, !7}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2689, file: !52, line: 1858, baseType: !2905, size: 64, offset: 1920)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!492, !317, !492, !317, !492, !492, !7}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2689, file: !52, line: 1861, baseType: !2754, size: 64, offset: 1984)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2684, file: !52, line: 692, baseType: !628, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !391, file: !52, line: 694, baseType: !2911, size: 64, offset: 2560)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !52, line: 1100, size: 384, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2912, file: !52, line: 1101, baseType: !197)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2912, file: !52, line: 1102, baseType: !184, size: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2912, file: !52, line: 1103, baseType: !184, size: 128, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2912, file: !52, line: 1104, baseType: !184, size: 128, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !391, file: !52, line: 695, baseType: !699, size: 1216, align: 64, offset: 2624)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !391, file: !52, line: 696, baseType: !184, size: 128, offset: 3840)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !52, line: 697, baseType: !2921, size: 64, offset: 3968)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !52, line: 697, size: 64, elements: !2922)
!2922 = !{!2923, !2924, !2925, !2928, !2929}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2921, file: !52, line: 698, baseType: !1983, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2921, file: !52, line: 699, baseType: !2439, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2921, file: !52, line: 700, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !52, line: 700, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2921, file: !52, line: 701, baseType: !239, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2921, file: !52, line: 702, baseType: !7, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !391, file: !52, line: 705, baseType: !163, size: 32, offset: 4032)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !391, file: !52, line: 708, baseType: !163, size: 32, offset: 4064)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !391, file: !52, line: 709, baseType: !2521, size: 64, offset: 4096)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !391, file: !52, line: 720, baseType: !160, size: 64, offset: 4160)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !348, file: !345, line: 98, baseType: !2935, size: 256, offset: 448)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, elements: !2115)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !348, file: !345, line: 101, baseType: !2937, size: 32, offset: 704)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2938, line: 25, size: 32, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2939 = !{!2940}
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2937, file: !2938, line: 26, baseType: !2941, size: 32)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !2938, line: 26, size: 32, elements: !2942)
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, scope: !2941, file: !2938, line: 30, baseType: !2944, size: 32)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2941, file: !2938, line: 30, size: 32, elements: !2945)
!2945 = !{!2946, !2947}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2944, file: !2938, line: 31, baseType: !197)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2944, file: !2938, line: 32, baseType: !223, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !348, file: !345, line: 102, baseType: !2538, size: 64, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !348, file: !345, line: 103, baseType: !560, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !348, file: !345, line: 104, baseType: !289, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !348, file: !345, line: 105, baseType: !160, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !345, line: 107, baseType: !2953, size: 128, offset: 1024)
!2953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !345, line: 107, size: 128, elements: !2954)
!2954 = !{!2955, !2956}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2953, file: !345, line: 108, baseType: !184, size: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2953, file: !345, line: 109, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !348, file: !345, line: 111, baseType: !184, size: 128, offset: 1152)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !348, file: !345, line: 112, baseType: !184, size: 128, offset: 1280)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !348, file: !345, line: 120, baseType: !2961, size: 128, offset: 1408)
!2961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !345, line: 116, size: 128, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2961, file: !345, line: 117, baseType: !603, size: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2961, file: !345, line: 118, baseType: !362, size: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2961, file: !345, line: 119, baseType: !330, size: 128, align: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !318, file: !52, line: 922, baseType: !390, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !318, file: !52, line: 923, baseType: !2687, size: 64, offset: 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !318, file: !52, line: 929, baseType: !197, offset: 384)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !318, file: !52, line: 930, baseType: !51, size: 32, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !318, file: !52, line: 931, baseType: !735, size: 64, offset: 448)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !318, file: !52, line: 932, baseType: !7, size: 32, offset: 512)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !318, file: !52, line: 933, baseType: !2534, size: 32, offset: 544)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !318, file: !52, line: 934, baseType: !1057, size: 192, offset: 576)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !318, file: !52, line: 935, baseType: !492, size: 64, offset: 768)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !318, file: !52, line: 936, baseType: !2976, size: 192, offset: 832)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !52, line: 885, size: 192, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2976, file: !52, line: 886, baseType: !2787)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2976, file: !52, line: 887, baseType: !1355, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2976, file: !52, line: 888, baseType: !60, size: 32, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2976, file: !52, line: 889, baseType: !396, size: 32, offset: 96)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2976, file: !52, line: 889, baseType: !396, size: 32, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2976, file: !52, line: 890, baseType: !223, size: 32, offset: 160)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !318, file: !52, line: 937, baseType: !1431, size: 64, offset: 1024)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !318, file: !52, line: 938, baseType: !2986, size: 256, offset: 1088)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !52, line: 896, size: 256, elements: !2987)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2986, file: !52, line: 897, baseType: !289, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2986, file: !52, line: 898, baseType: !7, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2986, file: !52, line: 899, baseType: !7, size: 32, offset: 96)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2986, file: !52, line: 902, baseType: !7, size: 32, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2986, file: !52, line: 903, baseType: !7, size: 32, offset: 160)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2986, file: !52, line: 904, baseType: !492, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !318, file: !52, line: 940, baseType: !382, size: 64, offset: 1344)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !318, file: !52, line: 945, baseType: !160, size: 64, offset: 1408)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !318, file: !52, line: 949, baseType: !184, size: 128, offset: 1472)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !318, file: !52, line: 950, baseType: !184, size: 128, offset: 1600)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !318, file: !52, line: 952, baseType: !698, size: 64, offset: 1728)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !318, file: !52, line: 953, baseType: !873, size: 32, offset: 1792)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !318, file: !52, line: 954, baseType: !873, size: 32, offset: 1824)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !308, file: !264, line: 174, baseType: !314, size: 64, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !308, file: !264, line: 176, baseType: !3003, size: 64, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!223, !317, !190, !307, !945}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !296, file: !264, line: 90, baseType: !291, size: 64, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !296, file: !264, line: 91, baseType: !3008, size: 64, offset: 256)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !254, file: !177, line: 143, baseType: !3010, size: 64, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!3013, !190}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3015)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !69, line: 39, size: 384, elements: !3016)
!3016 = !{!3017, !3018, !3022, !3026, !3032, !3036}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3015, file: !69, line: 40, baseType: !68, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3015, file: !69, line: 41, baseType: !3019, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!451}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3015, file: !69, line: 42, baseType: !3023, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!160}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3015, file: !69, line: 43, baseType: !3027, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!2012, !3030}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !69, line: 19, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3015, file: !69, line: 44, baseType: !3033, size: 64, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!2012}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3015, file: !69, line: 45, baseType: !429, size: 64, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !254, file: !177, line: 144, baseType: !3038, size: 64, offset: 320)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!2012, !190}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !254, file: !177, line: 145, baseType: !3042, size: 64, offset: 384)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !190, !3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !176, file: !177, line: 70, baseType: !3048, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !580, line: 123, size: 1024, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3179, !3180, !3181, !3182, !3183}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3049, file: !580, line: 124, baseType: !711, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3049, file: !580, line: 125, baseType: !711, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3049, file: !580, line: 135, baseType: !3048, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3049, file: !580, line: 136, baseType: !180, size: 64, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3049, file: !580, line: 138, baseType: !724, size: 192, align: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3049, file: !580, line: 140, baseType: !2012, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3049, file: !580, line: 141, baseType: !7, size: 32, offset: 448)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !3049, file: !580, line: 142, baseType: !3059, size: 256, offset: 512)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3049, file: !580, line: 142, size: 256, elements: !3060)
!3060 = !{!3061, !3107, !3111}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3059, file: !580, line: 143, baseType: !3062, size: 192)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !580, line: 91, size: 192, elements: !3063)
!3063 = !{!3064, !3065, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3062, file: !580, line: 92, baseType: !289, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3062, file: !580, line: 94, baseType: !720, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3062, file: !580, line: 100, baseType: !3067, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !580, line: 180, size: 704, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3079, !3080, !3081, !3105, !3106}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3068, file: !580, line: 182, baseType: !3048, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3068, file: !580, line: 183, baseType: !7, size: 32, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3068, file: !580, line: 186, baseType: !3073, size: 192, offset: 128)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3074, line: 19, size: 192, elements: !3075)
!3074 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3073, file: !3074, line: 20, baseType: !703, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3073, file: !3074, line: 21, baseType: !7, size: 32, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3073, file: !3074, line: 22, baseType: !7, size: 32, offset: 160)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3068, file: !580, line: 187, baseType: !161, size: 32, offset: 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3068, file: !580, line: 188, baseType: !161, size: 32, offset: 352)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3068, file: !580, line: 189, baseType: !3082, size: 64, offset: 384)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !580, line: 168, size: 320, elements: !3084)
!3084 = !{!3085, !3089, !3093, !3097, !3101}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3083, file: !580, line: 169, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!223, !675, !3067}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3083, file: !580, line: 171, baseType: !3090, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!223, !3048, !180, !280}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3083, file: !580, line: 173, baseType: !3094, size: 64, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!223, !3048}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3083, file: !580, line: 174, baseType: !3098, size: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!223, !3048, !3048, !180}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3083, file: !580, line: 176, baseType: !3102, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!223, !675, !3048, !3067}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3068, file: !580, line: 192, baseType: !184, size: 128, offset: 448)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3068, file: !580, line: 194, baseType: !1365, size: 128, offset: 576)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3059, file: !580, line: 144, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !580, line: 103, size: 64, elements: !3109)
!3109 = !{!3110}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3108, file: !580, line: 104, baseType: !3048, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3059, file: !580, line: 145, baseType: !3112, size: 256)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !580, line: 107, size: 256, elements: !3113)
!3113 = !{!3114, !3174, !3177, !3178}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3112, file: !580, line: 108, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !580, line: 217, size: 768, elements: !3118)
!3118 = !{!3119, !3139, !3143, !3147, !3151, !3155, !3159, !3163, !3164, !3165, !3166, !3170}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3117, file: !580, line: 222, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!223, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !580, line: 197, size: 1088, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3124, file: !580, line: 199, baseType: !3048, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3124, file: !580, line: 200, baseType: !317, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3124, file: !580, line: 201, baseType: !675, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3124, file: !580, line: 202, baseType: !160, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3124, file: !580, line: 205, baseType: !1057, size: 192, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3124, file: !580, line: 206, baseType: !1057, size: 192, offset: 448)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3124, file: !580, line: 207, baseType: !223, size: 32, offset: 640)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3124, file: !580, line: 208, baseType: !184, size: 128, offset: 704)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3124, file: !580, line: 209, baseType: !239, size: 64, offset: 832)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3124, file: !580, line: 211, baseType: !286, size: 64, offset: 896)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3124, file: !580, line: 212, baseType: !451, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3124, file: !580, line: 213, baseType: !451, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3124, file: !580, line: 214, baseType: !973, size: 64, offset: 1024)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3117, file: !580, line: 223, baseType: !3140, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{null, !3123}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3117, file: !580, line: 236, baseType: !3144, size: 64, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!223, !675, !160}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3117, file: !580, line: 238, baseType: !3148, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!160, !675, !2700}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3117, file: !580, line: 239, baseType: !3152, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!160, !675, !160, !2700}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3117, file: !580, line: 240, baseType: !3156, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !675, !160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3117, file: !580, line: 242, baseType: !3160, size: 64, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!270, !3123, !239, !286, !492}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3117, file: !580, line: 252, baseType: !286, size: 64, offset: 448)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3117, file: !580, line: 259, baseType: !451, size: 8, offset: 512)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3117, file: !580, line: 260, baseType: !3160, size: 64, offset: 576)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3117, file: !580, line: 263, baseType: !3167, size: 64, offset: 640)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!2729, !3123, !2731}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3117, file: !580, line: 266, baseType: !3171, size: 64, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!223, !3123, !945}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3112, file: !580, line: 109, baseType: !3175, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !580, line: 31, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3112, file: !580, line: 110, baseType: !492, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3112, file: !580, line: 111, baseType: !3048, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3049, file: !580, line: 148, baseType: !160, size: 64, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3049, file: !580, line: 154, baseType: !382, size: 64, offset: 832)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3049, file: !580, line: 156, baseType: !281, size: 16, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3049, file: !580, line: 157, baseType: !280, size: 16, offset: 912)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3049, file: !580, line: 158, baseType: !3184, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !580, line: 32, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !176, file: !177, line: 71, baseType: !3187, size: 32, offset: 448)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3188, line: 19, size: 32, elements: !3189)
!3188 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3187, file: !3188, line: 20, baseType: !1114, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !176, file: !177, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !176, file: !177, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !176, file: !177, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !176, file: !177, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !176, file: !177, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !81, line: 463, baseType: !172, size: 64, offset: 512)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !173, file: !81, line: 465, baseType: !3198, size: 64, offset: 576)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !81, line: 36, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !173, file: !81, line: 467, baseType: !180, size: 64, offset: 640)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !173, file: !81, line: 468, baseType: !3202, size: 64, offset: 704)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !81, line: 87, size: 384, elements: !3205)
!3205 = !{!3206, !3207, !3208, !3212, !3217, !3221}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3204, file: !81, line: 88, baseType: !180, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3204, file: !81, line: 89, baseType: !293, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3204, file: !81, line: 90, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!223, !172, !234}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3204, file: !81, line: 91, baseType: !3213, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!239, !172, !3216, !3045, !3046}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3204, file: !81, line: 93, baseType: !3218, size: 64, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !172}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3204, file: !81, line: 95, baseType: !3222, size: 64, offset: 320)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3224)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !88, line: 278, size: 1472, elements: !3225)
!3225 = !{!3226, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3224, file: !88, line: 279, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!223, !172}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3224, file: !88, line: 280, baseType: !3218, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3224, file: !88, line: 281, baseType: !3227, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3224, file: !88, line: 282, baseType: !3227, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3224, file: !88, line: 283, baseType: !3227, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3224, file: !88, line: 284, baseType: !3227, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3224, file: !88, line: 285, baseType: !3227, size: 64, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3224, file: !88, line: 286, baseType: !3227, size: 64, offset: 448)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3224, file: !88, line: 287, baseType: !3227, size: 64, offset: 512)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3224, file: !88, line: 288, baseType: !3227, size: 64, offset: 576)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3224, file: !88, line: 289, baseType: !3227, size: 64, offset: 640)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3224, file: !88, line: 290, baseType: !3227, size: 64, offset: 704)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3224, file: !88, line: 291, baseType: !3227, size: 64, offset: 768)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3224, file: !88, line: 292, baseType: !3227, size: 64, offset: 832)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3224, file: !88, line: 293, baseType: !3227, size: 64, offset: 896)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3224, file: !88, line: 294, baseType: !3227, size: 64, offset: 960)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3224, file: !88, line: 295, baseType: !3227, size: 64, offset: 1024)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3224, file: !88, line: 296, baseType: !3227, size: 64, offset: 1088)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3224, file: !88, line: 297, baseType: !3227, size: 64, offset: 1152)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3224, file: !88, line: 298, baseType: !3227, size: 64, offset: 1216)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3224, file: !88, line: 299, baseType: !3227, size: 64, offset: 1280)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3224, file: !88, line: 300, baseType: !3227, size: 64, offset: 1344)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3224, file: !88, line: 301, baseType: !3227, size: 64, offset: 1408)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !173, file: !81, line: 470, baseType: !3253, size: 64, offset: 768)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3255, line: 82, size: 1408, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262, !3263, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3338, !3341, !3342}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3254, file: !3255, line: 83, baseType: !180, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3254, file: !3255, line: 84, baseType: !180, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3254, file: !3255, line: 85, baseType: !172, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3254, file: !3255, line: 86, baseType: !293, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3254, file: !3255, line: 87, baseType: !293, size: 64, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3254, file: !3255, line: 88, baseType: !293, size: 64, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3254, file: !3255, line: 90, baseType: !3264, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!223, !172, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !75, line: 95, size: 1152, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3289, !3302, !3303, !3304, !3305, !3306, !3314, !3315, !3316, !3317, !3318, !3319}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3268, file: !75, line: 96, baseType: !180, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3268, file: !75, line: 97, baseType: !3253, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3268, file: !75, line: 99, baseType: !594, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3268, file: !75, line: 100, baseType: !180, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3268, file: !75, line: 102, baseType: !451, size: 8, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3268, file: !75, line: 103, baseType: !74, size: 32, offset: 288)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3268, file: !75, line: 105, baseType: !3277, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3280, line: 262, size: 1600, elements: !3281)
!3280 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3281 = !{!3282, !3283, !3284, !3288}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3279, file: !3280, line: 263, baseType: !2524, size: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3279, file: !3280, line: 264, baseType: !2524, size: 256, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3279, file: !3280, line: 265, baseType: !3285, size: 1024, offset: 512)
!3285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !3286)
!3286 = !{!3287}
!3287 = !DISubrange(count: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3279, file: !3280, line: 266, baseType: !2012, size: 64, offset: 1536)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3268, file: !75, line: 106, baseType: !3290, size: 64, offset: 384)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3292)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3280, line: 210, size: 256, elements: !3293)
!3293 = !{!3294, !3298, !3300, !3301}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3292, file: !3280, line: 211, baseType: !3295, size: 72)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 72, elements: !3296)
!3296 = !{!3297}
!3297 = !DISubrange(count: 9)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3292, file: !3280, line: 212, baseType: !3299, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3280, line: 14, baseType: !289)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3292, file: !3280, line: 213, baseType: !163, size: 32, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3292, file: !3280, line: 214, baseType: !163, size: 32, offset: 224)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3268, file: !75, line: 108, baseType: !3227, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3268, file: !75, line: 109, baseType: !3218, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3268, file: !75, line: 110, baseType: !3227, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3268, file: !75, line: 111, baseType: !3218, size: 64, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3268, file: !75, line: 112, baseType: !3307, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!223, !172, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !88, line: 52, baseType: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !88, line: 50, size: 32, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3311, file: !88, line: 51, baseType: !223, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3268, file: !75, line: 113, baseType: !3227, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3268, file: !75, line: 114, baseType: !293, size: 64, offset: 832)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3268, file: !75, line: 115, baseType: !293, size: 64, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3268, file: !75, line: 117, baseType: !3222, size: 64, offset: 960)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3268, file: !75, line: 118, baseType: !3218, size: 64, offset: 1024)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3268, file: !75, line: 120, baseType: !3320, size: 64, offset: 1088)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !75, line: 120, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3254, file: !3255, line: 91, baseType: !3209, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3254, file: !3255, line: 92, baseType: !3227, size: 64, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3254, file: !3255, line: 93, baseType: !3218, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3254, file: !3255, line: 94, baseType: !3227, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3254, file: !3255, line: 95, baseType: !3218, size: 64, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3254, file: !3255, line: 97, baseType: !3227, size: 64, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3254, file: !3255, line: 98, baseType: !3227, size: 64, offset: 832)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3254, file: !3255, line: 100, baseType: !3307, size: 64, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3254, file: !3255, line: 101, baseType: !3227, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3254, file: !3255, line: 103, baseType: !3227, size: 64, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3254, file: !3255, line: 105, baseType: !3227, size: 64, offset: 1088)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3254, file: !3255, line: 107, baseType: !3222, size: 64, offset: 1152)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3254, file: !3255, line: 109, baseType: !3335, size: 64, offset: 1216)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3255, line: 109, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3254, file: !3255, line: 111, baseType: !3339, size: 64, offset: 1280)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3255, line: 111, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3254, file: !3255, line: 112, baseType: !609, offset: 1344)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3254, file: !3255, line: 114, baseType: !451, size: 8, offset: 1344)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !173, file: !81, line: 471, baseType: !3267, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !173, file: !81, line: 473, baseType: !160, size: 64, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !173, file: !81, line: 475, baseType: !160, size: 64, offset: 960)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !173, file: !81, line: 480, baseType: !1057, size: 192, offset: 1024)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !173, file: !81, line: 484, baseType: !3348, size: 576, offset: 1216)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !81, line: 361, size: 576, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3348, file: !81, line: 362, baseType: !184, size: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3348, file: !81, line: 363, baseType: !184, size: 128, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3348, file: !81, line: 364, baseType: !184, size: 128, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3348, file: !81, line: 365, baseType: !184, size: 128, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3348, file: !81, line: 366, baseType: !451, size: 8, offset: 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3348, file: !81, line: 367, baseType: !80, size: 32, offset: 544)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !173, file: !81, line: 485, baseType: !3357, size: 2304, offset: 1792)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !88, line: 565, size: 2304, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3454, !3458}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3357, file: !88, line: 566, baseType: !3310, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3357, file: !88, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3357, file: !88, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3357, file: !88, line: 569, baseType: !451, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3357, file: !88, line: 570, baseType: !451, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3357, file: !88, line: 571, baseType: !451, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3357, file: !88, line: 572, baseType: !451, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3357, file: !88, line: 573, baseType: !451, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3357, file: !88, line: 574, baseType: !451, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3357, file: !88, line: 575, baseType: !451, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3357, file: !88, line: 576, baseType: !451, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3357, file: !88, line: 577, baseType: !161, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3357, file: !88, line: 578, baseType: !197, offset: 96)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3357, file: !88, line: 580, baseType: !184, size: 128, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3357, file: !88, line: 581, baseType: !1386, size: 192, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3357, file: !88, line: 582, baseType: !3375, size: 64, offset: 448)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3377, line: 43, size: 1472, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3386, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3376, file: !3377, line: 44, baseType: !180, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3376, file: !3377, line: 45, baseType: !223, size: 32, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3376, file: !3377, line: 46, baseType: !184, size: 128, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3376, file: !3377, line: 47, baseType: !197, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3376, file: !3377, line: 48, baseType: !3384, size: 64, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !88, line: 533, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3376, file: !3377, line: 49, baseType: !3387, size: 320, offset: 320)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3388, line: 11, size: 320, elements: !3389)
!3388 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3389 = !{!3390, !3391, !3392, !3397}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3387, file: !3388, line: 16, baseType: !603, size: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3387, file: !3388, line: 17, baseType: !289, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3387, file: !3388, line: 18, baseType: !3393, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3396}
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3387, file: !3388, line: 19, baseType: !161, size: 32, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3376, file: !3377, line: 50, baseType: !289, size: 64, offset: 640)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3376, file: !3377, line: 51, baseType: !1184, size: 64, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3376, file: !3377, line: 52, baseType: !1184, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3376, file: !3377, line: 53, baseType: !1184, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3376, file: !3377, line: 54, baseType: !1184, size: 64, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3376, file: !3377, line: 55, baseType: !1184, size: 64, offset: 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3376, file: !3377, line: 56, baseType: !289, size: 64, offset: 1024)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3376, file: !3377, line: 57, baseType: !289, size: 64, offset: 1088)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3376, file: !3377, line: 58, baseType: !289, size: 64, offset: 1152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3376, file: !3377, line: 59, baseType: !289, size: 64, offset: 1216)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3376, file: !3377, line: 60, baseType: !289, size: 64, offset: 1280)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3376, file: !3377, line: 61, baseType: !172, size: 64, offset: 1344)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3376, file: !3377, line: 62, baseType: !451, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3376, file: !3377, line: 63, baseType: !451, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3357, file: !88, line: 583, baseType: !451, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3357, file: !88, line: 584, baseType: !451, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3357, file: !88, line: 585, baseType: !451, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3357, file: !88, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3357, file: !88, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3357, file: !88, line: 592, baseType: !1176, size: 512, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3357, file: !88, line: 593, baseType: !382, size: 64, offset: 1088)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3357, file: !88, line: 594, baseType: !1842, size: 256, offset: 1152)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3357, file: !88, line: 595, baseType: !1365, size: 128, offset: 1408)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3357, file: !88, line: 596, baseType: !3384, size: 64, offset: 1536)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3357, file: !88, line: 597, baseType: !711, size: 32, offset: 1600)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3357, file: !88, line: 598, baseType: !711, size: 32, offset: 1632)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3357, file: !88, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3357, file: !88, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3357, file: !88, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3357, file: !88, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3357, file: !88, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3357, file: !88, line: 604, baseType: !451, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3357, file: !88, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3357, file: !88, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3357, file: !88, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3357, file: !88, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3357, file: !88, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3357, file: !88, line: 610, baseType: !7, size: 32, offset: 1696)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3357, file: !88, line: 611, baseType: !87, size: 32, offset: 1728)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3357, file: !88, line: 612, baseType: !95, size: 32, offset: 1760)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3357, file: !88, line: 613, baseType: !223, size: 32, offset: 1792)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3357, file: !88, line: 614, baseType: !223, size: 32, offset: 1824)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3357, file: !88, line: 615, baseType: !382, size: 64, offset: 1856)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3357, file: !88, line: 616, baseType: !382, size: 64, offset: 1920)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3357, file: !88, line: 617, baseType: !382, size: 64, offset: 1984)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3357, file: !88, line: 618, baseType: !382, size: 64, offset: 2048)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3357, file: !88, line: 620, baseType: !3445, size: 64, offset: 2112)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !88, line: 536, size: 256, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3446, file: !88, line: 537, baseType: !197)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3446, file: !88, line: 538, baseType: !7, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3446, file: !88, line: 540, baseType: !184, size: 128, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3446, file: !88, line: 543, baseType: !3452, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !88, line: 534, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3357, file: !88, line: 621, baseType: !3455, size: 64, offset: 2176)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !172, !1328}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3357, file: !88, line: 622, baseType: !3459, size: 64, offset: 2240)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !88, line: 622, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !173, file: !81, line: 486, baseType: !3462, size: 64, offset: 4096)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !88, line: 642, size: 1792, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3471, !3472, !3473}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3463, file: !88, line: 643, baseType: !3224, size: 1472)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3463, file: !88, line: 644, baseType: !3227, size: 64, offset: 1472)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3463, file: !88, line: 645, baseType: !3468, size: 64, offset: 1536)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !172, !451}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3463, file: !88, line: 646, baseType: !3227, size: 64, offset: 1600)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3463, file: !88, line: 647, baseType: !3218, size: 64, offset: 1664)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3463, file: !88, line: 648, baseType: !3218, size: 64, offset: 1728)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !173, file: !81, line: 493, baseType: !3475, size: 64, offset: 4160)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !102, line: 162, size: 1088, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3653, !3654, !3655, !3656, !3657, !3658, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3476, file: !102, line: 163, baseType: !184, size: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3476, file: !102, line: 164, baseType: !180, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3476, file: !102, line: 165, baseType: !3481, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !102, line: 105, size: 640, elements: !3484)
!3484 = !{!3485, !3603, !3614, !3619, !3623, !3630, !3634, !3638, !3645, !3649}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3483, file: !102, line: 106, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!223, !3475, !3489, !101}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3491, line: 51, size: 1344, elements: !3492)
!3491 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3492 = !{!3493, !3494, !3496, !3497, !3587, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3490, file: !3491, line: 52, baseType: !180, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3490, file: !3491, line: 53, baseType: !3495, size: 32, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3491, line: 28, baseType: !161)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3490, file: !3491, line: 54, baseType: !180, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3490, file: !3491, line: 55, baseType: !3498, size: 192, offset: 192)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3499, line: 17, size: 192, elements: !3500)
!3499 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3500 = !{!3501, !3503, !3586}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3498, file: !3499, line: 18, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3498, file: !3499, line: 19, baseType: !3504, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3499, line: 110, size: 1152, elements: !3507)
!3507 = !{!3508, !3512, !3516, !3522, !3528, !3532, !3536, !3541, !3545, !3546, !3550, !3554, !3558, !3569, !3570, !3571, !3572, !3582}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3506, file: !3499, line: 111, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3502, !3502}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3506, file: !3499, line: 112, baseType: !3513, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3502}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3506, file: !3499, line: 113, baseType: !3517, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!451, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3506, file: !3499, line: 114, baseType: !3523, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!2012, !3520, !3526}
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3506, file: !3499, line: 116, baseType: !3529, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!451, !3520, !180}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3506, file: !3499, line: 118, baseType: !3533, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!223, !3520, !180, !7, !160, !286}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3506, file: !3499, line: 123, baseType: !3537, size: 64, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!223, !3520, !180, !3540, !286}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3506, file: !3499, line: 126, baseType: !3542, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!180, !3520}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3506, file: !3499, line: 127, baseType: !3542, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3506, file: !3499, line: 128, baseType: !3547, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!3502, !3520}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3506, file: !3499, line: 130, baseType: !3551, size: 64, offset: 640)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!3502, !3520, !3502}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3506, file: !3499, line: 133, baseType: !3555, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!3502, !3520, !180}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3506, file: !3499, line: 135, baseType: !3559, size: 64, offset: 768)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!223, !3520, !180, !180, !7, !7, !3562}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3499, line: 43, size: 640, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3563, file: !3499, line: 44, baseType: !3502, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3563, file: !3499, line: 45, baseType: !7, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3563, file: !3499, line: 46, baseType: !3568, size: 512, offset: 128)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 512, elements: !1214)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3506, file: !3499, line: 140, baseType: !3551, size: 64, offset: 832)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3506, file: !3499, line: 143, baseType: !3547, size: 64, offset: 896)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3506, file: !3499, line: 145, baseType: !3509, size: 64, offset: 960)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3506, file: !3499, line: 146, baseType: !3573, size: 64, offset: 1024)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!223, !3520, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3499, line: 29, size: 128, elements: !3578)
!3578 = !{!3579, !3580, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3577, file: !3499, line: 30, baseType: !7, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3577, file: !3499, line: 31, baseType: !7, size: 32, offset: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3577, file: !3499, line: 32, baseType: !3520, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3506, file: !3499, line: 148, baseType: !3583, size: 64, offset: 1088)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!223, !3520, !172}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3498, file: !3499, line: 20, baseType: !172, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3490, file: !3491, line: 57, baseType: !3588, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3491, line: 31, size: 704, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3589, file: !3491, line: 32, baseType: !239, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3589, file: !3491, line: 33, baseType: !223, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3589, file: !3491, line: 34, baseType: !160, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3589, file: !3491, line: 35, baseType: !3588, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3589, file: !3491, line: 43, baseType: !308, size: 448, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3490, file: !3491, line: 58, baseType: !3588, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3490, file: !3491, line: 59, baseType: !3489, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3490, file: !3491, line: 60, baseType: !3489, size: 64, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3490, file: !3491, line: 61, baseType: !3489, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3490, file: !3491, line: 63, baseType: !176, size: 512, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3490, file: !3491, line: 65, baseType: !289, size: 64, offset: 1216)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3490, file: !3491, line: 66, baseType: !160, size: 64, offset: 1280)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3483, file: !102, line: 108, baseType: !3604, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!223, !3475, !3607, !101}
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !102, line: 63, size: 640, elements: !3609)
!3609 = !{!3610, !3611, !3612}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3608, file: !102, line: 64, baseType: !3502, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3608, file: !102, line: 65, baseType: !223, size: 32, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3608, file: !102, line: 66, baseType: !3613, size: 512, offset: 96)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 512, elements: !1619)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3483, file: !102, line: 110, baseType: !3615, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!223, !3475, !7, !3618}
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !159, line: 164, baseType: !289)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3483, file: !102, line: 111, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !3475, !7}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3483, file: !102, line: 112, baseType: !3624, size: 64, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!223, !3475, !3489, !3627, !7, !3629, !2507}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3483, file: !102, line: 117, baseType: !3631, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!223, !3475, !7, !7, !160}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3483, file: !102, line: 119, baseType: !3635, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3475, !7, !7}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3483, file: !102, line: 121, baseType: !3639, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!223, !3475, !3642, !451}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3644, line: 11, flags: DIFlagFwdDecl)
!3644 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3483, file: !102, line: 122, baseType: !3646, size: 64, offset: 512)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !3475, !3642}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3483, file: !102, line: 123, baseType: !3650, size: 64, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!223, !3475, !3607, !3629, !2507}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3476, file: !102, line: 166, baseType: !160, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3476, file: !102, line: 167, baseType: !7, size: 32, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3476, file: !102, line: 168, baseType: !7, size: 32, offset: 352)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3476, file: !102, line: 171, baseType: !3502, size: 64, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3476, file: !102, line: 172, baseType: !101, size: 32, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3476, file: !102, line: 173, baseType: !3659, size: 64, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !102, line: 134, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3476, file: !102, line: 175, baseType: !3475, size: 64, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3476, file: !102, line: 182, baseType: !3618, size: 64, offset: 640)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3476, file: !102, line: 183, baseType: !7, size: 32, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3476, file: !102, line: 184, baseType: !7, size: 32, offset: 736)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3476, file: !102, line: 185, baseType: !703, size: 128, offset: 768)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3476, file: !102, line: 186, baseType: !1057, size: 192, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3476, file: !102, line: 187, baseType: !3668, offset: 1088)
!3668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2216)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !173, file: !81, line: 499, baseType: !184, size: 128, offset: 4224)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !173, file: !81, line: 502, baseType: !3671, size: 64, offset: 4352)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3673)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !81, line: 502, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !173, file: !81, line: 504, baseType: !3675, size: 64, offset: 4416)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !173, file: !81, line: 505, baseType: !382, size: 64, offset: 4480)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !173, file: !81, line: 510, baseType: !382, size: 64, offset: 4544)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !173, file: !81, line: 511, baseType: !3679, size: 64, offset: 4608)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3681)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !81, line: 511, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !173, file: !81, line: 513, baseType: !3683, size: 64, offset: 4672)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !81, line: 288, size: 128, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3684, file: !81, line: 293, baseType: !7, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3684, file: !81, line: 294, baseType: !289, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !173, file: !81, line: 515, baseType: !184, size: 128, offset: 4736)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !173, file: !81, line: 526, baseType: !3690, offset: 4864)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3691, line: 5, elements: !211)
!3691 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !173, file: !81, line: 528, baseType: !3489, size: 64, offset: 4864)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !173, file: !81, line: 529, baseType: !3502, size: 64, offset: 4928)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !173, file: !81, line: 534, baseType: !474, size: 32, offset: 4992)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !173, file: !81, line: 535, baseType: !161, size: 32, offset: 5024)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !173, file: !81, line: 537, baseType: !197, offset: 5056)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !173, file: !81, line: 538, baseType: !184, size: 128, offset: 5056)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !173, file: !81, line: 540, baseType: !3699, size: 64, offset: 5184)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3701, line: 54, size: 960, elements: !3702)
!3701 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3713, !3717, !3718, !3719, !3720, !3724, !3728, !3729}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3700, file: !3701, line: 55, baseType: !180, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3700, file: !3701, line: 56, baseType: !594, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3700, file: !3701, line: 58, baseType: !293, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3700, file: !3701, line: 59, baseType: !293, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3700, file: !3701, line: 60, baseType: !190, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3700, file: !3701, line: 62, baseType: !3209, size: 64, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3700, file: !3701, line: 63, baseType: !3710, size: 64, offset: 384)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!239, !172, !3216}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3700, file: !3701, line: 65, baseType: !3714, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !3699}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3700, file: !3701, line: 66, baseType: !3218, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3700, file: !3701, line: 68, baseType: !3227, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3700, file: !3701, line: 70, baseType: !3013, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3700, file: !3701, line: 71, baseType: !3721, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!2012, !172}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3700, file: !3701, line: 73, baseType: !3725, size: 64, offset: 768)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !172, !3045, !3046}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3700, file: !3701, line: 75, baseType: !3222, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3700, file: !3701, line: 77, baseType: !3339, size: 64, offset: 896)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !173, file: !81, line: 541, baseType: !293, size: 64, offset: 5248)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !173, file: !81, line: 543, baseType: !3218, size: 64, offset: 5312)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !173, file: !81, line: 544, baseType: !3733, size: 64, offset: 5376)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !81, line: 45, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !173, file: !81, line: 545, baseType: !3736, size: 64, offset: 5440)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !81, line: 47, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !173, file: !81, line: 547, baseType: !451, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !173, file: !81, line: 548, baseType: !451, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !173, file: !81, line: 549, baseType: !451, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !173, file: !81, line: 550, baseType: !451, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !169, file: !116, line: 426, baseType: !172, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !169, file: !116, line: 427, baseType: !223, size: 32, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !169, file: !116, line: 428, baseType: !180, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !169, file: !116, line: 429, baseType: !1236, size: 8, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !169, file: !116, line: 433, baseType: !1236, size: 8, offset: 264)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !169, file: !116, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !169, file: !116, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !169, file: !116, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !169, file: !116, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !169, file: !116, line: 442, baseType: !7, size: 32, offset: 288)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !169, file: !116, line: 444, baseType: !223, size: 32, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !169, file: !116, line: 446, baseType: !1057, size: 192, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !169, file: !116, line: 448, baseType: !3755, size: 128, offset: 576)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !116, line: 417, size: 128, elements: !3756)
!3756 = !{!3757}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3755, file: !116, line: 418, baseType: !3758, size: 128)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 128, elements: !1453)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !169, file: !116, line: 449, baseType: !3760, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !116, line: 631, size: 10624, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3781, !3782, !3784, !3785, !3787, !3828, !3829, !3846, !3907, !3989, !3990, !3992, !3993, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4028, !4029, !4030, !4035, !4042, !4043, !4044, !4045}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !3761, file: !116, line: 632, baseType: !223, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !3761, file: !116, line: 633, baseType: !1618, size: 128, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !3761, file: !116, line: 634, baseType: !161, size: 32, offset: 160)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3761, file: !116, line: 635, baseType: !5, size: 32, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !3761, file: !116, line: 636, baseType: !18, size: 32, offset: 224)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !3761, file: !116, line: 637, baseType: !7, size: 32, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !3761, file: !116, line: 638, baseType: !7, size: 32, offset: 288)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !3761, file: !116, line: 640, baseType: !3771, size: 64, offset: 320)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !152, line: 554, size: 576, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779, !3780}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !3772, file: !152, line: 555, baseType: !3760, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !3772, file: !152, line: 556, baseType: !223, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !3772, file: !152, line: 557, baseType: !7, size: 32, offset: 96)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3772, file: !152, line: 558, baseType: !160, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3772, file: !152, line: 561, baseType: !197, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !3772, file: !152, line: 562, baseType: !184, size: 128, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !3772, file: !152, line: 563, baseType: !1842, size: 256, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !3761, file: !116, line: 641, baseType: !223, size: 32, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !3761, file: !116, line: 643, baseType: !3783, size: 64, offset: 416)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1453)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3761, file: !116, line: 645, baseType: !3760, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3761, file: !116, line: 646, baseType: !3786, size: 64, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !3761, file: !116, line: 647, baseType: !3788, size: 640, offset: 640)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !116, line: 67, size: 640, elements: !3789)
!3789 = !{!3790, !3802, !3810, !3818, !3819, !3820, !3823, !3825, !3826, !3827}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3788, file: !116, line: 68, baseType: !3791, size: 72)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !6, line: 407, size: 72, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3799, !3800, !3801}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3791, file: !6, line: 408, baseType: !1237, size: 8)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3791, file: !6, line: 409, baseType: !1237, size: 8, offset: 8)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3791, file: !6, line: 411, baseType: !1237, size: 8, offset: 16)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3791, file: !6, line: 412, baseType: !1237, size: 8, offset: 24)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3791, file: !6, line: 413, baseType: !3798, size: 16, offset: 32)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2730, line: 29, baseType: !824)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3791, file: !6, line: 414, baseType: !1237, size: 8, offset: 48)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3791, file: !6, line: 418, baseType: !1237, size: 8, offset: 56)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3791, file: !6, line: 419, baseType: !1237, size: 8, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3788, file: !116, line: 69, baseType: !3803, size: 48, offset: 72)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !6, line: 689, size: 48, elements: !3804)
!3804 = !{!3805, !3806, !3807, !3808, !3809}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3803, file: !6, line: 690, baseType: !1237, size: 8)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3803, file: !6, line: 691, baseType: !1237, size: 8, offset: 8)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3803, file: !6, line: 693, baseType: !1237, size: 8, offset: 16)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3803, file: !6, line: 694, baseType: !1237, size: 8, offset: 24)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3803, file: !6, line: 695, baseType: !3798, size: 16, offset: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3788, file: !116, line: 70, baseType: !3811, size: 64, offset: 120)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !6, line: 677, size: 64, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3816}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3811, file: !6, line: 678, baseType: !1237, size: 8)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3811, file: !6, line: 679, baseType: !1237, size: 8, offset: 8)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3811, file: !6, line: 680, baseType: !3798, size: 16, offset: 16)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3811, file: !6, line: 681, baseType: !3817, size: 32, offset: 32)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2730, line: 31, baseType: !163)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3788, file: !116, line: 71, baseType: !184, size: 128, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3788, file: !116, line: 72, baseType: !160, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3788, file: !116, line: 73, baseType: !3821, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !116, line: 48, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3788, file: !116, line: 75, baseType: !3824, size: 64, offset: 448)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3788, file: !116, line: 76, baseType: !223, size: 32, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3788, file: !116, line: 77, baseType: !223, size: 32, offset: 544)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3788, file: !116, line: 78, baseType: !223, size: 32, offset: 576)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3761, file: !116, line: 649, baseType: !173, size: 5568, offset: 1280)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !3761, file: !116, line: 651, baseType: !3830, size: 144, offset: 6848)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !6, line: 289, size: 144, elements: !3831)
!3831 = !{!3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3830, file: !6, line: 290, baseType: !1237, size: 8)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3830, file: !6, line: 291, baseType: !1237, size: 8, offset: 8)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3830, file: !6, line: 293, baseType: !3798, size: 16, offset: 16)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3830, file: !6, line: 294, baseType: !1237, size: 8, offset: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3830, file: !6, line: 295, baseType: !1237, size: 8, offset: 40)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3830, file: !6, line: 296, baseType: !1237, size: 8, offset: 48)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3830, file: !6, line: 297, baseType: !1237, size: 8, offset: 56)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3830, file: !6, line: 298, baseType: !3798, size: 16, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3830, file: !6, line: 299, baseType: !3798, size: 16, offset: 80)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3830, file: !6, line: 300, baseType: !3798, size: 16, offset: 96)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3830, file: !6, line: 301, baseType: !1237, size: 8, offset: 112)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3830, file: !6, line: 302, baseType: !1237, size: 8, offset: 120)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3830, file: !6, line: 303, baseType: !1237, size: 8, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3830, file: !6, line: 304, baseType: !1237, size: 8, offset: 136)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !3761, file: !116, line: 652, baseType: !3847, size: 64, offset: 7040)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !116, line: 396, size: 384, elements: !3849)
!3849 = !{!3850, !3858, !3866, !3878, !3891, !3900}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3848, file: !116, line: 397, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !6, line: 844, size: 40, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3857}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3852, file: !6, line: 845, baseType: !1237, size: 8)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3852, file: !6, line: 846, baseType: !1237, size: 8, offset: 8)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3852, file: !6, line: 848, baseType: !3798, size: 16, offset: 16)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3852, file: !6, line: 849, baseType: !1237, size: 8, offset: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3848, file: !116, line: 400, baseType: !3859, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !6, line: 895, size: 56, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3860, file: !6, line: 896, baseType: !1237, size: 8)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3860, file: !6, line: 897, baseType: !1237, size: 8, offset: 8)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3860, file: !6, line: 898, baseType: !1237, size: 8, offset: 16)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3860, file: !6, line: 899, baseType: !3817, size: 32, offset: 24)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3848, file: !116, line: 401, baseType: !3867, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !6, line: 917, size: 80, elements: !3869)
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3868, file: !6, line: 918, baseType: !1237, size: 8)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3868, file: !6, line: 919, baseType: !1237, size: 8, offset: 8)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3868, file: !6, line: 920, baseType: !1237, size: 8, offset: 16)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3868, file: !6, line: 921, baseType: !1237, size: 8, offset: 24)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3868, file: !6, line: 923, baseType: !3798, size: 16, offset: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3868, file: !6, line: 928, baseType: !1237, size: 8, offset: 48)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3868, file: !6, line: 929, baseType: !1237, size: 8, offset: 56)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3868, file: !6, line: 930, baseType: !3798, size: 16, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3848, file: !116, line: 402, baseType: !3879, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !6, line: 955, size: 128, elements: !3881)
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3880, file: !6, line: 956, baseType: !1237, size: 8)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3880, file: !6, line: 957, baseType: !1237, size: 8, offset: 8)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3880, file: !6, line: 958, baseType: !1237, size: 8, offset: 16)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3880, file: !6, line: 959, baseType: !1237, size: 8, offset: 24)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3880, file: !6, line: 960, baseType: !3817, size: 32, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3880, file: !6, line: 963, baseType: !3798, size: 16, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3880, file: !6, line: 967, baseType: !3798, size: 16, offset: 80)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3880, file: !6, line: 968, baseType: !3890, size: 32, offset: 96)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3817, size: 32, elements: !1255)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3848, file: !116, line: 403, baseType: !3892, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !6, line: 940, size: 160, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3893, file: !6, line: 941, baseType: !1237, size: 8)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3893, file: !6, line: 942, baseType: !1237, size: 8, offset: 8)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3893, file: !6, line: 943, baseType: !1237, size: 8, offset: 16)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3893, file: !6, line: 944, baseType: !1237, size: 8, offset: 24)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3893, file: !6, line: 945, baseType: !2531, size: 128, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3848, file: !116, line: 404, baseType: !3901, size: 64, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !6, line: 1080, size: 24, elements: !3903)
!3903 = !{!3904, !3905, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3902, file: !6, line: 1081, baseType: !1237, size: 8)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3902, file: !6, line: 1082, baseType: !1237, size: 8, offset: 8)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3902, file: !6, line: 1083, baseType: !1237, size: 8, offset: 16)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3761, file: !116, line: 653, baseType: !3908, size: 64, offset: 7104)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !116, line: 374, size: 5440, elements: !3910)
!3910 = !{!3911, !3922, !3923, !3936, !3978, !3987, !3988}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3909, file: !116, line: 375, baseType: !3912, size: 72)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !6, line: 349, size: 72, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3912, file: !6, line: 350, baseType: !1237, size: 8)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3912, file: !6, line: 351, baseType: !1237, size: 8, offset: 8)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3912, file: !6, line: 353, baseType: !3798, size: 16, offset: 16)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3912, file: !6, line: 354, baseType: !1237, size: 8, offset: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3912, file: !6, line: 355, baseType: !1237, size: 8, offset: 40)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3912, file: !6, line: 356, baseType: !1237, size: 8, offset: 48)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3912, file: !6, line: 357, baseType: !1237, size: 8, offset: 56)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3912, file: !6, line: 358, baseType: !1237, size: 8, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3909, file: !116, line: 377, baseType: !239, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3909, file: !116, line: 381, baseType: !3924, size: 1024, offset: 192)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3925, size: 1024, elements: !1619)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !6, line: 783, size: 64, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3926, file: !6, line: 784, baseType: !1237, size: 8)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3926, file: !6, line: 785, baseType: !1237, size: 8, offset: 8)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3926, file: !6, line: 787, baseType: !1237, size: 8, offset: 16)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3926, file: !6, line: 788, baseType: !1237, size: 8, offset: 24)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3926, file: !6, line: 789, baseType: !1237, size: 8, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3926, file: !6, line: 790, baseType: !1237, size: 8, offset: 40)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3926, file: !6, line: 791, baseType: !1237, size: 8, offset: 48)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3926, file: !6, line: 792, baseType: !1237, size: 8, offset: 56)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3909, file: !116, line: 385, baseType: !3937, size: 2048, offset: 1216)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3938, size: 2048, elements: !2115)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !116, line: 232, size: 6272, elements: !3940)
!3940 = !{!3941, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3939, file: !116, line: 235, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !116, line: 82, size: 320, elements: !3944)
!3944 = !{!3945, !3957, !3958, !3959, !3961}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3943, file: !116, line: 83, baseType: !3946, size: 72)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !6, line: 389, size: 72, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3946, file: !6, line: 390, baseType: !1237, size: 8)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3946, file: !6, line: 391, baseType: !1237, size: 8, offset: 8)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3946, file: !6, line: 393, baseType: !1237, size: 8, offset: 16)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3946, file: !6, line: 394, baseType: !1237, size: 8, offset: 24)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3946, file: !6, line: 395, baseType: !1237, size: 8, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3946, file: !6, line: 396, baseType: !1237, size: 8, offset: 40)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3946, file: !6, line: 397, baseType: !1237, size: 8, offset: 48)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3946, file: !6, line: 398, baseType: !1237, size: 8, offset: 56)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3946, file: !6, line: 399, baseType: !1237, size: 8, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3943, file: !116, line: 85, baseType: !223, size: 32, offset: 96)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3943, file: !116, line: 86, baseType: !3824, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3943, file: !116, line: 91, baseType: !3960, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3943, file: !116, line: 93, baseType: !239, size: 64, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3939, file: !116, line: 237, baseType: !3942, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3939, file: !116, line: 239, baseType: !7, size: 32, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3939, file: !116, line: 243, baseType: !3925, size: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3939, file: !116, line: 245, baseType: !223, size: 32, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3939, file: !116, line: 247, baseType: !115, size: 32, offset: 288)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3939, file: !116, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3939, file: !116, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3939, file: !116, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3939, file: !116, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3939, file: !116, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3939, file: !116, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3939, file: !116, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3939, file: !116, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3939, file: !116, line: 257, baseType: !173, size: 5568, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3939, file: !116, line: 258, baseType: !172, size: 64, offset: 5952)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3939, file: !116, line: 259, baseType: !1842, size: 256, offset: 6016)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3909, file: !116, line: 389, baseType: !3979, size: 2048, offset: 3264)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3980, size: 2048, elements: !2115)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !116, line: 322, size: 64, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3981, file: !116, line: 323, baseType: !7, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3981, file: !116, line: 324, baseType: !3187, size: 32, offset: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3981, file: !116, line: 328, baseType: !3986, offset: 64)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3943, elements: !2216)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3909, file: !116, line: 391, baseType: !3824, size: 64, offset: 5312)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3909, file: !116, line: 392, baseType: !223, size: 32, offset: 5376)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !3761, file: !116, line: 655, baseType: !3908, size: 64, offset: 7168)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !3761, file: !116, line: 656, baseType: !3991, size: 1024, offset: 7232)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3960, size: 1024, elements: !1619)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !3761, file: !116, line: 657, baseType: !3991, size: 1024, offset: 8256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !3761, file: !116, line: 659, baseType: !3994, size: 64, offset: 9280)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !3761, file: !116, line: 661, baseType: !281, size: 16, offset: 9344)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !3761, file: !116, line: 662, baseType: !1236, size: 8, offset: 9360)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3761, file: !116, line: 663, baseType: !1236, size: 8, offset: 9368)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !3761, file: !116, line: 664, baseType: !1236, size: 8, offset: 9376)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !3761, file: !116, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !3761, file: !116, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !3761, file: !116, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3761, file: !116, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !3761, file: !116, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !3761, file: !116, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !3761, file: !116, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !3761, file: !116, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !3761, file: !116, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !3761, file: !116, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !3761, file: !116, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !3761, file: !116, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !3761, file: !116, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !3761, file: !116, line: 679, baseType: !223, size: 32, offset: 9408)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3761, file: !116, line: 682, baseType: !239, size: 64, offset: 9472)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !3761, file: !116, line: 683, baseType: !239, size: 64, offset: 9536)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3761, file: !116, line: 684, baseType: !239, size: 64, offset: 9600)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !3761, file: !116, line: 686, baseType: !184, size: 128, offset: 9664)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !3761, file: !116, line: 688, baseType: !223, size: 32, offset: 9792)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3761, file: !116, line: 690, baseType: !161, size: 32, offset: 9824)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !3761, file: !116, line: 691, baseType: !711, size: 32, offset: 9856)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !3761, file: !116, line: 693, baseType: !289, size: 64, offset: 9920)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !3761, file: !116, line: 696, baseType: !289, size: 64, offset: 9984)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !3761, file: !116, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3761, file: !116, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !3761, file: !116, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !3761, file: !116, line: 702, baseType: !4026, size: 64, offset: 10112)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !116, line: 28, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !3761, file: !116, line: 703, baseType: !223, size: 32, offset: 10176)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3761, file: !116, line: 704, baseType: !122, size: 32, offset: 10208)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !3761, file: !116, line: 705, baseType: !4031, size: 64, offset: 10240)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !116, line: 502, size: 64, elements: !4032)
!4032 = !{!4033, !4034}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4031, file: !116, line: 506, baseType: !7, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4031, file: !116, line: 512, baseType: !223, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !3761, file: !116, line: 706, baseType: !4036, size: 128, offset: 10304)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !116, line: 522, size: 128, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4036, file: !116, line: 529, baseType: !7, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4036, file: !116, line: 535, baseType: !7, size: 32, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4036, file: !116, line: 545, baseType: !7, size: 32, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4036, file: !116, line: 551, baseType: !223, size: 32, offset: 96)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !3761, file: !116, line: 707, baseType: !4036, size: 128, offset: 10432)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !3761, file: !116, line: 708, baseType: !7, size: 32, offset: 10560)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !3761, file: !116, line: 710, baseType: !823, size: 16, offset: 10592)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !3761, file: !116, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !169, file: !116, line: 450, baseType: !3786, size: 64, offset: 768)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !169, file: !116, line: 452, baseType: !223, size: 32, offset: 832)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !169, file: !116, line: 459, baseType: !223, size: 32, offset: 864)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !169, file: !116, line: 460, baseType: !223, size: 32, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !169, file: !116, line: 462, baseType: !7, size: 32, offset: 928)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !166, file: !152, line: 87, baseType: !3187, size: 32, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !166, file: !152, line: 89, baseType: !180, size: 64, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !166, file: !152, line: 90, baseType: !223, size: 32, offset: 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !166, file: !152, line: 94, baseType: !4055, size: 192, offset: 1120)
!4055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 192, elements: !4056)
!4056 = !{!4057}
!4057 = !DISubrange(count: 24)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !166, file: !152, line: 96, baseType: !3387, size: 320, offset: 1344)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !166, file: !152, line: 97, baseType: !4060, size: 64, offset: 1664)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !116, line: 1561, size: 1472, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4106}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4061, file: !116, line: 1563, baseType: !3187, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4061, file: !116, line: 1564, baseType: !223, size: 32, offset: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4061, file: !116, line: 1565, baseType: !160, size: 64, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4061, file: !116, line: 1566, baseType: !711, size: 32, offset: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4061, file: !116, line: 1567, baseType: !711, size: 32, offset: 160)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4061, file: !116, line: 1570, baseType: !184, size: 128, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4061, file: !116, line: 1572, baseType: !184, size: 128, offset: 320)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4061, file: !116, line: 1573, baseType: !4071, size: 64, offset: 448)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !116, line: 1360, size: 320, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077, !4078}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4072, file: !116, line: 1361, baseType: !184, size: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4072, file: !116, line: 1362, baseType: !1365, size: 128, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4072, file: !116, line: 1363, baseType: !197, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4072, file: !116, line: 1364, baseType: !711, size: 32, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4072, file: !116, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4061, file: !116, line: 1574, baseType: !3760, size: 64, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4061, file: !116, line: 1575, baseType: !3960, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4061, file: !116, line: 1576, baseType: !7, size: 32, offset: 640)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4061, file: !116, line: 1577, baseType: !7, size: 32, offset: 672)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4061, file: !116, line: 1578, baseType: !223, size: 32, offset: 704)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4061, file: !116, line: 1579, baseType: !7, size: 32, offset: 736)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4061, file: !116, line: 1580, baseType: !160, size: 64, offset: 768)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4061, file: !116, line: 1581, baseType: !884, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4061, file: !116, line: 1582, baseType: !4088, size: 64, offset: 896)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !116, line: 1582, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4061, file: !116, line: 1583, baseType: !223, size: 32, offset: 960)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4061, file: !116, line: 1584, baseType: !223, size: 32, offset: 992)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4061, file: !116, line: 1585, baseType: !161, size: 32, offset: 1024)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4061, file: !116, line: 1586, baseType: !161, size: 32, offset: 1056)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4061, file: !116, line: 1587, baseType: !3824, size: 64, offset: 1088)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4061, file: !116, line: 1588, baseType: !884, size: 64, offset: 1152)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4061, file: !116, line: 1589, baseType: !223, size: 32, offset: 1216)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4061, file: !116, line: 1590, baseType: !223, size: 32, offset: 1248)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4061, file: !116, line: 1591, baseType: !223, size: 32, offset: 1280)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4061, file: !116, line: 1593, baseType: !223, size: 32, offset: 1312)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4061, file: !116, line: 1594, baseType: !160, size: 64, offset: 1344)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4061, file: !116, line: 1595, baseType: !4102, size: 64, offset: 1408)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !116, line: 1376, baseType: !4103)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !4060}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4061, file: !116, line: 1596, baseType: !4107, offset: 1472)
!4107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4108, elements: !2216)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !116, line: 1351, size: 128, elements: !4109)
!4109 = !{!4110, !4111, !4112, !4113}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4108, file: !116, line: 1352, baseType: !7, size: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4108, file: !116, line: 1353, baseType: !7, size: 32, offset: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4108, file: !116, line: 1354, baseType: !7, size: 32, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4108, file: !116, line: 1355, baseType: !223, size: 32, offset: 96)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !166, file: !152, line: 99, baseType: !1842, size: 256, offset: 1728)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !166, file: !152, line: 101, baseType: !1842, size: 256, offset: 1984)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !152, line: 106, baseType: !4117, size: 64, offset: 2240)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !152, line: 249, size: 2880, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4129, !4130, !4134, !4135, !4139, !4140, !4144, !4145, !4146, !4150, !4154, !4155, !4159, !4163, !4164, !4168, !4172, !4173, !4174, !4178, !4182, !4186, !4190, !4191, !4195, !4199, !4204, !4208, !4212, !4213, !4214, !4215, !4216, !4217, !4221, !4222, !4223, !4227, !4231, !4232, !4233}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4119, file: !152, line: 250, baseType: !180, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4119, file: !152, line: 251, baseType: !180, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4119, file: !152, line: 252, baseType: !286, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4119, file: !152, line: 255, baseType: !4125, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!4128, !165}
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !140, line: 17, baseType: !139)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4119, file: !152, line: 257, baseType: !223, size: 32, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4119, file: !152, line: 271, baseType: !4131, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!223, !165}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4119, file: !152, line: 272, baseType: !4131, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4119, file: !152, line: 278, baseType: !4136, size: 64, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!223, !165, !451}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4119, file: !152, line: 281, baseType: !4136, size: 64, offset: 512)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4119, file: !152, line: 284, baseType: !4141, size: 64, offset: 576)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !165}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4119, file: !152, line: 287, baseType: !4141, size: 64, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4119, file: !152, line: 290, baseType: !4131, size: 64, offset: 704)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4119, file: !152, line: 293, baseType: !4147, size: 64, offset: 768)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!223, !165, !4060, !158}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4119, file: !152, line: 295, baseType: !4151, size: 64, offset: 832)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!223, !165, !4060, !223}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4119, file: !152, line: 307, baseType: !4147, size: 64, offset: 896)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4119, file: !152, line: 309, baseType: !4156, size: 64, offset: 960)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !165, !4060}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4119, file: !152, line: 312, baseType: !4160, size: 64, offset: 1024)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !165, !3960}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4119, file: !152, line: 317, baseType: !4160, size: 64, offset: 1088)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4119, file: !152, line: 321, baseType: !4165, size: 64, offset: 1152)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!223, !165, !239}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4119, file: !152, line: 322, baseType: !4169, size: 64, offset: 1216)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!223, !165, !823, !823, !823, !239, !823}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4119, file: !152, line: 325, baseType: !4131, size: 64, offset: 1280)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4119, file: !152, line: 326, baseType: !4131, size: 64, offset: 1344)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4119, file: !152, line: 327, baseType: !4175, size: 64, offset: 1408)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!223, !165, !7}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4119, file: !152, line: 328, baseType: !4179, size: 64, offset: 1472)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!289, !165}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4119, file: !152, line: 331, baseType: !4183, size: 64, offset: 1536)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !165, !223}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4119, file: !152, line: 333, baseType: !4187, size: 64, offset: 1600)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!223, !165, !223}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4119, file: !152, line: 336, baseType: !4160, size: 64, offset: 1664)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4119, file: !152, line: 341, baseType: !4192, size: 64, offset: 1728)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!223, !165, !3760}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4119, file: !152, line: 343, baseType: !4196, size: 64, offset: 1792)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !165, !3760}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4119, file: !152, line: 345, baseType: !4200, size: 64, offset: 1856)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!223, !165, !3760, !4203, !7, !7, !158}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4119, file: !152, line: 351, baseType: !4205, size: 64, offset: 1920)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!223, !165, !3760, !4203, !7, !158}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4119, file: !152, line: 366, baseType: !4209, size: 64, offset: 1984)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!223, !165, !3760, !3960}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4119, file: !152, line: 369, baseType: !4209, size: 64, offset: 2048)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4119, file: !152, line: 376, baseType: !4192, size: 64, offset: 2112)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4119, file: !152, line: 384, baseType: !4196, size: 64, offset: 2176)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4119, file: !152, line: 386, baseType: !4192, size: 64, offset: 2240)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4119, file: !152, line: 388, baseType: !4192, size: 64, offset: 2304)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4119, file: !152, line: 392, baseType: !4218, size: 64, offset: 2368)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!223, !165, !3760, !3771, !158}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4119, file: !152, line: 394, baseType: !4192, size: 64, offset: 2432)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4119, file: !152, line: 398, baseType: !4192, size: 64, offset: 2496)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4119, file: !152, line: 399, baseType: !4224, size: 64, offset: 2560)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!223, !165, !3760, !223}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4119, file: !152, line: 402, baseType: !4228, size: 64, offset: 2624)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!223, !165, !3760, !145}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4119, file: !152, line: 407, baseType: !4228, size: 64, offset: 2688)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4119, file: !152, line: 409, baseType: !4187, size: 64, offset: 2752)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4119, file: !152, line: 411, baseType: !4234, size: 64, offset: 2816)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!223, !165, !223, !451}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !166, file: !152, line: 112, baseType: !4238, size: 64, offset: 2304)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !152, line: 112, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !166, file: !152, line: 113, baseType: !4241, size: 64, offset: 2368)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !152, line: 113, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !152, line: 119, baseType: !289, size: 64, offset: 2432)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !166, file: !152, line: 151, baseType: !151, size: 32, offset: 2496)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !166, file: !152, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !166, file: !152, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !166, file: !152, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !166, file: !152, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !166, file: !152, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !166, file: !152, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !166, file: !152, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !166, file: !152, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !166, file: !152, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !166, file: !152, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !166, file: !152, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !166, file: !152, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !166, file: !152, line: 176, baseType: !7, size: 32, offset: 2560)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !166, file: !152, line: 177, baseType: !160, size: 64, offset: 2624)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !166, file: !152, line: 178, baseType: !4260, size: 64, offset: 2688)
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !159, line: 158, baseType: !2010)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !166, file: !152, line: 179, baseType: !4260, size: 64, offset: 2752)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !166, file: !152, line: 180, baseType: !7, size: 32, offset: 2816)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !166, file: !152, line: 182, baseType: !4264, size: 576, offset: 2880)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !152, line: 67, size: 576, elements: !4265)
!4265 = !{!4266, !4267, !4268, !4269, !4290}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4264, file: !152, line: 68, baseType: !451, size: 8)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4264, file: !152, line: 69, baseType: !197, offset: 8)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4264, file: !152, line: 70, baseType: !184, size: 128, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !4264, file: !152, line: 71, baseType: !4270, size: 320, offset: 192)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !4271, line: 609, size: 320, elements: !4272)
!4271 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4272 = !{!4273, !4275, !4276, !4277, !4278, !4289}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4270, file: !4271, line: 611, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4270, file: !4271, line: 612, baseType: !289, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4270, file: !4271, line: 613, baseType: !711, size: 32, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4270, file: !4271, line: 614, baseType: !451, size: 8, offset: 160)
!4278 = !DIDerivedType(tag: DW_TAG_member, scope: !4270, file: !4271, line: 615, baseType: !4279, size: 64, offset: 192)
!4279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4270, file: !4271, line: 615, size: 64, elements: !4280)
!4280 = !{!4281, !4285}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4279, file: !4271, line: 616, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !289}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4279, file: !4271, line: 617, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4274}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4270, file: !4271, line: 619, baseType: !289, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !4264, file: !152, line: 72, baseType: !3960, size: 64, offset: 512)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !166, file: !152, line: 183, baseType: !4264, size: 576, offset: 3456)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !166, file: !152, line: 196, baseType: !4293, size: 64, offset: 4032)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !166, file: !152, line: 197, baseType: !4293, size: 64, offset: 4096)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !166, file: !152, line: 198, baseType: !165, size: 64, offset: 4160)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !166, file: !152, line: 199, baseType: !165, size: 64, offset: 4224)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !166, file: !152, line: 203, baseType: !4298, size: 256, offset: 4288)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4299, size: 256, elements: !1039)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !152, line: 203, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !166, file: !152, line: 205, baseType: !223, size: 32, offset: 4544)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !166, file: !152, line: 220, baseType: !4303, size: 64, offset: 4608)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !152, line: 220, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !166, file: !152, line: 231, baseType: !2215, align: 64, offset: 4672)
!4306 = !{!4307, !4359, !4364, !0, !4372, !4374, !4376, !4378, !4380, !4401, !4406, !4411, !4414}
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "__param_quirks", scope: !2, file: !3, line: 169, type: !4309, isLocal: true, isDefinition: true, align: 64)
!4309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4310)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4311, line: 69, size: 320, elements: !4312)
!4311 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4312 = !{!4313, !4314, !4315, !4331, !4333, !4337, !4338}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4310, file: !4311, line: 70, baseType: !180, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4310, file: !4311, line: 71, baseType: !594, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4310, file: !4311, line: 72, baseType: !4316, size: 64, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4311, line: 47, size: 256, elements: !4319)
!4319 = !{!4320, !4321, !4326, !4330}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4318, file: !4311, line: 49, baseType: !7, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4318, file: !4311, line: 51, baseType: !4322, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!223, !180, !4325}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4318, file: !4311, line: 53, baseType: !4327, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!223, !239, !4325}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4318, file: !4311, line: 55, baseType: !429, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4310, file: !4311, line: 73, baseType: !4332, size: 16, offset: 192)
!4332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4310, file: !4311, line: 74, baseType: !4334, size: 8, offset: 208)
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !162, line: 16, baseType: !4335)
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !164, line: 20, baseType: !4336)
!4336 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4310, file: !4311, line: 75, baseType: !1236, size: 8, offset: 216)
!4338 = !DIDerivedType(tag: DW_TAG_member, scope: !4310, file: !4311, line: 76, baseType: !4339, size: 64, offset: 256)
!4339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4310, file: !4311, line: 76, size: 64, elements: !4340)
!4340 = !{!4341, !4342, !4349}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4339, file: !4311, line: 77, baseType: !160, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4339, file: !4311, line: 78, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4345)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4311, line: 86, size: 128, elements: !4346)
!4346 = !{!4347, !4348}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4345, file: !4311, line: 87, baseType: !7, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4345, file: !4311, line: 88, baseType: !239, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4339, file: !4311, line: 79, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4311, line: 92, size: 256, elements: !4353)
!4353 = !{!4354, !4355, !4356, !4357, !4358}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4352, file: !4311, line: 94, baseType: !7, size: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4352, file: !4311, line: 95, baseType: !7, size: 32, offset: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4352, file: !4311, line: 96, baseType: !2507, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4352, file: !4311, line: 97, baseType: !4316, size: 64, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4352, file: !4311, line: 98, baseType: !160, size: 64, offset: 192)
!4359 = !DIGlobalVariableExpression(var: !4360, expr: !DIExpression())
!4360 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_quirks221", scope: !2, file: !3, line: 170, type: !4361, isLocal: true, isDefinition: true, align: 8)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 712, elements: !4362)
!4362 = !{!4363}
!4363 = !DISubrange(count: 89)
!4364 = !DIGlobalVariableExpression(var: !4365, expr: !DIExpression())
!4365 = distinct !DIGlobalVariable(name: "quirk_list", scope: !2, file: !3, line: 23, type: !4366, isLocal: true, isDefinition: true)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quirk_entry", file: !3, line: 15, size: 64, elements: !4368)
!4368 = !{!4369, !4370, !4371}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "vid", scope: !4367, file: !3, line: 16, baseType: !823, size: 16)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4367, file: !3, line: 17, baseType: !823, size: 16, offset: 16)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4367, file: !3, line: 18, baseType: !161, size: 32, offset: 32)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "quirks_param_ops", scope: !2, file: !3, line: 159, type: !4317, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "quirk_count", scope: !2, file: !3, line: 24, type: !7, isLocal: true, isDefinition: true)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "quirks_param_string", scope: !2, file: !3, line: 164, type: !4345, isLocal: true, isDefinition: true)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(name: "quirks_param", scope: !2, file: !3, line: 26, type: !3285, isLocal: true, isDefinition: true)
!4380 = !DIGlobalVariableExpression(var: !4381, expr: !DIExpression())
!4381 = distinct !DIGlobalVariable(name: "usb_endpoint_ignore", scope: !2, file: !3, line: 531, type: !4382, isLocal: true, isDefinition: true)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4383, size: 1280, elements: !4399)
!4383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4384)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3280, line: 121, size: 256, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4384, file: !3280, line: 123, baseType: !824, size: 16)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4384, file: !3280, line: 126, baseType: !824, size: 16, offset: 16)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4384, file: !3280, line: 127, baseType: !824, size: 16, offset: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4384, file: !3280, line: 128, baseType: !824, size: 16, offset: 48)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4384, file: !3280, line: 129, baseType: !824, size: 16, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4384, file: !3280, line: 132, baseType: !1237, size: 8, offset: 80)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4384, file: !3280, line: 133, baseType: !1237, size: 8, offset: 88)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4384, file: !3280, line: 134, baseType: !1237, size: 8, offset: 96)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4384, file: !3280, line: 137, baseType: !1237, size: 8, offset: 104)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4384, file: !3280, line: 138, baseType: !1237, size: 8, offset: 112)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4384, file: !3280, line: 139, baseType: !1237, size: 8, offset: 120)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4384, file: !3280, line: 142, baseType: !1237, size: 8, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4384, file: !3280, line: 145, baseType: !3299, size: 64, align: 64, offset: 192)
!4399 = !{!4400}
!4400 = !DISubrange(count: 5)
!4401 = !DIGlobalVariableExpression(var: !4402, expr: !DIExpression())
!4402 = distinct !DIGlobalVariable(name: "usb_quirk_list", scope: !2, file: !3, line: 189, type: !4403, isLocal: true, isDefinition: true)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4383, size: 25600, elements: !4404)
!4404 = !{!4405}
!4405 = !DISubrange(count: 100)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "usb_amd_resume_quirk_list", scope: !2, file: !3, line: 509, type: !4408, isLocal: true, isDefinition: true)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4383, size: 1792, elements: !4409)
!4409 = !{!4410}
!4410 = !DISubrange(count: 7)
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "usb_interface_quirk_list", scope: !2, file: !3, line: 501, type: !4413, isLocal: true, isDefinition: true)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4383, size: 512, elements: !1453)
!4414 = !DIGlobalVariableExpression(var: !4415, expr: !DIExpression())
!4415 = distinct !DIGlobalVariable(name: "quirk_mutex", scope: !2, file: !3, line: 21, type: !1057, isLocal: true, isDefinition: true)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 120, elements: !4417)
!4417 = !{!4418}
!4418 = !DISubrange(count: 15)
!4419 = !{i32 7, !"Dwarf Version", i32 4}
!4420 = !{i32 2, !"Debug Info Version", i32 3}
!4421 = !{i32 1, !"wchar_size", i32 2}
!4422 = !{i32 1, !"Code Model", i32 2}
!4423 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4424 = distinct !DISubprogram(name: "usb_endpoint_is_ignored", scope: !3, file: !3, line: 539, type: !4425, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!451, !3760, !3942, !4427}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!4428 = !DILocalVariable(name: "udev", arg: 1, scope: !4424, file: !3, line: 539, type: !3760)
!4429 = !DILocation(line: 539, column: 49, scope: !4424)
!4430 = !DILocalVariable(name: "intf", arg: 2, scope: !4424, file: !3, line: 540, type: !3942)
!4431 = !DILocation(line: 540, column: 36, scope: !4424)
!4432 = !DILocalVariable(name: "epd", arg: 3, scope: !4424, file: !3, line: 541, type: !4427)
!4433 = !DILocation(line: 541, column: 41, scope: !4424)
!4434 = !DILocalVariable(name: "id", scope: !4424, file: !3, line: 543, type: !4435)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4436 = !DILocation(line: 543, column: 30, scope: !4424)
!4437 = !DILocalVariable(name: "address", scope: !4424, file: !3, line: 544, type: !7)
!4438 = !DILocation(line: 544, column: 15, scope: !4424)
!4439 = !DILocation(line: 546, column: 10, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 546, column: 2)
!4441 = !DILocation(line: 546, column: 7, scope: !4440)
!4442 = !DILocation(line: 546, column: 33, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 546, column: 2)
!4444 = !DILocation(line: 546, column: 37, scope: !4443)
!4445 = !DILocation(line: 546, column: 2, scope: !4440)
!4446 = !DILocation(line: 547, column: 25, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 547, column: 7)
!4448 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 546, column: 56)
!4449 = !DILocation(line: 547, column: 31, scope: !4447)
!4450 = !DILocation(line: 547, column: 8, scope: !4447)
!4451 = !DILocation(line: 547, column: 7, scope: !4448)
!4452 = !DILocation(line: 548, column: 4, scope: !4447)
!4453 = !DILocation(line: 550, column: 30, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 550, column: 7)
!4455 = !DILocation(line: 550, column: 36, scope: !4454)
!4456 = !DILocation(line: 550, column: 42, scope: !4454)
!4457 = !DILocation(line: 550, column: 8, scope: !4454)
!4458 = !DILocation(line: 550, column: 7, scope: !4448)
!4459 = !DILocation(line: 551, column: 4, scope: !4454)
!4460 = !DILocation(line: 553, column: 13, scope: !4448)
!4461 = !DILocation(line: 553, column: 17, scope: !4448)
!4462 = !DILocation(line: 553, column: 11, scope: !4448)
!4463 = !DILocation(line: 554, column: 7, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 554, column: 7)
!4465 = !DILocation(line: 554, column: 18, scope: !4464)
!4466 = !DILocation(line: 554, column: 23, scope: !4464)
!4467 = !DILocation(line: 554, column: 15, scope: !4464)
!4468 = !DILocation(line: 554, column: 7, scope: !4448)
!4469 = !DILocation(line: 555, column: 4, scope: !4464)
!4470 = !DILocation(line: 556, column: 2, scope: !4448)
!4471 = !DILocation(line: 546, column: 50, scope: !4443)
!4472 = !DILocation(line: 546, column: 2, scope: !4443)
!4473 = distinct !{!4473, !4445, !4474}
!4474 = !DILocation(line: 556, column: 2, scope: !4440)
!4475 = !DILocation(line: 558, column: 2, scope: !4424)
!4476 = !DILocation(line: 559, column: 1, scope: !4424)
!4477 = distinct !DISubprogram(name: "usb_detect_quirks", scope: !3, file: !3, line: 641, type: !4478, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !3760}
!4480 = !DILocalVariable(name: "udev", arg: 1, scope: !4477, file: !3, line: 641, type: !3760)
!4481 = !DILocation(line: 641, column: 43, scope: !4477)
!4482 = !DILocation(line: 643, column: 42, scope: !4477)
!4483 = !DILocation(line: 643, column: 17, scope: !4477)
!4484 = !DILocation(line: 643, column: 2, scope: !4477)
!4485 = !DILocation(line: 643, column: 8, scope: !4477)
!4486 = !DILocation(line: 643, column: 15, scope: !4477)
!4487 = !DILocation(line: 649, column: 27, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 649, column: 6)
!4489 = !DILocation(line: 649, column: 6, scope: !4488)
!4490 = !DILocation(line: 649, column: 6, scope: !4477)
!4491 = !DILocation(line: 650, column: 44, scope: !4488)
!4492 = !DILocation(line: 650, column: 19, scope: !4488)
!4493 = !DILocation(line: 650, column: 3, scope: !4488)
!4494 = !DILocation(line: 650, column: 9, scope: !4488)
!4495 = !DILocation(line: 650, column: 16, scope: !4488)
!4496 = !DILocation(line: 653, column: 44, scope: !4477)
!4497 = !DILocation(line: 653, column: 18, scope: !4477)
!4498 = !DILocation(line: 653, column: 2, scope: !4477)
!4499 = !DILocation(line: 653, column: 8, scope: !4477)
!4500 = !DILocation(line: 653, column: 15, scope: !4477)
!4501 = !DILocation(line: 655, column: 6, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 655, column: 6)
!4503 = !DILocation(line: 655, column: 12, scope: !4502)
!4504 = !DILocation(line: 655, column: 6, scope: !4477)
!4505 = !DILocation(line: 656, column: 3, scope: !4502)
!4506 = !DILocation(line: 660, column: 8, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 660, column: 6)
!4508 = !DILocation(line: 660, column: 14, scope: !4507)
!4509 = !DILocation(line: 660, column: 21, scope: !4507)
!4510 = !DILocation(line: 660, column: 6, scope: !4477)
!4511 = !DILocation(line: 661, column: 3, scope: !4507)
!4512 = !DILocation(line: 661, column: 9, scope: !4507)
!4513 = !DILocation(line: 661, column: 25, scope: !4507)
!4514 = !DILocation(line: 667, column: 1, scope: !4477)
!4515 = distinct !DISubprogram(name: "usb_detect_static_quirks", scope: !3, file: !3, line: 599, type: !4516, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!161, !3760, !4435}
!4518 = !DILocalVariable(name: "udev", arg: 1, scope: !4515, file: !3, line: 599, type: !3760)
!4519 = !DILocation(line: 599, column: 56, scope: !4515)
!4520 = !DILocalVariable(name: "id", arg: 2, scope: !4515, file: !3, line: 600, type: !4435)
!4521 = !DILocation(line: 600, column: 37, scope: !4515)
!4522 = !DILocalVariable(name: "quirks", scope: !4515, file: !3, line: 602, type: !161)
!4523 = !DILocation(line: 602, column: 6, scope: !4515)
!4524 = !DILocation(line: 604, column: 2, scope: !4515)
!4525 = !DILocation(line: 604, column: 9, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 604, column: 2)
!4527 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 604, column: 2)
!4528 = !DILocation(line: 604, column: 13, scope: !4526)
!4529 = !DILocation(line: 604, column: 2, scope: !4527)
!4530 = !DILocation(line: 605, column: 25, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 605, column: 7)
!4532 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 604, column: 32)
!4533 = !DILocation(line: 605, column: 31, scope: !4531)
!4534 = !DILocation(line: 605, column: 8, scope: !4531)
!4535 = !DILocation(line: 605, column: 7, scope: !4532)
!4536 = !DILocation(line: 606, column: 4, scope: !4531)
!4537 = !DILocation(line: 608, column: 8, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 608, column: 7)
!4539 = !DILocation(line: 608, column: 12, scope: !4538)
!4540 = !DILocation(line: 608, column: 24, scope: !4538)
!4541 = !DILocation(line: 608, column: 56, scope: !4538)
!4542 = !DILocation(line: 609, column: 32, scope: !4538)
!4543 = !DILocation(line: 609, column: 38, scope: !4538)
!4544 = !DILocation(line: 609, column: 8, scope: !4538)
!4545 = !DILocation(line: 608, column: 7, scope: !4532)
!4546 = !DILocation(line: 610, column: 4, scope: !4538)
!4547 = !DILocation(line: 612, column: 19, scope: !4532)
!4548 = !DILocation(line: 612, column: 23, scope: !4532)
!4549 = !DILocation(line: 612, column: 13, scope: !4532)
!4550 = !DILocation(line: 612, column: 10, scope: !4532)
!4551 = !DILocation(line: 613, column: 2, scope: !4532)
!4552 = !DILocation(line: 604, column: 28, scope: !4526)
!4553 = !DILocation(line: 604, column: 2, scope: !4526)
!4554 = distinct !{!4554, !4529, !4555}
!4555 = !DILocation(line: 613, column: 2, scope: !4527)
!4556 = !DILocation(line: 615, column: 9, scope: !4515)
!4557 = !DILocation(line: 615, column: 2, scope: !4515)
!4558 = distinct !DISubprogram(name: "usb_amd_resume_quirk", scope: !3, file: !3, line: 587, type: !4559, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!223, !3760}
!4561 = !DILocalVariable(name: "udev", arg: 1, scope: !4558, file: !3, line: 587, type: !3760)
!4562 = !DILocation(line: 587, column: 52, scope: !4558)
!4563 = !DILocalVariable(name: "hcd", scope: !4558, file: !3, line: 589, type: !165)
!4564 = !DILocation(line: 589, column: 18, scope: !4558)
!4565 = !DILocation(line: 591, column: 19, scope: !4558)
!4566 = !DILocation(line: 591, column: 25, scope: !4558)
!4567 = !DILocation(line: 591, column: 8, scope: !4558)
!4568 = !DILocation(line: 591, column: 6, scope: !4558)
!4569 = !DILocation(line: 593, column: 6, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 593, column: 6)
!4571 = !DILocation(line: 593, column: 12, scope: !4570)
!4572 = !DILocation(line: 593, column: 18, scope: !4570)
!4573 = !DILocation(line: 593, column: 23, scope: !4570)
!4574 = !DILocation(line: 593, column: 26, scope: !4570)
!4575 = !DILocation(line: 593, column: 31, scope: !4570)
!4576 = !DILocation(line: 593, column: 46, scope: !4570)
!4577 = !DILocation(line: 593, column: 6, scope: !4558)
!4578 = !DILocation(line: 594, column: 3, scope: !4570)
!4579 = !DILocation(line: 596, column: 2, scope: !4558)
!4580 = !DILocation(line: 597, column: 1, scope: !4558)
!4581 = distinct !DISubprogram(name: "usb_detect_dynamic_quirks", scope: !3, file: !3, line: 618, type: !4582, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!161, !3760}
!4584 = !DILocalVariable(name: "udev", arg: 1, scope: !4581, file: !3, line: 618, type: !3760)
!4585 = !DILocation(line: 618, column: 57, scope: !4581)
!4586 = !DILocalVariable(name: "vid", scope: !4581, file: !3, line: 620, type: !823)
!4587 = !DILocation(line: 620, column: 6, scope: !4581)
!4588 = !DILocation(line: 620, column: 12, scope: !4581)
!4589 = !DILocalVariable(name: "pid", scope: !4581, file: !3, line: 621, type: !823)
!4590 = !DILocation(line: 621, column: 6, scope: !4581)
!4591 = !DILocation(line: 621, column: 12, scope: !4581)
!4592 = !DILocalVariable(name: "i", scope: !4581, file: !3, line: 622, type: !223)
!4593 = !DILocation(line: 622, column: 6, scope: !4581)
!4594 = !DILocalVariable(name: "flags", scope: !4581, file: !3, line: 622, type: !223)
!4595 = !DILocation(line: 622, column: 9, scope: !4581)
!4596 = !DILocation(line: 624, column: 2, scope: !4581)
!4597 = !DILocation(line: 626, column: 9, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 626, column: 2)
!4599 = !DILocation(line: 626, column: 7, scope: !4598)
!4600 = !DILocation(line: 626, column: 14, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 626, column: 2)
!4602 = !DILocation(line: 626, column: 18, scope: !4601)
!4603 = !DILocation(line: 626, column: 16, scope: !4601)
!4604 = !DILocation(line: 626, column: 2, scope: !4598)
!4605 = !DILocation(line: 627, column: 7, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 627, column: 7)
!4607 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 626, column: 36)
!4608 = !DILocation(line: 627, column: 14, scope: !4606)
!4609 = !DILocation(line: 627, column: 25, scope: !4606)
!4610 = !DILocation(line: 627, column: 28, scope: !4606)
!4611 = !DILocation(line: 627, column: 11, scope: !4606)
!4612 = !DILocation(line: 627, column: 32, scope: !4606)
!4613 = !DILocation(line: 627, column: 35, scope: !4606)
!4614 = !DILocation(line: 627, column: 42, scope: !4606)
!4615 = !DILocation(line: 627, column: 53, scope: !4606)
!4616 = !DILocation(line: 627, column: 56, scope: !4606)
!4617 = !DILocation(line: 627, column: 39, scope: !4606)
!4618 = !DILocation(line: 627, column: 7, scope: !4607)
!4619 = !DILocation(line: 628, column: 12, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 627, column: 61)
!4621 = !DILocation(line: 628, column: 23, scope: !4620)
!4622 = !DILocation(line: 628, column: 26, scope: !4620)
!4623 = !DILocation(line: 628, column: 10, scope: !4620)
!4624 = !DILocation(line: 629, column: 4, scope: !4620)
!4625 = !DILocation(line: 631, column: 2, scope: !4607)
!4626 = !DILocation(line: 626, column: 32, scope: !4601)
!4627 = !DILocation(line: 626, column: 2, scope: !4601)
!4628 = distinct !{!4628, !4604, !4629}
!4629 = !DILocation(line: 631, column: 2, scope: !4598)
!4630 = !DILocation(line: 633, column: 2, scope: !4581)
!4631 = !DILocation(line: 635, column: 9, scope: !4581)
!4632 = !DILocation(line: 635, column: 2, scope: !4581)
!4633 = distinct !DISubprogram(name: "usb_detect_interface_quirks", scope: !3, file: !3, line: 669, type: !4478, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4634 = !DILocalVariable(name: "udev", arg: 1, scope: !4633, file: !3, line: 669, type: !3760)
!4635 = !DILocation(line: 669, column: 53, scope: !4633)
!4636 = !DILocalVariable(name: "quirks", scope: !4633, file: !3, line: 671, type: !161)
!4637 = !DILocation(line: 671, column: 6, scope: !4633)
!4638 = !DILocation(line: 673, column: 36, scope: !4633)
!4639 = !DILocation(line: 673, column: 11, scope: !4633)
!4640 = !DILocation(line: 673, column: 9, scope: !4633)
!4641 = !DILocation(line: 674, column: 6, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 674, column: 6)
!4643 = !DILocation(line: 674, column: 13, scope: !4642)
!4644 = !DILocation(line: 674, column: 6, scope: !4633)
!4645 = !DILocation(line: 675, column: 3, scope: !4642)
!4646 = !DILocation(line: 679, column: 18, scope: !4633)
!4647 = !DILocation(line: 679, column: 2, scope: !4633)
!4648 = !DILocation(line: 679, column: 8, scope: !4633)
!4649 = !DILocation(line: 679, column: 15, scope: !4633)
!4650 = !DILocation(line: 680, column: 1, scope: !4633)
!4651 = distinct !DISubprogram(name: "usb_release_quirk_list", scope: !3, file: !3, line: 682, type: !1763, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4652 = !DILocation(line: 684, column: 2, scope: !4651)
!4653 = !DILocation(line: 685, column: 8, scope: !4651)
!4654 = !DILocation(line: 685, column: 2, scope: !4651)
!4655 = !DILocation(line: 686, column: 13, scope: !4651)
!4656 = !DILocation(line: 687, column: 2, scope: !4651)
!4657 = !DILocation(line: 688, column: 1, scope: !4651)
!4658 = distinct !DISubprogram(name: "quirks_param_set", scope: !3, file: !3, line: 28, type: !4323, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4659 = !DILocalVariable(name: "value", arg: 1, scope: !4658, file: !3, line: 28, type: !180)
!4660 = !DILocation(line: 28, column: 41, scope: !4658)
!4661 = !DILocalVariable(name: "kp", arg: 2, scope: !4658, file: !3, line: 28, type: !4325)
!4662 = !DILocation(line: 28, column: 75, scope: !4658)
!4663 = !DILocalVariable(name: "val", scope: !4658, file: !3, line: 30, type: !239)
!4664 = !DILocation(line: 30, column: 8, scope: !4658)
!4665 = !DILocalVariable(name: "p", scope: !4658, file: !3, line: 30, type: !239)
!4666 = !DILocation(line: 30, column: 14, scope: !4658)
!4667 = !DILocalVariable(name: "field", scope: !4658, file: !3, line: 30, type: !239)
!4668 = !DILocation(line: 30, column: 18, scope: !4658)
!4669 = !DILocalVariable(name: "vid", scope: !4658, file: !3, line: 31, type: !823)
!4670 = !DILocation(line: 31, column: 6, scope: !4658)
!4671 = !DILocalVariable(name: "pid", scope: !4658, file: !3, line: 31, type: !823)
!4672 = !DILocation(line: 31, column: 11, scope: !4658)
!4673 = !DILocalVariable(name: "flags", scope: !4658, file: !3, line: 32, type: !161)
!4674 = !DILocation(line: 32, column: 6, scope: !4658)
!4675 = !DILocalVariable(name: "i", scope: !4658, file: !3, line: 33, type: !286)
!4676 = !DILocation(line: 33, column: 9, scope: !4658)
!4677 = !DILocalVariable(name: "err", scope: !4658, file: !3, line: 34, type: !223)
!4678 = !DILocation(line: 34, column: 6, scope: !4658)
!4679 = !DILocation(line: 36, column: 16, scope: !4658)
!4680 = !DILocation(line: 36, column: 8, scope: !4658)
!4681 = !DILocation(line: 36, column: 6, scope: !4658)
!4682 = !DILocation(line: 37, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 37, column: 6)
!4684 = !DILocation(line: 37, column: 6, scope: !4658)
!4685 = !DILocation(line: 38, column: 3, scope: !4683)
!4686 = !DILocation(line: 40, column: 29, scope: !4658)
!4687 = !DILocation(line: 40, column: 34, scope: !4658)
!4688 = !DILocation(line: 40, column: 8, scope: !4658)
!4689 = !DILocation(line: 40, column: 6, scope: !4658)
!4690 = !DILocation(line: 41, column: 6, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 41, column: 6)
!4692 = !DILocation(line: 41, column: 6, scope: !4658)
!4693 = !DILocation(line: 42, column: 9, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 41, column: 11)
!4695 = !DILocation(line: 42, column: 3, scope: !4694)
!4696 = !DILocation(line: 43, column: 10, scope: !4694)
!4697 = !DILocation(line: 43, column: 3, scope: !4694)
!4698 = !DILocation(line: 46, column: 2, scope: !4658)
!4699 = !DILocation(line: 48, column: 8, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 48, column: 6)
!4701 = !DILocation(line: 48, column: 7, scope: !4700)
!4702 = !DILocation(line: 48, column: 6, scope: !4658)
!4703 = !DILocation(line: 49, column: 15, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 48, column: 13)
!4705 = !DILocation(line: 50, column: 9, scope: !4704)
!4706 = !DILocation(line: 50, column: 3, scope: !4704)
!4707 = !DILocation(line: 51, column: 14, scope: !4704)
!4708 = !DILocation(line: 52, column: 3, scope: !4704)
!4709 = !DILocation(line: 55, column: 19, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 55, column: 2)
!4711 = !DILocation(line: 55, column: 26, scope: !4710)
!4712 = !DILocation(line: 55, column: 7, scope: !4710)
!4713 = !DILocation(line: 55, column: 31, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 55, column: 2)
!4715 = !DILocation(line: 55, column: 35, scope: !4714)
!4716 = !DILocation(line: 55, column: 2, scope: !4710)
!4717 = !DILocation(line: 56, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 56, column: 7)
!4719 = !DILocation(line: 56, column: 11, scope: !4718)
!4720 = !DILocation(line: 56, column: 14, scope: !4718)
!4721 = !DILocation(line: 56, column: 7, scope: !4714)
!4722 = !DILocation(line: 57, column: 15, scope: !4718)
!4723 = !DILocation(line: 57, column: 4, scope: !4718)
!4724 = !DILocation(line: 56, column: 17, scope: !4718)
!4725 = !DILocation(line: 55, column: 40, scope: !4714)
!4726 = !DILocation(line: 55, column: 2, scope: !4714)
!4727 = distinct !{!4727, !4716, !4728}
!4728 = !DILocation(line: 57, column: 15, scope: !4710)
!4729 = !DILocation(line: 59, column: 6, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 59, column: 6)
!4731 = !DILocation(line: 59, column: 6, scope: !4658)
!4732 = !DILocation(line: 60, column: 9, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 59, column: 18)
!4734 = !DILocation(line: 60, column: 3, scope: !4733)
!4735 = !DILocation(line: 61, column: 14, scope: !4733)
!4736 = !DILocation(line: 62, column: 2, scope: !4733)
!4737 = !DILocation(line: 64, column: 23, scope: !4658)
!4738 = !DILocation(line: 64, column: 15, scope: !4658)
!4739 = !DILocation(line: 64, column: 13, scope: !4658)
!4740 = !DILocation(line: 66, column: 7, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 66, column: 6)
!4742 = !DILocation(line: 66, column: 6, scope: !4658)
!4743 = !DILocation(line: 67, column: 15, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 66, column: 19)
!4745 = !DILocation(line: 68, column: 3, scope: !4744)
!4746 = !DILocation(line: 69, column: 9, scope: !4744)
!4747 = !DILocation(line: 69, column: 3, scope: !4744)
!4748 = !DILocation(line: 70, column: 3, scope: !4744)
!4749 = !DILocation(line: 73, column: 9, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 73, column: 2)
!4751 = !DILocation(line: 73, column: 18, scope: !4750)
!4752 = !DILocation(line: 73, column: 16, scope: !4750)
!4753 = !DILocation(line: 73, column: 7, scope: !4750)
!4754 = !DILocation(line: 73, column: 23, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 73, column: 2)
!4756 = !DILocation(line: 73, column: 25, scope: !4755)
!4757 = !DILocation(line: 73, column: 29, scope: !4755)
!4758 = !DILocation(line: 73, column: 28, scope: !4755)
!4759 = !DILocation(line: 0, scope: !4755)
!4760 = !DILocation(line: 73, column: 2, scope: !4750)
!4761 = !DILocation(line: 75, column: 11, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 73, column: 33)
!4763 = !DILocation(line: 75, column: 9, scope: !4762)
!4764 = !DILocation(line: 76, column: 8, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 76, column: 7)
!4766 = !DILocation(line: 76, column: 7, scope: !4762)
!4767 = !DILocation(line: 77, column: 4, scope: !4765)
!4768 = !DILocation(line: 79, column: 17, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 79, column: 7)
!4770 = !DILocation(line: 79, column: 7, scope: !4769)
!4771 = !DILocation(line: 79, column: 7, scope: !4762)
!4772 = !DILocation(line: 80, column: 4, scope: !4769)
!4773 = !DILocation(line: 82, column: 11, scope: !4762)
!4774 = !DILocation(line: 82, column: 9, scope: !4762)
!4775 = !DILocation(line: 83, column: 8, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 83, column: 7)
!4777 = !DILocation(line: 83, column: 7, scope: !4762)
!4778 = !DILocation(line: 84, column: 4, scope: !4776)
!4779 = !DILocation(line: 86, column: 17, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 86, column: 7)
!4781 = !DILocation(line: 86, column: 7, scope: !4780)
!4782 = !DILocation(line: 86, column: 7, scope: !4762)
!4783 = !DILocation(line: 87, column: 4, scope: !4780)
!4784 = !DILocation(line: 89, column: 11, scope: !4762)
!4785 = !DILocation(line: 89, column: 9, scope: !4762)
!4786 = !DILocation(line: 90, column: 8, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 90, column: 7)
!4788 = !DILocation(line: 90, column: 14, scope: !4787)
!4789 = !DILocation(line: 90, column: 19, scope: !4787)
!4790 = !DILocation(line: 90, column: 18, scope: !4787)
!4791 = !DILocation(line: 90, column: 7, scope: !4762)
!4792 = !DILocation(line: 91, column: 4, scope: !4787)
!4793 = !DILocation(line: 94, column: 14, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 94, column: 3)
!4795 = !DILocation(line: 94, column: 8, scope: !4794)
!4796 = !DILocation(line: 94, column: 20, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 94, column: 3)
!4798 = !DILocation(line: 94, column: 19, scope: !4797)
!4799 = !DILocation(line: 94, column: 3, scope: !4794)
!4800 = !DILocation(line: 95, column: 13, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 94, column: 36)
!4802 = !DILocation(line: 95, column: 12, scope: !4801)
!4803 = !DILocation(line: 95, column: 4, scope: !4801)
!4804 = !DILocation(line: 97, column: 11, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 95, column: 20)
!4806 = !DILocation(line: 98, column: 5, scope: !4805)
!4807 = !DILocation(line: 100, column: 11, scope: !4805)
!4808 = !DILocation(line: 101, column: 5, scope: !4805)
!4809 = !DILocation(line: 103, column: 11, scope: !4805)
!4810 = !DILocation(line: 104, column: 5, scope: !4805)
!4811 = !DILocation(line: 106, column: 11, scope: !4805)
!4812 = !DILocation(line: 107, column: 5, scope: !4805)
!4813 = !DILocation(line: 109, column: 11, scope: !4805)
!4814 = !DILocation(line: 110, column: 5, scope: !4805)
!4815 = !DILocation(line: 112, column: 11, scope: !4805)
!4816 = !DILocation(line: 113, column: 5, scope: !4805)
!4817 = !DILocation(line: 115, column: 11, scope: !4805)
!4818 = !DILocation(line: 116, column: 5, scope: !4805)
!4819 = !DILocation(line: 118, column: 11, scope: !4805)
!4820 = !DILocation(line: 119, column: 5, scope: !4805)
!4821 = !DILocation(line: 121, column: 11, scope: !4805)
!4822 = !DILocation(line: 122, column: 5, scope: !4805)
!4823 = !DILocation(line: 124, column: 11, scope: !4805)
!4824 = !DILocation(line: 125, column: 5, scope: !4805)
!4825 = !DILocation(line: 127, column: 11, scope: !4805)
!4826 = !DILocation(line: 128, column: 5, scope: !4805)
!4827 = !DILocation(line: 130, column: 11, scope: !4805)
!4828 = !DILocation(line: 131, column: 5, scope: !4805)
!4829 = !DILocation(line: 133, column: 11, scope: !4805)
!4830 = !DILocation(line: 134, column: 5, scope: !4805)
!4831 = !DILocation(line: 136, column: 11, scope: !4805)
!4832 = !DILocation(line: 137, column: 5, scope: !4805)
!4833 = !DILocation(line: 139, column: 11, scope: !4805)
!4834 = !DILocation(line: 140, column: 5, scope: !4805)
!4835 = !DILocation(line: 143, column: 3, scope: !4801)
!4836 = !DILocation(line: 94, column: 32, scope: !4797)
!4837 = !DILocation(line: 94, column: 3, scope: !4797)
!4838 = distinct !{!4838, !4799, !4839}
!4839 = !DILocation(line: 143, column: 3, scope: !4794)
!4840 = !DILocation(line: 145, column: 3, scope: !4762)
!4841 = !DILocation(line: 145, column: 15, scope: !4762)
!4842 = !DILocation(line: 146, column: 4, scope: !4762)
!4843 = !DILocation(line: 146, column: 13, scope: !4762)
!4844 = !DILocation(line: 146, column: 25, scope: !4762)
!4845 = !DILocation(line: 146, column: 39, scope: !4762)
!4846 = !DILocation(line: 145, column: 21, scope: !4762)
!4847 = !DILocation(line: 73, column: 2, scope: !4755)
!4848 = distinct !{!4848, !4760, !4849}
!4849 = !DILocation(line: 147, column: 2, scope: !4750)
!4850 = !DILocation(line: 149, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 149, column: 6)
!4852 = !DILocation(line: 149, column: 10, scope: !4851)
!4853 = !DILocation(line: 149, column: 8, scope: !4851)
!4854 = !DILocation(line: 149, column: 6, scope: !4658)
!4855 = !DILocation(line: 150, column: 17, scope: !4851)
!4856 = !DILocation(line: 150, column: 15, scope: !4851)
!4857 = !DILocation(line: 150, column: 3, scope: !4851)
!4858 = !DILabel(scope: !4658, name: "unlock", file: !3, line: 152)
!4859 = !DILocation(line: 152, column: 1, scope: !4658)
!4860 = !DILocation(line: 153, column: 2, scope: !4658)
!4861 = !DILocation(line: 154, column: 8, scope: !4658)
!4862 = !DILocation(line: 154, column: 2, scope: !4658)
!4863 = !DILocation(line: 156, column: 2, scope: !4658)
!4864 = !DILocation(line: 157, column: 1, scope: !4658)
!4865 = distinct !DISubprogram(name: "kcalloc", scope: !133, file: !133, line: 601, type: !4866, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!160, !286, !286, !158}
!4868 = !DILocalVariable(name: "n", arg: 1, scope: !4865, file: !133, line: 601, type: !286)
!4869 = !DILocation(line: 601, column: 36, scope: !4865)
!4870 = !DILocalVariable(name: "size", arg: 2, scope: !4865, file: !133, line: 601, type: !286)
!4871 = !DILocation(line: 601, column: 46, scope: !4865)
!4872 = !DILocalVariable(name: "flags", arg: 3, scope: !4865, file: !133, line: 601, type: !158)
!4873 = !DILocation(line: 601, column: 58, scope: !4865)
!4874 = !DILocation(line: 603, column: 23, scope: !4865)
!4875 = !DILocation(line: 603, column: 26, scope: !4865)
!4876 = !DILocation(line: 603, column: 32, scope: !4865)
!4877 = !DILocation(line: 603, column: 38, scope: !4865)
!4878 = !DILocation(line: 603, column: 9, scope: !4865)
!4879 = !DILocation(line: 603, column: 2, scope: !4865)
!4880 = distinct !DISubprogram(name: "kmalloc_array", scope: !133, file: !133, line: 584, type: !4866, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4881 = !DILocalVariable(name: "s", arg: 1, scope: !4882, file: !133, line: 445, type: !899)
!4882 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !133, file: !133, line: 445, type: !4883, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!160, !899, !158, !286}
!4885 = !DILocation(line: 445, column: 72, scope: !4882, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 552, column: 10, scope: !4887, inlinedAt: !4892)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !133, line: 540, column: 34)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !133, line: 540, column: 6)
!4889 = distinct !DISubprogram(name: "kmalloc", scope: !133, file: !133, line: 538, type: !4890, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!160, !286, !158}
!4892 = distinct !DILocation(line: 591, column: 10, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4880, file: !133, line: 590, column: 6)
!4894 = !DILocalVariable(name: "flags", arg: 2, scope: !4882, file: !133, line: 446, type: !158)
!4895 = !DILocation(line: 446, column: 9, scope: !4882, inlinedAt: !4886)
!4896 = !DILocalVariable(name: "size", arg: 3, scope: !4882, file: !133, line: 446, type: !286)
!4897 = !DILocation(line: 446, column: 23, scope: !4882, inlinedAt: !4886)
!4898 = !DILocalVariable(name: "ret", scope: !4882, file: !133, line: 448, type: !160)
!4899 = !DILocation(line: 448, column: 8, scope: !4882, inlinedAt: !4886)
!4900 = !DILocalVariable(name: "flags", arg: 1, scope: !4901, file: !133, line: 318, type: !158)
!4901 = distinct !DISubprogram(name: "kmalloc_type", scope: !133, file: !133, line: 318, type: !4902, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!132, !158}
!4904 = !DILocation(line: 318, column: 67, scope: !4901, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 553, column: 20, scope: !4887, inlinedAt: !4892)
!4906 = !DILocalVariable(name: "size", arg: 1, scope: !4907, file: !133, line: 346, type: !286)
!4907 = distinct !DISubprogram(name: "kmalloc_index", scope: !133, file: !133, line: 346, type: !4908, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!7, !286}
!4910 = !DILocation(line: 346, column: 58, scope: !4907, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 547, column: 11, scope: !4887, inlinedAt: !4892)
!4912 = !DILocalVariable(name: "size", arg: 1, scope: !4913, file: !133, line: 472, type: !286)
!4913 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !133, file: !133, line: 472, type: !4914, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!160, !286, !158, !7}
!4916 = !DILocation(line: 472, column: 28, scope: !4913, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 481, column: 9, scope: !4918, inlinedAt: !4919)
!4918 = distinct !DISubprogram(name: "kmalloc_large", scope: !133, file: !133, line: 478, type: !4890, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4919 = distinct !DILocation(line: 545, column: 11, scope: !4920, inlinedAt: !4892)
!4920 = distinct !DILexicalBlock(scope: !4887, file: !133, line: 544, column: 7)
!4921 = !DILocalVariable(name: "flags", arg: 2, scope: !4913, file: !133, line: 472, type: !158)
!4922 = !DILocation(line: 472, column: 40, scope: !4913, inlinedAt: !4917)
!4923 = !DILocalVariable(name: "order", arg: 3, scope: !4913, file: !133, line: 472, type: !7)
!4924 = !DILocation(line: 472, column: 60, scope: !4913, inlinedAt: !4917)
!4925 = !DILocalVariable(name: "size", arg: 1, scope: !4918, file: !133, line: 478, type: !286)
!4926 = !DILocation(line: 478, column: 51, scope: !4918, inlinedAt: !4919)
!4927 = !DILocalVariable(name: "flags", arg: 2, scope: !4918, file: !133, line: 478, type: !158)
!4928 = !DILocation(line: 478, column: 63, scope: !4918, inlinedAt: !4919)
!4929 = !DILocalVariable(name: "order", scope: !4918, file: !133, line: 480, type: !7)
!4930 = !DILocation(line: 480, column: 15, scope: !4918, inlinedAt: !4919)
!4931 = !DILocalVariable(name: "size", arg: 1, scope: !4889, file: !133, line: 538, type: !286)
!4932 = !DILocation(line: 538, column: 45, scope: !4889, inlinedAt: !4892)
!4933 = !DILocalVariable(name: "flags", arg: 2, scope: !4889, file: !133, line: 538, type: !158)
!4934 = !DILocation(line: 538, column: 57, scope: !4889, inlinedAt: !4892)
!4935 = !DILocalVariable(name: "index", scope: !4887, file: !133, line: 542, type: !7)
!4936 = !DILocation(line: 542, column: 16, scope: !4887, inlinedAt: !4892)
!4937 = !DILocalVariable(name: "n", arg: 1, scope: !4880, file: !133, line: 584, type: !286)
!4938 = !DILocation(line: 584, column: 42, scope: !4880)
!4939 = !DILocalVariable(name: "size", arg: 2, scope: !4880, file: !133, line: 584, type: !286)
!4940 = !DILocation(line: 584, column: 52, scope: !4880)
!4941 = !DILocalVariable(name: "flags", arg: 3, scope: !4880, file: !133, line: 584, type: !158)
!4942 = !DILocation(line: 584, column: 64, scope: !4880)
!4943 = !DILocalVariable(name: "bytes", scope: !4880, file: !133, line: 586, type: !286)
!4944 = !DILocation(line: 586, column: 9, scope: !4880)
!4945 = !DILocalVariable(name: "__a", scope: !4946, file: !133, line: 588, type: !286)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !133, line: 588, column: 6)
!4947 = distinct !DILexicalBlock(scope: !4880, file: !133, line: 588, column: 6)
!4948 = !DILocation(line: 588, column: 6, scope: !4946)
!4949 = !DILocalVariable(name: "__b", scope: !4946, file: !133, line: 588, type: !286)
!4950 = !DILocalVariable(name: "__d", scope: !4946, file: !133, line: 588, type: !4951)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!4952 = !DILocation(line: 588, column: 6, scope: !4947)
!4953 = !DILocation(line: 588, column: 6, scope: !4880)
!4954 = !DILocation(line: 589, column: 3, scope: !4947)
!4955 = !DILocation(line: 590, column: 27, scope: !4893)
!4956 = !DILocation(line: 590, column: 6, scope: !4893)
!4957 = !DILocation(line: 590, column: 30, scope: !4893)
!4958 = !DILocation(line: 590, column: 54, scope: !4893)
!4959 = !DILocation(line: 590, column: 33, scope: !4893)
!4960 = !DILocation(line: 590, column: 6, scope: !4880)
!4961 = !DILocation(line: 591, column: 18, scope: !4893)
!4962 = !DILocation(line: 591, column: 25, scope: !4893)
!4963 = !DILocation(line: 540, column: 27, scope: !4888, inlinedAt: !4892)
!4964 = !DILocation(line: 540, column: 6, scope: !4888, inlinedAt: !4892)
!4965 = !DILocation(line: 540, column: 6, scope: !4889, inlinedAt: !4892)
!4966 = !DILocation(line: 544, column: 7, scope: !4920, inlinedAt: !4892)
!4967 = !DILocation(line: 544, column: 12, scope: !4920, inlinedAt: !4892)
!4968 = !DILocation(line: 544, column: 7, scope: !4887, inlinedAt: !4892)
!4969 = !DILocation(line: 545, column: 25, scope: !4920, inlinedAt: !4892)
!4970 = !DILocation(line: 545, column: 31, scope: !4920, inlinedAt: !4892)
!4971 = !DILocation(line: 480, column: 33, scope: !4918, inlinedAt: !4919)
!4972 = !DILocation(line: 480, column: 23, scope: !4918, inlinedAt: !4919)
!4973 = !DILocation(line: 481, column: 29, scope: !4918, inlinedAt: !4919)
!4974 = !DILocation(line: 481, column: 35, scope: !4918, inlinedAt: !4919)
!4975 = !DILocation(line: 481, column: 42, scope: !4918, inlinedAt: !4919)
!4976 = !DILocation(line: 474, column: 23, scope: !4913, inlinedAt: !4917)
!4977 = !DILocation(line: 474, column: 29, scope: !4913, inlinedAt: !4917)
!4978 = !DILocation(line: 474, column: 36, scope: !4913, inlinedAt: !4917)
!4979 = !DILocation(line: 474, column: 9, scope: !4913, inlinedAt: !4917)
!4980 = !DILocation(line: 545, column: 4, scope: !4920, inlinedAt: !4892)
!4981 = !DILocation(line: 547, column: 25, scope: !4887, inlinedAt: !4892)
!4982 = !DILocation(line: 348, column: 7, scope: !4983, inlinedAt: !4911)
!4983 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 348, column: 6)
!4984 = !DILocation(line: 348, column: 6, scope: !4907, inlinedAt: !4911)
!4985 = !DILocation(line: 349, column: 3, scope: !4983, inlinedAt: !4911)
!4986 = !DILocation(line: 351, column: 6, scope: !4987, inlinedAt: !4911)
!4987 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 351, column: 6)
!4988 = !DILocation(line: 351, column: 11, scope: !4987, inlinedAt: !4911)
!4989 = !DILocation(line: 351, column: 6, scope: !4907, inlinedAt: !4911)
!4990 = !DILocation(line: 352, column: 3, scope: !4987, inlinedAt: !4911)
!4991 = !DILocation(line: 354, column: 32, scope: !4992, inlinedAt: !4911)
!4992 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 354, column: 6)
!4993 = !DILocation(line: 354, column: 37, scope: !4992, inlinedAt: !4911)
!4994 = !DILocation(line: 354, column: 42, scope: !4992, inlinedAt: !4911)
!4995 = !DILocation(line: 354, column: 45, scope: !4992, inlinedAt: !4911)
!4996 = !DILocation(line: 354, column: 50, scope: !4992, inlinedAt: !4911)
!4997 = !DILocation(line: 354, column: 6, scope: !4907, inlinedAt: !4911)
!4998 = !DILocation(line: 355, column: 3, scope: !4992, inlinedAt: !4911)
!4999 = !DILocation(line: 356, column: 32, scope: !5000, inlinedAt: !4911)
!5000 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 356, column: 6)
!5001 = !DILocation(line: 356, column: 37, scope: !5000, inlinedAt: !4911)
!5002 = !DILocation(line: 356, column: 43, scope: !5000, inlinedAt: !4911)
!5003 = !DILocation(line: 356, column: 46, scope: !5000, inlinedAt: !4911)
!5004 = !DILocation(line: 356, column: 51, scope: !5000, inlinedAt: !4911)
!5005 = !DILocation(line: 356, column: 6, scope: !4907, inlinedAt: !4911)
!5006 = !DILocation(line: 357, column: 3, scope: !5000, inlinedAt: !4911)
!5007 = !DILocation(line: 358, column: 6, scope: !5008, inlinedAt: !4911)
!5008 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 358, column: 6)
!5009 = !DILocation(line: 358, column: 11, scope: !5008, inlinedAt: !4911)
!5010 = !DILocation(line: 358, column: 6, scope: !4907, inlinedAt: !4911)
!5011 = !DILocation(line: 358, column: 26, scope: !5008, inlinedAt: !4911)
!5012 = !DILocation(line: 359, column: 6, scope: !5013, inlinedAt: !4911)
!5013 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 359, column: 6)
!5014 = !DILocation(line: 359, column: 11, scope: !5013, inlinedAt: !4911)
!5015 = !DILocation(line: 359, column: 6, scope: !4907, inlinedAt: !4911)
!5016 = !DILocation(line: 359, column: 26, scope: !5013, inlinedAt: !4911)
!5017 = !DILocation(line: 360, column: 6, scope: !5018, inlinedAt: !4911)
!5018 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 360, column: 6)
!5019 = !DILocation(line: 360, column: 11, scope: !5018, inlinedAt: !4911)
!5020 = !DILocation(line: 360, column: 6, scope: !4907, inlinedAt: !4911)
!5021 = !DILocation(line: 360, column: 26, scope: !5018, inlinedAt: !4911)
!5022 = !DILocation(line: 361, column: 6, scope: !5023, inlinedAt: !4911)
!5023 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 361, column: 6)
!5024 = !DILocation(line: 361, column: 11, scope: !5023, inlinedAt: !4911)
!5025 = !DILocation(line: 361, column: 6, scope: !4907, inlinedAt: !4911)
!5026 = !DILocation(line: 361, column: 26, scope: !5023, inlinedAt: !4911)
!5027 = !DILocation(line: 362, column: 6, scope: !5028, inlinedAt: !4911)
!5028 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 362, column: 6)
!5029 = !DILocation(line: 362, column: 11, scope: !5028, inlinedAt: !4911)
!5030 = !DILocation(line: 362, column: 6, scope: !4907, inlinedAt: !4911)
!5031 = !DILocation(line: 362, column: 26, scope: !5028, inlinedAt: !4911)
!5032 = !DILocation(line: 363, column: 6, scope: !5033, inlinedAt: !4911)
!5033 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 363, column: 6)
!5034 = !DILocation(line: 363, column: 11, scope: !5033, inlinedAt: !4911)
!5035 = !DILocation(line: 363, column: 6, scope: !4907, inlinedAt: !4911)
!5036 = !DILocation(line: 363, column: 26, scope: !5033, inlinedAt: !4911)
!5037 = !DILocation(line: 364, column: 6, scope: !5038, inlinedAt: !4911)
!5038 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 364, column: 6)
!5039 = !DILocation(line: 364, column: 11, scope: !5038, inlinedAt: !4911)
!5040 = !DILocation(line: 364, column: 6, scope: !4907, inlinedAt: !4911)
!5041 = !DILocation(line: 364, column: 26, scope: !5038, inlinedAt: !4911)
!5042 = !DILocation(line: 365, column: 6, scope: !5043, inlinedAt: !4911)
!5043 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 365, column: 6)
!5044 = !DILocation(line: 365, column: 11, scope: !5043, inlinedAt: !4911)
!5045 = !DILocation(line: 365, column: 6, scope: !4907, inlinedAt: !4911)
!5046 = !DILocation(line: 365, column: 26, scope: !5043, inlinedAt: !4911)
!5047 = !DILocation(line: 366, column: 6, scope: !5048, inlinedAt: !4911)
!5048 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 366, column: 6)
!5049 = !DILocation(line: 366, column: 11, scope: !5048, inlinedAt: !4911)
!5050 = !DILocation(line: 366, column: 6, scope: !4907, inlinedAt: !4911)
!5051 = !DILocation(line: 366, column: 26, scope: !5048, inlinedAt: !4911)
!5052 = !DILocation(line: 367, column: 6, scope: !5053, inlinedAt: !4911)
!5053 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 367, column: 6)
!5054 = !DILocation(line: 367, column: 11, scope: !5053, inlinedAt: !4911)
!5055 = !DILocation(line: 367, column: 6, scope: !4907, inlinedAt: !4911)
!5056 = !DILocation(line: 367, column: 26, scope: !5053, inlinedAt: !4911)
!5057 = !DILocation(line: 368, column: 6, scope: !5058, inlinedAt: !4911)
!5058 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 368, column: 6)
!5059 = !DILocation(line: 368, column: 11, scope: !5058, inlinedAt: !4911)
!5060 = !DILocation(line: 368, column: 6, scope: !4907, inlinedAt: !4911)
!5061 = !DILocation(line: 368, column: 26, scope: !5058, inlinedAt: !4911)
!5062 = !DILocation(line: 369, column: 6, scope: !5063, inlinedAt: !4911)
!5063 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 369, column: 6)
!5064 = !DILocation(line: 369, column: 11, scope: !5063, inlinedAt: !4911)
!5065 = !DILocation(line: 369, column: 6, scope: !4907, inlinedAt: !4911)
!5066 = !DILocation(line: 369, column: 26, scope: !5063, inlinedAt: !4911)
!5067 = !DILocation(line: 370, column: 6, scope: !5068, inlinedAt: !4911)
!5068 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 370, column: 6)
!5069 = !DILocation(line: 370, column: 11, scope: !5068, inlinedAt: !4911)
!5070 = !DILocation(line: 370, column: 6, scope: !4907, inlinedAt: !4911)
!5071 = !DILocation(line: 370, column: 26, scope: !5068, inlinedAt: !4911)
!5072 = !DILocation(line: 371, column: 6, scope: !5073, inlinedAt: !4911)
!5073 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 371, column: 6)
!5074 = !DILocation(line: 371, column: 11, scope: !5073, inlinedAt: !4911)
!5075 = !DILocation(line: 371, column: 6, scope: !4907, inlinedAt: !4911)
!5076 = !DILocation(line: 371, column: 26, scope: !5073, inlinedAt: !4911)
!5077 = !DILocation(line: 372, column: 6, scope: !5078, inlinedAt: !4911)
!5078 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 372, column: 6)
!5079 = !DILocation(line: 372, column: 11, scope: !5078, inlinedAt: !4911)
!5080 = !DILocation(line: 372, column: 6, scope: !4907, inlinedAt: !4911)
!5081 = !DILocation(line: 372, column: 26, scope: !5078, inlinedAt: !4911)
!5082 = !DILocation(line: 373, column: 6, scope: !5083, inlinedAt: !4911)
!5083 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 373, column: 6)
!5084 = !DILocation(line: 373, column: 11, scope: !5083, inlinedAt: !4911)
!5085 = !DILocation(line: 373, column: 6, scope: !4907, inlinedAt: !4911)
!5086 = !DILocation(line: 373, column: 26, scope: !5083, inlinedAt: !4911)
!5087 = !DILocation(line: 374, column: 6, scope: !5088, inlinedAt: !4911)
!5088 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 374, column: 6)
!5089 = !DILocation(line: 374, column: 11, scope: !5088, inlinedAt: !4911)
!5090 = !DILocation(line: 374, column: 6, scope: !4907, inlinedAt: !4911)
!5091 = !DILocation(line: 374, column: 26, scope: !5088, inlinedAt: !4911)
!5092 = !DILocation(line: 375, column: 6, scope: !5093, inlinedAt: !4911)
!5093 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 375, column: 6)
!5094 = !DILocation(line: 375, column: 11, scope: !5093, inlinedAt: !4911)
!5095 = !DILocation(line: 375, column: 6, scope: !4907, inlinedAt: !4911)
!5096 = !DILocation(line: 375, column: 27, scope: !5093, inlinedAt: !4911)
!5097 = !DILocation(line: 376, column: 6, scope: !5098, inlinedAt: !4911)
!5098 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 376, column: 6)
!5099 = !DILocation(line: 376, column: 11, scope: !5098, inlinedAt: !4911)
!5100 = !DILocation(line: 376, column: 6, scope: !4907, inlinedAt: !4911)
!5101 = !DILocation(line: 376, column: 32, scope: !5098, inlinedAt: !4911)
!5102 = !DILocation(line: 377, column: 6, scope: !5103, inlinedAt: !4911)
!5103 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 377, column: 6)
!5104 = !DILocation(line: 377, column: 11, scope: !5103, inlinedAt: !4911)
!5105 = !DILocation(line: 377, column: 6, scope: !4907, inlinedAt: !4911)
!5106 = !DILocation(line: 377, column: 32, scope: !5103, inlinedAt: !4911)
!5107 = !DILocation(line: 378, column: 6, scope: !5108, inlinedAt: !4911)
!5108 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 378, column: 6)
!5109 = !DILocation(line: 378, column: 11, scope: !5108, inlinedAt: !4911)
!5110 = !DILocation(line: 378, column: 6, scope: !4907, inlinedAt: !4911)
!5111 = !DILocation(line: 378, column: 32, scope: !5108, inlinedAt: !4911)
!5112 = !DILocation(line: 379, column: 6, scope: !5113, inlinedAt: !4911)
!5113 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 379, column: 6)
!5114 = !DILocation(line: 379, column: 11, scope: !5113, inlinedAt: !4911)
!5115 = !DILocation(line: 379, column: 6, scope: !4907, inlinedAt: !4911)
!5116 = !DILocation(line: 379, column: 33, scope: !5113, inlinedAt: !4911)
!5117 = !DILocation(line: 380, column: 6, scope: !5118, inlinedAt: !4911)
!5118 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 380, column: 6)
!5119 = !DILocation(line: 380, column: 11, scope: !5118, inlinedAt: !4911)
!5120 = !DILocation(line: 380, column: 6, scope: !4907, inlinedAt: !4911)
!5121 = !DILocation(line: 380, column: 33, scope: !5118, inlinedAt: !4911)
!5122 = !DILocation(line: 381, column: 6, scope: !5123, inlinedAt: !4911)
!5123 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 381, column: 6)
!5124 = !DILocation(line: 381, column: 11, scope: !5123, inlinedAt: !4911)
!5125 = !DILocation(line: 381, column: 6, scope: !4907, inlinedAt: !4911)
!5126 = !DILocation(line: 381, column: 33, scope: !5123, inlinedAt: !4911)
!5127 = !DILocation(line: 382, column: 2, scope: !5128, inlinedAt: !4911)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !133, line: 382, column: 2)
!5129 = distinct !DILexicalBlock(scope: !4907, file: !133, line: 382, column: 2)
!5130 = !{i32 -2142535952, i32 -2142535923, i32 -2142535877, i32 -2142535819, i32 -2142535765, i32 -2142535711, i32 -2142535656, i32 -2142535625}
!5131 = !DILocation(line: 382, column: 2, scope: !5132, inlinedAt: !4911)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !133, line: 382, column: 2)
!5133 = distinct !DILexicalBlock(scope: !5129, file: !133, line: 382, column: 2)
!5134 = !{i32 -2142535182, i32 -2142535175, i32 -2142535121, i32 -2142535090, i32 -2142535060}
!5135 = !DILocation(line: 382, column: 2, scope: !5133, inlinedAt: !4911)
!5136 = !DILocation(line: 386, column: 1, scope: !4907, inlinedAt: !4911)
!5137 = !DILocation(line: 547, column: 9, scope: !4887, inlinedAt: !4892)
!5138 = !DILocation(line: 549, column: 8, scope: !5139, inlinedAt: !4892)
!5139 = distinct !DILexicalBlock(scope: !4887, file: !133, line: 549, column: 7)
!5140 = !DILocation(line: 549, column: 7, scope: !4887, inlinedAt: !4892)
!5141 = !DILocation(line: 550, column: 4, scope: !5139, inlinedAt: !4892)
!5142 = !DILocation(line: 553, column: 33, scope: !4887, inlinedAt: !4892)
!5143 = !DILocation(line: 325, column: 6, scope: !5144, inlinedAt: !4905)
!5144 = distinct !DILexicalBlock(scope: !4901, file: !133, line: 325, column: 6)
!5145 = !DILocation(line: 325, column: 6, scope: !4901, inlinedAt: !4905)
!5146 = !DILocation(line: 326, column: 3, scope: !5144, inlinedAt: !4905)
!5147 = !DILocation(line: 332, column: 9, scope: !4901, inlinedAt: !4905)
!5148 = !DILocation(line: 332, column: 15, scope: !4901, inlinedAt: !4905)
!5149 = !DILocation(line: 332, column: 2, scope: !4901, inlinedAt: !4905)
!5150 = !DILocation(line: 336, column: 1, scope: !4901, inlinedAt: !4905)
!5151 = !DILocation(line: 553, column: 5, scope: !4887, inlinedAt: !4892)
!5152 = !DILocation(line: 553, column: 41, scope: !4887, inlinedAt: !4892)
!5153 = !DILocation(line: 554, column: 5, scope: !4887, inlinedAt: !4892)
!5154 = !DILocation(line: 554, column: 12, scope: !4887, inlinedAt: !4892)
!5155 = !DILocation(line: 448, column: 31, scope: !4882, inlinedAt: !4886)
!5156 = !DILocation(line: 448, column: 34, scope: !4882, inlinedAt: !4886)
!5157 = !DILocation(line: 448, column: 14, scope: !4882, inlinedAt: !4886)
!5158 = !DILocation(line: 450, column: 22, scope: !4882, inlinedAt: !4886)
!5159 = !DILocation(line: 450, column: 25, scope: !4882, inlinedAt: !4886)
!5160 = !DILocation(line: 450, column: 30, scope: !4882, inlinedAt: !4886)
!5161 = !DILocation(line: 450, column: 36, scope: !4882, inlinedAt: !4886)
!5162 = !DILocation(line: 450, column: 8, scope: !4882, inlinedAt: !4886)
!5163 = !DILocation(line: 450, column: 6, scope: !4882, inlinedAt: !4886)
!5164 = !DILocation(line: 451, column: 9, scope: !4882, inlinedAt: !4886)
!5165 = !DILocation(line: 552, column: 3, scope: !4887, inlinedAt: !4892)
!5166 = !DILocation(line: 557, column: 19, scope: !4889, inlinedAt: !4892)
!5167 = !DILocation(line: 557, column: 25, scope: !4889, inlinedAt: !4892)
!5168 = !DILocation(line: 557, column: 9, scope: !4889, inlinedAt: !4892)
!5169 = !DILocation(line: 557, column: 2, scope: !4889, inlinedAt: !4892)
!5170 = !DILocation(line: 558, column: 1, scope: !4889, inlinedAt: !4892)
!5171 = !DILocation(line: 591, column: 3, scope: !4893)
!5172 = !DILocation(line: 592, column: 19, scope: !4880)
!5173 = !DILocation(line: 592, column: 26, scope: !4880)
!5174 = !DILocation(line: 592, column: 9, scope: !4880)
!5175 = !DILocation(line: 592, column: 2, scope: !4880)
!5176 = !DILocation(line: 593, column: 1, scope: !4880)
!5177 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5178, file: !5178, line: 52, type: !5179, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5178 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!451, !451}
!5181 = !DILocalVariable(name: "overflow", arg: 1, scope: !5177, file: !5178, line: 52, type: !451)
!5182 = !DILocation(line: 52, column: 60, scope: !5177)
!5183 = !DILocation(line: 54, column: 9, scope: !5177)
!5184 = !DILocation(line: 54, column: 2, scope: !5177)
!5185 = distinct !DISubprogram(name: "get_order", scope: !5186, file: !5186, line: 29, type: !5187, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5186 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!223, !289}
!5189 = !DILocalVariable(name: "x", arg: 1, scope: !5190, file: !5191, line: 366, type: !383)
!5190 = distinct !DISubprogram(name: "fls64", scope: !5191, file: !5191, line: 366, type: !5192, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5191 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!223, !383}
!5194 = !DILocation(line: 366, column: 40, scope: !5190, inlinedAt: !5195)
!5195 = distinct !DILocation(line: 46, column: 9, scope: !5185)
!5196 = !DILocalVariable(name: "bitpos", scope: !5190, file: !5191, line: 368, type: !223)
!5197 = !DILocation(line: 368, column: 6, scope: !5190, inlinedAt: !5195)
!5198 = !DILocalVariable(name: "size", arg: 1, scope: !5185, file: !5186, line: 29, type: !289)
!5199 = !DILocation(line: 29, column: 63, scope: !5185)
!5200 = !DILocation(line: 31, column: 27, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5185, file: !5186, line: 31, column: 6)
!5202 = !DILocation(line: 31, column: 6, scope: !5201)
!5203 = !DILocation(line: 31, column: 6, scope: !5185)
!5204 = !DILocation(line: 32, column: 8, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !5186, line: 32, column: 7)
!5206 = distinct !DILexicalBlock(scope: !5201, file: !5186, line: 31, column: 34)
!5207 = !DILocation(line: 32, column: 7, scope: !5206)
!5208 = !DILocation(line: 33, column: 4, scope: !5205)
!5209 = !DILocation(line: 35, column: 7, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5206, file: !5186, line: 35, column: 7)
!5211 = !DILocation(line: 35, column: 12, scope: !5210)
!5212 = !DILocation(line: 35, column: 7, scope: !5206)
!5213 = !DILocation(line: 36, column: 4, scope: !5210)
!5214 = !DILocation(line: 38, column: 10, scope: !5206)
!5215 = !DILocation(line: 38, column: 28, scope: !5206)
!5216 = !DILocation(line: 38, column: 41, scope: !5206)
!5217 = !DILocation(line: 38, column: 3, scope: !5206)
!5218 = !DILocation(line: 41, column: 6, scope: !5185)
!5219 = !DILocation(line: 42, column: 7, scope: !5185)
!5220 = !DILocation(line: 46, column: 15, scope: !5185)
!5221 = !DILocation(line: 374, column: 2, scope: !5190, inlinedAt: !5195)
!5222 = !DILocation(line: 376, column: 14, scope: !5190, inlinedAt: !5195)
!5223 = !{i32 291738}
!5224 = !DILocation(line: 377, column: 9, scope: !5190, inlinedAt: !5195)
!5225 = !DILocation(line: 377, column: 16, scope: !5190, inlinedAt: !5195)
!5226 = !DILocation(line: 46, column: 2, scope: !5185)
!5227 = !DILocation(line: 48, column: 1, scope: !5185)
!5228 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5229, file: !5229, line: 30, type: !5230, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5229 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!223, !382}
!5232 = !DILocation(line: 366, column: 40, scope: !5190, inlinedAt: !5233)
!5233 = distinct !DILocation(line: 32, column: 9, scope: !5228)
!5234 = !DILocation(line: 368, column: 6, scope: !5190, inlinedAt: !5233)
!5235 = !DILocalVariable(name: "n", arg: 1, scope: !5228, file: !5229, line: 30, type: !382)
!5236 = !DILocation(line: 30, column: 21, scope: !5228)
!5237 = !DILocation(line: 32, column: 15, scope: !5228)
!5238 = !DILocation(line: 374, column: 2, scope: !5190, inlinedAt: !5233)
!5239 = !DILocation(line: 376, column: 14, scope: !5190, inlinedAt: !5233)
!5240 = !DILocation(line: 377, column: 9, scope: !5190, inlinedAt: !5233)
!5241 = !DILocation(line: 377, column: 16, scope: !5190, inlinedAt: !5233)
!5242 = !DILocation(line: 32, column: 18, scope: !5228)
!5243 = !DILocation(line: 32, column: 2, scope: !5228)
!5244 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5245, file: !5245, line: 137, type: !5246, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5245 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!160, !899, !2012, !286, !158}
!5248 = !DILocalVariable(name: "s", arg: 1, scope: !5244, file: !5245, line: 137, type: !899)
!5249 = !DILocation(line: 137, column: 54, scope: !5244)
!5250 = !DILocalVariable(name: "object", arg: 2, scope: !5244, file: !5245, line: 137, type: !2012)
!5251 = !DILocation(line: 137, column: 69, scope: !5244)
!5252 = !DILocalVariable(name: "size", arg: 3, scope: !5244, file: !5245, line: 138, type: !286)
!5253 = !DILocation(line: 138, column: 12, scope: !5244)
!5254 = !DILocalVariable(name: "flags", arg: 4, scope: !5244, file: !5245, line: 138, type: !158)
!5255 = !DILocation(line: 138, column: 24, scope: !5244)
!5256 = !DILocation(line: 140, column: 17, scope: !5244)
!5257 = !DILocation(line: 140, column: 2, scope: !5244)
!5258 = distinct !DISubprogram(name: "usb_match_any_interface", scope: !3, file: !3, line: 561, type: !5259, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!451, !3760, !4435}
!5261 = !DILocalVariable(name: "udev", arg: 1, scope: !5258, file: !3, line: 561, type: !3760)
!5262 = !DILocation(line: 561, column: 56, scope: !5258)
!5263 = !DILocalVariable(name: "id", arg: 2, scope: !5258, file: !3, line: 562, type: !4435)
!5264 = !DILocation(line: 562, column: 37, scope: !5258)
!5265 = !DILocalVariable(name: "i", scope: !5258, file: !3, line: 564, type: !7)
!5266 = !DILocation(line: 564, column: 15, scope: !5258)
!5267 = !DILocation(line: 566, column: 9, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 566, column: 2)
!5269 = !DILocation(line: 566, column: 7, scope: !5268)
!5270 = !DILocation(line: 566, column: 14, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 566, column: 2)
!5272 = !DILocation(line: 566, column: 18, scope: !5271)
!5273 = !DILocation(line: 566, column: 24, scope: !5271)
!5274 = !DILocation(line: 566, column: 35, scope: !5271)
!5275 = !DILocation(line: 566, column: 16, scope: !5271)
!5276 = !DILocation(line: 566, column: 2, scope: !5268)
!5277 = !DILocalVariable(name: "cfg", scope: !5278, file: !3, line: 567, type: !3908)
!5278 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 566, column: 60)
!5279 = !DILocation(line: 567, column: 27, scope: !5278)
!5280 = !DILocation(line: 567, column: 34, scope: !5278)
!5281 = !DILocation(line: 567, column: 40, scope: !5278)
!5282 = !DILocation(line: 567, column: 47, scope: !5278)
!5283 = !DILocalVariable(name: "j", scope: !5278, file: !3, line: 568, type: !7)
!5284 = !DILocation(line: 568, column: 16, scope: !5278)
!5285 = !DILocation(line: 570, column: 10, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 570, column: 3)
!5287 = !DILocation(line: 570, column: 8, scope: !5286)
!5288 = !DILocation(line: 570, column: 15, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 570, column: 3)
!5290 = !DILocation(line: 570, column: 19, scope: !5289)
!5291 = !DILocation(line: 570, column: 24, scope: !5289)
!5292 = !DILocation(line: 570, column: 29, scope: !5289)
!5293 = !DILocation(line: 570, column: 17, scope: !5289)
!5294 = !DILocation(line: 570, column: 3, scope: !5286)
!5295 = !DILocalVariable(name: "cache", scope: !5296, file: !3, line: 571, type: !3980)
!5296 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 570, column: 50)
!5297 = !DILocation(line: 571, column: 32, scope: !5296)
!5298 = !DILocalVariable(name: "intf", scope: !5296, file: !3, line: 572, type: !3942)
!5299 = !DILocation(line: 572, column: 31, scope: !5296)
!5300 = !DILocation(line: 574, column: 12, scope: !5296)
!5301 = !DILocation(line: 574, column: 17, scope: !5296)
!5302 = !DILocation(line: 574, column: 28, scope: !5296)
!5303 = !DILocation(line: 574, column: 10, scope: !5296)
!5304 = !DILocation(line: 575, column: 8, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 575, column: 8)
!5306 = !DILocation(line: 575, column: 15, scope: !5305)
!5307 = !DILocation(line: 575, column: 30, scope: !5305)
!5308 = !DILocation(line: 575, column: 8, scope: !5296)
!5309 = !DILocation(line: 576, column: 5, scope: !5305)
!5310 = !DILocation(line: 578, column: 12, scope: !5296)
!5311 = !DILocation(line: 578, column: 19, scope: !5296)
!5312 = !DILocation(line: 578, column: 9, scope: !5296)
!5313 = !DILocation(line: 579, column: 30, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 579, column: 8)
!5315 = !DILocation(line: 579, column: 36, scope: !5314)
!5316 = !DILocation(line: 579, column: 42, scope: !5314)
!5317 = !DILocation(line: 579, column: 8, scope: !5314)
!5318 = !DILocation(line: 579, column: 8, scope: !5296)
!5319 = !DILocation(line: 580, column: 5, scope: !5314)
!5320 = !DILocation(line: 581, column: 3, scope: !5296)
!5321 = !DILocation(line: 570, column: 45, scope: !5289)
!5322 = !DILocation(line: 570, column: 3, scope: !5289)
!5323 = distinct !{!5323, !5294, !5324}
!5324 = !DILocation(line: 581, column: 3, scope: !5286)
!5325 = !DILocation(line: 582, column: 2, scope: !5278)
!5326 = !DILocation(line: 566, column: 55, scope: !5271)
!5327 = !DILocation(line: 566, column: 2, scope: !5271)
!5328 = distinct !{!5328, !5276, !5329}
!5329 = !DILocation(line: 582, column: 2, scope: !5268)
!5330 = !DILocation(line: 584, column: 2, scope: !5258)
!5331 = !DILocation(line: 585, column: 1, scope: !5258)
!5332 = distinct !DISubprogram(name: "bus_to_hcd", scope: !152, file: !152, line: 241, type: !5333, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!165, !3786}
!5335 = !DILocalVariable(name: "bus", arg: 1, scope: !5332, file: !152, line: 241, type: !3786)
!5336 = !DILocation(line: 241, column: 58, scope: !5332)
!5337 = !DILocalVariable(name: "__mptr", scope: !5338, file: !152, line: 243, type: !160)
!5338 = distinct !DILexicalBlock(scope: !5332, file: !152, line: 243, column: 9)
!5339 = !DILocation(line: 243, column: 9, scope: !5338)
!5340 = !DILocation(line: 243, column: 9, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5338, file: !152, line: 243, column: 9)
!5342 = !DILocation(line: 243, column: 2, scope: !5332)
