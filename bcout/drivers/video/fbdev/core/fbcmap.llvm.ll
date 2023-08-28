; ModuleID = '../bcout/drivers/video/fbdev/core/fbcmap.llvm.bc'
source_filename = "drivers/video/fbdev/core/fbcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.kmem_cache = type opaque
%struct.fb_cmap_user = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.65, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, %struct.fb_videomode*, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.fb_pixmap = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct.fb_info*, i8*, i8*, i32)*, void (%struct.fb_info*, i8*, i8*, i32)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, %struct.backlight_ops*, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*, %struct.fb_info*)* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
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
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, {}*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_tile_ops = type { void (%struct.fb_info*, %struct.fb_tilemap*)*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.65 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }

@default_2_colors = internal constant %struct.fb_cmap { i32 0, i32 2, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @red2, i32 0, i32 0), i16* getelementptr inbounds ([2 x i16], [2 x i16]* @green2, i32 0, i32 0), i16* getelementptr inbounds ([2 x i16], [2 x i16]* @blue2, i32 0, i32 0), i16* null }, align 8, !dbg !0
@default_4_colors = internal constant %struct.fb_cmap { i32 0, i32 4, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @red4, i32 0, i32 0), i16* getelementptr inbounds ([4 x i16], [4 x i16]* @green4, i32 0, i32 0), i16* getelementptr inbounds ([4 x i16], [4 x i16]* @blue4, i32 0, i32 0), i16* null }, align 8, !dbg !142
@default_8_colors = internal constant %struct.fb_cmap { i32 0, i32 8, i16* getelementptr inbounds ([8 x i16], [8 x i16]* @red8, i32 0, i32 0), i16* getelementptr inbounds ([8 x i16], [8 x i16]* @green8, i32 0, i32 0), i16* getelementptr inbounds ([8 x i16], [8 x i16]* @blue8, i32 0, i32 0), i16* null }, align 8, !dbg !159
@default_16_colors = internal constant %struct.fb_cmap { i32 0, i32 16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @red16, i32 0, i32 0), i16* getelementptr inbounds ([16 x i16], [16 x i16]* @green16, i32 0, i32 0), i16* getelementptr inbounds ([16 x i16], [16 x i16]* @blue16, i32 0, i32 0), i16* null }, align 8, !dbg !161
@red2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2, !dbg !163
@green2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2, !dbg !170
@blue2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2, !dbg !172
@red4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2, !dbg !174
@green4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2, !dbg !179
@blue4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2, !dbg !181
@red8 = internal global [8 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -21846, i16 -21846, i16 -21846, i16 -21846], section ".data..read_mostly", align 16, !dbg !183
@green8 = internal global [8 x i16] [i16 0, i16 0, i16 -21846, i16 -21846, i16 0, i16 0, i16 21845, i16 -21846], section ".data..read_mostly", align 16, !dbg !188
@blue8 = internal global [8 x i16] [i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846], section ".data..read_mostly", align 16, !dbg !190
@red16 = internal global [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -21846, i16 -21846, i16 -21846, i16 -21846, i16 21845, i16 21845, i16 21845, i16 21845, i16 -1, i16 -1, i16 -1, i16 -1], section ".data..read_mostly", align 16, !dbg !192
@green16 = internal global [16 x i16] [i16 0, i16 0, i16 -21846, i16 -21846, i16 0, i16 0, i16 21845, i16 -21846, i16 21845, i16 21845, i16 -1, i16 -1, i16 21845, i16 21845, i16 -1, i16 -1], section ".data..read_mostly", align 16, !dbg !197
@blue16 = internal global [16 x i16] [i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 21845, i16 -1, i16 21845, i16 -1, i16 21845, i16 -1, i16 21845, i16 -1], section ".data..read_mostly", align 16, !dbg !199
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_alloc_cmap_gfp(%struct.fb_cmap* %cmap, i32 %len, i32 %transp, i32 %flags) #0 !dbg !206 {
entry:
  %s.addr.i.i330 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i330, metadata !211, metadata !DIExpression()), !dbg !218
  %flags.addr.i17.i331 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i331, metadata !230, metadata !DIExpression()), !dbg !231
  %size.addr.i18.i332 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i332, metadata !232, metadata !DIExpression()), !dbg !233
  %ret.i.i333 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i333, metadata !234, metadata !DIExpression()), !dbg !235
  %retval.i12.i334 = alloca i32, align 4
  %flags.addr.i13.i335 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i335, metadata !236, metadata !DIExpression()), !dbg !240
  %retval.i.i336 = alloca i32, align 4
  %size.addr.i11.i337 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i337, metadata !242, metadata !DIExpression()), !dbg !246
  %size.addr.i.i.i338 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i338, metadata !248, metadata !DIExpression()), !dbg !252
  %flags.addr.i.i.i339 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i339, metadata !257, metadata !DIExpression()), !dbg !258
  %order.addr.i.i.i340 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i340, metadata !259, metadata !DIExpression()), !dbg !260
  %size.addr.i.i341 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i341, metadata !261, metadata !DIExpression()), !dbg !262
  %flags.addr.i.i342 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i342, metadata !263, metadata !DIExpression()), !dbg !264
  %order.i.i343 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i343, metadata !265, metadata !DIExpression()), !dbg !266
  %retval.i344 = alloca i8*, align 8
  %size.addr.i345 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i345, metadata !267, metadata !DIExpression()), !dbg !268
  %flags.addr.i346 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i346, metadata !269, metadata !DIExpression()), !dbg !270
  %index.i347 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i347, metadata !271, metadata !DIExpression()), !dbg !272
  %s.addr.i.i185 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i185, metadata !211, metadata !DIExpression()), !dbg !273
  %flags.addr.i17.i186 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i186, metadata !230, metadata !DIExpression()), !dbg !276
  %size.addr.i18.i187 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i187, metadata !232, metadata !DIExpression()), !dbg !277
  %ret.i.i188 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i188, metadata !234, metadata !DIExpression()), !dbg !278
  %retval.i12.i189 = alloca i32, align 4
  %flags.addr.i13.i190 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i190, metadata !236, metadata !DIExpression()), !dbg !279
  %retval.i.i191 = alloca i32, align 4
  %size.addr.i11.i192 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i192, metadata !242, metadata !DIExpression()), !dbg !281
  %size.addr.i.i.i193 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i193, metadata !248, metadata !DIExpression()), !dbg !283
  %flags.addr.i.i.i194 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i194, metadata !257, metadata !DIExpression()), !dbg !286
  %order.addr.i.i.i195 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i195, metadata !259, metadata !DIExpression()), !dbg !287
  %size.addr.i.i196 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i196, metadata !261, metadata !DIExpression()), !dbg !288
  %flags.addr.i.i197 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i197, metadata !263, metadata !DIExpression()), !dbg !289
  %order.i.i198 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i198, metadata !265, metadata !DIExpression()), !dbg !290
  %retval.i199 = alloca i8*, align 8
  %size.addr.i200 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i200, metadata !267, metadata !DIExpression()), !dbg !291
  %flags.addr.i201 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i201, metadata !269, metadata !DIExpression()), !dbg !292
  %index.i202 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i202, metadata !271, metadata !DIExpression()), !dbg !293
  %s.addr.i.i40 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i40, metadata !211, metadata !DIExpression()), !dbg !294
  %flags.addr.i17.i41 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i41, metadata !230, metadata !DIExpression()), !dbg !297
  %size.addr.i18.i42 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i42, metadata !232, metadata !DIExpression()), !dbg !298
  %ret.i.i43 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i43, metadata !234, metadata !DIExpression()), !dbg !299
  %retval.i12.i44 = alloca i32, align 4
  %flags.addr.i13.i45 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i45, metadata !236, metadata !DIExpression()), !dbg !300
  %retval.i.i46 = alloca i32, align 4
  %size.addr.i11.i47 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i47, metadata !242, metadata !DIExpression()), !dbg !302
  %size.addr.i.i.i48 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i48, metadata !248, metadata !DIExpression()), !dbg !304
  %flags.addr.i.i.i49 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i49, metadata !257, metadata !DIExpression()), !dbg !307
  %order.addr.i.i.i50 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i50, metadata !259, metadata !DIExpression()), !dbg !308
  %size.addr.i.i51 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i51, metadata !261, metadata !DIExpression()), !dbg !309
  %flags.addr.i.i52 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i52, metadata !263, metadata !DIExpression()), !dbg !310
  %order.i.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i53, metadata !265, metadata !DIExpression()), !dbg !311
  %retval.i54 = alloca i8*, align 8
  %size.addr.i55 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i55, metadata !267, metadata !DIExpression()), !dbg !312
  %flags.addr.i56 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i56, metadata !269, metadata !DIExpression()), !dbg !313
  %index.i57 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i57, metadata !271, metadata !DIExpression()), !dbg !314
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !211, metadata !DIExpression()), !dbg !315
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !230, metadata !DIExpression()), !dbg !318
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !232, metadata !DIExpression()), !dbg !319
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !234, metadata !DIExpression()), !dbg !320
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !236, metadata !DIExpression()), !dbg !321
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !242, metadata !DIExpression()), !dbg !323
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !248, metadata !DIExpression()), !dbg !325
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !257, metadata !DIExpression()), !dbg !328
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !259, metadata !DIExpression()), !dbg !329
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !261, metadata !DIExpression()), !dbg !330
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !263, metadata !DIExpression()), !dbg !331
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !265, metadata !DIExpression()), !dbg !332
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !267, metadata !DIExpression()), !dbg !333
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !269, metadata !DIExpression()), !dbg !334
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !271, metadata !DIExpression()), !dbg !335
  %retval = alloca i32, align 4
  %cmap.addr = alloca %struct.fb_cmap*, align 8
  %len.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.fb_cmap* %cmap, %struct.fb_cmap** %cmap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap** %cmap.addr, metadata !336, metadata !DIExpression()), !dbg !337
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !338, metadata !DIExpression()), !dbg !339
  store i32 %transp, i32* %transp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %transp.addr, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %size, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i32, i32* %len.addr, align 4, !dbg !346
  %conv = sext i32 %0 to i64, !dbg !346
  %mul = mul i64 %conv, 2, !dbg !347
  %conv1 = trunc i64 %mul to i32, !dbg !346
  store i32 %conv1, i32* %size, align 4, !dbg !345
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !348, metadata !DIExpression()), !dbg !349
  store i32 -12, i32* %ret, align 4, !dbg !349
  %1 = load i32, i32* %flags.addr, align 4, !dbg !350
  %or = or i32 %1, 8192, !dbg !350
  store i32 %or, i32* %flags.addr, align 4, !dbg !350
  %2 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !351
  %len2 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %2, i32 0, i32 1, !dbg !352
  %3 = load i32, i32* %len2, align 4, !dbg !352
  %4 = load i32, i32* %len.addr, align 4, !dbg !353
  %cmp = icmp ne i32 %3, %4, !dbg !354
  br i1 %cmp, label %if.then, label %if.end33, !dbg !355

if.then:                                          ; preds = %entry
  %5 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !356
  call void @fb_dealloc_cmap(%struct.fb_cmap* %5) #7, !dbg !357
  %6 = load i32, i32* %len.addr, align 4, !dbg !358
  %tobool = icmp ne i32 %6, 0, !dbg !358
  br i1 %tobool, label %if.end, label %if.then4, !dbg !360

if.then4:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !361
  br label %return, !dbg !361

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %size, align 4, !dbg !362
  %conv5 = sext i32 %7 to i64, !dbg !362
  %8 = load i32, i32* %flags.addr, align 4, !dbg !363
  store i64 %conv5, i64* %size.addr.i, align 8
  store i32 %8, i32* %flags.addr.i, align 4
  %9 = load i64, i64* %size.addr.i, align 8, !dbg !364
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #8, !dbg !365
  br i1 %10, label %if.then.i, label %if.end9.i, !dbg !366

if.then.i:                                        ; preds = %if.end
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !367
  %cmp.i = icmp ugt i64 %11, 8192, !dbg !368
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !369

if.then1.i:                                       ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !370
  %13 = load i32, i32* %flags.addr.i, align 4, !dbg !371
  store i64 %12, i64* %size.addr.i.i, align 8
  store i32 %13, i32* %flags.addr.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !372
  %call.i.i = call i32 @get_order(i64 %14) #9, !dbg !373
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !332
  %15 = load i64, i64* %size.addr.i.i, align 8, !dbg !374
  %16 = load i32, i32* %flags.addr.i.i, align 4, !dbg !375
  %17 = load i32, i32* %order.i.i, align 4, !dbg !376
  store i64 %15, i64* %size.addr.i.i.i, align 8
  store i32 %16, i32* %flags.addr.i.i.i, align 4
  store i32 %17, i32* %order.addr.i.i.i, align 4
  %18 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !377
  %19 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !378
  %20 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !379
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %18, i32 %19, i32 %20) #10, !dbg !380
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !380
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !380
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !380
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !380
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !381
  br label %kmalloc.exit, !dbg !381

if.end.i:                                         ; preds = %if.then.i
  %21 = load i64, i64* %size.addr.i, align 8, !dbg !382
  store i64 %21, i64* %size.addr.i11.i, align 8
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !383
  %tobool.i.i = icmp ne i64 %22, 0, !dbg !383
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !385

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !386
  br label %kmalloc_index.exit.i, !dbg !386

if.end.i.i:                                       ; preds = %if.end.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !387
  %cmp.i.i = icmp ule i64 %23, 8, !dbg !389
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !390

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !391
  br label %kmalloc_index.exit.i, !dbg !391

if.end2.i.i:                                      ; preds = %if.end.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !392
  %cmp3.i.i = icmp ugt i64 %24, 64, !dbg !394
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !395

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !396
  %cmp4.i.i = icmp ule i64 %25, 96, !dbg !397
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !398

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !399
  br label %kmalloc_index.exit.i, !dbg !399

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !400
  %cmp7.i.i = icmp ugt i64 %26, 128, !dbg !402
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !403

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !404
  %cmp9.i.i = icmp ule i64 %27, 192, !dbg !405
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !406

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !407
  br label %kmalloc_index.exit.i, !dbg !407

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !408
  %cmp12.i.i = icmp ule i64 %28, 8, !dbg !410
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !411

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !412
  br label %kmalloc_index.exit.i, !dbg !412

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !413
  %cmp15.i.i = icmp ule i64 %29, 16, !dbg !415
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !416

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !417
  br label %kmalloc_index.exit.i, !dbg !417

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !418
  %cmp18.i.i = icmp ule i64 %30, 32, !dbg !420
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !421

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !422
  br label %kmalloc_index.exit.i, !dbg !422

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !423
  %cmp21.i.i = icmp ule i64 %31, 64, !dbg !425
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !426

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !427
  br label %kmalloc_index.exit.i, !dbg !427

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !428
  %cmp24.i.i = icmp ule i64 %32, 128, !dbg !430
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !431

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !432
  br label %kmalloc_index.exit.i, !dbg !432

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !433
  %cmp27.i.i = icmp ule i64 %33, 256, !dbg !435
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !436

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !437
  br label %kmalloc_index.exit.i, !dbg !437

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !438
  %cmp30.i.i = icmp ule i64 %34, 512, !dbg !440
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !441

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !442
  br label %kmalloc_index.exit.i, !dbg !442

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !443
  %cmp33.i.i = icmp ule i64 %35, 1024, !dbg !445
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !446

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !447
  br label %kmalloc_index.exit.i, !dbg !447

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !448
  %cmp36.i.i = icmp ule i64 %36, 2048, !dbg !450
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !451

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !452
  br label %kmalloc_index.exit.i, !dbg !452

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !453
  %cmp39.i.i = icmp ule i64 %37, 4096, !dbg !455
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !456

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !457
  br label %kmalloc_index.exit.i, !dbg !457

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !458
  %cmp42.i.i = icmp ule i64 %38, 8192, !dbg !460
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !461

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !462
  br label %kmalloc_index.exit.i, !dbg !462

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !463
  %cmp45.i.i = icmp ule i64 %39, 16384, !dbg !465
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !466

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !467
  br label %kmalloc_index.exit.i, !dbg !467

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !468
  %cmp48.i.i = icmp ule i64 %40, 32768, !dbg !470
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !471

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !472
  br label %kmalloc_index.exit.i, !dbg !472

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !473
  %cmp51.i.i = icmp ule i64 %41, 65536, !dbg !475
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !476

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !477
  br label %kmalloc_index.exit.i, !dbg !477

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !478
  %cmp54.i.i = icmp ule i64 %42, 131072, !dbg !480
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !481

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !482
  br label %kmalloc_index.exit.i, !dbg !482

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !483
  %cmp57.i.i = icmp ule i64 %43, 262144, !dbg !485
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !486

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !487
  br label %kmalloc_index.exit.i, !dbg !487

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !488
  %cmp60.i.i = icmp ule i64 %44, 524288, !dbg !490
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !491

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !492
  br label %kmalloc_index.exit.i, !dbg !492

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !493
  %cmp63.i.i = icmp ule i64 %45, 1048576, !dbg !495
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !496

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !497
  br label %kmalloc_index.exit.i, !dbg !497

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !498
  %cmp66.i.i = icmp ule i64 %46, 2097152, !dbg !500
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !501

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !502
  br label %kmalloc_index.exit.i, !dbg !502

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !503
  %cmp69.i.i = icmp ule i64 %47, 4194304, !dbg !505
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !506

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !507
  br label %kmalloc_index.exit.i, !dbg !507

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !508
  %cmp72.i.i = icmp ule i64 %48, 8388608, !dbg !510
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !511

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !512
  br label %kmalloc_index.exit.i, !dbg !512

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !513
  %cmp75.i.i = icmp ule i64 %49, 16777216, !dbg !515
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !516

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !517
  br label %kmalloc_index.exit.i, !dbg !517

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !518
  %cmp78.i.i = icmp ule i64 %50, 33554432, !dbg !520
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !521

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !522
  br label %kmalloc_index.exit.i, !dbg !522

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !523
  %cmp81.i.i = icmp ule i64 %51, 67108864, !dbg !525
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !526

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !527
  br label %kmalloc_index.exit.i, !dbg !527

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !528, !srcloc !531
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #8, !dbg !532, !srcloc !535
  unreachable, !dbg !536

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %52 = load i32, i32* %retval.i.i, align 4, !dbg !537
  store i32 %52, i32* %index.i, align 4, !dbg !538
  %53 = load i32, i32* %index.i, align 4, !dbg !539
  %tobool.i = icmp ne i32 %53, 0, !dbg !539
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !541

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !542
  br label %kmalloc.exit, !dbg !542

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !543
  store i32 %54, i32* %flags.addr.i13.i, align 4
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !544
  %and.i.i = and i32 %55, 17, !dbg !544
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !544
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !544
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !544
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !544
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !546

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !547
  br label %kmalloc_type.exit.i, !dbg !547

if.end.i16.i:                                     ; preds = %if.end4.i
  %56 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !548
  %and2.i.i = and i32 %56, 1, !dbg !549
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !548
  %57 = zext i1 %tobool3.i.i to i64, !dbg !548
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !548
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !550
  br label %kmalloc_type.exit.i, !dbg !550

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %58 = load i32, i32* %retval.i12.i, align 4, !dbg !551
  %idxprom.i = zext i32 %58 to i64, !dbg !552
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !552
  %59 = load i32, i32* %index.i, align 4, !dbg !553
  %idxprom6.i = zext i32 %59 to i64, !dbg !552
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !552
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !552
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !554
  %62 = load i64, i64* %size.addr.i, align 8, !dbg !555
  store %struct.kmem_cache* %60, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %61, i32* %flags.addr.i17.i, align 4
  store i64 %62, i64* %size.addr.i18.i, align 8
  %63 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !556
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !557
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %63, i32 %64) #10, !dbg !558
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !558
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !558
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !558
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !558
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !320
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !559
  %66 = load i8*, i8** %ret.i.i, align 8, !dbg !560
  %67 = load i64, i64* %size.addr.i18.i, align 8, !dbg !561
  %68 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !562
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %65, i8* %66, i64 %67, i32 %68) #10, !dbg !563
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !564
  %69 = load i8*, i8** %ret.i.i, align 8, !dbg !565
  store i8* %69, i8** %retval.i, align 8, !dbg !566
  br label %kmalloc.exit, !dbg !566

if.end9.i:                                        ; preds = %if.end
  %70 = load i64, i64* %size.addr.i, align 8, !dbg !567
  %71 = load i32, i32* %flags.addr.i, align 4, !dbg !568
  %call10.i = call noalias i8* @__kmalloc(i64 %70, i32 %71) #10, !dbg !569
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !569
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !569
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !569
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !569
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !570
  br label %kmalloc.exit, !dbg !570

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %72 = load i8*, i8** %retval.i, align 8, !dbg !571
  %73 = bitcast i8* %72 to i16*, !dbg !572
  %74 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !573
  %red = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %74, i32 0, i32 2, !dbg !574
  store i16* %73, i16** %red, align 8, !dbg !575
  %75 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !576
  %red6 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %75, i32 0, i32 2, !dbg !578
  %76 = load i16*, i16** %red6, align 8, !dbg !578
  %tobool7 = icmp ne i16* %76, null, !dbg !576
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !579

if.then8:                                         ; preds = %kmalloc.exit
  br label %fail, !dbg !580

if.end9:                                          ; preds = %kmalloc.exit
  %77 = load i32, i32* %size, align 4, !dbg !581
  %conv10 = sext i32 %77 to i64, !dbg !581
  %78 = load i32, i32* %flags.addr, align 4, !dbg !582
  store i64 %conv10, i64* %size.addr.i55, align 8
  store i32 %78, i32* %flags.addr.i56, align 4
  %79 = load i64, i64* %size.addr.i55, align 8, !dbg !583
  %80 = call i1 @llvm.is.constant.i64(i64 %79) #8, !dbg !584
  br i1 %80, label %if.then.i59, label %if.end9.i183, !dbg !585

if.then.i59:                                      ; preds = %if.end9
  %81 = load i64, i64* %size.addr.i55, align 8, !dbg !586
  %cmp.i58 = icmp ugt i64 %81, 8192, !dbg !587
  br i1 %cmp.i58, label %if.then1.i65, label %if.end.i67, !dbg !588

if.then1.i65:                                     ; preds = %if.then.i59
  %82 = load i64, i64* %size.addr.i55, align 8, !dbg !589
  %83 = load i32, i32* %flags.addr.i56, align 4, !dbg !590
  store i64 %82, i64* %size.addr.i.i51, align 8
  store i32 %83, i32* %flags.addr.i.i52, align 4
  %84 = load i64, i64* %size.addr.i.i51, align 8, !dbg !591
  %call.i.i60 = call i32 @get_order(i64 %84) #9, !dbg !592
  store i32 %call.i.i60, i32* %order.i.i53, align 4, !dbg !311
  %85 = load i64, i64* %size.addr.i.i51, align 8, !dbg !593
  %86 = load i32, i32* %flags.addr.i.i52, align 4, !dbg !594
  %87 = load i32, i32* %order.i.i53, align 4, !dbg !595
  store i64 %85, i64* %size.addr.i.i.i48, align 8
  store i32 %86, i32* %flags.addr.i.i.i49, align 4
  store i32 %87, i32* %order.addr.i.i.i50, align 4
  %88 = load i64, i64* %size.addr.i.i.i48, align 8, !dbg !596
  %89 = load i32, i32* %flags.addr.i.i.i49, align 4, !dbg !597
  %90 = load i32, i32* %order.addr.i.i.i50, align 4, !dbg !598
  %call.i.i.i61 = call noalias i8* @kmalloc_order(i64 %88, i32 %89, i32 %90) #10, !dbg !599
  %ptrint.i.i.i62 = ptrtoint i8* %call.i.i.i61 to i64, !dbg !599
  %maskedptr.i.i.i63 = and i64 %ptrint.i.i.i62, 4095, !dbg !599
  %maskcond.i.i.i64 = icmp eq i64 %maskedptr.i.i.i63, 0, !dbg !599
  call void @llvm.assume(i1 %maskcond.i.i.i64) #8, !dbg !599
  store i8* %call.i.i.i61, i8** %retval.i54, align 8, !dbg !600
  br label %kmalloc.exit184, !dbg !600

if.end.i67:                                       ; preds = %if.then.i59
  %91 = load i64, i64* %size.addr.i55, align 8, !dbg !601
  store i64 %91, i64* %size.addr.i11.i47, align 8
  %92 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !602
  %tobool.i.i66 = icmp ne i64 %92, 0, !dbg !602
  br i1 %tobool.i.i66, label %if.end.i.i70, label %if.then.i.i68, !dbg !603

if.then.i.i68:                                    ; preds = %if.end.i67
  store i32 0, i32* %retval.i.i46, align 4, !dbg !604
  br label %kmalloc_index.exit.i156, !dbg !604

if.end.i.i70:                                     ; preds = %if.end.i67
  %93 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !605
  %cmp.i.i69 = icmp ule i64 %93, 8, !dbg !606
  br i1 %cmp.i.i69, label %if.then1.i.i71, label %if.end2.i.i73, !dbg !607

if.then1.i.i71:                                   ; preds = %if.end.i.i70
  store i32 3, i32* %retval.i.i46, align 4, !dbg !608
  br label %kmalloc_index.exit.i156, !dbg !608

if.end2.i.i73:                                    ; preds = %if.end.i.i70
  %94 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !609
  %cmp3.i.i72 = icmp ugt i64 %94, 64, !dbg !610
  br i1 %cmp3.i.i72, label %land.lhs.true.i.i75, label %if.end6.i.i78, !dbg !611

land.lhs.true.i.i75:                              ; preds = %if.end2.i.i73
  %95 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !612
  %cmp4.i.i74 = icmp ule i64 %95, 96, !dbg !613
  br i1 %cmp4.i.i74, label %if.then5.i.i76, label %if.end6.i.i78, !dbg !614

if.then5.i.i76:                                   ; preds = %land.lhs.true.i.i75
  store i32 1, i32* %retval.i.i46, align 4, !dbg !615
  br label %kmalloc_index.exit.i156, !dbg !615

if.end6.i.i78:                                    ; preds = %land.lhs.true.i.i75, %if.end2.i.i73
  %96 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !616
  %cmp7.i.i77 = icmp ugt i64 %96, 128, !dbg !617
  br i1 %cmp7.i.i77, label %land.lhs.true8.i.i80, label %if.end11.i.i83, !dbg !618

land.lhs.true8.i.i80:                             ; preds = %if.end6.i.i78
  %97 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !619
  %cmp9.i.i79 = icmp ule i64 %97, 192, !dbg !620
  br i1 %cmp9.i.i79, label %if.then10.i.i81, label %if.end11.i.i83, !dbg !621

if.then10.i.i81:                                  ; preds = %land.lhs.true8.i.i80
  store i32 2, i32* %retval.i.i46, align 4, !dbg !622
  br label %kmalloc_index.exit.i156, !dbg !622

if.end11.i.i83:                                   ; preds = %land.lhs.true8.i.i80, %if.end6.i.i78
  %98 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !623
  %cmp12.i.i82 = icmp ule i64 %98, 8, !dbg !624
  br i1 %cmp12.i.i82, label %if.then13.i.i84, label %if.end14.i.i86, !dbg !625

if.then13.i.i84:                                  ; preds = %if.end11.i.i83
  store i32 3, i32* %retval.i.i46, align 4, !dbg !626
  br label %kmalloc_index.exit.i156, !dbg !626

if.end14.i.i86:                                   ; preds = %if.end11.i.i83
  %99 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !627
  %cmp15.i.i85 = icmp ule i64 %99, 16, !dbg !628
  br i1 %cmp15.i.i85, label %if.then16.i.i87, label %if.end17.i.i89, !dbg !629

if.then16.i.i87:                                  ; preds = %if.end14.i.i86
  store i32 4, i32* %retval.i.i46, align 4, !dbg !630
  br label %kmalloc_index.exit.i156, !dbg !630

if.end17.i.i89:                                   ; preds = %if.end14.i.i86
  %100 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !631
  %cmp18.i.i88 = icmp ule i64 %100, 32, !dbg !632
  br i1 %cmp18.i.i88, label %if.then19.i.i90, label %if.end20.i.i92, !dbg !633

if.then19.i.i90:                                  ; preds = %if.end17.i.i89
  store i32 5, i32* %retval.i.i46, align 4, !dbg !634
  br label %kmalloc_index.exit.i156, !dbg !634

if.end20.i.i92:                                   ; preds = %if.end17.i.i89
  %101 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !635
  %cmp21.i.i91 = icmp ule i64 %101, 64, !dbg !636
  br i1 %cmp21.i.i91, label %if.then22.i.i93, label %if.end23.i.i95, !dbg !637

if.then22.i.i93:                                  ; preds = %if.end20.i.i92
  store i32 6, i32* %retval.i.i46, align 4, !dbg !638
  br label %kmalloc_index.exit.i156, !dbg !638

if.end23.i.i95:                                   ; preds = %if.end20.i.i92
  %102 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !639
  %cmp24.i.i94 = icmp ule i64 %102, 128, !dbg !640
  br i1 %cmp24.i.i94, label %if.then25.i.i96, label %if.end26.i.i98, !dbg !641

if.then25.i.i96:                                  ; preds = %if.end23.i.i95
  store i32 7, i32* %retval.i.i46, align 4, !dbg !642
  br label %kmalloc_index.exit.i156, !dbg !642

if.end26.i.i98:                                   ; preds = %if.end23.i.i95
  %103 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !643
  %cmp27.i.i97 = icmp ule i64 %103, 256, !dbg !644
  br i1 %cmp27.i.i97, label %if.then28.i.i99, label %if.end29.i.i101, !dbg !645

if.then28.i.i99:                                  ; preds = %if.end26.i.i98
  store i32 8, i32* %retval.i.i46, align 4, !dbg !646
  br label %kmalloc_index.exit.i156, !dbg !646

if.end29.i.i101:                                  ; preds = %if.end26.i.i98
  %104 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !647
  %cmp30.i.i100 = icmp ule i64 %104, 512, !dbg !648
  br i1 %cmp30.i.i100, label %if.then31.i.i102, label %if.end32.i.i104, !dbg !649

if.then31.i.i102:                                 ; preds = %if.end29.i.i101
  store i32 9, i32* %retval.i.i46, align 4, !dbg !650
  br label %kmalloc_index.exit.i156, !dbg !650

if.end32.i.i104:                                  ; preds = %if.end29.i.i101
  %105 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !651
  %cmp33.i.i103 = icmp ule i64 %105, 1024, !dbg !652
  br i1 %cmp33.i.i103, label %if.then34.i.i105, label %if.end35.i.i107, !dbg !653

if.then34.i.i105:                                 ; preds = %if.end32.i.i104
  store i32 10, i32* %retval.i.i46, align 4, !dbg !654
  br label %kmalloc_index.exit.i156, !dbg !654

if.end35.i.i107:                                  ; preds = %if.end32.i.i104
  %106 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !655
  %cmp36.i.i106 = icmp ule i64 %106, 2048, !dbg !656
  br i1 %cmp36.i.i106, label %if.then37.i.i108, label %if.end38.i.i110, !dbg !657

if.then37.i.i108:                                 ; preds = %if.end35.i.i107
  store i32 11, i32* %retval.i.i46, align 4, !dbg !658
  br label %kmalloc_index.exit.i156, !dbg !658

if.end38.i.i110:                                  ; preds = %if.end35.i.i107
  %107 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !659
  %cmp39.i.i109 = icmp ule i64 %107, 4096, !dbg !660
  br i1 %cmp39.i.i109, label %if.then40.i.i111, label %if.end41.i.i113, !dbg !661

if.then40.i.i111:                                 ; preds = %if.end38.i.i110
  store i32 12, i32* %retval.i.i46, align 4, !dbg !662
  br label %kmalloc_index.exit.i156, !dbg !662

if.end41.i.i113:                                  ; preds = %if.end38.i.i110
  %108 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !663
  %cmp42.i.i112 = icmp ule i64 %108, 8192, !dbg !664
  br i1 %cmp42.i.i112, label %if.then43.i.i114, label %if.end44.i.i116, !dbg !665

if.then43.i.i114:                                 ; preds = %if.end41.i.i113
  store i32 13, i32* %retval.i.i46, align 4, !dbg !666
  br label %kmalloc_index.exit.i156, !dbg !666

if.end44.i.i116:                                  ; preds = %if.end41.i.i113
  %109 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !667
  %cmp45.i.i115 = icmp ule i64 %109, 16384, !dbg !668
  br i1 %cmp45.i.i115, label %if.then46.i.i117, label %if.end47.i.i119, !dbg !669

if.then46.i.i117:                                 ; preds = %if.end44.i.i116
  store i32 14, i32* %retval.i.i46, align 4, !dbg !670
  br label %kmalloc_index.exit.i156, !dbg !670

if.end47.i.i119:                                  ; preds = %if.end44.i.i116
  %110 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !671
  %cmp48.i.i118 = icmp ule i64 %110, 32768, !dbg !672
  br i1 %cmp48.i.i118, label %if.then49.i.i120, label %if.end50.i.i122, !dbg !673

if.then49.i.i120:                                 ; preds = %if.end47.i.i119
  store i32 15, i32* %retval.i.i46, align 4, !dbg !674
  br label %kmalloc_index.exit.i156, !dbg !674

if.end50.i.i122:                                  ; preds = %if.end47.i.i119
  %111 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !675
  %cmp51.i.i121 = icmp ule i64 %111, 65536, !dbg !676
  br i1 %cmp51.i.i121, label %if.then52.i.i123, label %if.end53.i.i125, !dbg !677

if.then52.i.i123:                                 ; preds = %if.end50.i.i122
  store i32 16, i32* %retval.i.i46, align 4, !dbg !678
  br label %kmalloc_index.exit.i156, !dbg !678

if.end53.i.i125:                                  ; preds = %if.end50.i.i122
  %112 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !679
  %cmp54.i.i124 = icmp ule i64 %112, 131072, !dbg !680
  br i1 %cmp54.i.i124, label %if.then55.i.i126, label %if.end56.i.i128, !dbg !681

if.then55.i.i126:                                 ; preds = %if.end53.i.i125
  store i32 17, i32* %retval.i.i46, align 4, !dbg !682
  br label %kmalloc_index.exit.i156, !dbg !682

if.end56.i.i128:                                  ; preds = %if.end53.i.i125
  %113 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !683
  %cmp57.i.i127 = icmp ule i64 %113, 262144, !dbg !684
  br i1 %cmp57.i.i127, label %if.then58.i.i129, label %if.end59.i.i131, !dbg !685

if.then58.i.i129:                                 ; preds = %if.end56.i.i128
  store i32 18, i32* %retval.i.i46, align 4, !dbg !686
  br label %kmalloc_index.exit.i156, !dbg !686

if.end59.i.i131:                                  ; preds = %if.end56.i.i128
  %114 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !687
  %cmp60.i.i130 = icmp ule i64 %114, 524288, !dbg !688
  br i1 %cmp60.i.i130, label %if.then61.i.i132, label %if.end62.i.i134, !dbg !689

if.then61.i.i132:                                 ; preds = %if.end59.i.i131
  store i32 19, i32* %retval.i.i46, align 4, !dbg !690
  br label %kmalloc_index.exit.i156, !dbg !690

if.end62.i.i134:                                  ; preds = %if.end59.i.i131
  %115 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !691
  %cmp63.i.i133 = icmp ule i64 %115, 1048576, !dbg !692
  br i1 %cmp63.i.i133, label %if.then64.i.i135, label %if.end65.i.i137, !dbg !693

if.then64.i.i135:                                 ; preds = %if.end62.i.i134
  store i32 20, i32* %retval.i.i46, align 4, !dbg !694
  br label %kmalloc_index.exit.i156, !dbg !694

if.end65.i.i137:                                  ; preds = %if.end62.i.i134
  %116 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !695
  %cmp66.i.i136 = icmp ule i64 %116, 2097152, !dbg !696
  br i1 %cmp66.i.i136, label %if.then67.i.i138, label %if.end68.i.i140, !dbg !697

if.then67.i.i138:                                 ; preds = %if.end65.i.i137
  store i32 21, i32* %retval.i.i46, align 4, !dbg !698
  br label %kmalloc_index.exit.i156, !dbg !698

if.end68.i.i140:                                  ; preds = %if.end65.i.i137
  %117 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !699
  %cmp69.i.i139 = icmp ule i64 %117, 4194304, !dbg !700
  br i1 %cmp69.i.i139, label %if.then70.i.i141, label %if.end71.i.i143, !dbg !701

if.then70.i.i141:                                 ; preds = %if.end68.i.i140
  store i32 22, i32* %retval.i.i46, align 4, !dbg !702
  br label %kmalloc_index.exit.i156, !dbg !702

if.end71.i.i143:                                  ; preds = %if.end68.i.i140
  %118 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !703
  %cmp72.i.i142 = icmp ule i64 %118, 8388608, !dbg !704
  br i1 %cmp72.i.i142, label %if.then73.i.i144, label %if.end74.i.i146, !dbg !705

if.then73.i.i144:                                 ; preds = %if.end71.i.i143
  store i32 23, i32* %retval.i.i46, align 4, !dbg !706
  br label %kmalloc_index.exit.i156, !dbg !706

if.end74.i.i146:                                  ; preds = %if.end71.i.i143
  %119 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !707
  %cmp75.i.i145 = icmp ule i64 %119, 16777216, !dbg !708
  br i1 %cmp75.i.i145, label %if.then76.i.i147, label %if.end77.i.i149, !dbg !709

if.then76.i.i147:                                 ; preds = %if.end74.i.i146
  store i32 24, i32* %retval.i.i46, align 4, !dbg !710
  br label %kmalloc_index.exit.i156, !dbg !710

if.end77.i.i149:                                  ; preds = %if.end74.i.i146
  %120 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !711
  %cmp78.i.i148 = icmp ule i64 %120, 33554432, !dbg !712
  br i1 %cmp78.i.i148, label %if.then79.i.i150, label %if.end80.i.i152, !dbg !713

if.then79.i.i150:                                 ; preds = %if.end77.i.i149
  store i32 25, i32* %retval.i.i46, align 4, !dbg !714
  br label %kmalloc_index.exit.i156, !dbg !714

if.end80.i.i152:                                  ; preds = %if.end77.i.i149
  %121 = load i64, i64* %size.addr.i11.i47, align 8, !dbg !715
  %cmp81.i.i151 = icmp ule i64 %121, 67108864, !dbg !716
  br i1 %cmp81.i.i151, label %if.then82.i.i153, label %if.end83.i.i154, !dbg !717

if.then82.i.i153:                                 ; preds = %if.end80.i.i152
  store i32 26, i32* %retval.i.i46, align 4, !dbg !718
  br label %kmalloc_index.exit.i156, !dbg !718

if.end83.i.i154:                                  ; preds = %if.end80.i.i152
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !719, !srcloc !531
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #8, !dbg !720, !srcloc !535
  unreachable, !dbg !721

kmalloc_index.exit.i156:                          ; preds = %if.then82.i.i153, %if.then79.i.i150, %if.then76.i.i147, %if.then73.i.i144, %if.then70.i.i141, %if.then67.i.i138, %if.then64.i.i135, %if.then61.i.i132, %if.then58.i.i129, %if.then55.i.i126, %if.then52.i.i123, %if.then49.i.i120, %if.then46.i.i117, %if.then43.i.i114, %if.then40.i.i111, %if.then37.i.i108, %if.then34.i.i105, %if.then31.i.i102, %if.then28.i.i99, %if.then25.i.i96, %if.then22.i.i93, %if.then19.i.i90, %if.then16.i.i87, %if.then13.i.i84, %if.then10.i.i81, %if.then5.i.i76, %if.then1.i.i71, %if.then.i.i68
  %122 = load i32, i32* %retval.i.i46, align 4, !dbg !722
  store i32 %122, i32* %index.i57, align 4, !dbg !723
  %123 = load i32, i32* %index.i57, align 4, !dbg !724
  %tobool.i155 = icmp ne i32 %123, 0, !dbg !724
  br i1 %tobool.i155, label %if.end4.i163, label %if.then3.i157, !dbg !725

if.then3.i157:                                    ; preds = %kmalloc_index.exit.i156
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i54, align 8, !dbg !726
  br label %kmalloc.exit184, !dbg !726

if.end4.i163:                                     ; preds = %kmalloc_index.exit.i156
  %124 = load i32, i32* %flags.addr.i56, align 4, !dbg !727
  store i32 %124, i32* %flags.addr.i13.i45, align 4
  %125 = load i32, i32* %flags.addr.i13.i45, align 4, !dbg !728
  %and.i.i158 = and i32 %125, 17, !dbg !728
  %cmp.i14.i159 = icmp eq i32 %and.i.i158, 0, !dbg !728
  %lnot.i.i160 = xor i1 %cmp.i14.i159, true, !dbg !728
  %lnot.ext.i.i161 = zext i1 %cmp.i14.i159 to i32, !dbg !728
  %conv.i.i162 = sext i32 %lnot.ext.i.i161 to i64, !dbg !728
  br i1 %cmp.i14.i159, label %if.then.i15.i164, label %if.end.i16.i168, !dbg !729

if.then.i15.i164:                                 ; preds = %if.end4.i163
  store i32 0, i32* %retval.i12.i44, align 4, !dbg !730
  br label %kmalloc_type.exit.i178, !dbg !730

if.end.i16.i168:                                  ; preds = %if.end4.i163
  %126 = load i32, i32* %flags.addr.i13.i45, align 4, !dbg !731
  %and2.i.i165 = and i32 %126, 1, !dbg !732
  %tobool3.i.i166 = icmp ne i32 %and2.i.i165, 0, !dbg !731
  %127 = zext i1 %tobool3.i.i166 to i64, !dbg !731
  %cond.i.i167 = select i1 %tobool3.i.i166, i32 2, i32 1, !dbg !731
  store i32 %cond.i.i167, i32* %retval.i12.i44, align 4, !dbg !733
  br label %kmalloc_type.exit.i178, !dbg !733

kmalloc_type.exit.i178:                           ; preds = %if.end.i16.i168, %if.then.i15.i164
  %128 = load i32, i32* %retval.i12.i44, align 4, !dbg !734
  %idxprom.i169 = zext i32 %128 to i64, !dbg !735
  %arrayidx.i170 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i169, !dbg !735
  %129 = load i32, i32* %index.i57, align 4, !dbg !736
  %idxprom6.i171 = zext i32 %129 to i64, !dbg !735
  %arrayidx7.i172 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i170, i64 0, i64 %idxprom6.i171, !dbg !735
  %130 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i172, align 8, !dbg !735
  %131 = load i32, i32* %flags.addr.i56, align 4, !dbg !737
  %132 = load i64, i64* %size.addr.i55, align 8, !dbg !738
  store %struct.kmem_cache* %130, %struct.kmem_cache** %s.addr.i.i40, align 8
  store i32 %131, i32* %flags.addr.i17.i41, align 4
  store i64 %132, i64* %size.addr.i18.i42, align 8
  %133 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i40, align 8, !dbg !739
  %134 = load i32, i32* %flags.addr.i17.i41, align 4, !dbg !740
  %call.i19.i173 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %133, i32 %134) #10, !dbg !741
  %ptrint.i.i174 = ptrtoint i8* %call.i19.i173 to i64, !dbg !741
  %maskedptr.i.i175 = and i64 %ptrint.i.i174, 7, !dbg !741
  %maskcond.i.i176 = icmp eq i64 %maskedptr.i.i175, 0, !dbg !741
  call void @llvm.assume(i1 %maskcond.i.i176) #8, !dbg !741
  store i8* %call.i19.i173, i8** %ret.i.i43, align 8, !dbg !299
  %135 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i40, align 8, !dbg !742
  %136 = load i8*, i8** %ret.i.i43, align 8, !dbg !743
  %137 = load i64, i64* %size.addr.i18.i42, align 8, !dbg !744
  %138 = load i32, i32* %flags.addr.i17.i41, align 4, !dbg !745
  %call1.i.i177 = call i8* @kasan_kmalloc(%struct.kmem_cache* %135, i8* %136, i64 %137, i32 %138) #10, !dbg !746
  store i8* %call1.i.i177, i8** %ret.i.i43, align 8, !dbg !747
  %139 = load i8*, i8** %ret.i.i43, align 8, !dbg !748
  store i8* %139, i8** %retval.i54, align 8, !dbg !749
  br label %kmalloc.exit184, !dbg !749

if.end9.i183:                                     ; preds = %if.end9
  %140 = load i64, i64* %size.addr.i55, align 8, !dbg !750
  %141 = load i32, i32* %flags.addr.i56, align 4, !dbg !751
  %call10.i179 = call noalias i8* @__kmalloc(i64 %140, i32 %141) #10, !dbg !752
  %ptrint.i180 = ptrtoint i8* %call10.i179 to i64, !dbg !752
  %maskedptr.i181 = and i64 %ptrint.i180, 7, !dbg !752
  %maskcond.i182 = icmp eq i64 %maskedptr.i181, 0, !dbg !752
  call void @llvm.assume(i1 %maskcond.i182) #8, !dbg !752
  store i8* %call10.i179, i8** %retval.i54, align 8, !dbg !753
  br label %kmalloc.exit184, !dbg !753

kmalloc.exit184:                                  ; preds = %if.then1.i65, %if.then3.i157, %kmalloc_type.exit.i178, %if.end9.i183
  %142 = load i8*, i8** %retval.i54, align 8, !dbg !754
  %143 = bitcast i8* %142 to i16*, !dbg !755
  %144 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !756
  %green = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %144, i32 0, i32 3, !dbg !757
  store i16* %143, i16** %green, align 8, !dbg !758
  %145 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !759
  %green12 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %145, i32 0, i32 3, !dbg !761
  %146 = load i16*, i16** %green12, align 8, !dbg !761
  %tobool13 = icmp ne i16* %146, null, !dbg !759
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !762

if.then14:                                        ; preds = %kmalloc.exit184
  br label %fail, !dbg !763

if.end15:                                         ; preds = %kmalloc.exit184
  %147 = load i32, i32* %size, align 4, !dbg !764
  %conv16 = sext i32 %147 to i64, !dbg !764
  %148 = load i32, i32* %flags.addr, align 4, !dbg !765
  store i64 %conv16, i64* %size.addr.i200, align 8
  store i32 %148, i32* %flags.addr.i201, align 4
  %149 = load i64, i64* %size.addr.i200, align 8, !dbg !766
  %150 = call i1 @llvm.is.constant.i64(i64 %149) #8, !dbg !767
  br i1 %150, label %if.then.i204, label %if.end9.i328, !dbg !768

if.then.i204:                                     ; preds = %if.end15
  %151 = load i64, i64* %size.addr.i200, align 8, !dbg !769
  %cmp.i203 = icmp ugt i64 %151, 8192, !dbg !770
  br i1 %cmp.i203, label %if.then1.i210, label %if.end.i212, !dbg !771

if.then1.i210:                                    ; preds = %if.then.i204
  %152 = load i64, i64* %size.addr.i200, align 8, !dbg !772
  %153 = load i32, i32* %flags.addr.i201, align 4, !dbg !773
  store i64 %152, i64* %size.addr.i.i196, align 8
  store i32 %153, i32* %flags.addr.i.i197, align 4
  %154 = load i64, i64* %size.addr.i.i196, align 8, !dbg !774
  %call.i.i205 = call i32 @get_order(i64 %154) #9, !dbg !775
  store i32 %call.i.i205, i32* %order.i.i198, align 4, !dbg !290
  %155 = load i64, i64* %size.addr.i.i196, align 8, !dbg !776
  %156 = load i32, i32* %flags.addr.i.i197, align 4, !dbg !777
  %157 = load i32, i32* %order.i.i198, align 4, !dbg !778
  store i64 %155, i64* %size.addr.i.i.i193, align 8
  store i32 %156, i32* %flags.addr.i.i.i194, align 4
  store i32 %157, i32* %order.addr.i.i.i195, align 4
  %158 = load i64, i64* %size.addr.i.i.i193, align 8, !dbg !779
  %159 = load i32, i32* %flags.addr.i.i.i194, align 4, !dbg !780
  %160 = load i32, i32* %order.addr.i.i.i195, align 4, !dbg !781
  %call.i.i.i206 = call noalias i8* @kmalloc_order(i64 %158, i32 %159, i32 %160) #10, !dbg !782
  %ptrint.i.i.i207 = ptrtoint i8* %call.i.i.i206 to i64, !dbg !782
  %maskedptr.i.i.i208 = and i64 %ptrint.i.i.i207, 4095, !dbg !782
  %maskcond.i.i.i209 = icmp eq i64 %maskedptr.i.i.i208, 0, !dbg !782
  call void @llvm.assume(i1 %maskcond.i.i.i209) #8, !dbg !782
  store i8* %call.i.i.i206, i8** %retval.i199, align 8, !dbg !783
  br label %kmalloc.exit329, !dbg !783

if.end.i212:                                      ; preds = %if.then.i204
  %161 = load i64, i64* %size.addr.i200, align 8, !dbg !784
  store i64 %161, i64* %size.addr.i11.i192, align 8
  %162 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !785
  %tobool.i.i211 = icmp ne i64 %162, 0, !dbg !785
  br i1 %tobool.i.i211, label %if.end.i.i215, label %if.then.i.i213, !dbg !786

if.then.i.i213:                                   ; preds = %if.end.i212
  store i32 0, i32* %retval.i.i191, align 4, !dbg !787
  br label %kmalloc_index.exit.i301, !dbg !787

if.end.i.i215:                                    ; preds = %if.end.i212
  %163 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !788
  %cmp.i.i214 = icmp ule i64 %163, 8, !dbg !789
  br i1 %cmp.i.i214, label %if.then1.i.i216, label %if.end2.i.i218, !dbg !790

if.then1.i.i216:                                  ; preds = %if.end.i.i215
  store i32 3, i32* %retval.i.i191, align 4, !dbg !791
  br label %kmalloc_index.exit.i301, !dbg !791

if.end2.i.i218:                                   ; preds = %if.end.i.i215
  %164 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !792
  %cmp3.i.i217 = icmp ugt i64 %164, 64, !dbg !793
  br i1 %cmp3.i.i217, label %land.lhs.true.i.i220, label %if.end6.i.i223, !dbg !794

land.lhs.true.i.i220:                             ; preds = %if.end2.i.i218
  %165 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !795
  %cmp4.i.i219 = icmp ule i64 %165, 96, !dbg !796
  br i1 %cmp4.i.i219, label %if.then5.i.i221, label %if.end6.i.i223, !dbg !797

if.then5.i.i221:                                  ; preds = %land.lhs.true.i.i220
  store i32 1, i32* %retval.i.i191, align 4, !dbg !798
  br label %kmalloc_index.exit.i301, !dbg !798

if.end6.i.i223:                                   ; preds = %land.lhs.true.i.i220, %if.end2.i.i218
  %166 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !799
  %cmp7.i.i222 = icmp ugt i64 %166, 128, !dbg !800
  br i1 %cmp7.i.i222, label %land.lhs.true8.i.i225, label %if.end11.i.i228, !dbg !801

land.lhs.true8.i.i225:                            ; preds = %if.end6.i.i223
  %167 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !802
  %cmp9.i.i224 = icmp ule i64 %167, 192, !dbg !803
  br i1 %cmp9.i.i224, label %if.then10.i.i226, label %if.end11.i.i228, !dbg !804

if.then10.i.i226:                                 ; preds = %land.lhs.true8.i.i225
  store i32 2, i32* %retval.i.i191, align 4, !dbg !805
  br label %kmalloc_index.exit.i301, !dbg !805

if.end11.i.i228:                                  ; preds = %land.lhs.true8.i.i225, %if.end6.i.i223
  %168 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !806
  %cmp12.i.i227 = icmp ule i64 %168, 8, !dbg !807
  br i1 %cmp12.i.i227, label %if.then13.i.i229, label %if.end14.i.i231, !dbg !808

if.then13.i.i229:                                 ; preds = %if.end11.i.i228
  store i32 3, i32* %retval.i.i191, align 4, !dbg !809
  br label %kmalloc_index.exit.i301, !dbg !809

if.end14.i.i231:                                  ; preds = %if.end11.i.i228
  %169 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !810
  %cmp15.i.i230 = icmp ule i64 %169, 16, !dbg !811
  br i1 %cmp15.i.i230, label %if.then16.i.i232, label %if.end17.i.i234, !dbg !812

if.then16.i.i232:                                 ; preds = %if.end14.i.i231
  store i32 4, i32* %retval.i.i191, align 4, !dbg !813
  br label %kmalloc_index.exit.i301, !dbg !813

if.end17.i.i234:                                  ; preds = %if.end14.i.i231
  %170 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !814
  %cmp18.i.i233 = icmp ule i64 %170, 32, !dbg !815
  br i1 %cmp18.i.i233, label %if.then19.i.i235, label %if.end20.i.i237, !dbg !816

if.then19.i.i235:                                 ; preds = %if.end17.i.i234
  store i32 5, i32* %retval.i.i191, align 4, !dbg !817
  br label %kmalloc_index.exit.i301, !dbg !817

if.end20.i.i237:                                  ; preds = %if.end17.i.i234
  %171 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !818
  %cmp21.i.i236 = icmp ule i64 %171, 64, !dbg !819
  br i1 %cmp21.i.i236, label %if.then22.i.i238, label %if.end23.i.i240, !dbg !820

if.then22.i.i238:                                 ; preds = %if.end20.i.i237
  store i32 6, i32* %retval.i.i191, align 4, !dbg !821
  br label %kmalloc_index.exit.i301, !dbg !821

if.end23.i.i240:                                  ; preds = %if.end20.i.i237
  %172 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !822
  %cmp24.i.i239 = icmp ule i64 %172, 128, !dbg !823
  br i1 %cmp24.i.i239, label %if.then25.i.i241, label %if.end26.i.i243, !dbg !824

if.then25.i.i241:                                 ; preds = %if.end23.i.i240
  store i32 7, i32* %retval.i.i191, align 4, !dbg !825
  br label %kmalloc_index.exit.i301, !dbg !825

if.end26.i.i243:                                  ; preds = %if.end23.i.i240
  %173 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !826
  %cmp27.i.i242 = icmp ule i64 %173, 256, !dbg !827
  br i1 %cmp27.i.i242, label %if.then28.i.i244, label %if.end29.i.i246, !dbg !828

if.then28.i.i244:                                 ; preds = %if.end26.i.i243
  store i32 8, i32* %retval.i.i191, align 4, !dbg !829
  br label %kmalloc_index.exit.i301, !dbg !829

if.end29.i.i246:                                  ; preds = %if.end26.i.i243
  %174 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !830
  %cmp30.i.i245 = icmp ule i64 %174, 512, !dbg !831
  br i1 %cmp30.i.i245, label %if.then31.i.i247, label %if.end32.i.i249, !dbg !832

if.then31.i.i247:                                 ; preds = %if.end29.i.i246
  store i32 9, i32* %retval.i.i191, align 4, !dbg !833
  br label %kmalloc_index.exit.i301, !dbg !833

if.end32.i.i249:                                  ; preds = %if.end29.i.i246
  %175 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !834
  %cmp33.i.i248 = icmp ule i64 %175, 1024, !dbg !835
  br i1 %cmp33.i.i248, label %if.then34.i.i250, label %if.end35.i.i252, !dbg !836

if.then34.i.i250:                                 ; preds = %if.end32.i.i249
  store i32 10, i32* %retval.i.i191, align 4, !dbg !837
  br label %kmalloc_index.exit.i301, !dbg !837

if.end35.i.i252:                                  ; preds = %if.end32.i.i249
  %176 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !838
  %cmp36.i.i251 = icmp ule i64 %176, 2048, !dbg !839
  br i1 %cmp36.i.i251, label %if.then37.i.i253, label %if.end38.i.i255, !dbg !840

if.then37.i.i253:                                 ; preds = %if.end35.i.i252
  store i32 11, i32* %retval.i.i191, align 4, !dbg !841
  br label %kmalloc_index.exit.i301, !dbg !841

if.end38.i.i255:                                  ; preds = %if.end35.i.i252
  %177 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !842
  %cmp39.i.i254 = icmp ule i64 %177, 4096, !dbg !843
  br i1 %cmp39.i.i254, label %if.then40.i.i256, label %if.end41.i.i258, !dbg !844

if.then40.i.i256:                                 ; preds = %if.end38.i.i255
  store i32 12, i32* %retval.i.i191, align 4, !dbg !845
  br label %kmalloc_index.exit.i301, !dbg !845

if.end41.i.i258:                                  ; preds = %if.end38.i.i255
  %178 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !846
  %cmp42.i.i257 = icmp ule i64 %178, 8192, !dbg !847
  br i1 %cmp42.i.i257, label %if.then43.i.i259, label %if.end44.i.i261, !dbg !848

if.then43.i.i259:                                 ; preds = %if.end41.i.i258
  store i32 13, i32* %retval.i.i191, align 4, !dbg !849
  br label %kmalloc_index.exit.i301, !dbg !849

if.end44.i.i261:                                  ; preds = %if.end41.i.i258
  %179 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !850
  %cmp45.i.i260 = icmp ule i64 %179, 16384, !dbg !851
  br i1 %cmp45.i.i260, label %if.then46.i.i262, label %if.end47.i.i264, !dbg !852

if.then46.i.i262:                                 ; preds = %if.end44.i.i261
  store i32 14, i32* %retval.i.i191, align 4, !dbg !853
  br label %kmalloc_index.exit.i301, !dbg !853

if.end47.i.i264:                                  ; preds = %if.end44.i.i261
  %180 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !854
  %cmp48.i.i263 = icmp ule i64 %180, 32768, !dbg !855
  br i1 %cmp48.i.i263, label %if.then49.i.i265, label %if.end50.i.i267, !dbg !856

if.then49.i.i265:                                 ; preds = %if.end47.i.i264
  store i32 15, i32* %retval.i.i191, align 4, !dbg !857
  br label %kmalloc_index.exit.i301, !dbg !857

if.end50.i.i267:                                  ; preds = %if.end47.i.i264
  %181 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !858
  %cmp51.i.i266 = icmp ule i64 %181, 65536, !dbg !859
  br i1 %cmp51.i.i266, label %if.then52.i.i268, label %if.end53.i.i270, !dbg !860

if.then52.i.i268:                                 ; preds = %if.end50.i.i267
  store i32 16, i32* %retval.i.i191, align 4, !dbg !861
  br label %kmalloc_index.exit.i301, !dbg !861

if.end53.i.i270:                                  ; preds = %if.end50.i.i267
  %182 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !862
  %cmp54.i.i269 = icmp ule i64 %182, 131072, !dbg !863
  br i1 %cmp54.i.i269, label %if.then55.i.i271, label %if.end56.i.i273, !dbg !864

if.then55.i.i271:                                 ; preds = %if.end53.i.i270
  store i32 17, i32* %retval.i.i191, align 4, !dbg !865
  br label %kmalloc_index.exit.i301, !dbg !865

if.end56.i.i273:                                  ; preds = %if.end53.i.i270
  %183 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !866
  %cmp57.i.i272 = icmp ule i64 %183, 262144, !dbg !867
  br i1 %cmp57.i.i272, label %if.then58.i.i274, label %if.end59.i.i276, !dbg !868

if.then58.i.i274:                                 ; preds = %if.end56.i.i273
  store i32 18, i32* %retval.i.i191, align 4, !dbg !869
  br label %kmalloc_index.exit.i301, !dbg !869

if.end59.i.i276:                                  ; preds = %if.end56.i.i273
  %184 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !870
  %cmp60.i.i275 = icmp ule i64 %184, 524288, !dbg !871
  br i1 %cmp60.i.i275, label %if.then61.i.i277, label %if.end62.i.i279, !dbg !872

if.then61.i.i277:                                 ; preds = %if.end59.i.i276
  store i32 19, i32* %retval.i.i191, align 4, !dbg !873
  br label %kmalloc_index.exit.i301, !dbg !873

if.end62.i.i279:                                  ; preds = %if.end59.i.i276
  %185 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !874
  %cmp63.i.i278 = icmp ule i64 %185, 1048576, !dbg !875
  br i1 %cmp63.i.i278, label %if.then64.i.i280, label %if.end65.i.i282, !dbg !876

if.then64.i.i280:                                 ; preds = %if.end62.i.i279
  store i32 20, i32* %retval.i.i191, align 4, !dbg !877
  br label %kmalloc_index.exit.i301, !dbg !877

if.end65.i.i282:                                  ; preds = %if.end62.i.i279
  %186 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !878
  %cmp66.i.i281 = icmp ule i64 %186, 2097152, !dbg !879
  br i1 %cmp66.i.i281, label %if.then67.i.i283, label %if.end68.i.i285, !dbg !880

if.then67.i.i283:                                 ; preds = %if.end65.i.i282
  store i32 21, i32* %retval.i.i191, align 4, !dbg !881
  br label %kmalloc_index.exit.i301, !dbg !881

if.end68.i.i285:                                  ; preds = %if.end65.i.i282
  %187 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !882
  %cmp69.i.i284 = icmp ule i64 %187, 4194304, !dbg !883
  br i1 %cmp69.i.i284, label %if.then70.i.i286, label %if.end71.i.i288, !dbg !884

if.then70.i.i286:                                 ; preds = %if.end68.i.i285
  store i32 22, i32* %retval.i.i191, align 4, !dbg !885
  br label %kmalloc_index.exit.i301, !dbg !885

if.end71.i.i288:                                  ; preds = %if.end68.i.i285
  %188 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !886
  %cmp72.i.i287 = icmp ule i64 %188, 8388608, !dbg !887
  br i1 %cmp72.i.i287, label %if.then73.i.i289, label %if.end74.i.i291, !dbg !888

if.then73.i.i289:                                 ; preds = %if.end71.i.i288
  store i32 23, i32* %retval.i.i191, align 4, !dbg !889
  br label %kmalloc_index.exit.i301, !dbg !889

if.end74.i.i291:                                  ; preds = %if.end71.i.i288
  %189 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !890
  %cmp75.i.i290 = icmp ule i64 %189, 16777216, !dbg !891
  br i1 %cmp75.i.i290, label %if.then76.i.i292, label %if.end77.i.i294, !dbg !892

if.then76.i.i292:                                 ; preds = %if.end74.i.i291
  store i32 24, i32* %retval.i.i191, align 4, !dbg !893
  br label %kmalloc_index.exit.i301, !dbg !893

if.end77.i.i294:                                  ; preds = %if.end74.i.i291
  %190 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !894
  %cmp78.i.i293 = icmp ule i64 %190, 33554432, !dbg !895
  br i1 %cmp78.i.i293, label %if.then79.i.i295, label %if.end80.i.i297, !dbg !896

if.then79.i.i295:                                 ; preds = %if.end77.i.i294
  store i32 25, i32* %retval.i.i191, align 4, !dbg !897
  br label %kmalloc_index.exit.i301, !dbg !897

if.end80.i.i297:                                  ; preds = %if.end77.i.i294
  %191 = load i64, i64* %size.addr.i11.i192, align 8, !dbg !898
  %cmp81.i.i296 = icmp ule i64 %191, 67108864, !dbg !899
  br i1 %cmp81.i.i296, label %if.then82.i.i298, label %if.end83.i.i299, !dbg !900

if.then82.i.i298:                                 ; preds = %if.end80.i.i297
  store i32 26, i32* %retval.i.i191, align 4, !dbg !901
  br label %kmalloc_index.exit.i301, !dbg !901

if.end83.i.i299:                                  ; preds = %if.end80.i.i297
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !902, !srcloc !531
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #8, !dbg !903, !srcloc !535
  unreachable, !dbg !904

kmalloc_index.exit.i301:                          ; preds = %if.then82.i.i298, %if.then79.i.i295, %if.then76.i.i292, %if.then73.i.i289, %if.then70.i.i286, %if.then67.i.i283, %if.then64.i.i280, %if.then61.i.i277, %if.then58.i.i274, %if.then55.i.i271, %if.then52.i.i268, %if.then49.i.i265, %if.then46.i.i262, %if.then43.i.i259, %if.then40.i.i256, %if.then37.i.i253, %if.then34.i.i250, %if.then31.i.i247, %if.then28.i.i244, %if.then25.i.i241, %if.then22.i.i238, %if.then19.i.i235, %if.then16.i.i232, %if.then13.i.i229, %if.then10.i.i226, %if.then5.i.i221, %if.then1.i.i216, %if.then.i.i213
  %192 = load i32, i32* %retval.i.i191, align 4, !dbg !905
  store i32 %192, i32* %index.i202, align 4, !dbg !906
  %193 = load i32, i32* %index.i202, align 4, !dbg !907
  %tobool.i300 = icmp ne i32 %193, 0, !dbg !907
  br i1 %tobool.i300, label %if.end4.i308, label %if.then3.i302, !dbg !908

if.then3.i302:                                    ; preds = %kmalloc_index.exit.i301
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i199, align 8, !dbg !909
  br label %kmalloc.exit329, !dbg !909

if.end4.i308:                                     ; preds = %kmalloc_index.exit.i301
  %194 = load i32, i32* %flags.addr.i201, align 4, !dbg !910
  store i32 %194, i32* %flags.addr.i13.i190, align 4
  %195 = load i32, i32* %flags.addr.i13.i190, align 4, !dbg !911
  %and.i.i303 = and i32 %195, 17, !dbg !911
  %cmp.i14.i304 = icmp eq i32 %and.i.i303, 0, !dbg !911
  %lnot.i.i305 = xor i1 %cmp.i14.i304, true, !dbg !911
  %lnot.ext.i.i306 = zext i1 %cmp.i14.i304 to i32, !dbg !911
  %conv.i.i307 = sext i32 %lnot.ext.i.i306 to i64, !dbg !911
  br i1 %cmp.i14.i304, label %if.then.i15.i309, label %if.end.i16.i313, !dbg !912

if.then.i15.i309:                                 ; preds = %if.end4.i308
  store i32 0, i32* %retval.i12.i189, align 4, !dbg !913
  br label %kmalloc_type.exit.i323, !dbg !913

if.end.i16.i313:                                  ; preds = %if.end4.i308
  %196 = load i32, i32* %flags.addr.i13.i190, align 4, !dbg !914
  %and2.i.i310 = and i32 %196, 1, !dbg !915
  %tobool3.i.i311 = icmp ne i32 %and2.i.i310, 0, !dbg !914
  %197 = zext i1 %tobool3.i.i311 to i64, !dbg !914
  %cond.i.i312 = select i1 %tobool3.i.i311, i32 2, i32 1, !dbg !914
  store i32 %cond.i.i312, i32* %retval.i12.i189, align 4, !dbg !916
  br label %kmalloc_type.exit.i323, !dbg !916

kmalloc_type.exit.i323:                           ; preds = %if.end.i16.i313, %if.then.i15.i309
  %198 = load i32, i32* %retval.i12.i189, align 4, !dbg !917
  %idxprom.i314 = zext i32 %198 to i64, !dbg !918
  %arrayidx.i315 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i314, !dbg !918
  %199 = load i32, i32* %index.i202, align 4, !dbg !919
  %idxprom6.i316 = zext i32 %199 to i64, !dbg !918
  %arrayidx7.i317 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i315, i64 0, i64 %idxprom6.i316, !dbg !918
  %200 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i317, align 8, !dbg !918
  %201 = load i32, i32* %flags.addr.i201, align 4, !dbg !920
  %202 = load i64, i64* %size.addr.i200, align 8, !dbg !921
  store %struct.kmem_cache* %200, %struct.kmem_cache** %s.addr.i.i185, align 8
  store i32 %201, i32* %flags.addr.i17.i186, align 4
  store i64 %202, i64* %size.addr.i18.i187, align 8
  %203 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i185, align 8, !dbg !922
  %204 = load i32, i32* %flags.addr.i17.i186, align 4, !dbg !923
  %call.i19.i318 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %203, i32 %204) #10, !dbg !924
  %ptrint.i.i319 = ptrtoint i8* %call.i19.i318 to i64, !dbg !924
  %maskedptr.i.i320 = and i64 %ptrint.i.i319, 7, !dbg !924
  %maskcond.i.i321 = icmp eq i64 %maskedptr.i.i320, 0, !dbg !924
  call void @llvm.assume(i1 %maskcond.i.i321) #8, !dbg !924
  store i8* %call.i19.i318, i8** %ret.i.i188, align 8, !dbg !278
  %205 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i185, align 8, !dbg !925
  %206 = load i8*, i8** %ret.i.i188, align 8, !dbg !926
  %207 = load i64, i64* %size.addr.i18.i187, align 8, !dbg !927
  %208 = load i32, i32* %flags.addr.i17.i186, align 4, !dbg !928
  %call1.i.i322 = call i8* @kasan_kmalloc(%struct.kmem_cache* %205, i8* %206, i64 %207, i32 %208) #10, !dbg !929
  store i8* %call1.i.i322, i8** %ret.i.i188, align 8, !dbg !930
  %209 = load i8*, i8** %ret.i.i188, align 8, !dbg !931
  store i8* %209, i8** %retval.i199, align 8, !dbg !932
  br label %kmalloc.exit329, !dbg !932

if.end9.i328:                                     ; preds = %if.end15
  %210 = load i64, i64* %size.addr.i200, align 8, !dbg !933
  %211 = load i32, i32* %flags.addr.i201, align 4, !dbg !934
  %call10.i324 = call noalias i8* @__kmalloc(i64 %210, i32 %211) #10, !dbg !935
  %ptrint.i325 = ptrtoint i8* %call10.i324 to i64, !dbg !935
  %maskedptr.i326 = and i64 %ptrint.i325, 7, !dbg !935
  %maskcond.i327 = icmp eq i64 %maskedptr.i326, 0, !dbg !935
  call void @llvm.assume(i1 %maskcond.i327) #8, !dbg !935
  store i8* %call10.i324, i8** %retval.i199, align 8, !dbg !936
  br label %kmalloc.exit329, !dbg !936

kmalloc.exit329:                                  ; preds = %if.then1.i210, %if.then3.i302, %kmalloc_type.exit.i323, %if.end9.i328
  %212 = load i8*, i8** %retval.i199, align 8, !dbg !937
  %213 = bitcast i8* %212 to i16*, !dbg !938
  %214 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !939
  %blue = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %214, i32 0, i32 4, !dbg !940
  store i16* %213, i16** %blue, align 8, !dbg !941
  %215 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !942
  %blue18 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %215, i32 0, i32 4, !dbg !944
  %216 = load i16*, i16** %blue18, align 8, !dbg !944
  %tobool19 = icmp ne i16* %216, null, !dbg !942
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !945

if.then20:                                        ; preds = %kmalloc.exit329
  br label %fail, !dbg !946

if.end21:                                         ; preds = %kmalloc.exit329
  %217 = load i32, i32* %transp.addr, align 4, !dbg !947
  %tobool22 = icmp ne i32 %217, 0, !dbg !947
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !948

if.then23:                                        ; preds = %if.end21
  %218 = load i32, i32* %size, align 4, !dbg !949
  %conv24 = sext i32 %218 to i64, !dbg !949
  %219 = load i32, i32* %flags.addr, align 4, !dbg !950
  store i64 %conv24, i64* %size.addr.i345, align 8
  store i32 %219, i32* %flags.addr.i346, align 4
  %220 = load i64, i64* %size.addr.i345, align 8, !dbg !951
  %221 = call i1 @llvm.is.constant.i64(i64 %220) #8, !dbg !952
  br i1 %221, label %if.then.i349, label %if.end9.i473, !dbg !953

if.then.i349:                                     ; preds = %if.then23
  %222 = load i64, i64* %size.addr.i345, align 8, !dbg !954
  %cmp.i348 = icmp ugt i64 %222, 8192, !dbg !955
  br i1 %cmp.i348, label %if.then1.i355, label %if.end.i357, !dbg !956

if.then1.i355:                                    ; preds = %if.then.i349
  %223 = load i64, i64* %size.addr.i345, align 8, !dbg !957
  %224 = load i32, i32* %flags.addr.i346, align 4, !dbg !958
  store i64 %223, i64* %size.addr.i.i341, align 8
  store i32 %224, i32* %flags.addr.i.i342, align 4
  %225 = load i64, i64* %size.addr.i.i341, align 8, !dbg !959
  %call.i.i350 = call i32 @get_order(i64 %225) #9, !dbg !960
  store i32 %call.i.i350, i32* %order.i.i343, align 4, !dbg !266
  %226 = load i64, i64* %size.addr.i.i341, align 8, !dbg !961
  %227 = load i32, i32* %flags.addr.i.i342, align 4, !dbg !962
  %228 = load i32, i32* %order.i.i343, align 4, !dbg !963
  store i64 %226, i64* %size.addr.i.i.i338, align 8
  store i32 %227, i32* %flags.addr.i.i.i339, align 4
  store i32 %228, i32* %order.addr.i.i.i340, align 4
  %229 = load i64, i64* %size.addr.i.i.i338, align 8, !dbg !964
  %230 = load i32, i32* %flags.addr.i.i.i339, align 4, !dbg !965
  %231 = load i32, i32* %order.addr.i.i.i340, align 4, !dbg !966
  %call.i.i.i351 = call noalias i8* @kmalloc_order(i64 %229, i32 %230, i32 %231) #10, !dbg !967
  %ptrint.i.i.i352 = ptrtoint i8* %call.i.i.i351 to i64, !dbg !967
  %maskedptr.i.i.i353 = and i64 %ptrint.i.i.i352, 4095, !dbg !967
  %maskcond.i.i.i354 = icmp eq i64 %maskedptr.i.i.i353, 0, !dbg !967
  call void @llvm.assume(i1 %maskcond.i.i.i354) #8, !dbg !967
  store i8* %call.i.i.i351, i8** %retval.i344, align 8, !dbg !968
  br label %kmalloc.exit474, !dbg !968

if.end.i357:                                      ; preds = %if.then.i349
  %232 = load i64, i64* %size.addr.i345, align 8, !dbg !969
  store i64 %232, i64* %size.addr.i11.i337, align 8
  %233 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !970
  %tobool.i.i356 = icmp ne i64 %233, 0, !dbg !970
  br i1 %tobool.i.i356, label %if.end.i.i360, label %if.then.i.i358, !dbg !971

if.then.i.i358:                                   ; preds = %if.end.i357
  store i32 0, i32* %retval.i.i336, align 4, !dbg !972
  br label %kmalloc_index.exit.i446, !dbg !972

if.end.i.i360:                                    ; preds = %if.end.i357
  %234 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !973
  %cmp.i.i359 = icmp ule i64 %234, 8, !dbg !974
  br i1 %cmp.i.i359, label %if.then1.i.i361, label %if.end2.i.i363, !dbg !975

if.then1.i.i361:                                  ; preds = %if.end.i.i360
  store i32 3, i32* %retval.i.i336, align 4, !dbg !976
  br label %kmalloc_index.exit.i446, !dbg !976

if.end2.i.i363:                                   ; preds = %if.end.i.i360
  %235 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !977
  %cmp3.i.i362 = icmp ugt i64 %235, 64, !dbg !978
  br i1 %cmp3.i.i362, label %land.lhs.true.i.i365, label %if.end6.i.i368, !dbg !979

land.lhs.true.i.i365:                             ; preds = %if.end2.i.i363
  %236 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !980
  %cmp4.i.i364 = icmp ule i64 %236, 96, !dbg !981
  br i1 %cmp4.i.i364, label %if.then5.i.i366, label %if.end6.i.i368, !dbg !982

if.then5.i.i366:                                  ; preds = %land.lhs.true.i.i365
  store i32 1, i32* %retval.i.i336, align 4, !dbg !983
  br label %kmalloc_index.exit.i446, !dbg !983

if.end6.i.i368:                                   ; preds = %land.lhs.true.i.i365, %if.end2.i.i363
  %237 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !984
  %cmp7.i.i367 = icmp ugt i64 %237, 128, !dbg !985
  br i1 %cmp7.i.i367, label %land.lhs.true8.i.i370, label %if.end11.i.i373, !dbg !986

land.lhs.true8.i.i370:                            ; preds = %if.end6.i.i368
  %238 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !987
  %cmp9.i.i369 = icmp ule i64 %238, 192, !dbg !988
  br i1 %cmp9.i.i369, label %if.then10.i.i371, label %if.end11.i.i373, !dbg !989

if.then10.i.i371:                                 ; preds = %land.lhs.true8.i.i370
  store i32 2, i32* %retval.i.i336, align 4, !dbg !990
  br label %kmalloc_index.exit.i446, !dbg !990

if.end11.i.i373:                                  ; preds = %land.lhs.true8.i.i370, %if.end6.i.i368
  %239 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !991
  %cmp12.i.i372 = icmp ule i64 %239, 8, !dbg !992
  br i1 %cmp12.i.i372, label %if.then13.i.i374, label %if.end14.i.i376, !dbg !993

if.then13.i.i374:                                 ; preds = %if.end11.i.i373
  store i32 3, i32* %retval.i.i336, align 4, !dbg !994
  br label %kmalloc_index.exit.i446, !dbg !994

if.end14.i.i376:                                  ; preds = %if.end11.i.i373
  %240 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !995
  %cmp15.i.i375 = icmp ule i64 %240, 16, !dbg !996
  br i1 %cmp15.i.i375, label %if.then16.i.i377, label %if.end17.i.i379, !dbg !997

if.then16.i.i377:                                 ; preds = %if.end14.i.i376
  store i32 4, i32* %retval.i.i336, align 4, !dbg !998
  br label %kmalloc_index.exit.i446, !dbg !998

if.end17.i.i379:                                  ; preds = %if.end14.i.i376
  %241 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !999
  %cmp18.i.i378 = icmp ule i64 %241, 32, !dbg !1000
  br i1 %cmp18.i.i378, label %if.then19.i.i380, label %if.end20.i.i382, !dbg !1001

if.then19.i.i380:                                 ; preds = %if.end17.i.i379
  store i32 5, i32* %retval.i.i336, align 4, !dbg !1002
  br label %kmalloc_index.exit.i446, !dbg !1002

if.end20.i.i382:                                  ; preds = %if.end17.i.i379
  %242 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1003
  %cmp21.i.i381 = icmp ule i64 %242, 64, !dbg !1004
  br i1 %cmp21.i.i381, label %if.then22.i.i383, label %if.end23.i.i385, !dbg !1005

if.then22.i.i383:                                 ; preds = %if.end20.i.i382
  store i32 6, i32* %retval.i.i336, align 4, !dbg !1006
  br label %kmalloc_index.exit.i446, !dbg !1006

if.end23.i.i385:                                  ; preds = %if.end20.i.i382
  %243 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1007
  %cmp24.i.i384 = icmp ule i64 %243, 128, !dbg !1008
  br i1 %cmp24.i.i384, label %if.then25.i.i386, label %if.end26.i.i388, !dbg !1009

if.then25.i.i386:                                 ; preds = %if.end23.i.i385
  store i32 7, i32* %retval.i.i336, align 4, !dbg !1010
  br label %kmalloc_index.exit.i446, !dbg !1010

if.end26.i.i388:                                  ; preds = %if.end23.i.i385
  %244 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1011
  %cmp27.i.i387 = icmp ule i64 %244, 256, !dbg !1012
  br i1 %cmp27.i.i387, label %if.then28.i.i389, label %if.end29.i.i391, !dbg !1013

if.then28.i.i389:                                 ; preds = %if.end26.i.i388
  store i32 8, i32* %retval.i.i336, align 4, !dbg !1014
  br label %kmalloc_index.exit.i446, !dbg !1014

if.end29.i.i391:                                  ; preds = %if.end26.i.i388
  %245 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1015
  %cmp30.i.i390 = icmp ule i64 %245, 512, !dbg !1016
  br i1 %cmp30.i.i390, label %if.then31.i.i392, label %if.end32.i.i394, !dbg !1017

if.then31.i.i392:                                 ; preds = %if.end29.i.i391
  store i32 9, i32* %retval.i.i336, align 4, !dbg !1018
  br label %kmalloc_index.exit.i446, !dbg !1018

if.end32.i.i394:                                  ; preds = %if.end29.i.i391
  %246 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1019
  %cmp33.i.i393 = icmp ule i64 %246, 1024, !dbg !1020
  br i1 %cmp33.i.i393, label %if.then34.i.i395, label %if.end35.i.i397, !dbg !1021

if.then34.i.i395:                                 ; preds = %if.end32.i.i394
  store i32 10, i32* %retval.i.i336, align 4, !dbg !1022
  br label %kmalloc_index.exit.i446, !dbg !1022

if.end35.i.i397:                                  ; preds = %if.end32.i.i394
  %247 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1023
  %cmp36.i.i396 = icmp ule i64 %247, 2048, !dbg !1024
  br i1 %cmp36.i.i396, label %if.then37.i.i398, label %if.end38.i.i400, !dbg !1025

if.then37.i.i398:                                 ; preds = %if.end35.i.i397
  store i32 11, i32* %retval.i.i336, align 4, !dbg !1026
  br label %kmalloc_index.exit.i446, !dbg !1026

if.end38.i.i400:                                  ; preds = %if.end35.i.i397
  %248 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1027
  %cmp39.i.i399 = icmp ule i64 %248, 4096, !dbg !1028
  br i1 %cmp39.i.i399, label %if.then40.i.i401, label %if.end41.i.i403, !dbg !1029

if.then40.i.i401:                                 ; preds = %if.end38.i.i400
  store i32 12, i32* %retval.i.i336, align 4, !dbg !1030
  br label %kmalloc_index.exit.i446, !dbg !1030

if.end41.i.i403:                                  ; preds = %if.end38.i.i400
  %249 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1031
  %cmp42.i.i402 = icmp ule i64 %249, 8192, !dbg !1032
  br i1 %cmp42.i.i402, label %if.then43.i.i404, label %if.end44.i.i406, !dbg !1033

if.then43.i.i404:                                 ; preds = %if.end41.i.i403
  store i32 13, i32* %retval.i.i336, align 4, !dbg !1034
  br label %kmalloc_index.exit.i446, !dbg !1034

if.end44.i.i406:                                  ; preds = %if.end41.i.i403
  %250 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1035
  %cmp45.i.i405 = icmp ule i64 %250, 16384, !dbg !1036
  br i1 %cmp45.i.i405, label %if.then46.i.i407, label %if.end47.i.i409, !dbg !1037

if.then46.i.i407:                                 ; preds = %if.end44.i.i406
  store i32 14, i32* %retval.i.i336, align 4, !dbg !1038
  br label %kmalloc_index.exit.i446, !dbg !1038

if.end47.i.i409:                                  ; preds = %if.end44.i.i406
  %251 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1039
  %cmp48.i.i408 = icmp ule i64 %251, 32768, !dbg !1040
  br i1 %cmp48.i.i408, label %if.then49.i.i410, label %if.end50.i.i412, !dbg !1041

if.then49.i.i410:                                 ; preds = %if.end47.i.i409
  store i32 15, i32* %retval.i.i336, align 4, !dbg !1042
  br label %kmalloc_index.exit.i446, !dbg !1042

if.end50.i.i412:                                  ; preds = %if.end47.i.i409
  %252 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1043
  %cmp51.i.i411 = icmp ule i64 %252, 65536, !dbg !1044
  br i1 %cmp51.i.i411, label %if.then52.i.i413, label %if.end53.i.i415, !dbg !1045

if.then52.i.i413:                                 ; preds = %if.end50.i.i412
  store i32 16, i32* %retval.i.i336, align 4, !dbg !1046
  br label %kmalloc_index.exit.i446, !dbg !1046

if.end53.i.i415:                                  ; preds = %if.end50.i.i412
  %253 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1047
  %cmp54.i.i414 = icmp ule i64 %253, 131072, !dbg !1048
  br i1 %cmp54.i.i414, label %if.then55.i.i416, label %if.end56.i.i418, !dbg !1049

if.then55.i.i416:                                 ; preds = %if.end53.i.i415
  store i32 17, i32* %retval.i.i336, align 4, !dbg !1050
  br label %kmalloc_index.exit.i446, !dbg !1050

if.end56.i.i418:                                  ; preds = %if.end53.i.i415
  %254 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1051
  %cmp57.i.i417 = icmp ule i64 %254, 262144, !dbg !1052
  br i1 %cmp57.i.i417, label %if.then58.i.i419, label %if.end59.i.i421, !dbg !1053

if.then58.i.i419:                                 ; preds = %if.end56.i.i418
  store i32 18, i32* %retval.i.i336, align 4, !dbg !1054
  br label %kmalloc_index.exit.i446, !dbg !1054

if.end59.i.i421:                                  ; preds = %if.end56.i.i418
  %255 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1055
  %cmp60.i.i420 = icmp ule i64 %255, 524288, !dbg !1056
  br i1 %cmp60.i.i420, label %if.then61.i.i422, label %if.end62.i.i424, !dbg !1057

if.then61.i.i422:                                 ; preds = %if.end59.i.i421
  store i32 19, i32* %retval.i.i336, align 4, !dbg !1058
  br label %kmalloc_index.exit.i446, !dbg !1058

if.end62.i.i424:                                  ; preds = %if.end59.i.i421
  %256 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1059
  %cmp63.i.i423 = icmp ule i64 %256, 1048576, !dbg !1060
  br i1 %cmp63.i.i423, label %if.then64.i.i425, label %if.end65.i.i427, !dbg !1061

if.then64.i.i425:                                 ; preds = %if.end62.i.i424
  store i32 20, i32* %retval.i.i336, align 4, !dbg !1062
  br label %kmalloc_index.exit.i446, !dbg !1062

if.end65.i.i427:                                  ; preds = %if.end62.i.i424
  %257 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1063
  %cmp66.i.i426 = icmp ule i64 %257, 2097152, !dbg !1064
  br i1 %cmp66.i.i426, label %if.then67.i.i428, label %if.end68.i.i430, !dbg !1065

if.then67.i.i428:                                 ; preds = %if.end65.i.i427
  store i32 21, i32* %retval.i.i336, align 4, !dbg !1066
  br label %kmalloc_index.exit.i446, !dbg !1066

if.end68.i.i430:                                  ; preds = %if.end65.i.i427
  %258 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1067
  %cmp69.i.i429 = icmp ule i64 %258, 4194304, !dbg !1068
  br i1 %cmp69.i.i429, label %if.then70.i.i431, label %if.end71.i.i433, !dbg !1069

if.then70.i.i431:                                 ; preds = %if.end68.i.i430
  store i32 22, i32* %retval.i.i336, align 4, !dbg !1070
  br label %kmalloc_index.exit.i446, !dbg !1070

if.end71.i.i433:                                  ; preds = %if.end68.i.i430
  %259 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1071
  %cmp72.i.i432 = icmp ule i64 %259, 8388608, !dbg !1072
  br i1 %cmp72.i.i432, label %if.then73.i.i434, label %if.end74.i.i436, !dbg !1073

if.then73.i.i434:                                 ; preds = %if.end71.i.i433
  store i32 23, i32* %retval.i.i336, align 4, !dbg !1074
  br label %kmalloc_index.exit.i446, !dbg !1074

if.end74.i.i436:                                  ; preds = %if.end71.i.i433
  %260 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1075
  %cmp75.i.i435 = icmp ule i64 %260, 16777216, !dbg !1076
  br i1 %cmp75.i.i435, label %if.then76.i.i437, label %if.end77.i.i439, !dbg !1077

if.then76.i.i437:                                 ; preds = %if.end74.i.i436
  store i32 24, i32* %retval.i.i336, align 4, !dbg !1078
  br label %kmalloc_index.exit.i446, !dbg !1078

if.end77.i.i439:                                  ; preds = %if.end74.i.i436
  %261 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1079
  %cmp78.i.i438 = icmp ule i64 %261, 33554432, !dbg !1080
  br i1 %cmp78.i.i438, label %if.then79.i.i440, label %if.end80.i.i442, !dbg !1081

if.then79.i.i440:                                 ; preds = %if.end77.i.i439
  store i32 25, i32* %retval.i.i336, align 4, !dbg !1082
  br label %kmalloc_index.exit.i446, !dbg !1082

if.end80.i.i442:                                  ; preds = %if.end77.i.i439
  %262 = load i64, i64* %size.addr.i11.i337, align 8, !dbg !1083
  %cmp81.i.i441 = icmp ule i64 %262, 67108864, !dbg !1084
  br i1 %cmp81.i.i441, label %if.then82.i.i443, label %if.end83.i.i444, !dbg !1085

if.then82.i.i443:                                 ; preds = %if.end80.i.i442
  store i32 26, i32* %retval.i.i336, align 4, !dbg !1086
  br label %kmalloc_index.exit.i446, !dbg !1086

if.end83.i.i444:                                  ; preds = %if.end80.i.i442
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1087, !srcloc !531
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #8, !dbg !1088, !srcloc !535
  unreachable, !dbg !1089

kmalloc_index.exit.i446:                          ; preds = %if.then82.i.i443, %if.then79.i.i440, %if.then76.i.i437, %if.then73.i.i434, %if.then70.i.i431, %if.then67.i.i428, %if.then64.i.i425, %if.then61.i.i422, %if.then58.i.i419, %if.then55.i.i416, %if.then52.i.i413, %if.then49.i.i410, %if.then46.i.i407, %if.then43.i.i404, %if.then40.i.i401, %if.then37.i.i398, %if.then34.i.i395, %if.then31.i.i392, %if.then28.i.i389, %if.then25.i.i386, %if.then22.i.i383, %if.then19.i.i380, %if.then16.i.i377, %if.then13.i.i374, %if.then10.i.i371, %if.then5.i.i366, %if.then1.i.i361, %if.then.i.i358
  %263 = load i32, i32* %retval.i.i336, align 4, !dbg !1090
  store i32 %263, i32* %index.i347, align 4, !dbg !1091
  %264 = load i32, i32* %index.i347, align 4, !dbg !1092
  %tobool.i445 = icmp ne i32 %264, 0, !dbg !1092
  br i1 %tobool.i445, label %if.end4.i453, label %if.then3.i447, !dbg !1093

if.then3.i447:                                    ; preds = %kmalloc_index.exit.i446
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i344, align 8, !dbg !1094
  br label %kmalloc.exit474, !dbg !1094

if.end4.i453:                                     ; preds = %kmalloc_index.exit.i446
  %265 = load i32, i32* %flags.addr.i346, align 4, !dbg !1095
  store i32 %265, i32* %flags.addr.i13.i335, align 4
  %266 = load i32, i32* %flags.addr.i13.i335, align 4, !dbg !1096
  %and.i.i448 = and i32 %266, 17, !dbg !1096
  %cmp.i14.i449 = icmp eq i32 %and.i.i448, 0, !dbg !1096
  %lnot.i.i450 = xor i1 %cmp.i14.i449, true, !dbg !1096
  %lnot.ext.i.i451 = zext i1 %cmp.i14.i449 to i32, !dbg !1096
  %conv.i.i452 = sext i32 %lnot.ext.i.i451 to i64, !dbg !1096
  br i1 %cmp.i14.i449, label %if.then.i15.i454, label %if.end.i16.i458, !dbg !1097

if.then.i15.i454:                                 ; preds = %if.end4.i453
  store i32 0, i32* %retval.i12.i334, align 4, !dbg !1098
  br label %kmalloc_type.exit.i468, !dbg !1098

if.end.i16.i458:                                  ; preds = %if.end4.i453
  %267 = load i32, i32* %flags.addr.i13.i335, align 4, !dbg !1099
  %and2.i.i455 = and i32 %267, 1, !dbg !1100
  %tobool3.i.i456 = icmp ne i32 %and2.i.i455, 0, !dbg !1099
  %268 = zext i1 %tobool3.i.i456 to i64, !dbg !1099
  %cond.i.i457 = select i1 %tobool3.i.i456, i32 2, i32 1, !dbg !1099
  store i32 %cond.i.i457, i32* %retval.i12.i334, align 4, !dbg !1101
  br label %kmalloc_type.exit.i468, !dbg !1101

kmalloc_type.exit.i468:                           ; preds = %if.end.i16.i458, %if.then.i15.i454
  %269 = load i32, i32* %retval.i12.i334, align 4, !dbg !1102
  %idxprom.i459 = zext i32 %269 to i64, !dbg !1103
  %arrayidx.i460 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i459, !dbg !1103
  %270 = load i32, i32* %index.i347, align 4, !dbg !1104
  %idxprom6.i461 = zext i32 %270 to i64, !dbg !1103
  %arrayidx7.i462 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i460, i64 0, i64 %idxprom6.i461, !dbg !1103
  %271 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i462, align 8, !dbg !1103
  %272 = load i32, i32* %flags.addr.i346, align 4, !dbg !1105
  %273 = load i64, i64* %size.addr.i345, align 8, !dbg !1106
  store %struct.kmem_cache* %271, %struct.kmem_cache** %s.addr.i.i330, align 8
  store i32 %272, i32* %flags.addr.i17.i331, align 4
  store i64 %273, i64* %size.addr.i18.i332, align 8
  %274 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i330, align 8, !dbg !1107
  %275 = load i32, i32* %flags.addr.i17.i331, align 4, !dbg !1108
  %call.i19.i463 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %274, i32 %275) #10, !dbg !1109
  %ptrint.i.i464 = ptrtoint i8* %call.i19.i463 to i64, !dbg !1109
  %maskedptr.i.i465 = and i64 %ptrint.i.i464, 7, !dbg !1109
  %maskcond.i.i466 = icmp eq i64 %maskedptr.i.i465, 0, !dbg !1109
  call void @llvm.assume(i1 %maskcond.i.i466) #8, !dbg !1109
  store i8* %call.i19.i463, i8** %ret.i.i333, align 8, !dbg !235
  %276 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i330, align 8, !dbg !1110
  %277 = load i8*, i8** %ret.i.i333, align 8, !dbg !1111
  %278 = load i64, i64* %size.addr.i18.i332, align 8, !dbg !1112
  %279 = load i32, i32* %flags.addr.i17.i331, align 4, !dbg !1113
  %call1.i.i467 = call i8* @kasan_kmalloc(%struct.kmem_cache* %276, i8* %277, i64 %278, i32 %279) #10, !dbg !1114
  store i8* %call1.i.i467, i8** %ret.i.i333, align 8, !dbg !1115
  %280 = load i8*, i8** %ret.i.i333, align 8, !dbg !1116
  store i8* %280, i8** %retval.i344, align 8, !dbg !1117
  br label %kmalloc.exit474, !dbg !1117

if.end9.i473:                                     ; preds = %if.then23
  %281 = load i64, i64* %size.addr.i345, align 8, !dbg !1118
  %282 = load i32, i32* %flags.addr.i346, align 4, !dbg !1119
  %call10.i469 = call noalias i8* @__kmalloc(i64 %281, i32 %282) #10, !dbg !1120
  %ptrint.i470 = ptrtoint i8* %call10.i469 to i64, !dbg !1120
  %maskedptr.i471 = and i64 %ptrint.i470, 7, !dbg !1120
  %maskcond.i472 = icmp eq i64 %maskedptr.i471, 0, !dbg !1120
  call void @llvm.assume(i1 %maskcond.i472) #8, !dbg !1120
  store i8* %call10.i469, i8** %retval.i344, align 8, !dbg !1121
  br label %kmalloc.exit474, !dbg !1121

kmalloc.exit474:                                  ; preds = %if.then1.i355, %if.then3.i447, %kmalloc_type.exit.i468, %if.end9.i473
  %283 = load i8*, i8** %retval.i344, align 8, !dbg !1122
  %284 = bitcast i8* %283 to i16*, !dbg !1123
  %285 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1124
  %transp26 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %285, i32 0, i32 5, !dbg !1125
  store i16* %284, i16** %transp26, align 8, !dbg !1126
  %286 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1127
  %transp27 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %286, i32 0, i32 5, !dbg !1129
  %287 = load i16*, i16** %transp27, align 8, !dbg !1129
  %tobool28 = icmp ne i16* %287, null, !dbg !1127
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1130

if.then29:                                        ; preds = %kmalloc.exit474
  br label %fail, !dbg !1131

if.end30:                                         ; preds = %kmalloc.exit474
  br label %if.end32, !dbg !1132

if.else:                                          ; preds = %if.end21
  %288 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1133
  %transp31 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %288, i32 0, i32 5, !dbg !1135
  store i16* null, i16** %transp31, align 8, !dbg !1136
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end30
  br label %if.end33, !dbg !1137

if.end33:                                         ; preds = %if.end32, %entry
  %289 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1138
  %start = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %289, i32 0, i32 0, !dbg !1139
  store i32 0, i32* %start, align 8, !dbg !1140
  %290 = load i32, i32* %len.addr, align 4, !dbg !1141
  %291 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1142
  %len34 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %291, i32 0, i32 1, !dbg !1143
  store i32 %290, i32* %len34, align 4, !dbg !1144
  %292 = load i32, i32* %len.addr, align 4, !dbg !1145
  %call35 = call %struct.fb_cmap* @fb_default_cmap(i32 %292) #7, !dbg !1146
  %293 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1147
  %call36 = call i32 @fb_copy_cmap(%struct.fb_cmap* %call35, %struct.fb_cmap* %293) #7, !dbg !1148
  store i32 %call36, i32* %ret, align 4, !dbg !1149
  %294 = load i32, i32* %ret, align 4, !dbg !1150
  %tobool37 = icmp ne i32 %294, 0, !dbg !1150
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1152

if.then38:                                        ; preds = %if.end33
  br label %fail, !dbg !1153

if.end39:                                         ; preds = %if.end33
  store i32 0, i32* %retval, align 4, !dbg !1154
  br label %return, !dbg !1154

fail:                                             ; preds = %if.then38, %if.then29, %if.then20, %if.then14, %if.then8
  call void @llvm.dbg.label(metadata !1155), !dbg !1156
  %295 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1157
  call void @fb_dealloc_cmap(%struct.fb_cmap* %295) #7, !dbg !1158
  %296 = load i32, i32* %ret, align 4, !dbg !1159
  store i32 %296, i32* %retval, align 4, !dbg !1160
  br label %return, !dbg !1160

return:                                           ; preds = %fail, %if.end39, %if.then4
  %297 = load i32, i32* %retval, align 4, !dbg !1161
  ret i32 %297, !dbg !1161
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fb_dealloc_cmap(%struct.fb_cmap* %cmap) #0 !dbg !1162 {
entry:
  %cmap.addr = alloca %struct.fb_cmap*, align 8
  store %struct.fb_cmap* %cmap, %struct.fb_cmap** %cmap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap** %cmap.addr, metadata !1165, metadata !DIExpression()), !dbg !1166
  %0 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1167
  %red = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %0, i32 0, i32 2, !dbg !1168
  %1 = load i16*, i16** %red, align 8, !dbg !1168
  %2 = bitcast i16* %1 to i8*, !dbg !1167
  call void @kfree(i8* %2) #7, !dbg !1169
  %3 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1170
  %green = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %3, i32 0, i32 3, !dbg !1171
  %4 = load i16*, i16** %green, align 8, !dbg !1171
  %5 = bitcast i16* %4 to i8*, !dbg !1170
  call void @kfree(i8* %5) #7, !dbg !1172
  %6 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1173
  %blue = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %6, i32 0, i32 4, !dbg !1174
  %7 = load i16*, i16** %blue, align 8, !dbg !1174
  %8 = bitcast i16* %7 to i8*, !dbg !1173
  call void @kfree(i8* %8) #7, !dbg !1175
  %9 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1176
  %transp = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %9, i32 0, i32 5, !dbg !1177
  %10 = load i16*, i16** %transp, align 8, !dbg !1177
  %11 = bitcast i16* %10 to i8*, !dbg !1176
  call void @kfree(i8* %11) #7, !dbg !1178
  %12 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1179
  %transp1 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 5, !dbg !1180
  store i16* null, i16** %transp1, align 8, !dbg !1181
  %13 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1182
  %blue2 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %13, i32 0, i32 4, !dbg !1183
  store i16* null, i16** %blue2, align 8, !dbg !1184
  %14 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1185
  %green3 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %14, i32 0, i32 3, !dbg !1186
  store i16* null, i16** %green3, align 8, !dbg !1187
  %15 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1188
  %red4 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %15, i32 0, i32 2, !dbg !1189
  store i16* null, i16** %red4, align 8, !dbg !1190
  %16 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1191
  %len = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %16, i32 0, i32 1, !dbg !1192
  store i32 0, i32* %len, align 4, !dbg !1193
  ret void, !dbg !1194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_copy_cmap(%struct.fb_cmap* %from, %struct.fb_cmap* %to) #0 !dbg !1195 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca %struct.fb_cmap*, align 8
  %to.addr = alloca %struct.fb_cmap*, align 8
  %tooff = alloca i32, align 4
  %fromoff = alloca i32, align 4
  %size = alloca i64, align 8
  %__UNIQUE_ID___x239 = alloca i64, align 8
  %__UNIQUE_ID___y240 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.fb_cmap* %from, %struct.fb_cmap** %from.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap** %from.addr, metadata !1199, metadata !DIExpression()), !dbg !1200
  store %struct.fb_cmap* %to, %struct.fb_cmap** %to.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap** %to.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata i32* %tooff, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i32 0, i32* %tooff, align 4, !dbg !1204
  call void @llvm.dbg.declare(metadata i32* %fromoff, metadata !1205, metadata !DIExpression()), !dbg !1206
  store i32 0, i32* %fromoff, align 4, !dbg !1206
  call void @llvm.dbg.declare(metadata i64* %size, metadata !1207, metadata !DIExpression()), !dbg !1208
  %0 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1209
  %start = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %0, i32 0, i32 0, !dbg !1211
  %1 = load i32, i32* %start, align 8, !dbg !1211
  %2 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1212
  %start1 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %2, i32 0, i32 0, !dbg !1213
  %3 = load i32, i32* %start1, align 8, !dbg !1213
  %cmp = icmp ugt i32 %1, %3, !dbg !1214
  br i1 %cmp, label %if.then, label %if.else, !dbg !1215

if.then:                                          ; preds = %entry
  %4 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1216
  %start2 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %4, i32 0, i32 0, !dbg !1217
  %5 = load i32, i32* %start2, align 8, !dbg !1217
  %6 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1218
  %start3 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %6, i32 0, i32 0, !dbg !1219
  %7 = load i32, i32* %start3, align 8, !dbg !1219
  %sub = sub i32 %5, %7, !dbg !1220
  store i32 %sub, i32* %fromoff, align 4, !dbg !1221
  br label %if.end, !dbg !1222

if.else:                                          ; preds = %entry
  %8 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1223
  %start4 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 0, !dbg !1224
  %9 = load i32, i32* %start4, align 8, !dbg !1224
  %10 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1225
  %start5 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %10, i32 0, i32 0, !dbg !1226
  %11 = load i32, i32* %start5, align 8, !dbg !1226
  %sub6 = sub i32 %9, %11, !dbg !1227
  store i32 %sub6, i32* %tooff, align 4, !dbg !1228
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %fromoff, align 4, !dbg !1229
  %13 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1231
  %len = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %13, i32 0, i32 1, !dbg !1232
  %14 = load i32, i32* %len, align 4, !dbg !1232
  %cmp7 = icmp uge i32 %12, %14, !dbg !1233
  br i1 %cmp7, label %if.then10, label %lor.lhs.false, !dbg !1234

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i32, i32* %tooff, align 4, !dbg !1235
  %16 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1236
  %len8 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %16, i32 0, i32 1, !dbg !1237
  %17 = load i32, i32* %len8, align 4, !dbg !1237
  %cmp9 = icmp uge i32 %15, %17, !dbg !1238
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1239

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !1240
  br label %return, !dbg !1240

if.end11:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x239, metadata !1241, metadata !DIExpression()), !dbg !1243
  %18 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1243
  %len12 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %18, i32 0, i32 1, !dbg !1243
  %19 = load i32, i32* %len12, align 4, !dbg !1243
  %20 = load i32, i32* %tooff, align 4, !dbg !1243
  %sub13 = sub i32 %19, %20, !dbg !1243
  %conv = zext i32 %sub13 to i64, !dbg !1243
  store i64 %conv, i64* %__UNIQUE_ID___x239, align 8, !dbg !1243
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y240, metadata !1244, metadata !DIExpression()), !dbg !1243
  %21 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1243
  %len14 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %21, i32 0, i32 1, !dbg !1243
  %22 = load i32, i32* %len14, align 4, !dbg !1243
  %23 = load i32, i32* %fromoff, align 4, !dbg !1243
  %sub15 = sub i32 %22, %23, !dbg !1243
  %conv16 = zext i32 %sub15 to i64, !dbg !1243
  store i64 %conv16, i64* %__UNIQUE_ID___y240, align 8, !dbg !1243
  %24 = load i64, i64* %__UNIQUE_ID___x239, align 8, !dbg !1243
  %25 = load i64, i64* %__UNIQUE_ID___y240, align 8, !dbg !1243
  %cmp17 = icmp ult i64 %24, %25, !dbg !1243
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !1243

cond.true:                                        ; preds = %if.end11
  %26 = load i64, i64* %__UNIQUE_ID___x239, align 8, !dbg !1243
  br label %cond.end, !dbg !1243

cond.false:                                       ; preds = %if.end11
  %27 = load i64, i64* %__UNIQUE_ID___y240, align 8, !dbg !1243
  br label %cond.end, !dbg !1243

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !1243
  store i64 %cond, i64* %tmp, align 8, !dbg !1243
  %28 = load i64, i64* %tmp, align 8, !dbg !1243
  store i64 %28, i64* %size, align 8, !dbg !1245
  %29 = load i64, i64* %size, align 8, !dbg !1246
  %cmp19 = icmp eq i64 %29, 0, !dbg !1248
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1249

if.then21:                                        ; preds = %cond.end
  store i32 -22, i32* %retval, align 4, !dbg !1250
  br label %return, !dbg !1250

if.end22:                                         ; preds = %cond.end
  %30 = load i64, i64* %size, align 8, !dbg !1251
  %mul = mul i64 %30, 2, !dbg !1251
  store i64 %mul, i64* %size, align 8, !dbg !1251
  %31 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1252
  %red = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %31, i32 0, i32 2, !dbg !1253
  %32 = load i16*, i16** %red, align 8, !dbg !1253
  %33 = load i32, i32* %tooff, align 4, !dbg !1254
  %idx.ext = zext i32 %33 to i64, !dbg !1255
  %add.ptr = getelementptr i16, i16* %32, i64 %idx.ext, !dbg !1255
  %34 = bitcast i16* %add.ptr to i8*, !dbg !1256
  %35 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1257
  %red23 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %35, i32 0, i32 2, !dbg !1258
  %36 = load i16*, i16** %red23, align 8, !dbg !1258
  %37 = load i32, i32* %fromoff, align 4, !dbg !1259
  %idx.ext24 = zext i32 %37 to i64, !dbg !1260
  %add.ptr25 = getelementptr i16, i16* %36, i64 %idx.ext24, !dbg !1260
  %38 = bitcast i16* %add.ptr25 to i8*, !dbg !1256
  %39 = load i64, i64* %size, align 8, !dbg !1261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %34, i8* align 2 %38, i64 %39, i1 false), !dbg !1256
  %40 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1262
  %green = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %40, i32 0, i32 3, !dbg !1263
  %41 = load i16*, i16** %green, align 8, !dbg !1263
  %42 = load i32, i32* %tooff, align 4, !dbg !1264
  %idx.ext26 = zext i32 %42 to i64, !dbg !1265
  %add.ptr27 = getelementptr i16, i16* %41, i64 %idx.ext26, !dbg !1265
  %43 = bitcast i16* %add.ptr27 to i8*, !dbg !1266
  %44 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1267
  %green28 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %44, i32 0, i32 3, !dbg !1268
  %45 = load i16*, i16** %green28, align 8, !dbg !1268
  %46 = load i32, i32* %fromoff, align 4, !dbg !1269
  %idx.ext29 = zext i32 %46 to i64, !dbg !1270
  %add.ptr30 = getelementptr i16, i16* %45, i64 %idx.ext29, !dbg !1270
  %47 = bitcast i16* %add.ptr30 to i8*, !dbg !1266
  %48 = load i64, i64* %size, align 8, !dbg !1271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %43, i8* align 2 %47, i64 %48, i1 false), !dbg !1266
  %49 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1272
  %blue = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %49, i32 0, i32 4, !dbg !1273
  %50 = load i16*, i16** %blue, align 8, !dbg !1273
  %51 = load i32, i32* %tooff, align 4, !dbg !1274
  %idx.ext31 = zext i32 %51 to i64, !dbg !1275
  %add.ptr32 = getelementptr i16, i16* %50, i64 %idx.ext31, !dbg !1275
  %52 = bitcast i16* %add.ptr32 to i8*, !dbg !1276
  %53 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1277
  %blue33 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %53, i32 0, i32 4, !dbg !1278
  %54 = load i16*, i16** %blue33, align 8, !dbg !1278
  %55 = load i32, i32* %fromoff, align 4, !dbg !1279
  %idx.ext34 = zext i32 %55 to i64, !dbg !1280
  %add.ptr35 = getelementptr i16, i16* %54, i64 %idx.ext34, !dbg !1280
  %56 = bitcast i16* %add.ptr35 to i8*, !dbg !1276
  %57 = load i64, i64* %size, align 8, !dbg !1281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %52, i8* align 2 %56, i64 %57, i1 false), !dbg !1276
  %58 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1282
  %transp = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %58, i32 0, i32 5, !dbg !1284
  %59 = load i16*, i16** %transp, align 8, !dbg !1284
  %tobool = icmp ne i16* %59, null, !dbg !1282
  br i1 %tobool, label %land.lhs.true, label %if.end45, !dbg !1285

land.lhs.true:                                    ; preds = %if.end22
  %60 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1286
  %transp36 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %60, i32 0, i32 5, !dbg !1287
  %61 = load i16*, i16** %transp36, align 8, !dbg !1287
  %tobool37 = icmp ne i16* %61, null, !dbg !1286
  br i1 %tobool37, label %if.then38, label %if.end45, !dbg !1288

if.then38:                                        ; preds = %land.lhs.true
  %62 = load %struct.fb_cmap*, %struct.fb_cmap** %to.addr, align 8, !dbg !1289
  %transp39 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %62, i32 0, i32 5, !dbg !1290
  %63 = load i16*, i16** %transp39, align 8, !dbg !1290
  %64 = load i32, i32* %tooff, align 4, !dbg !1291
  %idx.ext40 = zext i32 %64 to i64, !dbg !1292
  %add.ptr41 = getelementptr i16, i16* %63, i64 %idx.ext40, !dbg !1292
  %65 = bitcast i16* %add.ptr41 to i8*, !dbg !1293
  %66 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1294
  %transp42 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %66, i32 0, i32 5, !dbg !1295
  %67 = load i16*, i16** %transp42, align 8, !dbg !1295
  %68 = load i32, i32* %fromoff, align 4, !dbg !1296
  %idx.ext43 = zext i32 %68 to i64, !dbg !1297
  %add.ptr44 = getelementptr i16, i16* %67, i64 %idx.ext43, !dbg !1297
  %69 = bitcast i16* %add.ptr44 to i8*, !dbg !1293
  %70 = load i64, i64* %size, align 8, !dbg !1298
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %65, i8* align 2 %69, i64 %70, i1 false), !dbg !1293
  br label %if.end45, !dbg !1293

if.end45:                                         ; preds = %if.then38, %land.lhs.true, %if.end22
  store i32 0, i32* %retval, align 4, !dbg !1299
  br label %return, !dbg !1299

return:                                           ; preds = %if.end45, %if.then21, %if.then10
  %71 = load i32, i32* %retval, align 4, !dbg !1300
  ret i32 %71, !dbg !1300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fb_cmap* @fb_default_cmap(i32 %len) #0 !dbg !1301 {
entry:
  %retval = alloca %struct.fb_cmap*, align 8
  %len.addr = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1304, metadata !DIExpression()), !dbg !1305
  %0 = load i32, i32* %len.addr, align 4, !dbg !1306
  %cmp = icmp sle i32 %0, 2, !dbg !1308
  br i1 %cmp, label %if.then, label %if.end, !dbg !1309

if.then:                                          ; preds = %entry
  store %struct.fb_cmap* @default_2_colors, %struct.fb_cmap** %retval, align 8, !dbg !1310
  br label %return, !dbg !1310

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4, !dbg !1311
  %cmp1 = icmp sle i32 %1, 4, !dbg !1313
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1314

if.then2:                                         ; preds = %if.end
  store %struct.fb_cmap* @default_4_colors, %struct.fb_cmap** %retval, align 8, !dbg !1315
  br label %return, !dbg !1315

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %len.addr, align 4, !dbg !1316
  %cmp4 = icmp sle i32 %2, 8, !dbg !1318
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1319

if.then5:                                         ; preds = %if.end3
  store %struct.fb_cmap* @default_8_colors, %struct.fb_cmap** %retval, align 8, !dbg !1320
  br label %return, !dbg !1320

if.end6:                                          ; preds = %if.end3
  store %struct.fb_cmap* @default_16_colors, %struct.fb_cmap** %retval, align 8, !dbg !1321
  br label %return, !dbg !1321

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %3 = load %struct.fb_cmap*, %struct.fb_cmap** %retval, align 8, !dbg !1322
  ret %struct.fb_cmap* %3, !dbg !1322
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_alloc_cmap(%struct.fb_cmap* %cmap, i32 %len, i32 %transp) #0 !dbg !1323 {
entry:
  %cmap.addr = alloca %struct.fb_cmap*, align 8
  %len.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  store %struct.fb_cmap* %cmap, %struct.fb_cmap** %cmap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap** %cmap.addr, metadata !1326, metadata !DIExpression()), !dbg !1327
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1328, metadata !DIExpression()), !dbg !1329
  store i32 %transp, i32* %transp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %transp.addr, metadata !1330, metadata !DIExpression()), !dbg !1331
  %0 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !1332
  %1 = load i32, i32* %len.addr, align 4, !dbg !1333
  %2 = load i32, i32* %transp.addr, align 4, !dbg !1334
  %call = call i32 @fb_alloc_cmap_gfp(%struct.fb_cmap* %0, i32 %1, i32 %2, i32 2592) #7, !dbg !1335
  ret i32 %call, !dbg !1336
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_cmap_to_user(%struct.fb_cmap* %from, %struct.fb_cmap_user* %to) #0 !dbg !1337 {
entry:
  %retval.i.i163 = alloca i1, align 1
  %addr.addr.i.i164 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i164, metadata !1350, metadata !DIExpression()), !dbg !1359
  %bytes.addr.i.i165 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i165, metadata !1369, metadata !DIExpression()), !dbg !1370
  %is_source.addr.i.i166 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i166, metadata !1371, metadata !DIExpression()), !dbg !1372
  %sz.i.i167 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i167, metadata !1373, metadata !DIExpression()), !dbg !1374
  %__ret_warn_on.i.i168 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i168, metadata !1375, metadata !DIExpression()), !dbg !1378
  %tmp.i.i169 = alloca i64, align 8
  %to.addr.i170 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i170, metadata !1379, metadata !DIExpression()), !dbg !1380
  %from.addr.i171 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i171, metadata !1381, metadata !DIExpression()), !dbg !1382
  %n.addr.i172 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i172, metadata !1383, metadata !DIExpression()), !dbg !1384
  %retval.i.i112 = alloca i1, align 1
  %addr.addr.i.i113 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i113, metadata !1350, metadata !DIExpression()), !dbg !1385
  %bytes.addr.i.i114 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i114, metadata !1369, metadata !DIExpression()), !dbg !1389
  %is_source.addr.i.i115 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i115, metadata !1371, metadata !DIExpression()), !dbg !1390
  %sz.i.i116 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i116, metadata !1373, metadata !DIExpression()), !dbg !1391
  %__ret_warn_on.i.i117 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i117, metadata !1375, metadata !DIExpression()), !dbg !1392
  %tmp.i.i118 = alloca i64, align 8
  %to.addr.i119 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i119, metadata !1379, metadata !DIExpression()), !dbg !1393
  %from.addr.i120 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i120, metadata !1381, metadata !DIExpression()), !dbg !1394
  %n.addr.i121 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i121, metadata !1383, metadata !DIExpression()), !dbg !1395
  %retval.i.i61 = alloca i1, align 1
  %addr.addr.i.i62 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i62, metadata !1350, metadata !DIExpression()), !dbg !1396
  %bytes.addr.i.i63 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i63, metadata !1369, metadata !DIExpression()), !dbg !1400
  %is_source.addr.i.i64 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i64, metadata !1371, metadata !DIExpression()), !dbg !1401
  %sz.i.i65 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i65, metadata !1373, metadata !DIExpression()), !dbg !1402
  %__ret_warn_on.i.i66 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i66, metadata !1375, metadata !DIExpression()), !dbg !1403
  %tmp.i.i67 = alloca i64, align 8
  %to.addr.i68 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i68, metadata !1379, metadata !DIExpression()), !dbg !1404
  %from.addr.i69 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i69, metadata !1381, metadata !DIExpression()), !dbg !1405
  %n.addr.i70 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i70, metadata !1383, metadata !DIExpression()), !dbg !1406
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !1350, metadata !DIExpression()), !dbg !1407
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !1369, metadata !DIExpression()), !dbg !1411
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !1371, metadata !DIExpression()), !dbg !1412
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !1373, metadata !DIExpression()), !dbg !1413
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !1375, metadata !DIExpression()), !dbg !1414
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !1379, metadata !DIExpression()), !dbg !1415
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !1381, metadata !DIExpression()), !dbg !1416
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !1383, metadata !DIExpression()), !dbg !1417
  %retval = alloca i32, align 4
  %from.addr = alloca %struct.fb_cmap*, align 8
  %to.addr = alloca %struct.fb_cmap_user*, align 8
  %tooff = alloca i32, align 4
  %fromoff = alloca i32, align 4
  %size = alloca i64, align 8
  %__UNIQUE_ID___x241 = alloca i64, align 8
  %__UNIQUE_ID___y242 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.fb_cmap* %from, %struct.fb_cmap** %from.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap** %from.addr, metadata !1418, metadata !DIExpression()), !dbg !1419
  store %struct.fb_cmap_user* %to, %struct.fb_cmap_user** %to.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap_user** %to.addr, metadata !1420, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.declare(metadata i32* %tooff, metadata !1422, metadata !DIExpression()), !dbg !1423
  store i32 0, i32* %tooff, align 4, !dbg !1423
  call void @llvm.dbg.declare(metadata i32* %fromoff, metadata !1424, metadata !DIExpression()), !dbg !1425
  store i32 0, i32* %fromoff, align 4, !dbg !1425
  call void @llvm.dbg.declare(metadata i64* %size, metadata !1426, metadata !DIExpression()), !dbg !1427
  %0 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1428
  %start = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %0, i32 0, i32 0, !dbg !1430
  %1 = load i32, i32* %start, align 8, !dbg !1430
  %2 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1431
  %start1 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %2, i32 0, i32 0, !dbg !1432
  %3 = load i32, i32* %start1, align 8, !dbg !1432
  %cmp = icmp ugt i32 %1, %3, !dbg !1433
  br i1 %cmp, label %if.then, label %if.else, !dbg !1434

if.then:                                          ; preds = %entry
  %4 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1435
  %start2 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %4, i32 0, i32 0, !dbg !1436
  %5 = load i32, i32* %start2, align 8, !dbg !1436
  %6 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1437
  %start3 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %6, i32 0, i32 0, !dbg !1438
  %7 = load i32, i32* %start3, align 8, !dbg !1438
  %sub = sub i32 %5, %7, !dbg !1439
  store i32 %sub, i32* %fromoff, align 4, !dbg !1440
  br label %if.end, !dbg !1441

if.else:                                          ; preds = %entry
  %8 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1442
  %start4 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 0, !dbg !1443
  %9 = load i32, i32* %start4, align 8, !dbg !1443
  %10 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1444
  %start5 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %10, i32 0, i32 0, !dbg !1445
  %11 = load i32, i32* %start5, align 8, !dbg !1445
  %sub6 = sub i32 %9, %11, !dbg !1446
  store i32 %sub6, i32* %tooff, align 4, !dbg !1447
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %fromoff, align 4, !dbg !1448
  %13 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1450
  %len = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %13, i32 0, i32 1, !dbg !1451
  %14 = load i32, i32* %len, align 4, !dbg !1451
  %cmp7 = icmp uge i32 %12, %14, !dbg !1452
  br i1 %cmp7, label %if.then10, label %lor.lhs.false, !dbg !1453

lor.lhs.false:                                    ; preds = %if.end
  %15 = load i32, i32* %tooff, align 4, !dbg !1454
  %16 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1455
  %len8 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %16, i32 0, i32 1, !dbg !1456
  %17 = load i32, i32* %len8, align 4, !dbg !1456
  %cmp9 = icmp uge i32 %15, %17, !dbg !1457
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1458

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !1459
  br label %return, !dbg !1459

if.end11:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x241, metadata !1460, metadata !DIExpression()), !dbg !1462
  %18 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1462
  %len12 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %18, i32 0, i32 1, !dbg !1462
  %19 = load i32, i32* %len12, align 4, !dbg !1462
  %20 = load i32, i32* %tooff, align 4, !dbg !1462
  %sub13 = sub i32 %19, %20, !dbg !1462
  %conv = zext i32 %sub13 to i64, !dbg !1462
  store i64 %conv, i64* %__UNIQUE_ID___x241, align 8, !dbg !1462
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y242, metadata !1463, metadata !DIExpression()), !dbg !1462
  %21 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1462
  %len14 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %21, i32 0, i32 1, !dbg !1462
  %22 = load i32, i32* %len14, align 4, !dbg !1462
  %23 = load i32, i32* %fromoff, align 4, !dbg !1462
  %sub15 = sub i32 %22, %23, !dbg !1462
  %conv16 = zext i32 %sub15 to i64, !dbg !1462
  store i64 %conv16, i64* %__UNIQUE_ID___y242, align 8, !dbg !1462
  %24 = load i64, i64* %__UNIQUE_ID___x241, align 8, !dbg !1462
  %25 = load i64, i64* %__UNIQUE_ID___y242, align 8, !dbg !1462
  %cmp17 = icmp ult i64 %24, %25, !dbg !1462
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !1462

cond.true:                                        ; preds = %if.end11
  %26 = load i64, i64* %__UNIQUE_ID___x241, align 8, !dbg !1462
  br label %cond.end, !dbg !1462

cond.false:                                       ; preds = %if.end11
  %27 = load i64, i64* %__UNIQUE_ID___y242, align 8, !dbg !1462
  br label %cond.end, !dbg !1462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !1462
  store i64 %cond, i64* %tmp, align 8, !dbg !1462
  %28 = load i64, i64* %tmp, align 8, !dbg !1462
  store i64 %28, i64* %size, align 8, !dbg !1464
  %29 = load i64, i64* %size, align 8, !dbg !1465
  %cmp19 = icmp eq i64 %29, 0, !dbg !1467
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1468

if.then21:                                        ; preds = %cond.end
  store i32 -22, i32* %retval, align 4, !dbg !1469
  br label %return, !dbg !1469

if.end22:                                         ; preds = %cond.end
  %30 = load i64, i64* %size, align 8, !dbg !1470
  %mul = mul i64 %30, 2, !dbg !1470
  store i64 %mul, i64* %size, align 8, !dbg !1470
  %31 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1471
  %red = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %31, i32 0, i32 2, !dbg !1472
  %32 = load i16*, i16** %red, align 8, !dbg !1472
  %33 = load i32, i32* %tooff, align 4, !dbg !1473
  %idx.ext = zext i32 %33 to i64, !dbg !1474
  %add.ptr = getelementptr i16, i16* %32, i64 %idx.ext, !dbg !1474
  %34 = bitcast i16* %add.ptr to i8*, !dbg !1471
  %35 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1475
  %red23 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %35, i32 0, i32 2, !dbg !1476
  %36 = load i16*, i16** %red23, align 8, !dbg !1476
  %37 = load i32, i32* %fromoff, align 4, !dbg !1477
  %idx.ext24 = zext i32 %37 to i64, !dbg !1478
  %add.ptr25 = getelementptr i16, i16* %36, i64 %idx.ext24, !dbg !1478
  %38 = bitcast i16* %add.ptr25 to i8*, !dbg !1475
  %39 = load i64, i64* %size, align 8, !dbg !1479
  store i8* %34, i8** %to.addr.i, align 8
  store i8* %38, i8** %from.addr.i, align 8
  store i64 %39, i64* %n.addr.i, align 8
  %40 = load i8*, i8** %from.addr.i, align 8, !dbg !1480
  %41 = load i64, i64* %n.addr.i, align 8, !dbg !1480
  store i8* %40, i8** %addr.addr.i.i, align 8
  store i64 %41, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !1413
  %42 = load i32, i32* %sz.i.i, align 4, !dbg !1481
  %cmp.i.i = icmp sge i32 %42, 0, !dbg !1481
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !1481

land.rhs.i.i:                                     ; preds = %if.end22
  %43 = load i32, i32* %sz.i.i, align 4, !dbg !1481
  %conv.i.i = sext i32 %43 to i64, !dbg !1481
  %44 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1481
  %cmp1.i.i = icmp ult i64 %conv.i.i, %44, !dbg !1481
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end22
  %45 = phi i1 [ false, %if.end22 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !1483
  %lnot.i.i = xor i1 %45, true, !dbg !1481
  %lnot.ext.i.i = zext i1 %45 to i32, !dbg !1481
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1481
  br i1 %45, label %if.then.i.i, label %if.end10.i.i, !dbg !1484

if.then.i.i:                                      ; preds = %land.end.i.i
  %46 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1485
  %47 = call i1 @llvm.is.constant.i64(i64 %46) #8, !dbg !1488
  br i1 %47, label %if.else.i.i, label %if.then5.i.i, !dbg !1489

if.then5.i.i:                                     ; preds = %if.then.i.i
  %48 = load i32, i32* %sz.i.i, align 4, !dbg !1490
  %49 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1491
  call void @copy_overflow(i32 %48, i64 %49) #10, !dbg !1492
  br label %if.end9.i.i, !dbg !1492

if.else.i.i:                                      ; preds = %if.then.i.i
  %50 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !1493
  %tobool6.i.i = trunc i8 %50 to i1, !dbg !1493
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !1495

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #10, !dbg !1496
  br label %if.end.i.i, !dbg !1496

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #10, !dbg !1497
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !1498
  br label %check_copy_size.exit.i, !dbg !1498

if.end10.i.i:                                     ; preds = %land.end.i.i
  %51 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1414
  %cmp11.i.i = icmp ugt i64 %51, 2147483647, !dbg !1414
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !1414
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !1414
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !1414
  %52 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !1499
  %tobool17.i.i = icmp ne i32 %52, 0, !dbg !1499
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !1499
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !1499
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !1499
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !1414

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !1501, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !1505, !srcloc !1507
  br label %if.end31.i.i, !dbg !1508

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %53 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !1414
  %tobool32.i.i = icmp ne i32 %53, 0, !dbg !1414
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !1414
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !1414
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !1414
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !1499
  %54 = load i64, i64* %tmp.i.i, align 8, !dbg !1414
  %tobool38.i.i = icmp ne i64 %54, 0, !dbg !1509
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !1510

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !1511
  br label %check_copy_size.exit.i, !dbg !1511

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %55 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !1512
  %56 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !1513
  %57 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !1514
  %tobool41.i.i = trunc i8 %57 to i1, !dbg !1514
  call void @check_object_size(i8* %55, i64 %56, i1 zeroext %tobool41.i.i) #10, !dbg !1515
  store i1 true, i1* %retval.i.i, align 1, !dbg !1516
  br label %check_copy_size.exit.i, !dbg !1516

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %58 = load i1, i1* %retval.i.i, align 1, !dbg !1517
  %lnot.i = xor i1 %58, true, !dbg !1480
  %lnot.ext.i = zext i1 %58 to i32, !dbg !1480
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !1480
  br i1 %58, label %if.then.i, label %copy_to_user.exit, !dbg !1518

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %59 = load i8*, i8** %to.addr.i, align 8, !dbg !1519
  %60 = load i8*, i8** %from.addr.i, align 8, !dbg !1520
  %61 = load i64, i64* %n.addr.i, align 8, !dbg !1521
  %call2.i = call i64 @_copy_to_user(i8* %59, i8* %60, i64 %61) #10, !dbg !1522
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !1523
  br label %copy_to_user.exit, !dbg !1524

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %62 = load i64, i64* %n.addr.i, align 8, !dbg !1525
  %tobool = icmp ne i64 %62, 0, !dbg !1526
  br i1 %tobool, label %if.then26, label %if.end27, !dbg !1527

if.then26:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %retval, align 4, !dbg !1528
  br label %return, !dbg !1528

if.end27:                                         ; preds = %copy_to_user.exit
  %63 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1529
  %green = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %63, i32 0, i32 3, !dbg !1530
  %64 = load i16*, i16** %green, align 8, !dbg !1530
  %65 = load i32, i32* %tooff, align 4, !dbg !1531
  %idx.ext28 = zext i32 %65 to i64, !dbg !1532
  %add.ptr29 = getelementptr i16, i16* %64, i64 %idx.ext28, !dbg !1532
  %66 = bitcast i16* %add.ptr29 to i8*, !dbg !1529
  %67 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1533
  %green30 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %67, i32 0, i32 3, !dbg !1534
  %68 = load i16*, i16** %green30, align 8, !dbg !1534
  %69 = load i32, i32* %fromoff, align 4, !dbg !1535
  %idx.ext31 = zext i32 %69 to i64, !dbg !1536
  %add.ptr32 = getelementptr i16, i16* %68, i64 %idx.ext31, !dbg !1536
  %70 = bitcast i16* %add.ptr32 to i8*, !dbg !1533
  %71 = load i64, i64* %size, align 8, !dbg !1537
  store i8* %66, i8** %to.addr.i68, align 8
  store i8* %70, i8** %from.addr.i69, align 8
  store i64 %71, i64* %n.addr.i70, align 8
  %72 = load i8*, i8** %from.addr.i69, align 8, !dbg !1538
  %73 = load i64, i64* %n.addr.i70, align 8, !dbg !1538
  store i8* %72, i8** %addr.addr.i.i62, align 8
  store i64 %73, i64* %bytes.addr.i.i63, align 8
  store i8 1, i8* %is_source.addr.i.i64, align 1
  store i32 -1, i32* %sz.i.i65, align 4, !dbg !1402
  %74 = load i32, i32* %sz.i.i65, align 4, !dbg !1539
  %cmp.i.i71 = icmp sge i32 %74, 0, !dbg !1539
  br i1 %cmp.i.i71, label %land.rhs.i.i74, label %land.end.i.i78, !dbg !1539

land.rhs.i.i74:                                   ; preds = %if.end27
  %75 = load i32, i32* %sz.i.i65, align 4, !dbg !1539
  %conv.i.i72 = sext i32 %75 to i64, !dbg !1539
  %76 = load i64, i64* %bytes.addr.i.i63, align 8, !dbg !1539
  %cmp1.i.i73 = icmp ult i64 %conv.i.i72, %76, !dbg !1539
  br label %land.end.i.i78

land.end.i.i78:                                   ; preds = %land.rhs.i.i74, %if.end27
  %77 = phi i1 [ false, %if.end27 ], [ %cmp1.i.i73, %land.rhs.i.i74 ], !dbg !1540
  %lnot.i.i75 = xor i1 %77, true, !dbg !1539
  %lnot.ext.i.i76 = zext i1 %77 to i32, !dbg !1539
  %conv4.i.i77 = sext i32 %lnot.ext.i.i76 to i64, !dbg !1539
  br i1 %77, label %if.then.i.i79, label %if.end10.i.i94, !dbg !1541

if.then.i.i79:                                    ; preds = %land.end.i.i78
  %78 = load i64, i64* %bytes.addr.i.i63, align 8, !dbg !1542
  %79 = call i1 @llvm.is.constant.i64(i64 %78) #8, !dbg !1543
  br i1 %79, label %if.else.i.i82, label %if.then5.i.i80, !dbg !1544

if.then5.i.i80:                                   ; preds = %if.then.i.i79
  %80 = load i32, i32* %sz.i.i65, align 4, !dbg !1545
  %81 = load i64, i64* %bytes.addr.i.i63, align 8, !dbg !1546
  call void @copy_overflow(i32 %80, i64 %81) #10, !dbg !1547
  br label %if.end9.i.i86, !dbg !1547

if.else.i.i82:                                    ; preds = %if.then.i.i79
  %82 = load i8, i8* %is_source.addr.i.i64, align 1, !dbg !1548
  %tobool6.i.i81 = trunc i8 %82 to i1, !dbg !1548
  br i1 %tobool6.i.i81, label %if.then7.i.i83, label %if.else8.i.i84, !dbg !1549

if.then7.i.i83:                                   ; preds = %if.else.i.i82
  call void @__bad_copy_from() #10, !dbg !1550
  br label %if.end.i.i85, !dbg !1550

if.else8.i.i84:                                   ; preds = %if.else.i.i82
  call void @__bad_copy_to() #10, !dbg !1551
  br label %if.end.i.i85

if.end.i.i85:                                     ; preds = %if.else8.i.i84, %if.then7.i.i83
  br label %if.end9.i.i86

if.end9.i.i86:                                    ; preds = %if.end.i.i85, %if.then5.i.i80
  store i1 false, i1* %retval.i.i61, align 1, !dbg !1552
  br label %check_copy_size.exit.i108, !dbg !1552

if.end10.i.i94:                                   ; preds = %land.end.i.i78
  %83 = load i64, i64* %bytes.addr.i.i63, align 8, !dbg !1403
  %cmp11.i.i87 = icmp ugt i64 %83, 2147483647, !dbg !1403
  %lnot13.i.i88 = xor i1 %cmp11.i.i87, true, !dbg !1403
  %lnot.ext16.i.i89 = zext i1 %cmp11.i.i87 to i32, !dbg !1403
  store i32 %lnot.ext16.i.i89, i32* %__ret_warn_on.i.i66, align 4, !dbg !1403
  %84 = load i32, i32* %__ret_warn_on.i.i66, align 4, !dbg !1553
  %tobool17.i.i90 = icmp ne i32 %84, 0, !dbg !1553
  %lnot18.i.i91 = xor i1 %tobool17.i.i90, true, !dbg !1553
  %lnot.ext21.i.i92 = zext i1 %tobool17.i.i90 to i32, !dbg !1553
  %conv22.i.i93 = sext i32 %lnot.ext21.i.i92 to i64, !dbg !1553
  br i1 %tobool17.i.i90, label %if.then24.i.i95, label %if.end31.i.i101, !dbg !1403

if.then24.i.i95:                                  ; preds = %if.end10.i.i94
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !1554, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !1555, !srcloc !1507
  br label %if.end31.i.i101, !dbg !1556

if.end31.i.i101:                                  ; preds = %if.then24.i.i95, %if.end10.i.i94
  %85 = load i32, i32* %__ret_warn_on.i.i66, align 4, !dbg !1403
  %tobool32.i.i96 = icmp ne i32 %85, 0, !dbg !1403
  %lnot33.i.i97 = xor i1 %tobool32.i.i96, true, !dbg !1403
  %lnot.ext36.i.i98 = zext i1 %tobool32.i.i96 to i32, !dbg !1403
  %conv37.i.i99 = sext i32 %lnot.ext36.i.i98 to i64, !dbg !1403
  store i64 %conv37.i.i99, i64* %tmp.i.i67, align 8, !dbg !1553
  %86 = load i64, i64* %tmp.i.i67, align 8, !dbg !1403
  %tobool38.i.i100 = icmp ne i64 %86, 0, !dbg !1557
  br i1 %tobool38.i.i100, label %if.then39.i.i102, label %if.end40.i.i104, !dbg !1558

if.then39.i.i102:                                 ; preds = %if.end31.i.i101
  store i1 false, i1* %retval.i.i61, align 1, !dbg !1559
  br label %check_copy_size.exit.i108, !dbg !1559

if.end40.i.i104:                                  ; preds = %if.end31.i.i101
  %87 = load i8*, i8** %addr.addr.i.i62, align 8, !dbg !1560
  %88 = load i64, i64* %bytes.addr.i.i63, align 8, !dbg !1561
  %89 = load i8, i8* %is_source.addr.i.i64, align 1, !dbg !1562
  %tobool41.i.i103 = trunc i8 %89 to i1, !dbg !1562
  call void @check_object_size(i8* %87, i64 %88, i1 zeroext %tobool41.i.i103) #10, !dbg !1563
  store i1 true, i1* %retval.i.i61, align 1, !dbg !1564
  br label %check_copy_size.exit.i108, !dbg !1564

check_copy_size.exit.i108:                        ; preds = %if.end40.i.i104, %if.then39.i.i102, %if.end9.i.i86
  %90 = load i1, i1* %retval.i.i61, align 1, !dbg !1565
  %lnot.i105 = xor i1 %90, true, !dbg !1538
  %lnot.ext.i106 = zext i1 %90 to i32, !dbg !1538
  %conv.i107 = sext i32 %lnot.ext.i106 to i64, !dbg !1538
  br i1 %90, label %if.then.i110, label %copy_to_user.exit111, !dbg !1566

if.then.i110:                                     ; preds = %check_copy_size.exit.i108
  %91 = load i8*, i8** %to.addr.i68, align 8, !dbg !1567
  %92 = load i8*, i8** %from.addr.i69, align 8, !dbg !1568
  %93 = load i64, i64* %n.addr.i70, align 8, !dbg !1569
  %call2.i109 = call i64 @_copy_to_user(i8* %91, i8* %92, i64 %93) #10, !dbg !1570
  store i64 %call2.i109, i64* %n.addr.i70, align 8, !dbg !1571
  br label %copy_to_user.exit111, !dbg !1572

copy_to_user.exit111:                             ; preds = %check_copy_size.exit.i108, %if.then.i110
  %94 = load i64, i64* %n.addr.i70, align 8, !dbg !1573
  %tobool34 = icmp ne i64 %94, 0, !dbg !1574
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1575

if.then35:                                        ; preds = %copy_to_user.exit111
  store i32 -14, i32* %retval, align 4, !dbg !1576
  br label %return, !dbg !1576

if.end36:                                         ; preds = %copy_to_user.exit111
  %95 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1577
  %blue = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %95, i32 0, i32 4, !dbg !1578
  %96 = load i16*, i16** %blue, align 8, !dbg !1578
  %97 = load i32, i32* %tooff, align 4, !dbg !1579
  %idx.ext37 = zext i32 %97 to i64, !dbg !1580
  %add.ptr38 = getelementptr i16, i16* %96, i64 %idx.ext37, !dbg !1580
  %98 = bitcast i16* %add.ptr38 to i8*, !dbg !1577
  %99 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1581
  %blue39 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %99, i32 0, i32 4, !dbg !1582
  %100 = load i16*, i16** %blue39, align 8, !dbg !1582
  %101 = load i32, i32* %fromoff, align 4, !dbg !1583
  %idx.ext40 = zext i32 %101 to i64, !dbg !1584
  %add.ptr41 = getelementptr i16, i16* %100, i64 %idx.ext40, !dbg !1584
  %102 = bitcast i16* %add.ptr41 to i8*, !dbg !1581
  %103 = load i64, i64* %size, align 8, !dbg !1585
  store i8* %98, i8** %to.addr.i119, align 8
  store i8* %102, i8** %from.addr.i120, align 8
  store i64 %103, i64* %n.addr.i121, align 8
  %104 = load i8*, i8** %from.addr.i120, align 8, !dbg !1586
  %105 = load i64, i64* %n.addr.i121, align 8, !dbg !1586
  store i8* %104, i8** %addr.addr.i.i113, align 8
  store i64 %105, i64* %bytes.addr.i.i114, align 8
  store i8 1, i8* %is_source.addr.i.i115, align 1
  store i32 -1, i32* %sz.i.i116, align 4, !dbg !1391
  %106 = load i32, i32* %sz.i.i116, align 4, !dbg !1587
  %cmp.i.i122 = icmp sge i32 %106, 0, !dbg !1587
  br i1 %cmp.i.i122, label %land.rhs.i.i125, label %land.end.i.i129, !dbg !1587

land.rhs.i.i125:                                  ; preds = %if.end36
  %107 = load i32, i32* %sz.i.i116, align 4, !dbg !1587
  %conv.i.i123 = sext i32 %107 to i64, !dbg !1587
  %108 = load i64, i64* %bytes.addr.i.i114, align 8, !dbg !1587
  %cmp1.i.i124 = icmp ult i64 %conv.i.i123, %108, !dbg !1587
  br label %land.end.i.i129

land.end.i.i129:                                  ; preds = %land.rhs.i.i125, %if.end36
  %109 = phi i1 [ false, %if.end36 ], [ %cmp1.i.i124, %land.rhs.i.i125 ], !dbg !1588
  %lnot.i.i126 = xor i1 %109, true, !dbg !1587
  %lnot.ext.i.i127 = zext i1 %109 to i32, !dbg !1587
  %conv4.i.i128 = sext i32 %lnot.ext.i.i127 to i64, !dbg !1587
  br i1 %109, label %if.then.i.i130, label %if.end10.i.i145, !dbg !1589

if.then.i.i130:                                   ; preds = %land.end.i.i129
  %110 = load i64, i64* %bytes.addr.i.i114, align 8, !dbg !1590
  %111 = call i1 @llvm.is.constant.i64(i64 %110) #8, !dbg !1591
  br i1 %111, label %if.else.i.i133, label %if.then5.i.i131, !dbg !1592

if.then5.i.i131:                                  ; preds = %if.then.i.i130
  %112 = load i32, i32* %sz.i.i116, align 4, !dbg !1593
  %113 = load i64, i64* %bytes.addr.i.i114, align 8, !dbg !1594
  call void @copy_overflow(i32 %112, i64 %113) #10, !dbg !1595
  br label %if.end9.i.i137, !dbg !1595

if.else.i.i133:                                   ; preds = %if.then.i.i130
  %114 = load i8, i8* %is_source.addr.i.i115, align 1, !dbg !1596
  %tobool6.i.i132 = trunc i8 %114 to i1, !dbg !1596
  br i1 %tobool6.i.i132, label %if.then7.i.i134, label %if.else8.i.i135, !dbg !1597

if.then7.i.i134:                                  ; preds = %if.else.i.i133
  call void @__bad_copy_from() #10, !dbg !1598
  br label %if.end.i.i136, !dbg !1598

if.else8.i.i135:                                  ; preds = %if.else.i.i133
  call void @__bad_copy_to() #10, !dbg !1599
  br label %if.end.i.i136

if.end.i.i136:                                    ; preds = %if.else8.i.i135, %if.then7.i.i134
  br label %if.end9.i.i137

if.end9.i.i137:                                   ; preds = %if.end.i.i136, %if.then5.i.i131
  store i1 false, i1* %retval.i.i112, align 1, !dbg !1600
  br label %check_copy_size.exit.i159, !dbg !1600

if.end10.i.i145:                                  ; preds = %land.end.i.i129
  %115 = load i64, i64* %bytes.addr.i.i114, align 8, !dbg !1392
  %cmp11.i.i138 = icmp ugt i64 %115, 2147483647, !dbg !1392
  %lnot13.i.i139 = xor i1 %cmp11.i.i138, true, !dbg !1392
  %lnot.ext16.i.i140 = zext i1 %cmp11.i.i138 to i32, !dbg !1392
  store i32 %lnot.ext16.i.i140, i32* %__ret_warn_on.i.i117, align 4, !dbg !1392
  %116 = load i32, i32* %__ret_warn_on.i.i117, align 4, !dbg !1601
  %tobool17.i.i141 = icmp ne i32 %116, 0, !dbg !1601
  %lnot18.i.i142 = xor i1 %tobool17.i.i141, true, !dbg !1601
  %lnot.ext21.i.i143 = zext i1 %tobool17.i.i141 to i32, !dbg !1601
  %conv22.i.i144 = sext i32 %lnot.ext21.i.i143 to i64, !dbg !1601
  br i1 %tobool17.i.i141, label %if.then24.i.i146, label %if.end31.i.i152, !dbg !1392

if.then24.i.i146:                                 ; preds = %if.end10.i.i145
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !1602, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !1603, !srcloc !1507
  br label %if.end31.i.i152, !dbg !1604

if.end31.i.i152:                                  ; preds = %if.then24.i.i146, %if.end10.i.i145
  %117 = load i32, i32* %__ret_warn_on.i.i117, align 4, !dbg !1392
  %tobool32.i.i147 = icmp ne i32 %117, 0, !dbg !1392
  %lnot33.i.i148 = xor i1 %tobool32.i.i147, true, !dbg !1392
  %lnot.ext36.i.i149 = zext i1 %tobool32.i.i147 to i32, !dbg !1392
  %conv37.i.i150 = sext i32 %lnot.ext36.i.i149 to i64, !dbg !1392
  store i64 %conv37.i.i150, i64* %tmp.i.i118, align 8, !dbg !1601
  %118 = load i64, i64* %tmp.i.i118, align 8, !dbg !1392
  %tobool38.i.i151 = icmp ne i64 %118, 0, !dbg !1605
  br i1 %tobool38.i.i151, label %if.then39.i.i153, label %if.end40.i.i155, !dbg !1606

if.then39.i.i153:                                 ; preds = %if.end31.i.i152
  store i1 false, i1* %retval.i.i112, align 1, !dbg !1607
  br label %check_copy_size.exit.i159, !dbg !1607

if.end40.i.i155:                                  ; preds = %if.end31.i.i152
  %119 = load i8*, i8** %addr.addr.i.i113, align 8, !dbg !1608
  %120 = load i64, i64* %bytes.addr.i.i114, align 8, !dbg !1609
  %121 = load i8, i8* %is_source.addr.i.i115, align 1, !dbg !1610
  %tobool41.i.i154 = trunc i8 %121 to i1, !dbg !1610
  call void @check_object_size(i8* %119, i64 %120, i1 zeroext %tobool41.i.i154) #10, !dbg !1611
  store i1 true, i1* %retval.i.i112, align 1, !dbg !1612
  br label %check_copy_size.exit.i159, !dbg !1612

check_copy_size.exit.i159:                        ; preds = %if.end40.i.i155, %if.then39.i.i153, %if.end9.i.i137
  %122 = load i1, i1* %retval.i.i112, align 1, !dbg !1613
  %lnot.i156 = xor i1 %122, true, !dbg !1586
  %lnot.ext.i157 = zext i1 %122 to i32, !dbg !1586
  %conv.i158 = sext i32 %lnot.ext.i157 to i64, !dbg !1586
  br i1 %122, label %if.then.i161, label %copy_to_user.exit162, !dbg !1614

if.then.i161:                                     ; preds = %check_copy_size.exit.i159
  %123 = load i8*, i8** %to.addr.i119, align 8, !dbg !1615
  %124 = load i8*, i8** %from.addr.i120, align 8, !dbg !1616
  %125 = load i64, i64* %n.addr.i121, align 8, !dbg !1617
  %call2.i160 = call i64 @_copy_to_user(i8* %123, i8* %124, i64 %125) #10, !dbg !1618
  store i64 %call2.i160, i64* %n.addr.i121, align 8, !dbg !1619
  br label %copy_to_user.exit162, !dbg !1620

copy_to_user.exit162:                             ; preds = %check_copy_size.exit.i159, %if.then.i161
  %126 = load i64, i64* %n.addr.i121, align 8, !dbg !1621
  %tobool43 = icmp ne i64 %126, 0, !dbg !1622
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1623

if.then44:                                        ; preds = %copy_to_user.exit162
  store i32 -14, i32* %retval, align 4, !dbg !1624
  br label %return, !dbg !1624

if.end45:                                         ; preds = %copy_to_user.exit162
  %127 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1625
  %transp = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %127, i32 0, i32 5, !dbg !1626
  %128 = load i16*, i16** %transp, align 8, !dbg !1626
  %tobool46 = icmp ne i16* %128, null, !dbg !1625
  br i1 %tobool46, label %land.lhs.true, label %if.end60, !dbg !1627

land.lhs.true:                                    ; preds = %if.end45
  %129 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1628
  %transp47 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %129, i32 0, i32 5, !dbg !1629
  %130 = load i16*, i16** %transp47, align 8, !dbg !1629
  %tobool48 = icmp ne i16* %130, null, !dbg !1628
  br i1 %tobool48, label %if.then49, label %if.end60, !dbg !1630

if.then49:                                        ; preds = %land.lhs.true
  %131 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %to.addr, align 8, !dbg !1631
  %transp50 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %131, i32 0, i32 5, !dbg !1632
  %132 = load i16*, i16** %transp50, align 8, !dbg !1632
  %133 = load i32, i32* %tooff, align 4, !dbg !1633
  %idx.ext51 = zext i32 %133 to i64, !dbg !1634
  %add.ptr52 = getelementptr i16, i16* %132, i64 %idx.ext51, !dbg !1634
  %134 = bitcast i16* %add.ptr52 to i8*, !dbg !1631
  %135 = load %struct.fb_cmap*, %struct.fb_cmap** %from.addr, align 8, !dbg !1635
  %transp53 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %135, i32 0, i32 5, !dbg !1636
  %136 = load i16*, i16** %transp53, align 8, !dbg !1636
  %137 = load i32, i32* %fromoff, align 4, !dbg !1637
  %idx.ext54 = zext i32 %137 to i64, !dbg !1638
  %add.ptr55 = getelementptr i16, i16* %136, i64 %idx.ext54, !dbg !1638
  %138 = bitcast i16* %add.ptr55 to i8*, !dbg !1635
  %139 = load i64, i64* %size, align 8, !dbg !1639
  store i8* %134, i8** %to.addr.i170, align 8
  store i8* %138, i8** %from.addr.i171, align 8
  store i64 %139, i64* %n.addr.i172, align 8
  %140 = load i8*, i8** %from.addr.i171, align 8, !dbg !1640
  %141 = load i64, i64* %n.addr.i172, align 8, !dbg !1640
  store i8* %140, i8** %addr.addr.i.i164, align 8
  store i64 %141, i64* %bytes.addr.i.i165, align 8
  store i8 1, i8* %is_source.addr.i.i166, align 1
  store i32 -1, i32* %sz.i.i167, align 4, !dbg !1374
  %142 = load i32, i32* %sz.i.i167, align 4, !dbg !1641
  %cmp.i.i173 = icmp sge i32 %142, 0, !dbg !1641
  br i1 %cmp.i.i173, label %land.rhs.i.i176, label %land.end.i.i180, !dbg !1641

land.rhs.i.i176:                                  ; preds = %if.then49
  %143 = load i32, i32* %sz.i.i167, align 4, !dbg !1641
  %conv.i.i174 = sext i32 %143 to i64, !dbg !1641
  %144 = load i64, i64* %bytes.addr.i.i165, align 8, !dbg !1641
  %cmp1.i.i175 = icmp ult i64 %conv.i.i174, %144, !dbg !1641
  br label %land.end.i.i180

land.end.i.i180:                                  ; preds = %land.rhs.i.i176, %if.then49
  %145 = phi i1 [ false, %if.then49 ], [ %cmp1.i.i175, %land.rhs.i.i176 ], !dbg !1642
  %lnot.i.i177 = xor i1 %145, true, !dbg !1641
  %lnot.ext.i.i178 = zext i1 %145 to i32, !dbg !1641
  %conv4.i.i179 = sext i32 %lnot.ext.i.i178 to i64, !dbg !1641
  br i1 %145, label %if.then.i.i181, label %if.end10.i.i196, !dbg !1643

if.then.i.i181:                                   ; preds = %land.end.i.i180
  %146 = load i64, i64* %bytes.addr.i.i165, align 8, !dbg !1644
  %147 = call i1 @llvm.is.constant.i64(i64 %146) #8, !dbg !1645
  br i1 %147, label %if.else.i.i184, label %if.then5.i.i182, !dbg !1646

if.then5.i.i182:                                  ; preds = %if.then.i.i181
  %148 = load i32, i32* %sz.i.i167, align 4, !dbg !1647
  %149 = load i64, i64* %bytes.addr.i.i165, align 8, !dbg !1648
  call void @copy_overflow(i32 %148, i64 %149) #10, !dbg !1649
  br label %if.end9.i.i188, !dbg !1649

if.else.i.i184:                                   ; preds = %if.then.i.i181
  %150 = load i8, i8* %is_source.addr.i.i166, align 1, !dbg !1650
  %tobool6.i.i183 = trunc i8 %150 to i1, !dbg !1650
  br i1 %tobool6.i.i183, label %if.then7.i.i185, label %if.else8.i.i186, !dbg !1651

if.then7.i.i185:                                  ; preds = %if.else.i.i184
  call void @__bad_copy_from() #10, !dbg !1652
  br label %if.end.i.i187, !dbg !1652

if.else8.i.i186:                                  ; preds = %if.else.i.i184
  call void @__bad_copy_to() #10, !dbg !1653
  br label %if.end.i.i187

if.end.i.i187:                                    ; preds = %if.else8.i.i186, %if.then7.i.i185
  br label %if.end9.i.i188

if.end9.i.i188:                                   ; preds = %if.end.i.i187, %if.then5.i.i182
  store i1 false, i1* %retval.i.i163, align 1, !dbg !1654
  br label %check_copy_size.exit.i210, !dbg !1654

if.end10.i.i196:                                  ; preds = %land.end.i.i180
  %151 = load i64, i64* %bytes.addr.i.i165, align 8, !dbg !1378
  %cmp11.i.i189 = icmp ugt i64 %151, 2147483647, !dbg !1378
  %lnot13.i.i190 = xor i1 %cmp11.i.i189, true, !dbg !1378
  %lnot.ext16.i.i191 = zext i1 %cmp11.i.i189 to i32, !dbg !1378
  store i32 %lnot.ext16.i.i191, i32* %__ret_warn_on.i.i168, align 4, !dbg !1378
  %152 = load i32, i32* %__ret_warn_on.i.i168, align 4, !dbg !1655
  %tobool17.i.i192 = icmp ne i32 %152, 0, !dbg !1655
  %lnot18.i.i193 = xor i1 %tobool17.i.i192, true, !dbg !1655
  %lnot.ext21.i.i194 = zext i1 %tobool17.i.i192 to i32, !dbg !1655
  %conv22.i.i195 = sext i32 %lnot.ext21.i.i194 to i64, !dbg !1655
  br i1 %tobool17.i.i192, label %if.then24.i.i197, label %if.end31.i.i203, !dbg !1378

if.then24.i.i197:                                 ; preds = %if.end10.i.i196
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !1656, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !1657, !srcloc !1507
  br label %if.end31.i.i203, !dbg !1658

if.end31.i.i203:                                  ; preds = %if.then24.i.i197, %if.end10.i.i196
  %153 = load i32, i32* %__ret_warn_on.i.i168, align 4, !dbg !1378
  %tobool32.i.i198 = icmp ne i32 %153, 0, !dbg !1378
  %lnot33.i.i199 = xor i1 %tobool32.i.i198, true, !dbg !1378
  %lnot.ext36.i.i200 = zext i1 %tobool32.i.i198 to i32, !dbg !1378
  %conv37.i.i201 = sext i32 %lnot.ext36.i.i200 to i64, !dbg !1378
  store i64 %conv37.i.i201, i64* %tmp.i.i169, align 8, !dbg !1655
  %154 = load i64, i64* %tmp.i.i169, align 8, !dbg !1378
  %tobool38.i.i202 = icmp ne i64 %154, 0, !dbg !1659
  br i1 %tobool38.i.i202, label %if.then39.i.i204, label %if.end40.i.i206, !dbg !1660

if.then39.i.i204:                                 ; preds = %if.end31.i.i203
  store i1 false, i1* %retval.i.i163, align 1, !dbg !1661
  br label %check_copy_size.exit.i210, !dbg !1661

if.end40.i.i206:                                  ; preds = %if.end31.i.i203
  %155 = load i8*, i8** %addr.addr.i.i164, align 8, !dbg !1662
  %156 = load i64, i64* %bytes.addr.i.i165, align 8, !dbg !1663
  %157 = load i8, i8* %is_source.addr.i.i166, align 1, !dbg !1664
  %tobool41.i.i205 = trunc i8 %157 to i1, !dbg !1664
  call void @check_object_size(i8* %155, i64 %156, i1 zeroext %tobool41.i.i205) #10, !dbg !1665
  store i1 true, i1* %retval.i.i163, align 1, !dbg !1666
  br label %check_copy_size.exit.i210, !dbg !1666

check_copy_size.exit.i210:                        ; preds = %if.end40.i.i206, %if.then39.i.i204, %if.end9.i.i188
  %158 = load i1, i1* %retval.i.i163, align 1, !dbg !1667
  %lnot.i207 = xor i1 %158, true, !dbg !1640
  %lnot.ext.i208 = zext i1 %158 to i32, !dbg !1640
  %conv.i209 = sext i32 %lnot.ext.i208 to i64, !dbg !1640
  br i1 %158, label %if.then.i212, label %copy_to_user.exit213, !dbg !1668

if.then.i212:                                     ; preds = %check_copy_size.exit.i210
  %159 = load i8*, i8** %to.addr.i170, align 8, !dbg !1669
  %160 = load i8*, i8** %from.addr.i171, align 8, !dbg !1670
  %161 = load i64, i64* %n.addr.i172, align 8, !dbg !1671
  %call2.i211 = call i64 @_copy_to_user(i8* %159, i8* %160, i64 %161) #10, !dbg !1672
  store i64 %call2.i211, i64* %n.addr.i172, align 8, !dbg !1673
  br label %copy_to_user.exit213, !dbg !1674

copy_to_user.exit213:                             ; preds = %check_copy_size.exit.i210, %if.then.i212
  %162 = load i64, i64* %n.addr.i172, align 8, !dbg !1675
  %tobool57 = icmp ne i64 %162, 0, !dbg !1676
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !1677

if.then58:                                        ; preds = %copy_to_user.exit213
  store i32 -14, i32* %retval, align 4, !dbg !1678
  br label %return, !dbg !1678

if.end59:                                         ; preds = %copy_to_user.exit213
  br label %if.end60, !dbg !1679

if.end60:                                         ; preds = %if.end59, %land.lhs.true, %if.end45
  store i32 0, i32* %retval, align 4, !dbg !1680
  br label %return, !dbg !1680

return:                                           ; preds = %if.end60, %if.then58, %if.then44, %if.then35, %if.then26, %if.then21, %if.then10
  %163 = load i32, i32* %retval, align 4, !dbg !1681
  ret i32 %163, !dbg !1681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_set_cmap(%struct.fb_cmap* %cmap, %struct.fb_info* %info) #0 !dbg !1682 {
entry:
  %retval = alloca i32, align 4
  %cmap.addr = alloca %struct.fb_cmap*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %rc = alloca i32, align 4
  %red = alloca i16*, align 8
  %green = alloca i16*, align 8
  %blue = alloca i16*, align 8
  %transp = alloca i16*, align 8
  %hred = alloca i32, align 4
  %hgreen = alloca i32, align 4
  %hblue = alloca i32, align 4
  %htransp = alloca i32, align 4
  store %struct.fb_cmap* %cmap, %struct.fb_cmap** %cmap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap** %cmap.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5872, metadata !DIExpression()), !dbg !5873
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5874, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.declare(metadata i32* %start, metadata !5876, metadata !DIExpression()), !dbg !5877
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5878, metadata !DIExpression()), !dbg !5879
  store i32 0, i32* %rc, align 4, !dbg !5879
  call void @llvm.dbg.declare(metadata i16** %red, metadata !5880, metadata !DIExpression()), !dbg !5882
  call void @llvm.dbg.declare(metadata i16** %green, metadata !5883, metadata !DIExpression()), !dbg !5884
  call void @llvm.dbg.declare(metadata i16** %blue, metadata !5885, metadata !DIExpression()), !dbg !5886
  call void @llvm.dbg.declare(metadata i16** %transp, metadata !5887, metadata !DIExpression()), !dbg !5888
  call void @llvm.dbg.declare(metadata i32* %hred, metadata !5889, metadata !DIExpression()), !dbg !5891
  call void @llvm.dbg.declare(metadata i32* %hgreen, metadata !5892, metadata !DIExpression()), !dbg !5893
  call void @llvm.dbg.declare(metadata i32* %hblue, metadata !5894, metadata !DIExpression()), !dbg !5895
  call void @llvm.dbg.declare(metadata i32* %htransp, metadata !5896, metadata !DIExpression()), !dbg !5897
  store i32 65535, i32* %htransp, align 4, !dbg !5897
  %0 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5898
  %red1 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %0, i32 0, i32 2, !dbg !5899
  %1 = load i16*, i16** %red1, align 8, !dbg !5899
  store i16* %1, i16** %red, align 8, !dbg !5900
  %2 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5901
  %green2 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %2, i32 0, i32 3, !dbg !5902
  %3 = load i16*, i16** %green2, align 8, !dbg !5902
  store i16* %3, i16** %green, align 8, !dbg !5903
  %4 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5904
  %blue3 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %4, i32 0, i32 4, !dbg !5905
  %5 = load i16*, i16** %blue3, align 8, !dbg !5905
  store i16* %5, i16** %blue, align 8, !dbg !5906
  %6 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5907
  %transp4 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %6, i32 0, i32 5, !dbg !5908
  %7 = load i16*, i16** %transp4, align 8, !dbg !5908
  store i16* %7, i16** %transp, align 8, !dbg !5909
  %8 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5910
  %start5 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %8, i32 0, i32 0, !dbg !5911
  %9 = load i32, i32* %start5, align 8, !dbg !5911
  store i32 %9, i32* %start, align 4, !dbg !5912
  %10 = load i32, i32* %start, align 4, !dbg !5913
  %cmp = icmp slt i32 %10, 0, !dbg !5915
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5916

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5917
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 20, !dbg !5918
  %12 = load %struct.fb_ops*, %struct.fb_ops** %fbops, align 8, !dbg !5918
  %fb_setcolreg = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %12, i32 0, i32 7, !dbg !5919
  %13 = load i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)** %fb_setcolreg, align 8, !dbg !5919
  %tobool = icmp ne i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* %13, null, !dbg !5917
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5920

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5921
  %fbops6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 20, !dbg !5922
  %15 = load %struct.fb_ops*, %struct.fb_ops** %fbops6, align 8, !dbg !5922
  %fb_setcmap = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %15, i32 0, i32 8, !dbg !5923
  %fb_setcmap7 = bitcast {}** %fb_setcmap to i32 (%struct.fb_cmap*, %struct.fb_info*)**, !dbg !5923
  %16 = load i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)** %fb_setcmap7, align 8, !dbg !5923
  %tobool8 = icmp ne i32 (%struct.fb_cmap*, %struct.fb_info*)* %16, null, !dbg !5921
  br i1 %tobool8, label %if.end, label %if.then, !dbg !5924

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5925
  br label %return, !dbg !5925

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %17 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5926
  %fbops9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 20, !dbg !5928
  %18 = load %struct.fb_ops*, %struct.fb_ops** %fbops9, align 8, !dbg !5928
  %fb_setcmap10 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %18, i32 0, i32 8, !dbg !5929
  %fb_setcmap11 = bitcast {}** %fb_setcmap10 to i32 (%struct.fb_cmap*, %struct.fb_info*)**, !dbg !5929
  %19 = load i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)** %fb_setcmap11, align 8, !dbg !5929
  %tobool12 = icmp ne i32 (%struct.fb_cmap*, %struct.fb_info*)* %19, null, !dbg !5926
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !5930

if.then13:                                        ; preds = %if.end
  %20 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5931
  %fbops14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 20, !dbg !5933
  %21 = load %struct.fb_ops*, %struct.fb_ops** %fbops14, align 8, !dbg !5933
  %fb_setcmap15 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %21, i32 0, i32 8, !dbg !5934
  %fb_setcmap16 = bitcast {}** %fb_setcmap15 to i32 (%struct.fb_cmap*, %struct.fb_info*)**, !dbg !5934
  %22 = load i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)** %fb_setcmap16, align 8, !dbg !5934
  %23 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5935
  %24 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5936
  %call = call i32 %22(%struct.fb_cmap* %23, %struct.fb_info* %24) #7, !dbg !5931
  store i32 %call, i32* %rc, align 4, !dbg !5937
  br label %if.end34, !dbg !5938

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5939
  br label %for.cond, !dbg !5942

for.cond:                                         ; preds = %for.inc, %if.else
  %25 = load i32, i32* %i, align 4, !dbg !5943
  %26 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5945
  %len = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %26, i32 0, i32 1, !dbg !5946
  %27 = load i32, i32* %len, align 4, !dbg !5946
  %cmp17 = icmp ult i32 %25, %27, !dbg !5947
  br i1 %cmp17, label %for.body, label %for.end, !dbg !5948

for.body:                                         ; preds = %for.cond
  %28 = load i16*, i16** %red, align 8, !dbg !5949
  %incdec.ptr = getelementptr i16, i16* %28, i32 1, !dbg !5949
  store i16* %incdec.ptr, i16** %red, align 8, !dbg !5949
  %29 = load i16, i16* %28, align 2, !dbg !5951
  %conv = zext i16 %29 to i32, !dbg !5951
  store i32 %conv, i32* %hred, align 4, !dbg !5952
  %30 = load i16*, i16** %green, align 8, !dbg !5953
  %incdec.ptr18 = getelementptr i16, i16* %30, i32 1, !dbg !5953
  store i16* %incdec.ptr18, i16** %green, align 8, !dbg !5953
  %31 = load i16, i16* %30, align 2, !dbg !5954
  %conv19 = zext i16 %31 to i32, !dbg !5954
  store i32 %conv19, i32* %hgreen, align 4, !dbg !5955
  %32 = load i16*, i16** %blue, align 8, !dbg !5956
  %incdec.ptr20 = getelementptr i16, i16* %32, i32 1, !dbg !5956
  store i16* %incdec.ptr20, i16** %blue, align 8, !dbg !5956
  %33 = load i16, i16* %32, align 2, !dbg !5957
  %conv21 = zext i16 %33 to i32, !dbg !5957
  store i32 %conv21, i32* %hblue, align 4, !dbg !5958
  %34 = load i16*, i16** %transp, align 8, !dbg !5959
  %tobool22 = icmp ne i16* %34, null, !dbg !5959
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !5961

if.then23:                                        ; preds = %for.body
  %35 = load i16*, i16** %transp, align 8, !dbg !5962
  %incdec.ptr24 = getelementptr i16, i16* %35, i32 1, !dbg !5962
  store i16* %incdec.ptr24, i16** %transp, align 8, !dbg !5962
  %36 = load i16, i16* %35, align 2, !dbg !5963
  %conv25 = zext i16 %36 to i32, !dbg !5963
  store i32 %conv25, i32* %htransp, align 4, !dbg !5964
  br label %if.end26, !dbg !5965

if.end26:                                         ; preds = %if.then23, %for.body
  %37 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5966
  %fbops27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 20, !dbg !5968
  %38 = load %struct.fb_ops*, %struct.fb_ops** %fbops27, align 8, !dbg !5968
  %fb_setcolreg28 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %38, i32 0, i32 7, !dbg !5969
  %39 = load i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)** %fb_setcolreg28, align 8, !dbg !5969
  %40 = load i32, i32* %start, align 4, !dbg !5970
  %inc = add i32 %40, 1, !dbg !5970
  store i32 %inc, i32* %start, align 4, !dbg !5970
  %41 = load i32, i32* %hred, align 4, !dbg !5971
  %42 = load i32, i32* %hgreen, align 4, !dbg !5972
  %43 = load i32, i32* %hblue, align 4, !dbg !5973
  %44 = load i32, i32* %htransp, align 4, !dbg !5974
  %45 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5975
  %call29 = call i32 %39(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, %struct.fb_info* %45) #7, !dbg !5966
  %tobool30 = icmp ne i32 %call29, 0, !dbg !5966
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5976

if.then31:                                        ; preds = %if.end26
  br label %for.end, !dbg !5977

if.end32:                                         ; preds = %if.end26
  br label %for.inc, !dbg !5978

for.inc:                                          ; preds = %if.end32
  %46 = load i32, i32* %i, align 4, !dbg !5979
  %inc33 = add i32 %46, 1, !dbg !5979
  store i32 %inc33, i32* %i, align 4, !dbg !5979
  br label %for.cond, !dbg !5980, !llvm.loop !5981

for.end:                                          ; preds = %if.then31, %for.cond
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.then13
  %47 = load i32, i32* %rc, align 4, !dbg !5983
  %cmp35 = icmp eq i32 %47, 0, !dbg !5985
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !5986

if.then37:                                        ; preds = %if.end34
  %48 = load %struct.fb_cmap*, %struct.fb_cmap** %cmap.addr, align 8, !dbg !5987
  %49 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5988
  %cmap38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 12, !dbg !5989
  %call39 = call i32 @fb_copy_cmap(%struct.fb_cmap* %48, %struct.fb_cmap* %cmap38) #7, !dbg !5990
  br label %if.end40, !dbg !5990

if.end40:                                         ; preds = %if.then37, %if.end34
  %50 = load i32, i32* %rc, align 4, !dbg !5991
  store i32 %50, i32* %retval, align 4, !dbg !5992
  br label %return, !dbg !5992

return:                                           ; preds = %if.end40, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !5993
  ret i32 %51, !dbg !5993
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_set_user_cmap(%struct.fb_cmap_user* %cmap, %struct.fb_info* %info) #0 !dbg !5994 {
entry:
  %retval.i.i139 = alloca i1, align 1
  %addr.addr.i.i140 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i140, metadata !1350, metadata !DIExpression()), !dbg !5997
  %bytes.addr.i.i141 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i141, metadata !1369, metadata !DIExpression()), !dbg !6003
  %is_source.addr.i.i142 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i142, metadata !1371, metadata !DIExpression()), !dbg !6004
  %sz.i.i143 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i143, metadata !1373, metadata !DIExpression()), !dbg !6005
  %__ret_warn_on.i.i144 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i144, metadata !1375, metadata !DIExpression()), !dbg !6006
  %tmp.i.i145 = alloca i64, align 8
  %to.addr.i146 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i146, metadata !6007, metadata !DIExpression()), !dbg !6008
  %from.addr.i147 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i147, metadata !6009, metadata !DIExpression()), !dbg !6010
  %n.addr.i148 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i148, metadata !6011, metadata !DIExpression()), !dbg !6012
  %retval.i.i88 = alloca i1, align 1
  %addr.addr.i.i89 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i89, metadata !1350, metadata !DIExpression()), !dbg !6013
  %bytes.addr.i.i90 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i90, metadata !1369, metadata !DIExpression()), !dbg !6016
  %is_source.addr.i.i91 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i91, metadata !1371, metadata !DIExpression()), !dbg !6017
  %sz.i.i92 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i92, metadata !1373, metadata !DIExpression()), !dbg !6018
  %__ret_warn_on.i.i93 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i93, metadata !1375, metadata !DIExpression()), !dbg !6019
  %tmp.i.i94 = alloca i64, align 8
  %to.addr.i95 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i95, metadata !6007, metadata !DIExpression()), !dbg !6020
  %from.addr.i96 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i96, metadata !6009, metadata !DIExpression()), !dbg !6021
  %n.addr.i97 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i97, metadata !6011, metadata !DIExpression()), !dbg !6022
  %retval.i.i37 = alloca i1, align 1
  %addr.addr.i.i38 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i38, metadata !1350, metadata !DIExpression()), !dbg !6023
  %bytes.addr.i.i39 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i39, metadata !1369, metadata !DIExpression()), !dbg !6026
  %is_source.addr.i.i40 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i40, metadata !1371, metadata !DIExpression()), !dbg !6027
  %sz.i.i41 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i41, metadata !1373, metadata !DIExpression()), !dbg !6028
  %__ret_warn_on.i.i42 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i42, metadata !1375, metadata !DIExpression()), !dbg !6029
  %tmp.i.i43 = alloca i64, align 8
  %to.addr.i44 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i44, metadata !6007, metadata !DIExpression()), !dbg !6030
  %from.addr.i45 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i45, metadata !6009, metadata !DIExpression()), !dbg !6031
  %n.addr.i46 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i46, metadata !6011, metadata !DIExpression()), !dbg !6032
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !1350, metadata !DIExpression()), !dbg !6033
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !1369, metadata !DIExpression()), !dbg !6036
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !1371, metadata !DIExpression()), !dbg !6037
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !1373, metadata !DIExpression()), !dbg !6038
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !1375, metadata !DIExpression()), !dbg !6039
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !6007, metadata !DIExpression()), !dbg !6040
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !6009, metadata !DIExpression()), !dbg !6041
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !6011, metadata !DIExpression()), !dbg !6042
  %retval = alloca i32, align 4
  %cmap.addr = alloca %struct.fb_cmap_user*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %rc = alloca i32, align 4
  %size = alloca i32, align 4
  %umap = alloca %struct.fb_cmap, align 8
  store %struct.fb_cmap_user* %cmap, %struct.fb_cmap_user** %cmap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cmap_user** %cmap.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6045, metadata !DIExpression()), !dbg !6046
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6047, metadata !DIExpression()), !dbg !6048
  call void @llvm.dbg.declare(metadata i32* %size, metadata !6049, metadata !DIExpression()), !dbg !6050
  %0 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6051
  %len = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %0, i32 0, i32 1, !dbg !6052
  %1 = load i32, i32* %len, align 4, !dbg !6052
  %conv = zext i32 %1 to i64, !dbg !6051
  %mul = mul i64 %conv, 2, !dbg !6053
  %conv1 = trunc i64 %mul to i32, !dbg !6051
  store i32 %conv1, i32* %size, align 4, !dbg !6050
  call void @llvm.dbg.declare(metadata %struct.fb_cmap* %umap, metadata !6054, metadata !DIExpression()), !dbg !6055
  %2 = load i32, i32* %size, align 4, !dbg !6056
  %cmp = icmp slt i32 %2, 0, !dbg !6058
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6059

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %size, align 4, !dbg !6060
  %4 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6061
  %len3 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %4, i32 0, i32 1, !dbg !6062
  %5 = load i32, i32* %len3, align 4, !dbg !6062
  %cmp4 = icmp ult i32 %3, %5, !dbg !6063
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6064

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -7, i32* %retval, align 4, !dbg !6065
  br label %return, !dbg !6065

if.end:                                           ; preds = %lor.lhs.false
  %6 = bitcast %struct.fb_cmap* %umap to i8*, !dbg !6066
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 40, i1 false), !dbg !6066
  %7 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6067
  %len6 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %7, i32 0, i32 1, !dbg !6068
  %8 = load i32, i32* %len6, align 4, !dbg !6068
  %9 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6069
  %transp = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %9, i32 0, i32 5, !dbg !6070
  %10 = load i16*, i16** %transp, align 8, !dbg !6070
  %cmp7 = icmp ne i16* %10, null, !dbg !6071
  %conv8 = zext i1 %cmp7 to i32, !dbg !6071
  %call = call i32 @fb_alloc_cmap_gfp(%struct.fb_cmap* %umap, i32 %8, i32 %conv8, i32 3264) #7, !dbg !6072
  store i32 %call, i32* %rc, align 4, !dbg !6073
  %11 = load i32, i32* %rc, align 4, !dbg !6074
  %tobool = icmp ne i32 %11, 0, !dbg !6074
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !6076

if.then9:                                         ; preds = %if.end
  %12 = load i32, i32* %rc, align 4, !dbg !6077
  store i32 %12, i32* %retval, align 4, !dbg !6078
  br label %return, !dbg !6078

if.end10:                                         ; preds = %if.end
  %red = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %umap, i32 0, i32 2, !dbg !6079
  %13 = load i16*, i16** %red, align 8, !dbg !6079
  %14 = bitcast i16* %13 to i8*, !dbg !6080
  %15 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6081
  %red11 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %15, i32 0, i32 2, !dbg !6082
  %16 = load i16*, i16** %red11, align 8, !dbg !6082
  %17 = bitcast i16* %16 to i8*, !dbg !6081
  %18 = load i32, i32* %size, align 4, !dbg !6083
  %conv12 = sext i32 %18 to i64, !dbg !6083
  store i8* %14, i8** %to.addr.i, align 8
  store i8* %17, i8** %from.addr.i, align 8
  store i64 %conv12, i64* %n.addr.i, align 8
  %19 = load i8*, i8** %to.addr.i, align 8, !dbg !6084
  %20 = load i64, i64* %n.addr.i, align 8, !dbg !6084
  store i8* %19, i8** %addr.addr.i.i, align 8
  store i64 %20, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !6038
  %21 = load i32, i32* %sz.i.i, align 4, !dbg !6085
  %cmp.i.i = icmp sge i32 %21, 0, !dbg !6085
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6085

land.rhs.i.i:                                     ; preds = %if.end10
  %22 = load i32, i32* %sz.i.i, align 4, !dbg !6085
  %conv.i.i = sext i32 %22 to i64, !dbg !6085
  %23 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6085
  %cmp1.i.i = icmp ult i64 %conv.i.i, %23, !dbg !6085
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end10
  %24 = phi i1 [ false, %if.end10 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6086
  %lnot.i.i = xor i1 %24, true, !dbg !6085
  %lnot.ext.i.i = zext i1 %24 to i32, !dbg !6085
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6085
  br i1 %24, label %if.then.i.i, label %if.end10.i.i, !dbg !6087

if.then.i.i:                                      ; preds = %land.end.i.i
  %25 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6088
  %26 = call i1 @llvm.is.constant.i64(i64 %25) #8, !dbg !6089
  br i1 %26, label %if.else.i.i, label %if.then5.i.i, !dbg !6090

if.then5.i.i:                                     ; preds = %if.then.i.i
  %27 = load i32, i32* %sz.i.i, align 4, !dbg !6091
  %28 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6092
  call void @copy_overflow(i32 %27, i64 %28) #10, !dbg !6093
  br label %if.end9.i.i, !dbg !6093

if.else.i.i:                                      ; preds = %if.then.i.i
  %29 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6094
  %tobool6.i.i = trunc i8 %29 to i1, !dbg !6094
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6095

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #10, !dbg !6096
  br label %if.end.i.i, !dbg !6096

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #10, !dbg !6097
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6098
  br label %check_copy_size.exit.i, !dbg !6098

if.end10.i.i:                                     ; preds = %land.end.i.i
  %30 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6039
  %cmp11.i.i = icmp ugt i64 %30, 2147483647, !dbg !6039
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !6039
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !6039
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !6039
  %31 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6099
  %tobool17.i.i = icmp ne i32 %31, 0, !dbg !6099
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6099
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6099
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6099
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !6039

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !6100, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !6101, !srcloc !1507
  br label %if.end31.i.i, !dbg !6102

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %32 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6039
  %tobool32.i.i = icmp ne i32 %32, 0, !dbg !6039
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !6039
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !6039
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !6039
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6099
  %33 = load i64, i64* %tmp.i.i, align 8, !dbg !6039
  %tobool38.i.i = icmp ne i64 %33, 0, !dbg !6103
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6104

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6105
  br label %check_copy_size.exit.i, !dbg !6105

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %34 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6106
  %35 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6107
  %36 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6108
  %tobool41.i.i = trunc i8 %36 to i1, !dbg !6108
  call void @check_object_size(i8* %34, i64 %35, i1 zeroext %tobool41.i.i) #10, !dbg !6109
  store i1 true, i1* %retval.i.i, align 1, !dbg !6110
  br label %check_copy_size.exit.i, !dbg !6110

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %37 = load i1, i1* %retval.i.i, align 1, !dbg !6111
  %lnot.i = xor i1 %37, true, !dbg !6084
  %lnot.ext.i = zext i1 %37 to i32, !dbg !6084
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6084
  br i1 %37, label %if.then.i, label %copy_from_user.exit, !dbg !6112

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %38 = load i8*, i8** %to.addr.i, align 8, !dbg !6113
  %39 = load i8*, i8** %from.addr.i, align 8, !dbg !6114
  %40 = load i64, i64* %n.addr.i, align 8, !dbg !6115
  %call2.i = call i64 @_copy_from_user(i8* %38, i8* %39, i64 %40) #10, !dbg !6116
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6117
  br label %copy_from_user.exit, !dbg !6118

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %41 = load i64, i64* %n.addr.i, align 8, !dbg !6119
  %tobool14 = icmp ne i64 %41, 0, !dbg !6120
  br i1 %tobool14, label %if.then33, label %lor.lhs.false15, !dbg !6121

lor.lhs.false15:                                  ; preds = %copy_from_user.exit
  %green = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %umap, i32 0, i32 3, !dbg !6122
  %42 = load i16*, i16** %green, align 8, !dbg !6122
  %43 = bitcast i16* %42 to i8*, !dbg !6123
  %44 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6124
  %green16 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %44, i32 0, i32 3, !dbg !6125
  %45 = load i16*, i16** %green16, align 8, !dbg !6125
  %46 = bitcast i16* %45 to i8*, !dbg !6124
  %47 = load i32, i32* %size, align 4, !dbg !6126
  %conv17 = sext i32 %47 to i64, !dbg !6126
  store i8* %43, i8** %to.addr.i44, align 8
  store i8* %46, i8** %from.addr.i45, align 8
  store i64 %conv17, i64* %n.addr.i46, align 8
  %48 = load i8*, i8** %to.addr.i44, align 8, !dbg !6127
  %49 = load i64, i64* %n.addr.i46, align 8, !dbg !6127
  store i8* %48, i8** %addr.addr.i.i38, align 8
  store i64 %49, i64* %bytes.addr.i.i39, align 8
  store i8 0, i8* %is_source.addr.i.i40, align 1
  store i32 -1, i32* %sz.i.i41, align 4, !dbg !6028
  %50 = load i32, i32* %sz.i.i41, align 4, !dbg !6128
  %cmp.i.i47 = icmp sge i32 %50, 0, !dbg !6128
  br i1 %cmp.i.i47, label %land.rhs.i.i50, label %land.end.i.i54, !dbg !6128

land.rhs.i.i50:                                   ; preds = %lor.lhs.false15
  %51 = load i32, i32* %sz.i.i41, align 4, !dbg !6128
  %conv.i.i48 = sext i32 %51 to i64, !dbg !6128
  %52 = load i64, i64* %bytes.addr.i.i39, align 8, !dbg !6128
  %cmp1.i.i49 = icmp ult i64 %conv.i.i48, %52, !dbg !6128
  br label %land.end.i.i54

land.end.i.i54:                                   ; preds = %land.rhs.i.i50, %lor.lhs.false15
  %53 = phi i1 [ false, %lor.lhs.false15 ], [ %cmp1.i.i49, %land.rhs.i.i50 ], !dbg !6129
  %lnot.i.i51 = xor i1 %53, true, !dbg !6128
  %lnot.ext.i.i52 = zext i1 %53 to i32, !dbg !6128
  %conv4.i.i53 = sext i32 %lnot.ext.i.i52 to i64, !dbg !6128
  br i1 %53, label %if.then.i.i55, label %if.end10.i.i70, !dbg !6130

if.then.i.i55:                                    ; preds = %land.end.i.i54
  %54 = load i64, i64* %bytes.addr.i.i39, align 8, !dbg !6131
  %55 = call i1 @llvm.is.constant.i64(i64 %54) #8, !dbg !6132
  br i1 %55, label %if.else.i.i58, label %if.then5.i.i56, !dbg !6133

if.then5.i.i56:                                   ; preds = %if.then.i.i55
  %56 = load i32, i32* %sz.i.i41, align 4, !dbg !6134
  %57 = load i64, i64* %bytes.addr.i.i39, align 8, !dbg !6135
  call void @copy_overflow(i32 %56, i64 %57) #10, !dbg !6136
  br label %if.end9.i.i62, !dbg !6136

if.else.i.i58:                                    ; preds = %if.then.i.i55
  %58 = load i8, i8* %is_source.addr.i.i40, align 1, !dbg !6137
  %tobool6.i.i57 = trunc i8 %58 to i1, !dbg !6137
  br i1 %tobool6.i.i57, label %if.then7.i.i59, label %if.else8.i.i60, !dbg !6138

if.then7.i.i59:                                   ; preds = %if.else.i.i58
  call void @__bad_copy_from() #10, !dbg !6139
  br label %if.end.i.i61, !dbg !6139

if.else8.i.i60:                                   ; preds = %if.else.i.i58
  call void @__bad_copy_to() #10, !dbg !6140
  br label %if.end.i.i61

if.end.i.i61:                                     ; preds = %if.else8.i.i60, %if.then7.i.i59
  br label %if.end9.i.i62

if.end9.i.i62:                                    ; preds = %if.end.i.i61, %if.then5.i.i56
  store i1 false, i1* %retval.i.i37, align 1, !dbg !6141
  br label %check_copy_size.exit.i84, !dbg !6141

if.end10.i.i70:                                   ; preds = %land.end.i.i54
  %59 = load i64, i64* %bytes.addr.i.i39, align 8, !dbg !6029
  %cmp11.i.i63 = icmp ugt i64 %59, 2147483647, !dbg !6029
  %lnot13.i.i64 = xor i1 %cmp11.i.i63, true, !dbg !6029
  %lnot.ext16.i.i65 = zext i1 %cmp11.i.i63 to i32, !dbg !6029
  store i32 %lnot.ext16.i.i65, i32* %__ret_warn_on.i.i42, align 4, !dbg !6029
  %60 = load i32, i32* %__ret_warn_on.i.i42, align 4, !dbg !6142
  %tobool17.i.i66 = icmp ne i32 %60, 0, !dbg !6142
  %lnot18.i.i67 = xor i1 %tobool17.i.i66, true, !dbg !6142
  %lnot.ext21.i.i68 = zext i1 %tobool17.i.i66 to i32, !dbg !6142
  %conv22.i.i69 = sext i32 %lnot.ext21.i.i68 to i64, !dbg !6142
  br i1 %tobool17.i.i66, label %if.then24.i.i71, label %if.end31.i.i77, !dbg !6029

if.then24.i.i71:                                  ; preds = %if.end10.i.i70
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !6143, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !6144, !srcloc !1507
  br label %if.end31.i.i77, !dbg !6145

if.end31.i.i77:                                   ; preds = %if.then24.i.i71, %if.end10.i.i70
  %61 = load i32, i32* %__ret_warn_on.i.i42, align 4, !dbg !6029
  %tobool32.i.i72 = icmp ne i32 %61, 0, !dbg !6029
  %lnot33.i.i73 = xor i1 %tobool32.i.i72, true, !dbg !6029
  %lnot.ext36.i.i74 = zext i1 %tobool32.i.i72 to i32, !dbg !6029
  %conv37.i.i75 = sext i32 %lnot.ext36.i.i74 to i64, !dbg !6029
  store i64 %conv37.i.i75, i64* %tmp.i.i43, align 8, !dbg !6142
  %62 = load i64, i64* %tmp.i.i43, align 8, !dbg !6029
  %tobool38.i.i76 = icmp ne i64 %62, 0, !dbg !6146
  br i1 %tobool38.i.i76, label %if.then39.i.i78, label %if.end40.i.i80, !dbg !6147

if.then39.i.i78:                                  ; preds = %if.end31.i.i77
  store i1 false, i1* %retval.i.i37, align 1, !dbg !6148
  br label %check_copy_size.exit.i84, !dbg !6148

if.end40.i.i80:                                   ; preds = %if.end31.i.i77
  %63 = load i8*, i8** %addr.addr.i.i38, align 8, !dbg !6149
  %64 = load i64, i64* %bytes.addr.i.i39, align 8, !dbg !6150
  %65 = load i8, i8* %is_source.addr.i.i40, align 1, !dbg !6151
  %tobool41.i.i79 = trunc i8 %65 to i1, !dbg !6151
  call void @check_object_size(i8* %63, i64 %64, i1 zeroext %tobool41.i.i79) #10, !dbg !6152
  store i1 true, i1* %retval.i.i37, align 1, !dbg !6153
  br label %check_copy_size.exit.i84, !dbg !6153

check_copy_size.exit.i84:                         ; preds = %if.end40.i.i80, %if.then39.i.i78, %if.end9.i.i62
  %66 = load i1, i1* %retval.i.i37, align 1, !dbg !6154
  %lnot.i81 = xor i1 %66, true, !dbg !6127
  %lnot.ext.i82 = zext i1 %66 to i32, !dbg !6127
  %conv.i83 = sext i32 %lnot.ext.i82 to i64, !dbg !6127
  br i1 %66, label %if.then.i86, label %copy_from_user.exit87, !dbg !6155

if.then.i86:                                      ; preds = %check_copy_size.exit.i84
  %67 = load i8*, i8** %to.addr.i44, align 8, !dbg !6156
  %68 = load i8*, i8** %from.addr.i45, align 8, !dbg !6157
  %69 = load i64, i64* %n.addr.i46, align 8, !dbg !6158
  %call2.i85 = call i64 @_copy_from_user(i8* %67, i8* %68, i64 %69) #10, !dbg !6159
  store i64 %call2.i85, i64* %n.addr.i46, align 8, !dbg !6160
  br label %copy_from_user.exit87, !dbg !6161

copy_from_user.exit87:                            ; preds = %check_copy_size.exit.i84, %if.then.i86
  %70 = load i64, i64* %n.addr.i46, align 8, !dbg !6162
  %tobool19 = icmp ne i64 %70, 0, !dbg !6163
  br i1 %tobool19, label %if.then33, label %lor.lhs.false20, !dbg !6164

lor.lhs.false20:                                  ; preds = %copy_from_user.exit87
  %blue = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %umap, i32 0, i32 4, !dbg !6165
  %71 = load i16*, i16** %blue, align 8, !dbg !6165
  %72 = bitcast i16* %71 to i8*, !dbg !6166
  %73 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6167
  %blue21 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %73, i32 0, i32 4, !dbg !6168
  %74 = load i16*, i16** %blue21, align 8, !dbg !6168
  %75 = bitcast i16* %74 to i8*, !dbg !6167
  %76 = load i32, i32* %size, align 4, !dbg !6169
  %conv22 = sext i32 %76 to i64, !dbg !6169
  store i8* %72, i8** %to.addr.i95, align 8
  store i8* %75, i8** %from.addr.i96, align 8
  store i64 %conv22, i64* %n.addr.i97, align 8
  %77 = load i8*, i8** %to.addr.i95, align 8, !dbg !6170
  %78 = load i64, i64* %n.addr.i97, align 8, !dbg !6170
  store i8* %77, i8** %addr.addr.i.i89, align 8
  store i64 %78, i64* %bytes.addr.i.i90, align 8
  store i8 0, i8* %is_source.addr.i.i91, align 1
  store i32 -1, i32* %sz.i.i92, align 4, !dbg !6018
  %79 = load i32, i32* %sz.i.i92, align 4, !dbg !6171
  %cmp.i.i98 = icmp sge i32 %79, 0, !dbg !6171
  br i1 %cmp.i.i98, label %land.rhs.i.i101, label %land.end.i.i105, !dbg !6171

land.rhs.i.i101:                                  ; preds = %lor.lhs.false20
  %80 = load i32, i32* %sz.i.i92, align 4, !dbg !6171
  %conv.i.i99 = sext i32 %80 to i64, !dbg !6171
  %81 = load i64, i64* %bytes.addr.i.i90, align 8, !dbg !6171
  %cmp1.i.i100 = icmp ult i64 %conv.i.i99, %81, !dbg !6171
  br label %land.end.i.i105

land.end.i.i105:                                  ; preds = %land.rhs.i.i101, %lor.lhs.false20
  %82 = phi i1 [ false, %lor.lhs.false20 ], [ %cmp1.i.i100, %land.rhs.i.i101 ], !dbg !6172
  %lnot.i.i102 = xor i1 %82, true, !dbg !6171
  %lnot.ext.i.i103 = zext i1 %82 to i32, !dbg !6171
  %conv4.i.i104 = sext i32 %lnot.ext.i.i103 to i64, !dbg !6171
  br i1 %82, label %if.then.i.i106, label %if.end10.i.i121, !dbg !6173

if.then.i.i106:                                   ; preds = %land.end.i.i105
  %83 = load i64, i64* %bytes.addr.i.i90, align 8, !dbg !6174
  %84 = call i1 @llvm.is.constant.i64(i64 %83) #8, !dbg !6175
  br i1 %84, label %if.else.i.i109, label %if.then5.i.i107, !dbg !6176

if.then5.i.i107:                                  ; preds = %if.then.i.i106
  %85 = load i32, i32* %sz.i.i92, align 4, !dbg !6177
  %86 = load i64, i64* %bytes.addr.i.i90, align 8, !dbg !6178
  call void @copy_overflow(i32 %85, i64 %86) #10, !dbg !6179
  br label %if.end9.i.i113, !dbg !6179

if.else.i.i109:                                   ; preds = %if.then.i.i106
  %87 = load i8, i8* %is_source.addr.i.i91, align 1, !dbg !6180
  %tobool6.i.i108 = trunc i8 %87 to i1, !dbg !6180
  br i1 %tobool6.i.i108, label %if.then7.i.i110, label %if.else8.i.i111, !dbg !6181

if.then7.i.i110:                                  ; preds = %if.else.i.i109
  call void @__bad_copy_from() #10, !dbg !6182
  br label %if.end.i.i112, !dbg !6182

if.else8.i.i111:                                  ; preds = %if.else.i.i109
  call void @__bad_copy_to() #10, !dbg !6183
  br label %if.end.i.i112

if.end.i.i112:                                    ; preds = %if.else8.i.i111, %if.then7.i.i110
  br label %if.end9.i.i113

if.end9.i.i113:                                   ; preds = %if.end.i.i112, %if.then5.i.i107
  store i1 false, i1* %retval.i.i88, align 1, !dbg !6184
  br label %check_copy_size.exit.i135, !dbg !6184

if.end10.i.i121:                                  ; preds = %land.end.i.i105
  %88 = load i64, i64* %bytes.addr.i.i90, align 8, !dbg !6019
  %cmp11.i.i114 = icmp ugt i64 %88, 2147483647, !dbg !6019
  %lnot13.i.i115 = xor i1 %cmp11.i.i114, true, !dbg !6019
  %lnot.ext16.i.i116 = zext i1 %cmp11.i.i114 to i32, !dbg !6019
  store i32 %lnot.ext16.i.i116, i32* %__ret_warn_on.i.i93, align 4, !dbg !6019
  %89 = load i32, i32* %__ret_warn_on.i.i93, align 4, !dbg !6185
  %tobool17.i.i117 = icmp ne i32 %89, 0, !dbg !6185
  %lnot18.i.i118 = xor i1 %tobool17.i.i117, true, !dbg !6185
  %lnot.ext21.i.i119 = zext i1 %tobool17.i.i117 to i32, !dbg !6185
  %conv22.i.i120 = sext i32 %lnot.ext21.i.i119 to i64, !dbg !6185
  br i1 %tobool17.i.i117, label %if.then24.i.i122, label %if.end31.i.i128, !dbg !6019

if.then24.i.i122:                                 ; preds = %if.end10.i.i121
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !6186, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !6187, !srcloc !1507
  br label %if.end31.i.i128, !dbg !6188

if.end31.i.i128:                                  ; preds = %if.then24.i.i122, %if.end10.i.i121
  %90 = load i32, i32* %__ret_warn_on.i.i93, align 4, !dbg !6019
  %tobool32.i.i123 = icmp ne i32 %90, 0, !dbg !6019
  %lnot33.i.i124 = xor i1 %tobool32.i.i123, true, !dbg !6019
  %lnot.ext36.i.i125 = zext i1 %tobool32.i.i123 to i32, !dbg !6019
  %conv37.i.i126 = sext i32 %lnot.ext36.i.i125 to i64, !dbg !6019
  store i64 %conv37.i.i126, i64* %tmp.i.i94, align 8, !dbg !6185
  %91 = load i64, i64* %tmp.i.i94, align 8, !dbg !6019
  %tobool38.i.i127 = icmp ne i64 %91, 0, !dbg !6189
  br i1 %tobool38.i.i127, label %if.then39.i.i129, label %if.end40.i.i131, !dbg !6190

if.then39.i.i129:                                 ; preds = %if.end31.i.i128
  store i1 false, i1* %retval.i.i88, align 1, !dbg !6191
  br label %check_copy_size.exit.i135, !dbg !6191

if.end40.i.i131:                                  ; preds = %if.end31.i.i128
  %92 = load i8*, i8** %addr.addr.i.i89, align 8, !dbg !6192
  %93 = load i64, i64* %bytes.addr.i.i90, align 8, !dbg !6193
  %94 = load i8, i8* %is_source.addr.i.i91, align 1, !dbg !6194
  %tobool41.i.i130 = trunc i8 %94 to i1, !dbg !6194
  call void @check_object_size(i8* %92, i64 %93, i1 zeroext %tobool41.i.i130) #10, !dbg !6195
  store i1 true, i1* %retval.i.i88, align 1, !dbg !6196
  br label %check_copy_size.exit.i135, !dbg !6196

check_copy_size.exit.i135:                        ; preds = %if.end40.i.i131, %if.then39.i.i129, %if.end9.i.i113
  %95 = load i1, i1* %retval.i.i88, align 1, !dbg !6197
  %lnot.i132 = xor i1 %95, true, !dbg !6170
  %lnot.ext.i133 = zext i1 %95 to i32, !dbg !6170
  %conv.i134 = sext i32 %lnot.ext.i133 to i64, !dbg !6170
  br i1 %95, label %if.then.i137, label %copy_from_user.exit138, !dbg !6198

if.then.i137:                                     ; preds = %check_copy_size.exit.i135
  %96 = load i8*, i8** %to.addr.i95, align 8, !dbg !6199
  %97 = load i8*, i8** %from.addr.i96, align 8, !dbg !6200
  %98 = load i64, i64* %n.addr.i97, align 8, !dbg !6201
  %call2.i136 = call i64 @_copy_from_user(i8* %96, i8* %97, i64 %98) #10, !dbg !6202
  store i64 %call2.i136, i64* %n.addr.i97, align 8, !dbg !6203
  br label %copy_from_user.exit138, !dbg !6204

copy_from_user.exit138:                           ; preds = %check_copy_size.exit.i135, %if.then.i137
  %99 = load i64, i64* %n.addr.i97, align 8, !dbg !6205
  %tobool24 = icmp ne i64 %99, 0, !dbg !6206
  br i1 %tobool24, label %if.then33, label %lor.lhs.false25, !dbg !6207

lor.lhs.false25:                                  ; preds = %copy_from_user.exit138
  %100 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6208
  %transp26 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %100, i32 0, i32 5, !dbg !6209
  %101 = load i16*, i16** %transp26, align 8, !dbg !6209
  %tobool27 = icmp ne i16* %101, null, !dbg !6208
  br i1 %tobool27, label %land.lhs.true, label %if.end34, !dbg !6210

land.lhs.true:                                    ; preds = %lor.lhs.false25
  %transp28 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %umap, i32 0, i32 5, !dbg !6211
  %102 = load i16*, i16** %transp28, align 8, !dbg !6211
  %103 = bitcast i16* %102 to i8*, !dbg !6212
  %104 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6213
  %transp29 = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %104, i32 0, i32 5, !dbg !6214
  %105 = load i16*, i16** %transp29, align 8, !dbg !6214
  %106 = bitcast i16* %105 to i8*, !dbg !6213
  %107 = load i32, i32* %size, align 4, !dbg !6215
  %conv30 = sext i32 %107 to i64, !dbg !6215
  store i8* %103, i8** %to.addr.i146, align 8
  store i8* %106, i8** %from.addr.i147, align 8
  store i64 %conv30, i64* %n.addr.i148, align 8
  %108 = load i8*, i8** %to.addr.i146, align 8, !dbg !6216
  %109 = load i64, i64* %n.addr.i148, align 8, !dbg !6216
  store i8* %108, i8** %addr.addr.i.i140, align 8
  store i64 %109, i64* %bytes.addr.i.i141, align 8
  store i8 0, i8* %is_source.addr.i.i142, align 1
  store i32 -1, i32* %sz.i.i143, align 4, !dbg !6005
  %110 = load i32, i32* %sz.i.i143, align 4, !dbg !6217
  %cmp.i.i149 = icmp sge i32 %110, 0, !dbg !6217
  br i1 %cmp.i.i149, label %land.rhs.i.i152, label %land.end.i.i156, !dbg !6217

land.rhs.i.i152:                                  ; preds = %land.lhs.true
  %111 = load i32, i32* %sz.i.i143, align 4, !dbg !6217
  %conv.i.i150 = sext i32 %111 to i64, !dbg !6217
  %112 = load i64, i64* %bytes.addr.i.i141, align 8, !dbg !6217
  %cmp1.i.i151 = icmp ult i64 %conv.i.i150, %112, !dbg !6217
  br label %land.end.i.i156

land.end.i.i156:                                  ; preds = %land.rhs.i.i152, %land.lhs.true
  %113 = phi i1 [ false, %land.lhs.true ], [ %cmp1.i.i151, %land.rhs.i.i152 ], !dbg !6218
  %lnot.i.i153 = xor i1 %113, true, !dbg !6217
  %lnot.ext.i.i154 = zext i1 %113 to i32, !dbg !6217
  %conv4.i.i155 = sext i32 %lnot.ext.i.i154 to i64, !dbg !6217
  br i1 %113, label %if.then.i.i157, label %if.end10.i.i172, !dbg !6219

if.then.i.i157:                                   ; preds = %land.end.i.i156
  %114 = load i64, i64* %bytes.addr.i.i141, align 8, !dbg !6220
  %115 = call i1 @llvm.is.constant.i64(i64 %114) #8, !dbg !6221
  br i1 %115, label %if.else.i.i160, label %if.then5.i.i158, !dbg !6222

if.then5.i.i158:                                  ; preds = %if.then.i.i157
  %116 = load i32, i32* %sz.i.i143, align 4, !dbg !6223
  %117 = load i64, i64* %bytes.addr.i.i141, align 8, !dbg !6224
  call void @copy_overflow(i32 %116, i64 %117) #10, !dbg !6225
  br label %if.end9.i.i164, !dbg !6225

if.else.i.i160:                                   ; preds = %if.then.i.i157
  %118 = load i8, i8* %is_source.addr.i.i142, align 1, !dbg !6226
  %tobool6.i.i159 = trunc i8 %118 to i1, !dbg !6226
  br i1 %tobool6.i.i159, label %if.then7.i.i161, label %if.else8.i.i162, !dbg !6227

if.then7.i.i161:                                  ; preds = %if.else.i.i160
  call void @__bad_copy_from() #10, !dbg !6228
  br label %if.end.i.i163, !dbg !6228

if.else8.i.i162:                                  ; preds = %if.else.i.i160
  call void @__bad_copy_to() #10, !dbg !6229
  br label %if.end.i.i163

if.end.i.i163:                                    ; preds = %if.else8.i.i162, %if.then7.i.i161
  br label %if.end9.i.i164

if.end9.i.i164:                                   ; preds = %if.end.i.i163, %if.then5.i.i158
  store i1 false, i1* %retval.i.i139, align 1, !dbg !6230
  br label %check_copy_size.exit.i186, !dbg !6230

if.end10.i.i172:                                  ; preds = %land.end.i.i156
  %119 = load i64, i64* %bytes.addr.i.i141, align 8, !dbg !6006
  %cmp11.i.i165 = icmp ugt i64 %119, 2147483647, !dbg !6006
  %lnot13.i.i166 = xor i1 %cmp11.i.i165, true, !dbg !6006
  %lnot.ext16.i.i167 = zext i1 %cmp11.i.i165 to i32, !dbg !6006
  store i32 %lnot.ext16.i.i167, i32* %__ret_warn_on.i.i144, align 4, !dbg !6006
  %120 = load i32, i32* %__ret_warn_on.i.i144, align 4, !dbg !6231
  %tobool17.i.i168 = icmp ne i32 %120, 0, !dbg !6231
  %lnot18.i.i169 = xor i1 %tobool17.i.i168, true, !dbg !6231
  %lnot.ext21.i.i170 = zext i1 %tobool17.i.i168 to i32, !dbg !6231
  %conv22.i.i171 = sext i32 %lnot.ext21.i.i170 to i64, !dbg !6231
  br i1 %tobool17.i.i168, label %if.then24.i.i173, label %if.end31.i.i179, !dbg !6006

if.then24.i.i173:                                 ; preds = %if.end10.i.i172
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !6232, !srcloc !1504
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !6233, !srcloc !1507
  br label %if.end31.i.i179, !dbg !6234

if.end31.i.i179:                                  ; preds = %if.then24.i.i173, %if.end10.i.i172
  %121 = load i32, i32* %__ret_warn_on.i.i144, align 4, !dbg !6006
  %tobool32.i.i174 = icmp ne i32 %121, 0, !dbg !6006
  %lnot33.i.i175 = xor i1 %tobool32.i.i174, true, !dbg !6006
  %lnot.ext36.i.i176 = zext i1 %tobool32.i.i174 to i32, !dbg !6006
  %conv37.i.i177 = sext i32 %lnot.ext36.i.i176 to i64, !dbg !6006
  store i64 %conv37.i.i177, i64* %tmp.i.i145, align 8, !dbg !6231
  %122 = load i64, i64* %tmp.i.i145, align 8, !dbg !6006
  %tobool38.i.i178 = icmp ne i64 %122, 0, !dbg !6235
  br i1 %tobool38.i.i178, label %if.then39.i.i180, label %if.end40.i.i182, !dbg !6236

if.then39.i.i180:                                 ; preds = %if.end31.i.i179
  store i1 false, i1* %retval.i.i139, align 1, !dbg !6237
  br label %check_copy_size.exit.i186, !dbg !6237

if.end40.i.i182:                                  ; preds = %if.end31.i.i179
  %123 = load i8*, i8** %addr.addr.i.i140, align 8, !dbg !6238
  %124 = load i64, i64* %bytes.addr.i.i141, align 8, !dbg !6239
  %125 = load i8, i8* %is_source.addr.i.i142, align 1, !dbg !6240
  %tobool41.i.i181 = trunc i8 %125 to i1, !dbg !6240
  call void @check_object_size(i8* %123, i64 %124, i1 zeroext %tobool41.i.i181) #10, !dbg !6241
  store i1 true, i1* %retval.i.i139, align 1, !dbg !6242
  br label %check_copy_size.exit.i186, !dbg !6242

check_copy_size.exit.i186:                        ; preds = %if.end40.i.i182, %if.then39.i.i180, %if.end9.i.i164
  %126 = load i1, i1* %retval.i.i139, align 1, !dbg !6243
  %lnot.i183 = xor i1 %126, true, !dbg !6216
  %lnot.ext.i184 = zext i1 %126 to i32, !dbg !6216
  %conv.i185 = sext i32 %lnot.ext.i184 to i64, !dbg !6216
  br i1 %126, label %if.then.i188, label %copy_from_user.exit189, !dbg !6244

if.then.i188:                                     ; preds = %check_copy_size.exit.i186
  %127 = load i8*, i8** %to.addr.i146, align 8, !dbg !6245
  %128 = load i8*, i8** %from.addr.i147, align 8, !dbg !6246
  %129 = load i64, i64* %n.addr.i148, align 8, !dbg !6247
  %call2.i187 = call i64 @_copy_from_user(i8* %127, i8* %128, i64 %129) #10, !dbg !6248
  store i64 %call2.i187, i64* %n.addr.i148, align 8, !dbg !6249
  br label %copy_from_user.exit189, !dbg !6250

copy_from_user.exit189:                           ; preds = %check_copy_size.exit.i186, %if.then.i188
  %130 = load i64, i64* %n.addr.i148, align 8, !dbg !6251
  %tobool32 = icmp ne i64 %130, 0, !dbg !6252
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6253

if.then33:                                        ; preds = %copy_from_user.exit189, %copy_from_user.exit138, %copy_from_user.exit87, %copy_from_user.exit
  store i32 -14, i32* %rc, align 4, !dbg !6254
  br label %out, !dbg !6256

if.end34:                                         ; preds = %copy_from_user.exit189, %lor.lhs.false25
  %131 = load %struct.fb_cmap_user*, %struct.fb_cmap_user** %cmap.addr, align 8, !dbg !6257
  %start = getelementptr inbounds %struct.fb_cmap_user, %struct.fb_cmap_user* %131, i32 0, i32 0, !dbg !6258
  %132 = load i32, i32* %start, align 8, !dbg !6258
  %start35 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %umap, i32 0, i32 0, !dbg !6259
  store i32 %132, i32* %start35, align 8, !dbg !6260
  %133 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6261
  call void @lock_fb_info(%struct.fb_info* %133) #7, !dbg !6262
  %134 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6263
  %call36 = call i32 @fb_set_cmap(%struct.fb_cmap* %umap, %struct.fb_info* %134) #7, !dbg !6264
  store i32 %call36, i32* %rc, align 4, !dbg !6265
  %135 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6266
  call void @unlock_fb_info(%struct.fb_info* %135) #7, !dbg !6267
  br label %out, !dbg !6267

out:                                              ; preds = %if.end34, %if.then33
  call void @llvm.dbg.label(metadata !6268), !dbg !6269
  call void @fb_dealloc_cmap(%struct.fb_cmap* %umap) #7, !dbg !6270
  %136 = load i32, i32* %rc, align 4, !dbg !6271
  store i32 %136, i32* %retval, align 4, !dbg !6272
  br label %return, !dbg !6272

return:                                           ; preds = %out, %if.then9, %if.then
  %137 = load i32, i32* %retval, align 4, !dbg !6273
  ret i32 %137, !dbg !6273
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lock_fb_info(%struct.fb_info* %info) #0 !dbg !6274 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6275, metadata !DIExpression()), !dbg !6276
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6277
  %lock = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 4, !dbg !6278
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !6279
  ret void, !dbg !6280
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @unlock_fb_info(%struct.fb_info* %info) #0 !dbg !6281 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6284
  %lock = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 4, !dbg !6285
  call void @mutex_unlock(%struct.mutex* %lock) #7, !dbg !6286
  ret void, !dbg !6287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fb_invert_cmaps() #0 !dbg !6288 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6289, metadata !DIExpression()), !dbg !6290
  store i32 0, i32* %i, align 4, !dbg !6291
  br label %for.cond, !dbg !6293

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6294
  %conv = zext i32 %0 to i64, !dbg !6294
  %cmp = icmp ult i64 %conv, 2, !dbg !6296
  br i1 %cmp, label %for.body, label %for.end, !dbg !6297

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !6298
  %idxprom = zext i32 %1 to i64, !dbg !6300
  %arrayidx = getelementptr [2 x i16], [2 x i16]* @red2, i64 0, i64 %idxprom, !dbg !6300
  %2 = load i16, i16* %arrayidx, align 2, !dbg !6300
  %conv2 = zext i16 %2 to i32, !dbg !6300
  %neg = xor i32 %conv2, -1, !dbg !6301
  %conv3 = trunc i32 %neg to i16, !dbg !6301
  %3 = load i32, i32* %i, align 4, !dbg !6302
  %idxprom4 = zext i32 %3 to i64, !dbg !6303
  %arrayidx5 = getelementptr [2 x i16], [2 x i16]* @red2, i64 0, i64 %idxprom4, !dbg !6303
  store i16 %conv3, i16* %arrayidx5, align 2, !dbg !6304
  %4 = load i32, i32* %i, align 4, !dbg !6305
  %idxprom6 = zext i32 %4 to i64, !dbg !6306
  %arrayidx7 = getelementptr [2 x i16], [2 x i16]* @green2, i64 0, i64 %idxprom6, !dbg !6306
  %5 = load i16, i16* %arrayidx7, align 2, !dbg !6306
  %conv8 = zext i16 %5 to i32, !dbg !6306
  %neg9 = xor i32 %conv8, -1, !dbg !6307
  %conv10 = trunc i32 %neg9 to i16, !dbg !6307
  %6 = load i32, i32* %i, align 4, !dbg !6308
  %idxprom11 = zext i32 %6 to i64, !dbg !6309
  %arrayidx12 = getelementptr [2 x i16], [2 x i16]* @green2, i64 0, i64 %idxprom11, !dbg !6309
  store i16 %conv10, i16* %arrayidx12, align 2, !dbg !6310
  %7 = load i32, i32* %i, align 4, !dbg !6311
  %idxprom13 = zext i32 %7 to i64, !dbg !6312
  %arrayidx14 = getelementptr [2 x i16], [2 x i16]* @blue2, i64 0, i64 %idxprom13, !dbg !6312
  %8 = load i16, i16* %arrayidx14, align 2, !dbg !6312
  %conv15 = zext i16 %8 to i32, !dbg !6312
  %neg16 = xor i32 %conv15, -1, !dbg !6313
  %conv17 = trunc i32 %neg16 to i16, !dbg !6313
  %9 = load i32, i32* %i, align 4, !dbg !6314
  %idxprom18 = zext i32 %9 to i64, !dbg !6315
  %arrayidx19 = getelementptr [2 x i16], [2 x i16]* @blue2, i64 0, i64 %idxprom18, !dbg !6315
  store i16 %conv17, i16* %arrayidx19, align 2, !dbg !6316
  br label %for.inc, !dbg !6317

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !6318
  %inc = add i32 %10, 1, !dbg !6318
  store i32 %inc, i32* %i, align 4, !dbg !6318
  br label %for.cond, !dbg !6319, !llvm.loop !6320

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !6322
  br label %for.cond20, !dbg !6324

for.cond20:                                       ; preds = %for.inc46, %for.end
  %11 = load i32, i32* %i, align 4, !dbg !6325
  %conv21 = zext i32 %11 to i64, !dbg !6325
  %cmp22 = icmp ult i64 %conv21, 4, !dbg !6327
  br i1 %cmp22, label %for.body24, label %for.end48, !dbg !6328

for.body24:                                       ; preds = %for.cond20
  %12 = load i32, i32* %i, align 4, !dbg !6329
  %idxprom25 = zext i32 %12 to i64, !dbg !6331
  %arrayidx26 = getelementptr [4 x i16], [4 x i16]* @red4, i64 0, i64 %idxprom25, !dbg !6331
  %13 = load i16, i16* %arrayidx26, align 2, !dbg !6331
  %conv27 = zext i16 %13 to i32, !dbg !6331
  %neg28 = xor i32 %conv27, -1, !dbg !6332
  %conv29 = trunc i32 %neg28 to i16, !dbg !6332
  %14 = load i32, i32* %i, align 4, !dbg !6333
  %idxprom30 = zext i32 %14 to i64, !dbg !6334
  %arrayidx31 = getelementptr [4 x i16], [4 x i16]* @red4, i64 0, i64 %idxprom30, !dbg !6334
  store i16 %conv29, i16* %arrayidx31, align 2, !dbg !6335
  %15 = load i32, i32* %i, align 4, !dbg !6336
  %idxprom32 = zext i32 %15 to i64, !dbg !6337
  %arrayidx33 = getelementptr [4 x i16], [4 x i16]* @green4, i64 0, i64 %idxprom32, !dbg !6337
  %16 = load i16, i16* %arrayidx33, align 2, !dbg !6337
  %conv34 = zext i16 %16 to i32, !dbg !6337
  %neg35 = xor i32 %conv34, -1, !dbg !6338
  %conv36 = trunc i32 %neg35 to i16, !dbg !6338
  %17 = load i32, i32* %i, align 4, !dbg !6339
  %idxprom37 = zext i32 %17 to i64, !dbg !6340
  %arrayidx38 = getelementptr [4 x i16], [4 x i16]* @green4, i64 0, i64 %idxprom37, !dbg !6340
  store i16 %conv36, i16* %arrayidx38, align 2, !dbg !6341
  %18 = load i32, i32* %i, align 4, !dbg !6342
  %idxprom39 = zext i32 %18 to i64, !dbg !6343
  %arrayidx40 = getelementptr [4 x i16], [4 x i16]* @blue4, i64 0, i64 %idxprom39, !dbg !6343
  %19 = load i16, i16* %arrayidx40, align 2, !dbg !6343
  %conv41 = zext i16 %19 to i32, !dbg !6343
  %neg42 = xor i32 %conv41, -1, !dbg !6344
  %conv43 = trunc i32 %neg42 to i16, !dbg !6344
  %20 = load i32, i32* %i, align 4, !dbg !6345
  %idxprom44 = zext i32 %20 to i64, !dbg !6346
  %arrayidx45 = getelementptr [4 x i16], [4 x i16]* @blue4, i64 0, i64 %idxprom44, !dbg !6346
  store i16 %conv43, i16* %arrayidx45, align 2, !dbg !6347
  br label %for.inc46, !dbg !6348

for.inc46:                                        ; preds = %for.body24
  %21 = load i32, i32* %i, align 4, !dbg !6349
  %inc47 = add i32 %21, 1, !dbg !6349
  store i32 %inc47, i32* %i, align 4, !dbg !6349
  br label %for.cond20, !dbg !6350, !llvm.loop !6351

for.end48:                                        ; preds = %for.cond20
  store i32 0, i32* %i, align 4, !dbg !6353
  br label %for.cond49, !dbg !6355

for.cond49:                                       ; preds = %for.inc75, %for.end48
  %22 = load i32, i32* %i, align 4, !dbg !6356
  %conv50 = zext i32 %22 to i64, !dbg !6356
  %cmp51 = icmp ult i64 %conv50, 8, !dbg !6358
  br i1 %cmp51, label %for.body53, label %for.end77, !dbg !6359

for.body53:                                       ; preds = %for.cond49
  %23 = load i32, i32* %i, align 4, !dbg !6360
  %idxprom54 = zext i32 %23 to i64, !dbg !6362
  %arrayidx55 = getelementptr [8 x i16], [8 x i16]* @red8, i64 0, i64 %idxprom54, !dbg !6362
  %24 = load i16, i16* %arrayidx55, align 2, !dbg !6362
  %conv56 = zext i16 %24 to i32, !dbg !6362
  %neg57 = xor i32 %conv56, -1, !dbg !6363
  %conv58 = trunc i32 %neg57 to i16, !dbg !6363
  %25 = load i32, i32* %i, align 4, !dbg !6364
  %idxprom59 = zext i32 %25 to i64, !dbg !6365
  %arrayidx60 = getelementptr [8 x i16], [8 x i16]* @red8, i64 0, i64 %idxprom59, !dbg !6365
  store i16 %conv58, i16* %arrayidx60, align 2, !dbg !6366
  %26 = load i32, i32* %i, align 4, !dbg !6367
  %idxprom61 = zext i32 %26 to i64, !dbg !6368
  %arrayidx62 = getelementptr [8 x i16], [8 x i16]* @green8, i64 0, i64 %idxprom61, !dbg !6368
  %27 = load i16, i16* %arrayidx62, align 2, !dbg !6368
  %conv63 = zext i16 %27 to i32, !dbg !6368
  %neg64 = xor i32 %conv63, -1, !dbg !6369
  %conv65 = trunc i32 %neg64 to i16, !dbg !6369
  %28 = load i32, i32* %i, align 4, !dbg !6370
  %idxprom66 = zext i32 %28 to i64, !dbg !6371
  %arrayidx67 = getelementptr [8 x i16], [8 x i16]* @green8, i64 0, i64 %idxprom66, !dbg !6371
  store i16 %conv65, i16* %arrayidx67, align 2, !dbg !6372
  %29 = load i32, i32* %i, align 4, !dbg !6373
  %idxprom68 = zext i32 %29 to i64, !dbg !6374
  %arrayidx69 = getelementptr [8 x i16], [8 x i16]* @blue8, i64 0, i64 %idxprom68, !dbg !6374
  %30 = load i16, i16* %arrayidx69, align 2, !dbg !6374
  %conv70 = zext i16 %30 to i32, !dbg !6374
  %neg71 = xor i32 %conv70, -1, !dbg !6375
  %conv72 = trunc i32 %neg71 to i16, !dbg !6375
  %31 = load i32, i32* %i, align 4, !dbg !6376
  %idxprom73 = zext i32 %31 to i64, !dbg !6377
  %arrayidx74 = getelementptr [8 x i16], [8 x i16]* @blue8, i64 0, i64 %idxprom73, !dbg !6377
  store i16 %conv72, i16* %arrayidx74, align 2, !dbg !6378
  br label %for.inc75, !dbg !6379

for.inc75:                                        ; preds = %for.body53
  %32 = load i32, i32* %i, align 4, !dbg !6380
  %inc76 = add i32 %32, 1, !dbg !6380
  store i32 %inc76, i32* %i, align 4, !dbg !6380
  br label %for.cond49, !dbg !6381, !llvm.loop !6382

for.end77:                                        ; preds = %for.cond49
  store i32 0, i32* %i, align 4, !dbg !6384
  br label %for.cond78, !dbg !6386

for.cond78:                                       ; preds = %for.inc104, %for.end77
  %33 = load i32, i32* %i, align 4, !dbg !6387
  %conv79 = zext i32 %33 to i64, !dbg !6387
  %cmp80 = icmp ult i64 %conv79, 16, !dbg !6389
  br i1 %cmp80, label %for.body82, label %for.end106, !dbg !6390

for.body82:                                       ; preds = %for.cond78
  %34 = load i32, i32* %i, align 4, !dbg !6391
  %idxprom83 = zext i32 %34 to i64, !dbg !6393
  %arrayidx84 = getelementptr [16 x i16], [16 x i16]* @red16, i64 0, i64 %idxprom83, !dbg !6393
  %35 = load i16, i16* %arrayidx84, align 2, !dbg !6393
  %conv85 = zext i16 %35 to i32, !dbg !6393
  %neg86 = xor i32 %conv85, -1, !dbg !6394
  %conv87 = trunc i32 %neg86 to i16, !dbg !6394
  %36 = load i32, i32* %i, align 4, !dbg !6395
  %idxprom88 = zext i32 %36 to i64, !dbg !6396
  %arrayidx89 = getelementptr [16 x i16], [16 x i16]* @red16, i64 0, i64 %idxprom88, !dbg !6396
  store i16 %conv87, i16* %arrayidx89, align 2, !dbg !6397
  %37 = load i32, i32* %i, align 4, !dbg !6398
  %idxprom90 = zext i32 %37 to i64, !dbg !6399
  %arrayidx91 = getelementptr [16 x i16], [16 x i16]* @green16, i64 0, i64 %idxprom90, !dbg !6399
  %38 = load i16, i16* %arrayidx91, align 2, !dbg !6399
  %conv92 = zext i16 %38 to i32, !dbg !6399
  %neg93 = xor i32 %conv92, -1, !dbg !6400
  %conv94 = trunc i32 %neg93 to i16, !dbg !6400
  %39 = load i32, i32* %i, align 4, !dbg !6401
  %idxprom95 = zext i32 %39 to i64, !dbg !6402
  %arrayidx96 = getelementptr [16 x i16], [16 x i16]* @green16, i64 0, i64 %idxprom95, !dbg !6402
  store i16 %conv94, i16* %arrayidx96, align 2, !dbg !6403
  %40 = load i32, i32* %i, align 4, !dbg !6404
  %idxprom97 = zext i32 %40 to i64, !dbg !6405
  %arrayidx98 = getelementptr [16 x i16], [16 x i16]* @blue16, i64 0, i64 %idxprom97, !dbg !6405
  %41 = load i16, i16* %arrayidx98, align 2, !dbg !6405
  %conv99 = zext i16 %41 to i32, !dbg !6405
  %neg100 = xor i32 %conv99, -1, !dbg !6406
  %conv101 = trunc i32 %neg100 to i16, !dbg !6406
  %42 = load i32, i32* %i, align 4, !dbg !6407
  %idxprom102 = zext i32 %42 to i64, !dbg !6408
  %arrayidx103 = getelementptr [16 x i16], [16 x i16]* @blue16, i64 0, i64 %idxprom102, !dbg !6408
  store i16 %conv101, i16* %arrayidx103, align 2, !dbg !6409
  br label %for.inc104, !dbg !6410

for.inc104:                                       ; preds = %for.body82
  %43 = load i32, i32* %i, align 4, !dbg !6411
  %inc105 = add i32 %43, 1, !dbg !6411
  store i32 %inc105, i32* %i, align 4, !dbg !6411
  br label %for.cond78, !dbg !6412, !llvm.loop !6413

for.end106:                                       ; preds = %for.cond78
  ret void, !dbg !6415
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !6416 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6420, metadata !DIExpression()), !dbg !6425
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6427, metadata !DIExpression()), !dbg !6428
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6429, metadata !DIExpression()), !dbg !6430
  %0 = load i64, i64* %size.addr, align 8, !dbg !6431
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6433
  br i1 %1, label %if.then, label %if.end447, !dbg !6434

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6435
  %tobool = icmp ne i64 %2, 0, !dbg !6435
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6438

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6439
  br label %return, !dbg !6439

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6440
  %cmp = icmp ult i64 %3, 4096, !dbg !6442
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6443

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6444
  br label %return, !dbg !6444

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub = sub i64 %4, 1, !dbg !6445
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6445
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6445

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub4 = sub i64 %6, 1, !dbg !6445
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6445
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6445

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub6 = sub i64 %8, 1, !dbg !6445
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6445
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6445

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6445

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub9 = sub i64 %9, 1, !dbg !6445
  %and = and i64 %sub9, -9223372036854775808, !dbg !6445
  %tobool10 = icmp ne i64 %and, 0, !dbg !6445
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6445

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6445

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub13 = sub i64 %10, 1, !dbg !6445
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6445
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6445
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6445

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6445

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub18 = sub i64 %11, 1, !dbg !6445
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6445
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6445
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6445

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6445

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub23 = sub i64 %12, 1, !dbg !6445
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6445
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6445
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6445

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6445

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub28 = sub i64 %13, 1, !dbg !6445
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6445
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6445
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6445

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6445

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub33 = sub i64 %14, 1, !dbg !6445
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6445
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6445
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6445

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6445

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub38 = sub i64 %15, 1, !dbg !6445
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6445
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6445
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6445

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6445

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub43 = sub i64 %16, 1, !dbg !6445
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6445
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6445
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6445

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6445

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub48 = sub i64 %17, 1, !dbg !6445
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6445
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6445
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6445

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6445

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub53 = sub i64 %18, 1, !dbg !6445
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6445
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6445
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6445

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6445

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub58 = sub i64 %19, 1, !dbg !6445
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6445
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6445
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6445

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6445

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub63 = sub i64 %20, 1, !dbg !6445
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6445
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6445
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6445

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6445

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub68 = sub i64 %21, 1, !dbg !6445
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6445
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6445
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6445

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6445

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub73 = sub i64 %22, 1, !dbg !6445
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6445
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6445
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6445

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6445

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub78 = sub i64 %23, 1, !dbg !6445
  %and79 = and i64 %sub78, 562949953421312, !dbg !6445
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6445
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6445

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6445

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub83 = sub i64 %24, 1, !dbg !6445
  %and84 = and i64 %sub83, 281474976710656, !dbg !6445
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6445
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6445

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6445

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub88 = sub i64 %25, 1, !dbg !6445
  %and89 = and i64 %sub88, 140737488355328, !dbg !6445
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6445
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6445

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6445

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub93 = sub i64 %26, 1, !dbg !6445
  %and94 = and i64 %sub93, 70368744177664, !dbg !6445
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6445
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6445

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6445

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub98 = sub i64 %27, 1, !dbg !6445
  %and99 = and i64 %sub98, 35184372088832, !dbg !6445
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6445
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6445

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6445

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub103 = sub i64 %28, 1, !dbg !6445
  %and104 = and i64 %sub103, 17592186044416, !dbg !6445
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6445
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6445

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6445

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub108 = sub i64 %29, 1, !dbg !6445
  %and109 = and i64 %sub108, 8796093022208, !dbg !6445
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6445
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6445

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6445

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub113 = sub i64 %30, 1, !dbg !6445
  %and114 = and i64 %sub113, 4398046511104, !dbg !6445
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6445
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6445

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6445

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub118 = sub i64 %31, 1, !dbg !6445
  %and119 = and i64 %sub118, 2199023255552, !dbg !6445
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6445
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6445

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6445

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub123 = sub i64 %32, 1, !dbg !6445
  %and124 = and i64 %sub123, 1099511627776, !dbg !6445
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6445
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6445

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6445

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub128 = sub i64 %33, 1, !dbg !6445
  %and129 = and i64 %sub128, 549755813888, !dbg !6445
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6445
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6445

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6445

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub133 = sub i64 %34, 1, !dbg !6445
  %and134 = and i64 %sub133, 274877906944, !dbg !6445
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6445
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6445

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6445

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub138 = sub i64 %35, 1, !dbg !6445
  %and139 = and i64 %sub138, 137438953472, !dbg !6445
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6445
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6445

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6445

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub143 = sub i64 %36, 1, !dbg !6445
  %and144 = and i64 %sub143, 68719476736, !dbg !6445
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6445
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6445

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6445

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub148 = sub i64 %37, 1, !dbg !6445
  %and149 = and i64 %sub148, 34359738368, !dbg !6445
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6445
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6445

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6445

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub153 = sub i64 %38, 1, !dbg !6445
  %and154 = and i64 %sub153, 17179869184, !dbg !6445
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6445
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6445

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6445

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub158 = sub i64 %39, 1, !dbg !6445
  %and159 = and i64 %sub158, 8589934592, !dbg !6445
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6445
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6445

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6445

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub163 = sub i64 %40, 1, !dbg !6445
  %and164 = and i64 %sub163, 4294967296, !dbg !6445
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6445
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6445

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6445

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub168 = sub i64 %41, 1, !dbg !6445
  %and169 = and i64 %sub168, 2147483648, !dbg !6445
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6445
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6445

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6445

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub173 = sub i64 %42, 1, !dbg !6445
  %and174 = and i64 %sub173, 1073741824, !dbg !6445
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6445
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6445

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6445

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub178 = sub i64 %43, 1, !dbg !6445
  %and179 = and i64 %sub178, 536870912, !dbg !6445
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6445
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6445

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6445

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub183 = sub i64 %44, 1, !dbg !6445
  %and184 = and i64 %sub183, 268435456, !dbg !6445
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6445
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6445

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6445

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub188 = sub i64 %45, 1, !dbg !6445
  %and189 = and i64 %sub188, 134217728, !dbg !6445
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6445
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6445

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6445

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub193 = sub i64 %46, 1, !dbg !6445
  %and194 = and i64 %sub193, 67108864, !dbg !6445
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6445
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6445

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6445

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub198 = sub i64 %47, 1, !dbg !6445
  %and199 = and i64 %sub198, 33554432, !dbg !6445
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6445
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6445

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6445

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub203 = sub i64 %48, 1, !dbg !6445
  %and204 = and i64 %sub203, 16777216, !dbg !6445
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6445
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6445

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6445

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub208 = sub i64 %49, 1, !dbg !6445
  %and209 = and i64 %sub208, 8388608, !dbg !6445
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6445
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6445

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6445

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub213 = sub i64 %50, 1, !dbg !6445
  %and214 = and i64 %sub213, 4194304, !dbg !6445
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6445
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6445

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6445

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub218 = sub i64 %51, 1, !dbg !6445
  %and219 = and i64 %sub218, 2097152, !dbg !6445
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6445
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6445

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6445

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub223 = sub i64 %52, 1, !dbg !6445
  %and224 = and i64 %sub223, 1048576, !dbg !6445
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6445
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6445

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6445

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub228 = sub i64 %53, 1, !dbg !6445
  %and229 = and i64 %sub228, 524288, !dbg !6445
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6445
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6445

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6445

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub233 = sub i64 %54, 1, !dbg !6445
  %and234 = and i64 %sub233, 262144, !dbg !6445
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6445
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6445

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6445

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub238 = sub i64 %55, 1, !dbg !6445
  %and239 = and i64 %sub238, 131072, !dbg !6445
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6445
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6445

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6445

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub243 = sub i64 %56, 1, !dbg !6445
  %and244 = and i64 %sub243, 65536, !dbg !6445
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6445
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6445

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6445

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub248 = sub i64 %57, 1, !dbg !6445
  %and249 = and i64 %sub248, 32768, !dbg !6445
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6445
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6445

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6445

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub253 = sub i64 %58, 1, !dbg !6445
  %and254 = and i64 %sub253, 16384, !dbg !6445
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6445
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6445

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6445

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub258 = sub i64 %59, 1, !dbg !6445
  %and259 = and i64 %sub258, 8192, !dbg !6445
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6445
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6445

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6445

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub263 = sub i64 %60, 1, !dbg !6445
  %and264 = and i64 %sub263, 4096, !dbg !6445
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6445
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6445

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6445

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub268 = sub i64 %61, 1, !dbg !6445
  %and269 = and i64 %sub268, 2048, !dbg !6445
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6445
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6445

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6445

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub273 = sub i64 %62, 1, !dbg !6445
  %and274 = and i64 %sub273, 1024, !dbg !6445
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6445
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6445

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6445

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub278 = sub i64 %63, 1, !dbg !6445
  %and279 = and i64 %sub278, 512, !dbg !6445
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6445
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6445

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6445

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub283 = sub i64 %64, 1, !dbg !6445
  %and284 = and i64 %sub283, 256, !dbg !6445
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6445
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6445

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6445

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub288 = sub i64 %65, 1, !dbg !6445
  %and289 = and i64 %sub288, 128, !dbg !6445
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6445
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6445

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6445

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub293 = sub i64 %66, 1, !dbg !6445
  %and294 = and i64 %sub293, 64, !dbg !6445
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6445
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6445

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6445

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub298 = sub i64 %67, 1, !dbg !6445
  %and299 = and i64 %sub298, 32, !dbg !6445
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6445
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6445

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6445

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub303 = sub i64 %68, 1, !dbg !6445
  %and304 = and i64 %sub303, 16, !dbg !6445
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6445
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6445

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6445

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub308 = sub i64 %69, 1, !dbg !6445
  %and309 = and i64 %sub308, 8, !dbg !6445
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6445
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6445

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6445

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub313 = sub i64 %70, 1, !dbg !6445
  %and314 = and i64 %sub313, 4, !dbg !6445
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6445
  %71 = zext i1 %tobool315 to i64, !dbg !6445
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6445
  br label %cond.end, !dbg !6445

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6445
  br label %cond.end317, !dbg !6445

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6445
  br label %cond.end319, !dbg !6445

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6445
  br label %cond.end321, !dbg !6445

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6445
  br label %cond.end323, !dbg !6445

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6445
  br label %cond.end325, !dbg !6445

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6445
  br label %cond.end327, !dbg !6445

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6445
  br label %cond.end329, !dbg !6445

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6445
  br label %cond.end331, !dbg !6445

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6445
  br label %cond.end333, !dbg !6445

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6445
  br label %cond.end335, !dbg !6445

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6445
  br label %cond.end337, !dbg !6445

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6445
  br label %cond.end339, !dbg !6445

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6445
  br label %cond.end341, !dbg !6445

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6445
  br label %cond.end343, !dbg !6445

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6445
  br label %cond.end345, !dbg !6445

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6445
  br label %cond.end347, !dbg !6445

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6445
  br label %cond.end349, !dbg !6445

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6445
  br label %cond.end351, !dbg !6445

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6445
  br label %cond.end353, !dbg !6445

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6445
  br label %cond.end355, !dbg !6445

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6445
  br label %cond.end357, !dbg !6445

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6445
  br label %cond.end359, !dbg !6445

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6445
  br label %cond.end361, !dbg !6445

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6445
  br label %cond.end363, !dbg !6445

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6445
  br label %cond.end365, !dbg !6445

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6445
  br label %cond.end367, !dbg !6445

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6445
  br label %cond.end369, !dbg !6445

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6445
  br label %cond.end371, !dbg !6445

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6445
  br label %cond.end373, !dbg !6445

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6445
  br label %cond.end375, !dbg !6445

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6445
  br label %cond.end377, !dbg !6445

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6445
  br label %cond.end379, !dbg !6445

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6445
  br label %cond.end381, !dbg !6445

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6445
  br label %cond.end383, !dbg !6445

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6445
  br label %cond.end385, !dbg !6445

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6445
  br label %cond.end387, !dbg !6445

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6445
  br label %cond.end389, !dbg !6445

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6445
  br label %cond.end391, !dbg !6445

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6445
  br label %cond.end393, !dbg !6445

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6445
  br label %cond.end395, !dbg !6445

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6445
  br label %cond.end397, !dbg !6445

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6445
  br label %cond.end399, !dbg !6445

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6445
  br label %cond.end401, !dbg !6445

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6445
  br label %cond.end403, !dbg !6445

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6445
  br label %cond.end405, !dbg !6445

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6445
  br label %cond.end407, !dbg !6445

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6445
  br label %cond.end409, !dbg !6445

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6445
  br label %cond.end411, !dbg !6445

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6445
  br label %cond.end413, !dbg !6445

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6445
  br label %cond.end415, !dbg !6445

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6445
  br label %cond.end417, !dbg !6445

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6445
  br label %cond.end419, !dbg !6445

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6445
  br label %cond.end421, !dbg !6445

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6445
  br label %cond.end423, !dbg !6445

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6445
  br label %cond.end425, !dbg !6445

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6445
  br label %cond.end427, !dbg !6445

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6445
  br label %cond.end429, !dbg !6445

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6445
  br label %cond.end431, !dbg !6445

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6445
  br label %cond.end433, !dbg !6445

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6445
  br label %cond.end435, !dbg !6445

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6445
  br label %cond.end437, !dbg !6445

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6445
  br label %cond.end440, !dbg !6445

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6445

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6445
  br label %cond.end444, !dbg !6445

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6445
  %sub443 = sub i64 %72, 1, !dbg !6445
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !6445
  br label %cond.end444, !dbg !6445

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6445
  %sub446 = sub i32 %cond445, 12, !dbg !6446
  %add = add i32 %sub446, 1, !dbg !6447
  store i32 %add, i32* %retval, align 4, !dbg !6448
  br label %return, !dbg !6448

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6449
  %dec = add i64 %73, -1, !dbg !6449
  store i64 %dec, i64* %size.addr, align 8, !dbg !6449
  %74 = load i64, i64* %size.addr, align 8, !dbg !6450
  %shr = lshr i64 %74, 12, !dbg !6450
  store i64 %shr, i64* %size.addr, align 8, !dbg !6450
  %75 = load i64, i64* %size.addr, align 8, !dbg !6451
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6428
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6452
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6453
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !6452, !srcloc !6454
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6452
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6455
  %add.i = add i32 %79, 1, !dbg !6456
  store i32 %add.i, i32* %retval, align 4, !dbg !6457
  br label %return, !dbg !6457

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6458
  ret i32 %80, !dbg !6458
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !6459 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6420, metadata !DIExpression()), !dbg !6463
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6427, metadata !DIExpression()), !dbg !6465
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  %0 = load i64, i64* %n.addr, align 8, !dbg !6468
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6465
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6469
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6470
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !6469, !srcloc !6454
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6469
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6471
  %add.i = add i32 %4, 1, !dbg !6472
  %sub = sub i32 %add.i, 1, !dbg !6473
  ret i32 %sub, !dbg !6474
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6475 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6479, metadata !DIExpression()), !dbg !6480
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6481, metadata !DIExpression()), !dbg !6482
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6483, metadata !DIExpression()), !dbg !6484
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6485, metadata !DIExpression()), !dbg !6486
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6487
  ret i8* %0, !dbg !6488
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !6489 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6494, metadata !DIExpression()), !dbg !6495
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6496, metadata !DIExpression()), !dbg !6498
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6498
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !6499
  %tobool = icmp ne i32 %0, 0, !dbg !6499
  %lnot = xor i1 %tobool, true, !dbg !6499
  %lnot1 = xor i1 %lnot, true, !dbg !6499
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6499
  %conv = sext i32 %lnot.ext to i64, !dbg !6499
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6499
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6498

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6499

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !6501

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !6503

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !6501
  %2 = load i64, i64* %count.addr, align 8, !dbg !6501
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %1, i64 %2) #7, !dbg !6501
  br label %do.body4, !dbg !6501

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6505

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6507

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6505

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 134, i32 2313, i64 12) #8, !dbg !6509, !srcloc !6511
  br label %do.end8, !dbg !6509

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #8, !dbg !6512, !srcloc !6514
  br label %do.body9, !dbg !6505

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6515

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !6505

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !6501

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6517

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6501

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6501

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6498
  %tobool15 = icmp ne i32 %3, 0, !dbg !6498
  %lnot16 = xor i1 %tobool15, true, !dbg !6498
  %lnot18 = xor i1 %lnot16, true, !dbg !6498
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6498
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6498
  store i64 %conv20, i64* %tmp, align 8, !dbg !6499
  %4 = load i64, i64* %tmp, align 8, !dbg !6498
  ret void, !dbg !6519
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !6520 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6523, metadata !DIExpression()), !dbg !6524
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6525, metadata !DIExpression()), !dbg !6526
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !6527, metadata !DIExpression()), !dbg !6528
  ret void, !dbg !6529
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

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
!llvm.module.flags = !{!201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "default_2_colors", scope: !2, file: !3, line: 63, type: !144, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !131, globals: !141, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/core/fbcmap.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !25, !31, !36, !42, !49, !55, !64, !72, !78, !84, !91, !99, !105, !119, !126}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !6, line: 40, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !6, line: 90, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !19, line: 15, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !26, line: 546, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !32, line: 65, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !37, line: 16, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 59, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !50, line: 54, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !56, line: 296, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !65, line: 9, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !73, line: 26, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !79, line: 44, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !85, line: 343, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !92, line: 524, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !92, line: 502, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !106, line: 76, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!108 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!115 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!116 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!117 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!118 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !120, line: 305, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 10, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130}
!129 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!131 = !{!132, !134, !139, !140}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !133, line: 148, baseType: !7)
!133 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 55, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !136, line: 72, baseType: !137)
!136 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !136, line: 16, baseType: !138)
!138 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !{!0, !142, !159, !161, !163, !170, !172, !174, !179, !181, !183, !188, !190, !192, !197, !199}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "default_4_colors", scope: !2, file: !3, line: 69, type: !144, isLocal: true, isDefinition: true)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !146, line: 282, size: 320, elements: !147)
!146 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !151, !152, !156, !157, !158}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !145, file: !146, line: 283, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !150, line: 27, baseType: !7)
!150 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !145, file: !146, line: 284, baseType: !149, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !145, file: !146, line: 285, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !150, line: 24, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !145, file: !146, line: 286, baseType: !153, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !145, file: !146, line: 287, baseType: !153, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !145, file: !146, line: 288, baseType: !153, size: 64, offset: 256)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "default_8_colors", scope: !2, file: !3, line: 66, type: !144, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "default_16_colors", scope: !2, file: !3, line: 72, type: !144, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "red2", scope: !2, file: !3, line: 20, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 32, elements: !168)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !167, line: 19, baseType: !154)
!167 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169}
!169 = !DISubrange(count: 2)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "green2", scope: !2, file: !3, line: 23, type: !165, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "blue2", scope: !2, file: !3, line: 26, type: !165, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "red4", scope: !2, file: !3, line: 30, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 4)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "green4", scope: !2, file: !3, line: 33, type: !176, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "blue4", scope: !2, file: !3, line: 36, type: !176, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "red8", scope: !2, file: !3, line: 40, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 8)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "green8", scope: !2, file: !3, line: 43, type: !185, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "blue8", scope: !2, file: !3, line: 46, type: !185, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "red16", scope: !2, file: !3, line: 50, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 16)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "green16", scope: !2, file: !3, line: 54, type: !194, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "blue16", scope: !2, file: !3, line: 58, type: !194, isLocal: true, isDefinition: true)
!201 = !{i32 7, !"Dwarf Version", i32 4}
!202 = !{i32 2, !"Debug Info Version", i32 3}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"Code Model", i32 2}
!205 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!206 = distinct !DISubprogram(name: "fb_alloc_cmap_gfp", scope: !3, file: !3, line: 92, type: !207, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!140, !209, !140, !140, !132}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!210 = !{}
!211 = !DILocalVariable(name: "s", arg: 1, scope: !212, file: !120, line: 445, type: !215)
!212 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !120, file: !120, line: 445, type: !213, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!213 = !DISubroutineType(types: !214)
!214 = !{!139, !215, !132, !134}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !217, line: 117, flags: DIFlagFwdDecl)
!217 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DILocation(line: 445, column: 72, scope: !212, inlinedAt: !219)
!219 = distinct !DILocation(line: 552, column: 10, scope: !220, inlinedAt: !225)
!220 = distinct !DILexicalBlock(scope: !221, file: !120, line: 540, column: 34)
!221 = distinct !DILexicalBlock(scope: !222, file: !120, line: 540, column: 6)
!222 = distinct !DISubprogram(name: "kmalloc", scope: !120, file: !120, line: 538, type: !223, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!223 = !DISubroutineType(types: !224)
!224 = !{!139, !134, !132}
!225 = distinct !DILocation(line: 114, column: 19, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 113, column: 15)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 113, column: 7)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 99, column: 24)
!229 = distinct !DILexicalBlock(scope: !206, file: !3, line: 99, column: 6)
!230 = !DILocalVariable(name: "flags", arg: 2, scope: !212, file: !120, line: 446, type: !132)
!231 = !DILocation(line: 446, column: 9, scope: !212, inlinedAt: !219)
!232 = !DILocalVariable(name: "size", arg: 3, scope: !212, file: !120, line: 446, type: !134)
!233 = !DILocation(line: 446, column: 23, scope: !212, inlinedAt: !219)
!234 = !DILocalVariable(name: "ret", scope: !212, file: !120, line: 448, type: !139)
!235 = !DILocation(line: 448, column: 8, scope: !212, inlinedAt: !219)
!236 = !DILocalVariable(name: "flags", arg: 1, scope: !237, file: !120, line: 318, type: !132)
!237 = distinct !DISubprogram(name: "kmalloc_type", scope: !120, file: !120, line: 318, type: !238, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!238 = !DISubroutineType(types: !239)
!239 = !{!119, !132}
!240 = !DILocation(line: 318, column: 67, scope: !237, inlinedAt: !241)
!241 = distinct !DILocation(line: 553, column: 20, scope: !220, inlinedAt: !225)
!242 = !DILocalVariable(name: "size", arg: 1, scope: !243, file: !120, line: 346, type: !134)
!243 = distinct !DISubprogram(name: "kmalloc_index", scope: !120, file: !120, line: 346, type: !244, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!244 = !DISubroutineType(types: !245)
!245 = !{!7, !134}
!246 = !DILocation(line: 346, column: 58, scope: !243, inlinedAt: !247)
!247 = distinct !DILocation(line: 547, column: 11, scope: !220, inlinedAt: !225)
!248 = !DILocalVariable(name: "size", arg: 1, scope: !249, file: !120, line: 472, type: !134)
!249 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !120, file: !120, line: 472, type: !250, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!250 = !DISubroutineType(types: !251)
!251 = !{!139, !134, !132, !7}
!252 = !DILocation(line: 472, column: 28, scope: !249, inlinedAt: !253)
!253 = distinct !DILocation(line: 481, column: 9, scope: !254, inlinedAt: !255)
!254 = distinct !DISubprogram(name: "kmalloc_large", scope: !120, file: !120, line: 478, type: !223, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!255 = distinct !DILocation(line: 545, column: 11, scope: !256, inlinedAt: !225)
!256 = distinct !DILexicalBlock(scope: !220, file: !120, line: 544, column: 7)
!257 = !DILocalVariable(name: "flags", arg: 2, scope: !249, file: !120, line: 472, type: !132)
!258 = !DILocation(line: 472, column: 40, scope: !249, inlinedAt: !253)
!259 = !DILocalVariable(name: "order", arg: 3, scope: !249, file: !120, line: 472, type: !7)
!260 = !DILocation(line: 472, column: 60, scope: !249, inlinedAt: !253)
!261 = !DILocalVariable(name: "size", arg: 1, scope: !254, file: !120, line: 478, type: !134)
!262 = !DILocation(line: 478, column: 51, scope: !254, inlinedAt: !255)
!263 = !DILocalVariable(name: "flags", arg: 2, scope: !254, file: !120, line: 478, type: !132)
!264 = !DILocation(line: 478, column: 63, scope: !254, inlinedAt: !255)
!265 = !DILocalVariable(name: "order", scope: !254, file: !120, line: 480, type: !7)
!266 = !DILocation(line: 480, column: 15, scope: !254, inlinedAt: !255)
!267 = !DILocalVariable(name: "size", arg: 1, scope: !222, file: !120, line: 538, type: !134)
!268 = !DILocation(line: 538, column: 45, scope: !222, inlinedAt: !225)
!269 = !DILocalVariable(name: "flags", arg: 2, scope: !222, file: !120, line: 538, type: !132)
!270 = !DILocation(line: 538, column: 57, scope: !222, inlinedAt: !225)
!271 = !DILocalVariable(name: "index", scope: !220, file: !120, line: 542, type: !7)
!272 = !DILocation(line: 542, column: 16, scope: !220, inlinedAt: !225)
!273 = !DILocation(line: 445, column: 72, scope: !212, inlinedAt: !274)
!274 = distinct !DILocation(line: 552, column: 10, scope: !220, inlinedAt: !275)
!275 = distinct !DILocation(line: 110, column: 16, scope: !228)
!276 = !DILocation(line: 446, column: 9, scope: !212, inlinedAt: !274)
!277 = !DILocation(line: 446, column: 23, scope: !212, inlinedAt: !274)
!278 = !DILocation(line: 448, column: 8, scope: !212, inlinedAt: !274)
!279 = !DILocation(line: 318, column: 67, scope: !237, inlinedAt: !280)
!280 = distinct !DILocation(line: 553, column: 20, scope: !220, inlinedAt: !275)
!281 = !DILocation(line: 346, column: 58, scope: !243, inlinedAt: !282)
!282 = distinct !DILocation(line: 547, column: 11, scope: !220, inlinedAt: !275)
!283 = !DILocation(line: 472, column: 28, scope: !249, inlinedAt: !284)
!284 = distinct !DILocation(line: 481, column: 9, scope: !254, inlinedAt: !285)
!285 = distinct !DILocation(line: 545, column: 11, scope: !256, inlinedAt: !275)
!286 = !DILocation(line: 472, column: 40, scope: !249, inlinedAt: !284)
!287 = !DILocation(line: 472, column: 60, scope: !249, inlinedAt: !284)
!288 = !DILocation(line: 478, column: 51, scope: !254, inlinedAt: !285)
!289 = !DILocation(line: 478, column: 63, scope: !254, inlinedAt: !285)
!290 = !DILocation(line: 480, column: 15, scope: !254, inlinedAt: !285)
!291 = !DILocation(line: 538, column: 45, scope: !222, inlinedAt: !275)
!292 = !DILocation(line: 538, column: 57, scope: !222, inlinedAt: !275)
!293 = !DILocation(line: 542, column: 16, scope: !220, inlinedAt: !275)
!294 = !DILocation(line: 445, column: 72, scope: !212, inlinedAt: !295)
!295 = distinct !DILocation(line: 552, column: 10, scope: !220, inlinedAt: !296)
!296 = distinct !DILocation(line: 107, column: 17, scope: !228)
!297 = !DILocation(line: 446, column: 9, scope: !212, inlinedAt: !295)
!298 = !DILocation(line: 446, column: 23, scope: !212, inlinedAt: !295)
!299 = !DILocation(line: 448, column: 8, scope: !212, inlinedAt: !295)
!300 = !DILocation(line: 318, column: 67, scope: !237, inlinedAt: !301)
!301 = distinct !DILocation(line: 553, column: 20, scope: !220, inlinedAt: !296)
!302 = !DILocation(line: 346, column: 58, scope: !243, inlinedAt: !303)
!303 = distinct !DILocation(line: 547, column: 11, scope: !220, inlinedAt: !296)
!304 = !DILocation(line: 472, column: 28, scope: !249, inlinedAt: !305)
!305 = distinct !DILocation(line: 481, column: 9, scope: !254, inlinedAt: !306)
!306 = distinct !DILocation(line: 545, column: 11, scope: !256, inlinedAt: !296)
!307 = !DILocation(line: 472, column: 40, scope: !249, inlinedAt: !305)
!308 = !DILocation(line: 472, column: 60, scope: !249, inlinedAt: !305)
!309 = !DILocation(line: 478, column: 51, scope: !254, inlinedAt: !306)
!310 = !DILocation(line: 478, column: 63, scope: !254, inlinedAt: !306)
!311 = !DILocation(line: 480, column: 15, scope: !254, inlinedAt: !306)
!312 = !DILocation(line: 538, column: 45, scope: !222, inlinedAt: !296)
!313 = !DILocation(line: 538, column: 57, scope: !222, inlinedAt: !296)
!314 = !DILocation(line: 542, column: 16, scope: !220, inlinedAt: !296)
!315 = !DILocation(line: 445, column: 72, scope: !212, inlinedAt: !316)
!316 = distinct !DILocation(line: 552, column: 10, scope: !220, inlinedAt: !317)
!317 = distinct !DILocation(line: 104, column: 15, scope: !228)
!318 = !DILocation(line: 446, column: 9, scope: !212, inlinedAt: !316)
!319 = !DILocation(line: 446, column: 23, scope: !212, inlinedAt: !316)
!320 = !DILocation(line: 448, column: 8, scope: !212, inlinedAt: !316)
!321 = !DILocation(line: 318, column: 67, scope: !237, inlinedAt: !322)
!322 = distinct !DILocation(line: 553, column: 20, scope: !220, inlinedAt: !317)
!323 = !DILocation(line: 346, column: 58, scope: !243, inlinedAt: !324)
!324 = distinct !DILocation(line: 547, column: 11, scope: !220, inlinedAt: !317)
!325 = !DILocation(line: 472, column: 28, scope: !249, inlinedAt: !326)
!326 = distinct !DILocation(line: 481, column: 9, scope: !254, inlinedAt: !327)
!327 = distinct !DILocation(line: 545, column: 11, scope: !256, inlinedAt: !317)
!328 = !DILocation(line: 472, column: 40, scope: !249, inlinedAt: !326)
!329 = !DILocation(line: 472, column: 60, scope: !249, inlinedAt: !326)
!330 = !DILocation(line: 478, column: 51, scope: !254, inlinedAt: !327)
!331 = !DILocation(line: 478, column: 63, scope: !254, inlinedAt: !327)
!332 = !DILocation(line: 480, column: 15, scope: !254, inlinedAt: !327)
!333 = !DILocation(line: 538, column: 45, scope: !222, inlinedAt: !317)
!334 = !DILocation(line: 538, column: 57, scope: !222, inlinedAt: !317)
!335 = !DILocation(line: 542, column: 16, scope: !220, inlinedAt: !317)
!336 = !DILocalVariable(name: "cmap", arg: 1, scope: !206, file: !3, line: 92, type: !209)
!337 = !DILocation(line: 92, column: 39, scope: !206)
!338 = !DILocalVariable(name: "len", arg: 2, scope: !206, file: !3, line: 92, type: !140)
!339 = !DILocation(line: 92, column: 49, scope: !206)
!340 = !DILocalVariable(name: "transp", arg: 3, scope: !206, file: !3, line: 92, type: !140)
!341 = !DILocation(line: 92, column: 58, scope: !206)
!342 = !DILocalVariable(name: "flags", arg: 4, scope: !206, file: !3, line: 92, type: !132)
!343 = !DILocation(line: 92, column: 72, scope: !206)
!344 = !DILocalVariable(name: "size", scope: !206, file: !3, line: 94, type: !140)
!345 = !DILocation(line: 94, column: 6, scope: !206)
!346 = !DILocation(line: 94, column: 13, scope: !206)
!347 = !DILocation(line: 94, column: 17, scope: !206)
!348 = !DILocalVariable(name: "ret", scope: !206, file: !3, line: 95, type: !140)
!349 = !DILocation(line: 95, column: 6, scope: !206)
!350 = !DILocation(line: 97, column: 8, scope: !206)
!351 = !DILocation(line: 99, column: 6, scope: !229)
!352 = !DILocation(line: 99, column: 12, scope: !229)
!353 = !DILocation(line: 99, column: 19, scope: !229)
!354 = !DILocation(line: 99, column: 16, scope: !229)
!355 = !DILocation(line: 99, column: 6, scope: !206)
!356 = !DILocation(line: 100, column: 19, scope: !228)
!357 = !DILocation(line: 100, column: 3, scope: !228)
!358 = !DILocation(line: 101, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !228, file: !3, line: 101, column: 7)
!360 = !DILocation(line: 101, column: 7, scope: !228)
!361 = !DILocation(line: 102, column: 4, scope: !359)
!362 = !DILocation(line: 104, column: 23, scope: !228)
!363 = !DILocation(line: 104, column: 29, scope: !228)
!364 = !DILocation(line: 540, column: 27, scope: !221, inlinedAt: !317)
!365 = !DILocation(line: 540, column: 6, scope: !221, inlinedAt: !317)
!366 = !DILocation(line: 540, column: 6, scope: !222, inlinedAt: !317)
!367 = !DILocation(line: 544, column: 7, scope: !256, inlinedAt: !317)
!368 = !DILocation(line: 544, column: 12, scope: !256, inlinedAt: !317)
!369 = !DILocation(line: 544, column: 7, scope: !220, inlinedAt: !317)
!370 = !DILocation(line: 545, column: 25, scope: !256, inlinedAt: !317)
!371 = !DILocation(line: 545, column: 31, scope: !256, inlinedAt: !317)
!372 = !DILocation(line: 480, column: 33, scope: !254, inlinedAt: !327)
!373 = !DILocation(line: 480, column: 23, scope: !254, inlinedAt: !327)
!374 = !DILocation(line: 481, column: 29, scope: !254, inlinedAt: !327)
!375 = !DILocation(line: 481, column: 35, scope: !254, inlinedAt: !327)
!376 = !DILocation(line: 481, column: 42, scope: !254, inlinedAt: !327)
!377 = !DILocation(line: 474, column: 23, scope: !249, inlinedAt: !326)
!378 = !DILocation(line: 474, column: 29, scope: !249, inlinedAt: !326)
!379 = !DILocation(line: 474, column: 36, scope: !249, inlinedAt: !326)
!380 = !DILocation(line: 474, column: 9, scope: !249, inlinedAt: !326)
!381 = !DILocation(line: 545, column: 4, scope: !256, inlinedAt: !317)
!382 = !DILocation(line: 547, column: 25, scope: !220, inlinedAt: !317)
!383 = !DILocation(line: 348, column: 7, scope: !384, inlinedAt: !324)
!384 = distinct !DILexicalBlock(scope: !243, file: !120, line: 348, column: 6)
!385 = !DILocation(line: 348, column: 6, scope: !243, inlinedAt: !324)
!386 = !DILocation(line: 349, column: 3, scope: !384, inlinedAt: !324)
!387 = !DILocation(line: 351, column: 6, scope: !388, inlinedAt: !324)
!388 = distinct !DILexicalBlock(scope: !243, file: !120, line: 351, column: 6)
!389 = !DILocation(line: 351, column: 11, scope: !388, inlinedAt: !324)
!390 = !DILocation(line: 351, column: 6, scope: !243, inlinedAt: !324)
!391 = !DILocation(line: 352, column: 3, scope: !388, inlinedAt: !324)
!392 = !DILocation(line: 354, column: 32, scope: !393, inlinedAt: !324)
!393 = distinct !DILexicalBlock(scope: !243, file: !120, line: 354, column: 6)
!394 = !DILocation(line: 354, column: 37, scope: !393, inlinedAt: !324)
!395 = !DILocation(line: 354, column: 42, scope: !393, inlinedAt: !324)
!396 = !DILocation(line: 354, column: 45, scope: !393, inlinedAt: !324)
!397 = !DILocation(line: 354, column: 50, scope: !393, inlinedAt: !324)
!398 = !DILocation(line: 354, column: 6, scope: !243, inlinedAt: !324)
!399 = !DILocation(line: 355, column: 3, scope: !393, inlinedAt: !324)
!400 = !DILocation(line: 356, column: 32, scope: !401, inlinedAt: !324)
!401 = distinct !DILexicalBlock(scope: !243, file: !120, line: 356, column: 6)
!402 = !DILocation(line: 356, column: 37, scope: !401, inlinedAt: !324)
!403 = !DILocation(line: 356, column: 43, scope: !401, inlinedAt: !324)
!404 = !DILocation(line: 356, column: 46, scope: !401, inlinedAt: !324)
!405 = !DILocation(line: 356, column: 51, scope: !401, inlinedAt: !324)
!406 = !DILocation(line: 356, column: 6, scope: !243, inlinedAt: !324)
!407 = !DILocation(line: 357, column: 3, scope: !401, inlinedAt: !324)
!408 = !DILocation(line: 358, column: 6, scope: !409, inlinedAt: !324)
!409 = distinct !DILexicalBlock(scope: !243, file: !120, line: 358, column: 6)
!410 = !DILocation(line: 358, column: 11, scope: !409, inlinedAt: !324)
!411 = !DILocation(line: 358, column: 6, scope: !243, inlinedAt: !324)
!412 = !DILocation(line: 358, column: 26, scope: !409, inlinedAt: !324)
!413 = !DILocation(line: 359, column: 6, scope: !414, inlinedAt: !324)
!414 = distinct !DILexicalBlock(scope: !243, file: !120, line: 359, column: 6)
!415 = !DILocation(line: 359, column: 11, scope: !414, inlinedAt: !324)
!416 = !DILocation(line: 359, column: 6, scope: !243, inlinedAt: !324)
!417 = !DILocation(line: 359, column: 26, scope: !414, inlinedAt: !324)
!418 = !DILocation(line: 360, column: 6, scope: !419, inlinedAt: !324)
!419 = distinct !DILexicalBlock(scope: !243, file: !120, line: 360, column: 6)
!420 = !DILocation(line: 360, column: 11, scope: !419, inlinedAt: !324)
!421 = !DILocation(line: 360, column: 6, scope: !243, inlinedAt: !324)
!422 = !DILocation(line: 360, column: 26, scope: !419, inlinedAt: !324)
!423 = !DILocation(line: 361, column: 6, scope: !424, inlinedAt: !324)
!424 = distinct !DILexicalBlock(scope: !243, file: !120, line: 361, column: 6)
!425 = !DILocation(line: 361, column: 11, scope: !424, inlinedAt: !324)
!426 = !DILocation(line: 361, column: 6, scope: !243, inlinedAt: !324)
!427 = !DILocation(line: 361, column: 26, scope: !424, inlinedAt: !324)
!428 = !DILocation(line: 362, column: 6, scope: !429, inlinedAt: !324)
!429 = distinct !DILexicalBlock(scope: !243, file: !120, line: 362, column: 6)
!430 = !DILocation(line: 362, column: 11, scope: !429, inlinedAt: !324)
!431 = !DILocation(line: 362, column: 6, scope: !243, inlinedAt: !324)
!432 = !DILocation(line: 362, column: 26, scope: !429, inlinedAt: !324)
!433 = !DILocation(line: 363, column: 6, scope: !434, inlinedAt: !324)
!434 = distinct !DILexicalBlock(scope: !243, file: !120, line: 363, column: 6)
!435 = !DILocation(line: 363, column: 11, scope: !434, inlinedAt: !324)
!436 = !DILocation(line: 363, column: 6, scope: !243, inlinedAt: !324)
!437 = !DILocation(line: 363, column: 26, scope: !434, inlinedAt: !324)
!438 = !DILocation(line: 364, column: 6, scope: !439, inlinedAt: !324)
!439 = distinct !DILexicalBlock(scope: !243, file: !120, line: 364, column: 6)
!440 = !DILocation(line: 364, column: 11, scope: !439, inlinedAt: !324)
!441 = !DILocation(line: 364, column: 6, scope: !243, inlinedAt: !324)
!442 = !DILocation(line: 364, column: 26, scope: !439, inlinedAt: !324)
!443 = !DILocation(line: 365, column: 6, scope: !444, inlinedAt: !324)
!444 = distinct !DILexicalBlock(scope: !243, file: !120, line: 365, column: 6)
!445 = !DILocation(line: 365, column: 11, scope: !444, inlinedAt: !324)
!446 = !DILocation(line: 365, column: 6, scope: !243, inlinedAt: !324)
!447 = !DILocation(line: 365, column: 26, scope: !444, inlinedAt: !324)
!448 = !DILocation(line: 366, column: 6, scope: !449, inlinedAt: !324)
!449 = distinct !DILexicalBlock(scope: !243, file: !120, line: 366, column: 6)
!450 = !DILocation(line: 366, column: 11, scope: !449, inlinedAt: !324)
!451 = !DILocation(line: 366, column: 6, scope: !243, inlinedAt: !324)
!452 = !DILocation(line: 366, column: 26, scope: !449, inlinedAt: !324)
!453 = !DILocation(line: 367, column: 6, scope: !454, inlinedAt: !324)
!454 = distinct !DILexicalBlock(scope: !243, file: !120, line: 367, column: 6)
!455 = !DILocation(line: 367, column: 11, scope: !454, inlinedAt: !324)
!456 = !DILocation(line: 367, column: 6, scope: !243, inlinedAt: !324)
!457 = !DILocation(line: 367, column: 26, scope: !454, inlinedAt: !324)
!458 = !DILocation(line: 368, column: 6, scope: !459, inlinedAt: !324)
!459 = distinct !DILexicalBlock(scope: !243, file: !120, line: 368, column: 6)
!460 = !DILocation(line: 368, column: 11, scope: !459, inlinedAt: !324)
!461 = !DILocation(line: 368, column: 6, scope: !243, inlinedAt: !324)
!462 = !DILocation(line: 368, column: 26, scope: !459, inlinedAt: !324)
!463 = !DILocation(line: 369, column: 6, scope: !464, inlinedAt: !324)
!464 = distinct !DILexicalBlock(scope: !243, file: !120, line: 369, column: 6)
!465 = !DILocation(line: 369, column: 11, scope: !464, inlinedAt: !324)
!466 = !DILocation(line: 369, column: 6, scope: !243, inlinedAt: !324)
!467 = !DILocation(line: 369, column: 26, scope: !464, inlinedAt: !324)
!468 = !DILocation(line: 370, column: 6, scope: !469, inlinedAt: !324)
!469 = distinct !DILexicalBlock(scope: !243, file: !120, line: 370, column: 6)
!470 = !DILocation(line: 370, column: 11, scope: !469, inlinedAt: !324)
!471 = !DILocation(line: 370, column: 6, scope: !243, inlinedAt: !324)
!472 = !DILocation(line: 370, column: 26, scope: !469, inlinedAt: !324)
!473 = !DILocation(line: 371, column: 6, scope: !474, inlinedAt: !324)
!474 = distinct !DILexicalBlock(scope: !243, file: !120, line: 371, column: 6)
!475 = !DILocation(line: 371, column: 11, scope: !474, inlinedAt: !324)
!476 = !DILocation(line: 371, column: 6, scope: !243, inlinedAt: !324)
!477 = !DILocation(line: 371, column: 26, scope: !474, inlinedAt: !324)
!478 = !DILocation(line: 372, column: 6, scope: !479, inlinedAt: !324)
!479 = distinct !DILexicalBlock(scope: !243, file: !120, line: 372, column: 6)
!480 = !DILocation(line: 372, column: 11, scope: !479, inlinedAt: !324)
!481 = !DILocation(line: 372, column: 6, scope: !243, inlinedAt: !324)
!482 = !DILocation(line: 372, column: 26, scope: !479, inlinedAt: !324)
!483 = !DILocation(line: 373, column: 6, scope: !484, inlinedAt: !324)
!484 = distinct !DILexicalBlock(scope: !243, file: !120, line: 373, column: 6)
!485 = !DILocation(line: 373, column: 11, scope: !484, inlinedAt: !324)
!486 = !DILocation(line: 373, column: 6, scope: !243, inlinedAt: !324)
!487 = !DILocation(line: 373, column: 26, scope: !484, inlinedAt: !324)
!488 = !DILocation(line: 374, column: 6, scope: !489, inlinedAt: !324)
!489 = distinct !DILexicalBlock(scope: !243, file: !120, line: 374, column: 6)
!490 = !DILocation(line: 374, column: 11, scope: !489, inlinedAt: !324)
!491 = !DILocation(line: 374, column: 6, scope: !243, inlinedAt: !324)
!492 = !DILocation(line: 374, column: 26, scope: !489, inlinedAt: !324)
!493 = !DILocation(line: 375, column: 6, scope: !494, inlinedAt: !324)
!494 = distinct !DILexicalBlock(scope: !243, file: !120, line: 375, column: 6)
!495 = !DILocation(line: 375, column: 11, scope: !494, inlinedAt: !324)
!496 = !DILocation(line: 375, column: 6, scope: !243, inlinedAt: !324)
!497 = !DILocation(line: 375, column: 27, scope: !494, inlinedAt: !324)
!498 = !DILocation(line: 376, column: 6, scope: !499, inlinedAt: !324)
!499 = distinct !DILexicalBlock(scope: !243, file: !120, line: 376, column: 6)
!500 = !DILocation(line: 376, column: 11, scope: !499, inlinedAt: !324)
!501 = !DILocation(line: 376, column: 6, scope: !243, inlinedAt: !324)
!502 = !DILocation(line: 376, column: 32, scope: !499, inlinedAt: !324)
!503 = !DILocation(line: 377, column: 6, scope: !504, inlinedAt: !324)
!504 = distinct !DILexicalBlock(scope: !243, file: !120, line: 377, column: 6)
!505 = !DILocation(line: 377, column: 11, scope: !504, inlinedAt: !324)
!506 = !DILocation(line: 377, column: 6, scope: !243, inlinedAt: !324)
!507 = !DILocation(line: 377, column: 32, scope: !504, inlinedAt: !324)
!508 = !DILocation(line: 378, column: 6, scope: !509, inlinedAt: !324)
!509 = distinct !DILexicalBlock(scope: !243, file: !120, line: 378, column: 6)
!510 = !DILocation(line: 378, column: 11, scope: !509, inlinedAt: !324)
!511 = !DILocation(line: 378, column: 6, scope: !243, inlinedAt: !324)
!512 = !DILocation(line: 378, column: 32, scope: !509, inlinedAt: !324)
!513 = !DILocation(line: 379, column: 6, scope: !514, inlinedAt: !324)
!514 = distinct !DILexicalBlock(scope: !243, file: !120, line: 379, column: 6)
!515 = !DILocation(line: 379, column: 11, scope: !514, inlinedAt: !324)
!516 = !DILocation(line: 379, column: 6, scope: !243, inlinedAt: !324)
!517 = !DILocation(line: 379, column: 33, scope: !514, inlinedAt: !324)
!518 = !DILocation(line: 380, column: 6, scope: !519, inlinedAt: !324)
!519 = distinct !DILexicalBlock(scope: !243, file: !120, line: 380, column: 6)
!520 = !DILocation(line: 380, column: 11, scope: !519, inlinedAt: !324)
!521 = !DILocation(line: 380, column: 6, scope: !243, inlinedAt: !324)
!522 = !DILocation(line: 380, column: 33, scope: !519, inlinedAt: !324)
!523 = !DILocation(line: 381, column: 6, scope: !524, inlinedAt: !324)
!524 = distinct !DILexicalBlock(scope: !243, file: !120, line: 381, column: 6)
!525 = !DILocation(line: 381, column: 11, scope: !524, inlinedAt: !324)
!526 = !DILocation(line: 381, column: 6, scope: !243, inlinedAt: !324)
!527 = !DILocation(line: 381, column: 33, scope: !524, inlinedAt: !324)
!528 = !DILocation(line: 382, column: 2, scope: !529, inlinedAt: !324)
!529 = distinct !DILexicalBlock(scope: !530, file: !120, line: 382, column: 2)
!530 = distinct !DILexicalBlock(scope: !243, file: !120, line: 382, column: 2)
!531 = !{i32 -2142077741, i32 -2142077712, i32 -2142077666, i32 -2142077608, i32 -2142077554, i32 -2142077500, i32 -2142077445, i32 -2142077414}
!532 = !DILocation(line: 382, column: 2, scope: !533, inlinedAt: !324)
!533 = distinct !DILexicalBlock(scope: !534, file: !120, line: 382, column: 2)
!534 = distinct !DILexicalBlock(scope: !530, file: !120, line: 382, column: 2)
!535 = !{i32 -2142076971, i32 -2142076964, i32 -2142076910, i32 -2142076879, i32 -2142076849}
!536 = !DILocation(line: 382, column: 2, scope: !534, inlinedAt: !324)
!537 = !DILocation(line: 386, column: 1, scope: !243, inlinedAt: !324)
!538 = !DILocation(line: 547, column: 9, scope: !220, inlinedAt: !317)
!539 = !DILocation(line: 549, column: 8, scope: !540, inlinedAt: !317)
!540 = distinct !DILexicalBlock(scope: !220, file: !120, line: 549, column: 7)
!541 = !DILocation(line: 549, column: 7, scope: !220, inlinedAt: !317)
!542 = !DILocation(line: 550, column: 4, scope: !540, inlinedAt: !317)
!543 = !DILocation(line: 553, column: 33, scope: !220, inlinedAt: !317)
!544 = !DILocation(line: 325, column: 6, scope: !545, inlinedAt: !322)
!545 = distinct !DILexicalBlock(scope: !237, file: !120, line: 325, column: 6)
!546 = !DILocation(line: 325, column: 6, scope: !237, inlinedAt: !322)
!547 = !DILocation(line: 326, column: 3, scope: !545, inlinedAt: !322)
!548 = !DILocation(line: 332, column: 9, scope: !237, inlinedAt: !322)
!549 = !DILocation(line: 332, column: 15, scope: !237, inlinedAt: !322)
!550 = !DILocation(line: 332, column: 2, scope: !237, inlinedAt: !322)
!551 = !DILocation(line: 336, column: 1, scope: !237, inlinedAt: !322)
!552 = !DILocation(line: 553, column: 5, scope: !220, inlinedAt: !317)
!553 = !DILocation(line: 553, column: 41, scope: !220, inlinedAt: !317)
!554 = !DILocation(line: 554, column: 5, scope: !220, inlinedAt: !317)
!555 = !DILocation(line: 554, column: 12, scope: !220, inlinedAt: !317)
!556 = !DILocation(line: 448, column: 31, scope: !212, inlinedAt: !316)
!557 = !DILocation(line: 448, column: 34, scope: !212, inlinedAt: !316)
!558 = !DILocation(line: 448, column: 14, scope: !212, inlinedAt: !316)
!559 = !DILocation(line: 450, column: 22, scope: !212, inlinedAt: !316)
!560 = !DILocation(line: 450, column: 25, scope: !212, inlinedAt: !316)
!561 = !DILocation(line: 450, column: 30, scope: !212, inlinedAt: !316)
!562 = !DILocation(line: 450, column: 36, scope: !212, inlinedAt: !316)
!563 = !DILocation(line: 450, column: 8, scope: !212, inlinedAt: !316)
!564 = !DILocation(line: 450, column: 6, scope: !212, inlinedAt: !316)
!565 = !DILocation(line: 451, column: 9, scope: !212, inlinedAt: !316)
!566 = !DILocation(line: 552, column: 3, scope: !220, inlinedAt: !317)
!567 = !DILocation(line: 557, column: 19, scope: !222, inlinedAt: !317)
!568 = !DILocation(line: 557, column: 25, scope: !222, inlinedAt: !317)
!569 = !DILocation(line: 557, column: 9, scope: !222, inlinedAt: !317)
!570 = !DILocation(line: 557, column: 2, scope: !222, inlinedAt: !317)
!571 = !DILocation(line: 558, column: 1, scope: !222, inlinedAt: !317)
!572 = !DILocation(line: 104, column: 15, scope: !228)
!573 = !DILocation(line: 104, column: 3, scope: !228)
!574 = !DILocation(line: 104, column: 9, scope: !228)
!575 = !DILocation(line: 104, column: 13, scope: !228)
!576 = !DILocation(line: 105, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !228, file: !3, line: 105, column: 7)
!578 = !DILocation(line: 105, column: 14, scope: !577)
!579 = !DILocation(line: 105, column: 7, scope: !228)
!580 = !DILocation(line: 106, column: 4, scope: !577)
!581 = !DILocation(line: 107, column: 25, scope: !228)
!582 = !DILocation(line: 107, column: 31, scope: !228)
!583 = !DILocation(line: 540, column: 27, scope: !221, inlinedAt: !296)
!584 = !DILocation(line: 540, column: 6, scope: !221, inlinedAt: !296)
!585 = !DILocation(line: 540, column: 6, scope: !222, inlinedAt: !296)
!586 = !DILocation(line: 544, column: 7, scope: !256, inlinedAt: !296)
!587 = !DILocation(line: 544, column: 12, scope: !256, inlinedAt: !296)
!588 = !DILocation(line: 544, column: 7, scope: !220, inlinedAt: !296)
!589 = !DILocation(line: 545, column: 25, scope: !256, inlinedAt: !296)
!590 = !DILocation(line: 545, column: 31, scope: !256, inlinedAt: !296)
!591 = !DILocation(line: 480, column: 33, scope: !254, inlinedAt: !306)
!592 = !DILocation(line: 480, column: 23, scope: !254, inlinedAt: !306)
!593 = !DILocation(line: 481, column: 29, scope: !254, inlinedAt: !306)
!594 = !DILocation(line: 481, column: 35, scope: !254, inlinedAt: !306)
!595 = !DILocation(line: 481, column: 42, scope: !254, inlinedAt: !306)
!596 = !DILocation(line: 474, column: 23, scope: !249, inlinedAt: !305)
!597 = !DILocation(line: 474, column: 29, scope: !249, inlinedAt: !305)
!598 = !DILocation(line: 474, column: 36, scope: !249, inlinedAt: !305)
!599 = !DILocation(line: 474, column: 9, scope: !249, inlinedAt: !305)
!600 = !DILocation(line: 545, column: 4, scope: !256, inlinedAt: !296)
!601 = !DILocation(line: 547, column: 25, scope: !220, inlinedAt: !296)
!602 = !DILocation(line: 348, column: 7, scope: !384, inlinedAt: !303)
!603 = !DILocation(line: 348, column: 6, scope: !243, inlinedAt: !303)
!604 = !DILocation(line: 349, column: 3, scope: !384, inlinedAt: !303)
!605 = !DILocation(line: 351, column: 6, scope: !388, inlinedAt: !303)
!606 = !DILocation(line: 351, column: 11, scope: !388, inlinedAt: !303)
!607 = !DILocation(line: 351, column: 6, scope: !243, inlinedAt: !303)
!608 = !DILocation(line: 352, column: 3, scope: !388, inlinedAt: !303)
!609 = !DILocation(line: 354, column: 32, scope: !393, inlinedAt: !303)
!610 = !DILocation(line: 354, column: 37, scope: !393, inlinedAt: !303)
!611 = !DILocation(line: 354, column: 42, scope: !393, inlinedAt: !303)
!612 = !DILocation(line: 354, column: 45, scope: !393, inlinedAt: !303)
!613 = !DILocation(line: 354, column: 50, scope: !393, inlinedAt: !303)
!614 = !DILocation(line: 354, column: 6, scope: !243, inlinedAt: !303)
!615 = !DILocation(line: 355, column: 3, scope: !393, inlinedAt: !303)
!616 = !DILocation(line: 356, column: 32, scope: !401, inlinedAt: !303)
!617 = !DILocation(line: 356, column: 37, scope: !401, inlinedAt: !303)
!618 = !DILocation(line: 356, column: 43, scope: !401, inlinedAt: !303)
!619 = !DILocation(line: 356, column: 46, scope: !401, inlinedAt: !303)
!620 = !DILocation(line: 356, column: 51, scope: !401, inlinedAt: !303)
!621 = !DILocation(line: 356, column: 6, scope: !243, inlinedAt: !303)
!622 = !DILocation(line: 357, column: 3, scope: !401, inlinedAt: !303)
!623 = !DILocation(line: 358, column: 6, scope: !409, inlinedAt: !303)
!624 = !DILocation(line: 358, column: 11, scope: !409, inlinedAt: !303)
!625 = !DILocation(line: 358, column: 6, scope: !243, inlinedAt: !303)
!626 = !DILocation(line: 358, column: 26, scope: !409, inlinedAt: !303)
!627 = !DILocation(line: 359, column: 6, scope: !414, inlinedAt: !303)
!628 = !DILocation(line: 359, column: 11, scope: !414, inlinedAt: !303)
!629 = !DILocation(line: 359, column: 6, scope: !243, inlinedAt: !303)
!630 = !DILocation(line: 359, column: 26, scope: !414, inlinedAt: !303)
!631 = !DILocation(line: 360, column: 6, scope: !419, inlinedAt: !303)
!632 = !DILocation(line: 360, column: 11, scope: !419, inlinedAt: !303)
!633 = !DILocation(line: 360, column: 6, scope: !243, inlinedAt: !303)
!634 = !DILocation(line: 360, column: 26, scope: !419, inlinedAt: !303)
!635 = !DILocation(line: 361, column: 6, scope: !424, inlinedAt: !303)
!636 = !DILocation(line: 361, column: 11, scope: !424, inlinedAt: !303)
!637 = !DILocation(line: 361, column: 6, scope: !243, inlinedAt: !303)
!638 = !DILocation(line: 361, column: 26, scope: !424, inlinedAt: !303)
!639 = !DILocation(line: 362, column: 6, scope: !429, inlinedAt: !303)
!640 = !DILocation(line: 362, column: 11, scope: !429, inlinedAt: !303)
!641 = !DILocation(line: 362, column: 6, scope: !243, inlinedAt: !303)
!642 = !DILocation(line: 362, column: 26, scope: !429, inlinedAt: !303)
!643 = !DILocation(line: 363, column: 6, scope: !434, inlinedAt: !303)
!644 = !DILocation(line: 363, column: 11, scope: !434, inlinedAt: !303)
!645 = !DILocation(line: 363, column: 6, scope: !243, inlinedAt: !303)
!646 = !DILocation(line: 363, column: 26, scope: !434, inlinedAt: !303)
!647 = !DILocation(line: 364, column: 6, scope: !439, inlinedAt: !303)
!648 = !DILocation(line: 364, column: 11, scope: !439, inlinedAt: !303)
!649 = !DILocation(line: 364, column: 6, scope: !243, inlinedAt: !303)
!650 = !DILocation(line: 364, column: 26, scope: !439, inlinedAt: !303)
!651 = !DILocation(line: 365, column: 6, scope: !444, inlinedAt: !303)
!652 = !DILocation(line: 365, column: 11, scope: !444, inlinedAt: !303)
!653 = !DILocation(line: 365, column: 6, scope: !243, inlinedAt: !303)
!654 = !DILocation(line: 365, column: 26, scope: !444, inlinedAt: !303)
!655 = !DILocation(line: 366, column: 6, scope: !449, inlinedAt: !303)
!656 = !DILocation(line: 366, column: 11, scope: !449, inlinedAt: !303)
!657 = !DILocation(line: 366, column: 6, scope: !243, inlinedAt: !303)
!658 = !DILocation(line: 366, column: 26, scope: !449, inlinedAt: !303)
!659 = !DILocation(line: 367, column: 6, scope: !454, inlinedAt: !303)
!660 = !DILocation(line: 367, column: 11, scope: !454, inlinedAt: !303)
!661 = !DILocation(line: 367, column: 6, scope: !243, inlinedAt: !303)
!662 = !DILocation(line: 367, column: 26, scope: !454, inlinedAt: !303)
!663 = !DILocation(line: 368, column: 6, scope: !459, inlinedAt: !303)
!664 = !DILocation(line: 368, column: 11, scope: !459, inlinedAt: !303)
!665 = !DILocation(line: 368, column: 6, scope: !243, inlinedAt: !303)
!666 = !DILocation(line: 368, column: 26, scope: !459, inlinedAt: !303)
!667 = !DILocation(line: 369, column: 6, scope: !464, inlinedAt: !303)
!668 = !DILocation(line: 369, column: 11, scope: !464, inlinedAt: !303)
!669 = !DILocation(line: 369, column: 6, scope: !243, inlinedAt: !303)
!670 = !DILocation(line: 369, column: 26, scope: !464, inlinedAt: !303)
!671 = !DILocation(line: 370, column: 6, scope: !469, inlinedAt: !303)
!672 = !DILocation(line: 370, column: 11, scope: !469, inlinedAt: !303)
!673 = !DILocation(line: 370, column: 6, scope: !243, inlinedAt: !303)
!674 = !DILocation(line: 370, column: 26, scope: !469, inlinedAt: !303)
!675 = !DILocation(line: 371, column: 6, scope: !474, inlinedAt: !303)
!676 = !DILocation(line: 371, column: 11, scope: !474, inlinedAt: !303)
!677 = !DILocation(line: 371, column: 6, scope: !243, inlinedAt: !303)
!678 = !DILocation(line: 371, column: 26, scope: !474, inlinedAt: !303)
!679 = !DILocation(line: 372, column: 6, scope: !479, inlinedAt: !303)
!680 = !DILocation(line: 372, column: 11, scope: !479, inlinedAt: !303)
!681 = !DILocation(line: 372, column: 6, scope: !243, inlinedAt: !303)
!682 = !DILocation(line: 372, column: 26, scope: !479, inlinedAt: !303)
!683 = !DILocation(line: 373, column: 6, scope: !484, inlinedAt: !303)
!684 = !DILocation(line: 373, column: 11, scope: !484, inlinedAt: !303)
!685 = !DILocation(line: 373, column: 6, scope: !243, inlinedAt: !303)
!686 = !DILocation(line: 373, column: 26, scope: !484, inlinedAt: !303)
!687 = !DILocation(line: 374, column: 6, scope: !489, inlinedAt: !303)
!688 = !DILocation(line: 374, column: 11, scope: !489, inlinedAt: !303)
!689 = !DILocation(line: 374, column: 6, scope: !243, inlinedAt: !303)
!690 = !DILocation(line: 374, column: 26, scope: !489, inlinedAt: !303)
!691 = !DILocation(line: 375, column: 6, scope: !494, inlinedAt: !303)
!692 = !DILocation(line: 375, column: 11, scope: !494, inlinedAt: !303)
!693 = !DILocation(line: 375, column: 6, scope: !243, inlinedAt: !303)
!694 = !DILocation(line: 375, column: 27, scope: !494, inlinedAt: !303)
!695 = !DILocation(line: 376, column: 6, scope: !499, inlinedAt: !303)
!696 = !DILocation(line: 376, column: 11, scope: !499, inlinedAt: !303)
!697 = !DILocation(line: 376, column: 6, scope: !243, inlinedAt: !303)
!698 = !DILocation(line: 376, column: 32, scope: !499, inlinedAt: !303)
!699 = !DILocation(line: 377, column: 6, scope: !504, inlinedAt: !303)
!700 = !DILocation(line: 377, column: 11, scope: !504, inlinedAt: !303)
!701 = !DILocation(line: 377, column: 6, scope: !243, inlinedAt: !303)
!702 = !DILocation(line: 377, column: 32, scope: !504, inlinedAt: !303)
!703 = !DILocation(line: 378, column: 6, scope: !509, inlinedAt: !303)
!704 = !DILocation(line: 378, column: 11, scope: !509, inlinedAt: !303)
!705 = !DILocation(line: 378, column: 6, scope: !243, inlinedAt: !303)
!706 = !DILocation(line: 378, column: 32, scope: !509, inlinedAt: !303)
!707 = !DILocation(line: 379, column: 6, scope: !514, inlinedAt: !303)
!708 = !DILocation(line: 379, column: 11, scope: !514, inlinedAt: !303)
!709 = !DILocation(line: 379, column: 6, scope: !243, inlinedAt: !303)
!710 = !DILocation(line: 379, column: 33, scope: !514, inlinedAt: !303)
!711 = !DILocation(line: 380, column: 6, scope: !519, inlinedAt: !303)
!712 = !DILocation(line: 380, column: 11, scope: !519, inlinedAt: !303)
!713 = !DILocation(line: 380, column: 6, scope: !243, inlinedAt: !303)
!714 = !DILocation(line: 380, column: 33, scope: !519, inlinedAt: !303)
!715 = !DILocation(line: 381, column: 6, scope: !524, inlinedAt: !303)
!716 = !DILocation(line: 381, column: 11, scope: !524, inlinedAt: !303)
!717 = !DILocation(line: 381, column: 6, scope: !243, inlinedAt: !303)
!718 = !DILocation(line: 381, column: 33, scope: !524, inlinedAt: !303)
!719 = !DILocation(line: 382, column: 2, scope: !529, inlinedAt: !303)
!720 = !DILocation(line: 382, column: 2, scope: !533, inlinedAt: !303)
!721 = !DILocation(line: 382, column: 2, scope: !534, inlinedAt: !303)
!722 = !DILocation(line: 386, column: 1, scope: !243, inlinedAt: !303)
!723 = !DILocation(line: 547, column: 9, scope: !220, inlinedAt: !296)
!724 = !DILocation(line: 549, column: 8, scope: !540, inlinedAt: !296)
!725 = !DILocation(line: 549, column: 7, scope: !220, inlinedAt: !296)
!726 = !DILocation(line: 550, column: 4, scope: !540, inlinedAt: !296)
!727 = !DILocation(line: 553, column: 33, scope: !220, inlinedAt: !296)
!728 = !DILocation(line: 325, column: 6, scope: !545, inlinedAt: !301)
!729 = !DILocation(line: 325, column: 6, scope: !237, inlinedAt: !301)
!730 = !DILocation(line: 326, column: 3, scope: !545, inlinedAt: !301)
!731 = !DILocation(line: 332, column: 9, scope: !237, inlinedAt: !301)
!732 = !DILocation(line: 332, column: 15, scope: !237, inlinedAt: !301)
!733 = !DILocation(line: 332, column: 2, scope: !237, inlinedAt: !301)
!734 = !DILocation(line: 336, column: 1, scope: !237, inlinedAt: !301)
!735 = !DILocation(line: 553, column: 5, scope: !220, inlinedAt: !296)
!736 = !DILocation(line: 553, column: 41, scope: !220, inlinedAt: !296)
!737 = !DILocation(line: 554, column: 5, scope: !220, inlinedAt: !296)
!738 = !DILocation(line: 554, column: 12, scope: !220, inlinedAt: !296)
!739 = !DILocation(line: 448, column: 31, scope: !212, inlinedAt: !295)
!740 = !DILocation(line: 448, column: 34, scope: !212, inlinedAt: !295)
!741 = !DILocation(line: 448, column: 14, scope: !212, inlinedAt: !295)
!742 = !DILocation(line: 450, column: 22, scope: !212, inlinedAt: !295)
!743 = !DILocation(line: 450, column: 25, scope: !212, inlinedAt: !295)
!744 = !DILocation(line: 450, column: 30, scope: !212, inlinedAt: !295)
!745 = !DILocation(line: 450, column: 36, scope: !212, inlinedAt: !295)
!746 = !DILocation(line: 450, column: 8, scope: !212, inlinedAt: !295)
!747 = !DILocation(line: 450, column: 6, scope: !212, inlinedAt: !295)
!748 = !DILocation(line: 451, column: 9, scope: !212, inlinedAt: !295)
!749 = !DILocation(line: 552, column: 3, scope: !220, inlinedAt: !296)
!750 = !DILocation(line: 557, column: 19, scope: !222, inlinedAt: !296)
!751 = !DILocation(line: 557, column: 25, scope: !222, inlinedAt: !296)
!752 = !DILocation(line: 557, column: 9, scope: !222, inlinedAt: !296)
!753 = !DILocation(line: 557, column: 2, scope: !222, inlinedAt: !296)
!754 = !DILocation(line: 558, column: 1, scope: !222, inlinedAt: !296)
!755 = !DILocation(line: 107, column: 17, scope: !228)
!756 = !DILocation(line: 107, column: 3, scope: !228)
!757 = !DILocation(line: 107, column: 9, scope: !228)
!758 = !DILocation(line: 107, column: 15, scope: !228)
!759 = !DILocation(line: 108, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !228, file: !3, line: 108, column: 7)
!761 = !DILocation(line: 108, column: 14, scope: !760)
!762 = !DILocation(line: 108, column: 7, scope: !228)
!763 = !DILocation(line: 109, column: 4, scope: !760)
!764 = !DILocation(line: 110, column: 24, scope: !228)
!765 = !DILocation(line: 110, column: 30, scope: !228)
!766 = !DILocation(line: 540, column: 27, scope: !221, inlinedAt: !275)
!767 = !DILocation(line: 540, column: 6, scope: !221, inlinedAt: !275)
!768 = !DILocation(line: 540, column: 6, scope: !222, inlinedAt: !275)
!769 = !DILocation(line: 544, column: 7, scope: !256, inlinedAt: !275)
!770 = !DILocation(line: 544, column: 12, scope: !256, inlinedAt: !275)
!771 = !DILocation(line: 544, column: 7, scope: !220, inlinedAt: !275)
!772 = !DILocation(line: 545, column: 25, scope: !256, inlinedAt: !275)
!773 = !DILocation(line: 545, column: 31, scope: !256, inlinedAt: !275)
!774 = !DILocation(line: 480, column: 33, scope: !254, inlinedAt: !285)
!775 = !DILocation(line: 480, column: 23, scope: !254, inlinedAt: !285)
!776 = !DILocation(line: 481, column: 29, scope: !254, inlinedAt: !285)
!777 = !DILocation(line: 481, column: 35, scope: !254, inlinedAt: !285)
!778 = !DILocation(line: 481, column: 42, scope: !254, inlinedAt: !285)
!779 = !DILocation(line: 474, column: 23, scope: !249, inlinedAt: !284)
!780 = !DILocation(line: 474, column: 29, scope: !249, inlinedAt: !284)
!781 = !DILocation(line: 474, column: 36, scope: !249, inlinedAt: !284)
!782 = !DILocation(line: 474, column: 9, scope: !249, inlinedAt: !284)
!783 = !DILocation(line: 545, column: 4, scope: !256, inlinedAt: !275)
!784 = !DILocation(line: 547, column: 25, scope: !220, inlinedAt: !275)
!785 = !DILocation(line: 348, column: 7, scope: !384, inlinedAt: !282)
!786 = !DILocation(line: 348, column: 6, scope: !243, inlinedAt: !282)
!787 = !DILocation(line: 349, column: 3, scope: !384, inlinedAt: !282)
!788 = !DILocation(line: 351, column: 6, scope: !388, inlinedAt: !282)
!789 = !DILocation(line: 351, column: 11, scope: !388, inlinedAt: !282)
!790 = !DILocation(line: 351, column: 6, scope: !243, inlinedAt: !282)
!791 = !DILocation(line: 352, column: 3, scope: !388, inlinedAt: !282)
!792 = !DILocation(line: 354, column: 32, scope: !393, inlinedAt: !282)
!793 = !DILocation(line: 354, column: 37, scope: !393, inlinedAt: !282)
!794 = !DILocation(line: 354, column: 42, scope: !393, inlinedAt: !282)
!795 = !DILocation(line: 354, column: 45, scope: !393, inlinedAt: !282)
!796 = !DILocation(line: 354, column: 50, scope: !393, inlinedAt: !282)
!797 = !DILocation(line: 354, column: 6, scope: !243, inlinedAt: !282)
!798 = !DILocation(line: 355, column: 3, scope: !393, inlinedAt: !282)
!799 = !DILocation(line: 356, column: 32, scope: !401, inlinedAt: !282)
!800 = !DILocation(line: 356, column: 37, scope: !401, inlinedAt: !282)
!801 = !DILocation(line: 356, column: 43, scope: !401, inlinedAt: !282)
!802 = !DILocation(line: 356, column: 46, scope: !401, inlinedAt: !282)
!803 = !DILocation(line: 356, column: 51, scope: !401, inlinedAt: !282)
!804 = !DILocation(line: 356, column: 6, scope: !243, inlinedAt: !282)
!805 = !DILocation(line: 357, column: 3, scope: !401, inlinedAt: !282)
!806 = !DILocation(line: 358, column: 6, scope: !409, inlinedAt: !282)
!807 = !DILocation(line: 358, column: 11, scope: !409, inlinedAt: !282)
!808 = !DILocation(line: 358, column: 6, scope: !243, inlinedAt: !282)
!809 = !DILocation(line: 358, column: 26, scope: !409, inlinedAt: !282)
!810 = !DILocation(line: 359, column: 6, scope: !414, inlinedAt: !282)
!811 = !DILocation(line: 359, column: 11, scope: !414, inlinedAt: !282)
!812 = !DILocation(line: 359, column: 6, scope: !243, inlinedAt: !282)
!813 = !DILocation(line: 359, column: 26, scope: !414, inlinedAt: !282)
!814 = !DILocation(line: 360, column: 6, scope: !419, inlinedAt: !282)
!815 = !DILocation(line: 360, column: 11, scope: !419, inlinedAt: !282)
!816 = !DILocation(line: 360, column: 6, scope: !243, inlinedAt: !282)
!817 = !DILocation(line: 360, column: 26, scope: !419, inlinedAt: !282)
!818 = !DILocation(line: 361, column: 6, scope: !424, inlinedAt: !282)
!819 = !DILocation(line: 361, column: 11, scope: !424, inlinedAt: !282)
!820 = !DILocation(line: 361, column: 6, scope: !243, inlinedAt: !282)
!821 = !DILocation(line: 361, column: 26, scope: !424, inlinedAt: !282)
!822 = !DILocation(line: 362, column: 6, scope: !429, inlinedAt: !282)
!823 = !DILocation(line: 362, column: 11, scope: !429, inlinedAt: !282)
!824 = !DILocation(line: 362, column: 6, scope: !243, inlinedAt: !282)
!825 = !DILocation(line: 362, column: 26, scope: !429, inlinedAt: !282)
!826 = !DILocation(line: 363, column: 6, scope: !434, inlinedAt: !282)
!827 = !DILocation(line: 363, column: 11, scope: !434, inlinedAt: !282)
!828 = !DILocation(line: 363, column: 6, scope: !243, inlinedAt: !282)
!829 = !DILocation(line: 363, column: 26, scope: !434, inlinedAt: !282)
!830 = !DILocation(line: 364, column: 6, scope: !439, inlinedAt: !282)
!831 = !DILocation(line: 364, column: 11, scope: !439, inlinedAt: !282)
!832 = !DILocation(line: 364, column: 6, scope: !243, inlinedAt: !282)
!833 = !DILocation(line: 364, column: 26, scope: !439, inlinedAt: !282)
!834 = !DILocation(line: 365, column: 6, scope: !444, inlinedAt: !282)
!835 = !DILocation(line: 365, column: 11, scope: !444, inlinedAt: !282)
!836 = !DILocation(line: 365, column: 6, scope: !243, inlinedAt: !282)
!837 = !DILocation(line: 365, column: 26, scope: !444, inlinedAt: !282)
!838 = !DILocation(line: 366, column: 6, scope: !449, inlinedAt: !282)
!839 = !DILocation(line: 366, column: 11, scope: !449, inlinedAt: !282)
!840 = !DILocation(line: 366, column: 6, scope: !243, inlinedAt: !282)
!841 = !DILocation(line: 366, column: 26, scope: !449, inlinedAt: !282)
!842 = !DILocation(line: 367, column: 6, scope: !454, inlinedAt: !282)
!843 = !DILocation(line: 367, column: 11, scope: !454, inlinedAt: !282)
!844 = !DILocation(line: 367, column: 6, scope: !243, inlinedAt: !282)
!845 = !DILocation(line: 367, column: 26, scope: !454, inlinedAt: !282)
!846 = !DILocation(line: 368, column: 6, scope: !459, inlinedAt: !282)
!847 = !DILocation(line: 368, column: 11, scope: !459, inlinedAt: !282)
!848 = !DILocation(line: 368, column: 6, scope: !243, inlinedAt: !282)
!849 = !DILocation(line: 368, column: 26, scope: !459, inlinedAt: !282)
!850 = !DILocation(line: 369, column: 6, scope: !464, inlinedAt: !282)
!851 = !DILocation(line: 369, column: 11, scope: !464, inlinedAt: !282)
!852 = !DILocation(line: 369, column: 6, scope: !243, inlinedAt: !282)
!853 = !DILocation(line: 369, column: 26, scope: !464, inlinedAt: !282)
!854 = !DILocation(line: 370, column: 6, scope: !469, inlinedAt: !282)
!855 = !DILocation(line: 370, column: 11, scope: !469, inlinedAt: !282)
!856 = !DILocation(line: 370, column: 6, scope: !243, inlinedAt: !282)
!857 = !DILocation(line: 370, column: 26, scope: !469, inlinedAt: !282)
!858 = !DILocation(line: 371, column: 6, scope: !474, inlinedAt: !282)
!859 = !DILocation(line: 371, column: 11, scope: !474, inlinedAt: !282)
!860 = !DILocation(line: 371, column: 6, scope: !243, inlinedAt: !282)
!861 = !DILocation(line: 371, column: 26, scope: !474, inlinedAt: !282)
!862 = !DILocation(line: 372, column: 6, scope: !479, inlinedAt: !282)
!863 = !DILocation(line: 372, column: 11, scope: !479, inlinedAt: !282)
!864 = !DILocation(line: 372, column: 6, scope: !243, inlinedAt: !282)
!865 = !DILocation(line: 372, column: 26, scope: !479, inlinedAt: !282)
!866 = !DILocation(line: 373, column: 6, scope: !484, inlinedAt: !282)
!867 = !DILocation(line: 373, column: 11, scope: !484, inlinedAt: !282)
!868 = !DILocation(line: 373, column: 6, scope: !243, inlinedAt: !282)
!869 = !DILocation(line: 373, column: 26, scope: !484, inlinedAt: !282)
!870 = !DILocation(line: 374, column: 6, scope: !489, inlinedAt: !282)
!871 = !DILocation(line: 374, column: 11, scope: !489, inlinedAt: !282)
!872 = !DILocation(line: 374, column: 6, scope: !243, inlinedAt: !282)
!873 = !DILocation(line: 374, column: 26, scope: !489, inlinedAt: !282)
!874 = !DILocation(line: 375, column: 6, scope: !494, inlinedAt: !282)
!875 = !DILocation(line: 375, column: 11, scope: !494, inlinedAt: !282)
!876 = !DILocation(line: 375, column: 6, scope: !243, inlinedAt: !282)
!877 = !DILocation(line: 375, column: 27, scope: !494, inlinedAt: !282)
!878 = !DILocation(line: 376, column: 6, scope: !499, inlinedAt: !282)
!879 = !DILocation(line: 376, column: 11, scope: !499, inlinedAt: !282)
!880 = !DILocation(line: 376, column: 6, scope: !243, inlinedAt: !282)
!881 = !DILocation(line: 376, column: 32, scope: !499, inlinedAt: !282)
!882 = !DILocation(line: 377, column: 6, scope: !504, inlinedAt: !282)
!883 = !DILocation(line: 377, column: 11, scope: !504, inlinedAt: !282)
!884 = !DILocation(line: 377, column: 6, scope: !243, inlinedAt: !282)
!885 = !DILocation(line: 377, column: 32, scope: !504, inlinedAt: !282)
!886 = !DILocation(line: 378, column: 6, scope: !509, inlinedAt: !282)
!887 = !DILocation(line: 378, column: 11, scope: !509, inlinedAt: !282)
!888 = !DILocation(line: 378, column: 6, scope: !243, inlinedAt: !282)
!889 = !DILocation(line: 378, column: 32, scope: !509, inlinedAt: !282)
!890 = !DILocation(line: 379, column: 6, scope: !514, inlinedAt: !282)
!891 = !DILocation(line: 379, column: 11, scope: !514, inlinedAt: !282)
!892 = !DILocation(line: 379, column: 6, scope: !243, inlinedAt: !282)
!893 = !DILocation(line: 379, column: 33, scope: !514, inlinedAt: !282)
!894 = !DILocation(line: 380, column: 6, scope: !519, inlinedAt: !282)
!895 = !DILocation(line: 380, column: 11, scope: !519, inlinedAt: !282)
!896 = !DILocation(line: 380, column: 6, scope: !243, inlinedAt: !282)
!897 = !DILocation(line: 380, column: 33, scope: !519, inlinedAt: !282)
!898 = !DILocation(line: 381, column: 6, scope: !524, inlinedAt: !282)
!899 = !DILocation(line: 381, column: 11, scope: !524, inlinedAt: !282)
!900 = !DILocation(line: 381, column: 6, scope: !243, inlinedAt: !282)
!901 = !DILocation(line: 381, column: 33, scope: !524, inlinedAt: !282)
!902 = !DILocation(line: 382, column: 2, scope: !529, inlinedAt: !282)
!903 = !DILocation(line: 382, column: 2, scope: !533, inlinedAt: !282)
!904 = !DILocation(line: 382, column: 2, scope: !534, inlinedAt: !282)
!905 = !DILocation(line: 386, column: 1, scope: !243, inlinedAt: !282)
!906 = !DILocation(line: 547, column: 9, scope: !220, inlinedAt: !275)
!907 = !DILocation(line: 549, column: 8, scope: !540, inlinedAt: !275)
!908 = !DILocation(line: 549, column: 7, scope: !220, inlinedAt: !275)
!909 = !DILocation(line: 550, column: 4, scope: !540, inlinedAt: !275)
!910 = !DILocation(line: 553, column: 33, scope: !220, inlinedAt: !275)
!911 = !DILocation(line: 325, column: 6, scope: !545, inlinedAt: !280)
!912 = !DILocation(line: 325, column: 6, scope: !237, inlinedAt: !280)
!913 = !DILocation(line: 326, column: 3, scope: !545, inlinedAt: !280)
!914 = !DILocation(line: 332, column: 9, scope: !237, inlinedAt: !280)
!915 = !DILocation(line: 332, column: 15, scope: !237, inlinedAt: !280)
!916 = !DILocation(line: 332, column: 2, scope: !237, inlinedAt: !280)
!917 = !DILocation(line: 336, column: 1, scope: !237, inlinedAt: !280)
!918 = !DILocation(line: 553, column: 5, scope: !220, inlinedAt: !275)
!919 = !DILocation(line: 553, column: 41, scope: !220, inlinedAt: !275)
!920 = !DILocation(line: 554, column: 5, scope: !220, inlinedAt: !275)
!921 = !DILocation(line: 554, column: 12, scope: !220, inlinedAt: !275)
!922 = !DILocation(line: 448, column: 31, scope: !212, inlinedAt: !274)
!923 = !DILocation(line: 448, column: 34, scope: !212, inlinedAt: !274)
!924 = !DILocation(line: 448, column: 14, scope: !212, inlinedAt: !274)
!925 = !DILocation(line: 450, column: 22, scope: !212, inlinedAt: !274)
!926 = !DILocation(line: 450, column: 25, scope: !212, inlinedAt: !274)
!927 = !DILocation(line: 450, column: 30, scope: !212, inlinedAt: !274)
!928 = !DILocation(line: 450, column: 36, scope: !212, inlinedAt: !274)
!929 = !DILocation(line: 450, column: 8, scope: !212, inlinedAt: !274)
!930 = !DILocation(line: 450, column: 6, scope: !212, inlinedAt: !274)
!931 = !DILocation(line: 451, column: 9, scope: !212, inlinedAt: !274)
!932 = !DILocation(line: 552, column: 3, scope: !220, inlinedAt: !275)
!933 = !DILocation(line: 557, column: 19, scope: !222, inlinedAt: !275)
!934 = !DILocation(line: 557, column: 25, scope: !222, inlinedAt: !275)
!935 = !DILocation(line: 557, column: 9, scope: !222, inlinedAt: !275)
!936 = !DILocation(line: 557, column: 2, scope: !222, inlinedAt: !275)
!937 = !DILocation(line: 558, column: 1, scope: !222, inlinedAt: !275)
!938 = !DILocation(line: 110, column: 16, scope: !228)
!939 = !DILocation(line: 110, column: 3, scope: !228)
!940 = !DILocation(line: 110, column: 9, scope: !228)
!941 = !DILocation(line: 110, column: 14, scope: !228)
!942 = !DILocation(line: 111, column: 8, scope: !943)
!943 = distinct !DILexicalBlock(scope: !228, file: !3, line: 111, column: 7)
!944 = !DILocation(line: 111, column: 14, scope: !943)
!945 = !DILocation(line: 111, column: 7, scope: !228)
!946 = !DILocation(line: 112, column: 4, scope: !943)
!947 = !DILocation(line: 113, column: 7, scope: !227)
!948 = !DILocation(line: 113, column: 7, scope: !228)
!949 = !DILocation(line: 114, column: 27, scope: !226)
!950 = !DILocation(line: 114, column: 33, scope: !226)
!951 = !DILocation(line: 540, column: 27, scope: !221, inlinedAt: !225)
!952 = !DILocation(line: 540, column: 6, scope: !221, inlinedAt: !225)
!953 = !DILocation(line: 540, column: 6, scope: !222, inlinedAt: !225)
!954 = !DILocation(line: 544, column: 7, scope: !256, inlinedAt: !225)
!955 = !DILocation(line: 544, column: 12, scope: !256, inlinedAt: !225)
!956 = !DILocation(line: 544, column: 7, scope: !220, inlinedAt: !225)
!957 = !DILocation(line: 545, column: 25, scope: !256, inlinedAt: !225)
!958 = !DILocation(line: 545, column: 31, scope: !256, inlinedAt: !225)
!959 = !DILocation(line: 480, column: 33, scope: !254, inlinedAt: !255)
!960 = !DILocation(line: 480, column: 23, scope: !254, inlinedAt: !255)
!961 = !DILocation(line: 481, column: 29, scope: !254, inlinedAt: !255)
!962 = !DILocation(line: 481, column: 35, scope: !254, inlinedAt: !255)
!963 = !DILocation(line: 481, column: 42, scope: !254, inlinedAt: !255)
!964 = !DILocation(line: 474, column: 23, scope: !249, inlinedAt: !253)
!965 = !DILocation(line: 474, column: 29, scope: !249, inlinedAt: !253)
!966 = !DILocation(line: 474, column: 36, scope: !249, inlinedAt: !253)
!967 = !DILocation(line: 474, column: 9, scope: !249, inlinedAt: !253)
!968 = !DILocation(line: 545, column: 4, scope: !256, inlinedAt: !225)
!969 = !DILocation(line: 547, column: 25, scope: !220, inlinedAt: !225)
!970 = !DILocation(line: 348, column: 7, scope: !384, inlinedAt: !247)
!971 = !DILocation(line: 348, column: 6, scope: !243, inlinedAt: !247)
!972 = !DILocation(line: 349, column: 3, scope: !384, inlinedAt: !247)
!973 = !DILocation(line: 351, column: 6, scope: !388, inlinedAt: !247)
!974 = !DILocation(line: 351, column: 11, scope: !388, inlinedAt: !247)
!975 = !DILocation(line: 351, column: 6, scope: !243, inlinedAt: !247)
!976 = !DILocation(line: 352, column: 3, scope: !388, inlinedAt: !247)
!977 = !DILocation(line: 354, column: 32, scope: !393, inlinedAt: !247)
!978 = !DILocation(line: 354, column: 37, scope: !393, inlinedAt: !247)
!979 = !DILocation(line: 354, column: 42, scope: !393, inlinedAt: !247)
!980 = !DILocation(line: 354, column: 45, scope: !393, inlinedAt: !247)
!981 = !DILocation(line: 354, column: 50, scope: !393, inlinedAt: !247)
!982 = !DILocation(line: 354, column: 6, scope: !243, inlinedAt: !247)
!983 = !DILocation(line: 355, column: 3, scope: !393, inlinedAt: !247)
!984 = !DILocation(line: 356, column: 32, scope: !401, inlinedAt: !247)
!985 = !DILocation(line: 356, column: 37, scope: !401, inlinedAt: !247)
!986 = !DILocation(line: 356, column: 43, scope: !401, inlinedAt: !247)
!987 = !DILocation(line: 356, column: 46, scope: !401, inlinedAt: !247)
!988 = !DILocation(line: 356, column: 51, scope: !401, inlinedAt: !247)
!989 = !DILocation(line: 356, column: 6, scope: !243, inlinedAt: !247)
!990 = !DILocation(line: 357, column: 3, scope: !401, inlinedAt: !247)
!991 = !DILocation(line: 358, column: 6, scope: !409, inlinedAt: !247)
!992 = !DILocation(line: 358, column: 11, scope: !409, inlinedAt: !247)
!993 = !DILocation(line: 358, column: 6, scope: !243, inlinedAt: !247)
!994 = !DILocation(line: 358, column: 26, scope: !409, inlinedAt: !247)
!995 = !DILocation(line: 359, column: 6, scope: !414, inlinedAt: !247)
!996 = !DILocation(line: 359, column: 11, scope: !414, inlinedAt: !247)
!997 = !DILocation(line: 359, column: 6, scope: !243, inlinedAt: !247)
!998 = !DILocation(line: 359, column: 26, scope: !414, inlinedAt: !247)
!999 = !DILocation(line: 360, column: 6, scope: !419, inlinedAt: !247)
!1000 = !DILocation(line: 360, column: 11, scope: !419, inlinedAt: !247)
!1001 = !DILocation(line: 360, column: 6, scope: !243, inlinedAt: !247)
!1002 = !DILocation(line: 360, column: 26, scope: !419, inlinedAt: !247)
!1003 = !DILocation(line: 361, column: 6, scope: !424, inlinedAt: !247)
!1004 = !DILocation(line: 361, column: 11, scope: !424, inlinedAt: !247)
!1005 = !DILocation(line: 361, column: 6, scope: !243, inlinedAt: !247)
!1006 = !DILocation(line: 361, column: 26, scope: !424, inlinedAt: !247)
!1007 = !DILocation(line: 362, column: 6, scope: !429, inlinedAt: !247)
!1008 = !DILocation(line: 362, column: 11, scope: !429, inlinedAt: !247)
!1009 = !DILocation(line: 362, column: 6, scope: !243, inlinedAt: !247)
!1010 = !DILocation(line: 362, column: 26, scope: !429, inlinedAt: !247)
!1011 = !DILocation(line: 363, column: 6, scope: !434, inlinedAt: !247)
!1012 = !DILocation(line: 363, column: 11, scope: !434, inlinedAt: !247)
!1013 = !DILocation(line: 363, column: 6, scope: !243, inlinedAt: !247)
!1014 = !DILocation(line: 363, column: 26, scope: !434, inlinedAt: !247)
!1015 = !DILocation(line: 364, column: 6, scope: !439, inlinedAt: !247)
!1016 = !DILocation(line: 364, column: 11, scope: !439, inlinedAt: !247)
!1017 = !DILocation(line: 364, column: 6, scope: !243, inlinedAt: !247)
!1018 = !DILocation(line: 364, column: 26, scope: !439, inlinedAt: !247)
!1019 = !DILocation(line: 365, column: 6, scope: !444, inlinedAt: !247)
!1020 = !DILocation(line: 365, column: 11, scope: !444, inlinedAt: !247)
!1021 = !DILocation(line: 365, column: 6, scope: !243, inlinedAt: !247)
!1022 = !DILocation(line: 365, column: 26, scope: !444, inlinedAt: !247)
!1023 = !DILocation(line: 366, column: 6, scope: !449, inlinedAt: !247)
!1024 = !DILocation(line: 366, column: 11, scope: !449, inlinedAt: !247)
!1025 = !DILocation(line: 366, column: 6, scope: !243, inlinedAt: !247)
!1026 = !DILocation(line: 366, column: 26, scope: !449, inlinedAt: !247)
!1027 = !DILocation(line: 367, column: 6, scope: !454, inlinedAt: !247)
!1028 = !DILocation(line: 367, column: 11, scope: !454, inlinedAt: !247)
!1029 = !DILocation(line: 367, column: 6, scope: !243, inlinedAt: !247)
!1030 = !DILocation(line: 367, column: 26, scope: !454, inlinedAt: !247)
!1031 = !DILocation(line: 368, column: 6, scope: !459, inlinedAt: !247)
!1032 = !DILocation(line: 368, column: 11, scope: !459, inlinedAt: !247)
!1033 = !DILocation(line: 368, column: 6, scope: !243, inlinedAt: !247)
!1034 = !DILocation(line: 368, column: 26, scope: !459, inlinedAt: !247)
!1035 = !DILocation(line: 369, column: 6, scope: !464, inlinedAt: !247)
!1036 = !DILocation(line: 369, column: 11, scope: !464, inlinedAt: !247)
!1037 = !DILocation(line: 369, column: 6, scope: !243, inlinedAt: !247)
!1038 = !DILocation(line: 369, column: 26, scope: !464, inlinedAt: !247)
!1039 = !DILocation(line: 370, column: 6, scope: !469, inlinedAt: !247)
!1040 = !DILocation(line: 370, column: 11, scope: !469, inlinedAt: !247)
!1041 = !DILocation(line: 370, column: 6, scope: !243, inlinedAt: !247)
!1042 = !DILocation(line: 370, column: 26, scope: !469, inlinedAt: !247)
!1043 = !DILocation(line: 371, column: 6, scope: !474, inlinedAt: !247)
!1044 = !DILocation(line: 371, column: 11, scope: !474, inlinedAt: !247)
!1045 = !DILocation(line: 371, column: 6, scope: !243, inlinedAt: !247)
!1046 = !DILocation(line: 371, column: 26, scope: !474, inlinedAt: !247)
!1047 = !DILocation(line: 372, column: 6, scope: !479, inlinedAt: !247)
!1048 = !DILocation(line: 372, column: 11, scope: !479, inlinedAt: !247)
!1049 = !DILocation(line: 372, column: 6, scope: !243, inlinedAt: !247)
!1050 = !DILocation(line: 372, column: 26, scope: !479, inlinedAt: !247)
!1051 = !DILocation(line: 373, column: 6, scope: !484, inlinedAt: !247)
!1052 = !DILocation(line: 373, column: 11, scope: !484, inlinedAt: !247)
!1053 = !DILocation(line: 373, column: 6, scope: !243, inlinedAt: !247)
!1054 = !DILocation(line: 373, column: 26, scope: !484, inlinedAt: !247)
!1055 = !DILocation(line: 374, column: 6, scope: !489, inlinedAt: !247)
!1056 = !DILocation(line: 374, column: 11, scope: !489, inlinedAt: !247)
!1057 = !DILocation(line: 374, column: 6, scope: !243, inlinedAt: !247)
!1058 = !DILocation(line: 374, column: 26, scope: !489, inlinedAt: !247)
!1059 = !DILocation(line: 375, column: 6, scope: !494, inlinedAt: !247)
!1060 = !DILocation(line: 375, column: 11, scope: !494, inlinedAt: !247)
!1061 = !DILocation(line: 375, column: 6, scope: !243, inlinedAt: !247)
!1062 = !DILocation(line: 375, column: 27, scope: !494, inlinedAt: !247)
!1063 = !DILocation(line: 376, column: 6, scope: !499, inlinedAt: !247)
!1064 = !DILocation(line: 376, column: 11, scope: !499, inlinedAt: !247)
!1065 = !DILocation(line: 376, column: 6, scope: !243, inlinedAt: !247)
!1066 = !DILocation(line: 376, column: 32, scope: !499, inlinedAt: !247)
!1067 = !DILocation(line: 377, column: 6, scope: !504, inlinedAt: !247)
!1068 = !DILocation(line: 377, column: 11, scope: !504, inlinedAt: !247)
!1069 = !DILocation(line: 377, column: 6, scope: !243, inlinedAt: !247)
!1070 = !DILocation(line: 377, column: 32, scope: !504, inlinedAt: !247)
!1071 = !DILocation(line: 378, column: 6, scope: !509, inlinedAt: !247)
!1072 = !DILocation(line: 378, column: 11, scope: !509, inlinedAt: !247)
!1073 = !DILocation(line: 378, column: 6, scope: !243, inlinedAt: !247)
!1074 = !DILocation(line: 378, column: 32, scope: !509, inlinedAt: !247)
!1075 = !DILocation(line: 379, column: 6, scope: !514, inlinedAt: !247)
!1076 = !DILocation(line: 379, column: 11, scope: !514, inlinedAt: !247)
!1077 = !DILocation(line: 379, column: 6, scope: !243, inlinedAt: !247)
!1078 = !DILocation(line: 379, column: 33, scope: !514, inlinedAt: !247)
!1079 = !DILocation(line: 380, column: 6, scope: !519, inlinedAt: !247)
!1080 = !DILocation(line: 380, column: 11, scope: !519, inlinedAt: !247)
!1081 = !DILocation(line: 380, column: 6, scope: !243, inlinedAt: !247)
!1082 = !DILocation(line: 380, column: 33, scope: !519, inlinedAt: !247)
!1083 = !DILocation(line: 381, column: 6, scope: !524, inlinedAt: !247)
!1084 = !DILocation(line: 381, column: 11, scope: !524, inlinedAt: !247)
!1085 = !DILocation(line: 381, column: 6, scope: !243, inlinedAt: !247)
!1086 = !DILocation(line: 381, column: 33, scope: !524, inlinedAt: !247)
!1087 = !DILocation(line: 382, column: 2, scope: !529, inlinedAt: !247)
!1088 = !DILocation(line: 382, column: 2, scope: !533, inlinedAt: !247)
!1089 = !DILocation(line: 382, column: 2, scope: !534, inlinedAt: !247)
!1090 = !DILocation(line: 386, column: 1, scope: !243, inlinedAt: !247)
!1091 = !DILocation(line: 547, column: 9, scope: !220, inlinedAt: !225)
!1092 = !DILocation(line: 549, column: 8, scope: !540, inlinedAt: !225)
!1093 = !DILocation(line: 549, column: 7, scope: !220, inlinedAt: !225)
!1094 = !DILocation(line: 550, column: 4, scope: !540, inlinedAt: !225)
!1095 = !DILocation(line: 553, column: 33, scope: !220, inlinedAt: !225)
!1096 = !DILocation(line: 325, column: 6, scope: !545, inlinedAt: !241)
!1097 = !DILocation(line: 325, column: 6, scope: !237, inlinedAt: !241)
!1098 = !DILocation(line: 326, column: 3, scope: !545, inlinedAt: !241)
!1099 = !DILocation(line: 332, column: 9, scope: !237, inlinedAt: !241)
!1100 = !DILocation(line: 332, column: 15, scope: !237, inlinedAt: !241)
!1101 = !DILocation(line: 332, column: 2, scope: !237, inlinedAt: !241)
!1102 = !DILocation(line: 336, column: 1, scope: !237, inlinedAt: !241)
!1103 = !DILocation(line: 553, column: 5, scope: !220, inlinedAt: !225)
!1104 = !DILocation(line: 553, column: 41, scope: !220, inlinedAt: !225)
!1105 = !DILocation(line: 554, column: 5, scope: !220, inlinedAt: !225)
!1106 = !DILocation(line: 554, column: 12, scope: !220, inlinedAt: !225)
!1107 = !DILocation(line: 448, column: 31, scope: !212, inlinedAt: !219)
!1108 = !DILocation(line: 448, column: 34, scope: !212, inlinedAt: !219)
!1109 = !DILocation(line: 448, column: 14, scope: !212, inlinedAt: !219)
!1110 = !DILocation(line: 450, column: 22, scope: !212, inlinedAt: !219)
!1111 = !DILocation(line: 450, column: 25, scope: !212, inlinedAt: !219)
!1112 = !DILocation(line: 450, column: 30, scope: !212, inlinedAt: !219)
!1113 = !DILocation(line: 450, column: 36, scope: !212, inlinedAt: !219)
!1114 = !DILocation(line: 450, column: 8, scope: !212, inlinedAt: !219)
!1115 = !DILocation(line: 450, column: 6, scope: !212, inlinedAt: !219)
!1116 = !DILocation(line: 451, column: 9, scope: !212, inlinedAt: !219)
!1117 = !DILocation(line: 552, column: 3, scope: !220, inlinedAt: !225)
!1118 = !DILocation(line: 557, column: 19, scope: !222, inlinedAt: !225)
!1119 = !DILocation(line: 557, column: 25, scope: !222, inlinedAt: !225)
!1120 = !DILocation(line: 557, column: 9, scope: !222, inlinedAt: !225)
!1121 = !DILocation(line: 557, column: 2, scope: !222, inlinedAt: !225)
!1122 = !DILocation(line: 558, column: 1, scope: !222, inlinedAt: !225)
!1123 = !DILocation(line: 114, column: 19, scope: !226)
!1124 = !DILocation(line: 114, column: 4, scope: !226)
!1125 = !DILocation(line: 114, column: 10, scope: !226)
!1126 = !DILocation(line: 114, column: 17, scope: !226)
!1127 = !DILocation(line: 115, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !226, file: !3, line: 115, column: 8)
!1129 = !DILocation(line: 115, column: 15, scope: !1128)
!1130 = !DILocation(line: 115, column: 8, scope: !226)
!1131 = !DILocation(line: 116, column: 5, scope: !1128)
!1132 = !DILocation(line: 117, column: 3, scope: !226)
!1133 = !DILocation(line: 118, column: 4, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !227, file: !3, line: 117, column: 10)
!1135 = !DILocation(line: 118, column: 10, scope: !1134)
!1136 = !DILocation(line: 118, column: 17, scope: !1134)
!1137 = !DILocation(line: 120, column: 2, scope: !228)
!1138 = !DILocation(line: 121, column: 2, scope: !206)
!1139 = !DILocation(line: 121, column: 8, scope: !206)
!1140 = !DILocation(line: 121, column: 14, scope: !206)
!1141 = !DILocation(line: 122, column: 14, scope: !206)
!1142 = !DILocation(line: 122, column: 2, scope: !206)
!1143 = !DILocation(line: 122, column: 8, scope: !206)
!1144 = !DILocation(line: 122, column: 12, scope: !206)
!1145 = !DILocation(line: 123, column: 37, scope: !206)
!1146 = !DILocation(line: 123, column: 21, scope: !206)
!1147 = !DILocation(line: 123, column: 43, scope: !206)
!1148 = !DILocation(line: 123, column: 8, scope: !206)
!1149 = !DILocation(line: 123, column: 6, scope: !206)
!1150 = !DILocation(line: 124, column: 6, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !206, file: !3, line: 124, column: 6)
!1152 = !DILocation(line: 124, column: 6, scope: !206)
!1153 = !DILocation(line: 125, column: 3, scope: !1151)
!1154 = !DILocation(line: 126, column: 2, scope: !206)
!1155 = !DILabel(scope: !206, name: "fail", file: !3, line: 128)
!1156 = !DILocation(line: 128, column: 1, scope: !206)
!1157 = !DILocation(line: 129, column: 18, scope: !206)
!1158 = !DILocation(line: 129, column: 2, scope: !206)
!1159 = !DILocation(line: 130, column: 9, scope: !206)
!1160 = !DILocation(line: 130, column: 2, scope: !206)
!1161 = !DILocation(line: 131, column: 1, scope: !206)
!1162 = distinct !DISubprogram(name: "fb_dealloc_cmap", scope: !3, file: !3, line: 147, type: !1163, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !209}
!1165 = !DILocalVariable(name: "cmap", arg: 1, scope: !1162, file: !3, line: 147, type: !209)
!1166 = !DILocation(line: 147, column: 38, scope: !1162)
!1167 = !DILocation(line: 149, column: 8, scope: !1162)
!1168 = !DILocation(line: 149, column: 14, scope: !1162)
!1169 = !DILocation(line: 149, column: 2, scope: !1162)
!1170 = !DILocation(line: 150, column: 8, scope: !1162)
!1171 = !DILocation(line: 150, column: 14, scope: !1162)
!1172 = !DILocation(line: 150, column: 2, scope: !1162)
!1173 = !DILocation(line: 151, column: 8, scope: !1162)
!1174 = !DILocation(line: 151, column: 14, scope: !1162)
!1175 = !DILocation(line: 151, column: 2, scope: !1162)
!1176 = !DILocation(line: 152, column: 8, scope: !1162)
!1177 = !DILocation(line: 152, column: 14, scope: !1162)
!1178 = !DILocation(line: 152, column: 2, scope: !1162)
!1179 = !DILocation(line: 154, column: 41, scope: !1162)
!1180 = !DILocation(line: 154, column: 47, scope: !1162)
!1181 = !DILocation(line: 154, column: 54, scope: !1162)
!1182 = !DILocation(line: 154, column: 28, scope: !1162)
!1183 = !DILocation(line: 154, column: 34, scope: !1162)
!1184 = !DILocation(line: 154, column: 39, scope: !1162)
!1185 = !DILocation(line: 154, column: 14, scope: !1162)
!1186 = !DILocation(line: 154, column: 20, scope: !1162)
!1187 = !DILocation(line: 154, column: 26, scope: !1162)
!1188 = !DILocation(line: 154, column: 2, scope: !1162)
!1189 = !DILocation(line: 154, column: 8, scope: !1162)
!1190 = !DILocation(line: 154, column: 12, scope: !1162)
!1191 = !DILocation(line: 155, column: 2, scope: !1162)
!1192 = !DILocation(line: 155, column: 8, scope: !1162)
!1193 = !DILocation(line: 155, column: 12, scope: !1162)
!1194 = !DILocation(line: 156, column: 1, scope: !1162)
!1195 = distinct !DISubprogram(name: "fb_copy_cmap", scope: !3, file: !3, line: 166, type: !1196, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!140, !1198, !209}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1199 = !DILocalVariable(name: "from", arg: 1, scope: !1195, file: !3, line: 166, type: !1198)
!1200 = !DILocation(line: 166, column: 40, scope: !1195)
!1201 = !DILocalVariable(name: "to", arg: 2, scope: !1195, file: !3, line: 166, type: !209)
!1202 = !DILocation(line: 166, column: 62, scope: !1195)
!1203 = !DILocalVariable(name: "tooff", scope: !1195, file: !3, line: 168, type: !7)
!1204 = !DILocation(line: 168, column: 15, scope: !1195)
!1205 = !DILocalVariable(name: "fromoff", scope: !1195, file: !3, line: 168, type: !7)
!1206 = !DILocation(line: 168, column: 26, scope: !1195)
!1207 = !DILocalVariable(name: "size", scope: !1195, file: !3, line: 169, type: !134)
!1208 = !DILocation(line: 169, column: 9, scope: !1195)
!1209 = !DILocation(line: 171, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 171, column: 6)
!1211 = !DILocation(line: 171, column: 10, scope: !1210)
!1212 = !DILocation(line: 171, column: 18, scope: !1210)
!1213 = !DILocation(line: 171, column: 24, scope: !1210)
!1214 = !DILocation(line: 171, column: 16, scope: !1210)
!1215 = !DILocation(line: 171, column: 6, scope: !1195)
!1216 = !DILocation(line: 172, column: 13, scope: !1210)
!1217 = !DILocation(line: 172, column: 17, scope: !1210)
!1218 = !DILocation(line: 172, column: 25, scope: !1210)
!1219 = !DILocation(line: 172, column: 31, scope: !1210)
!1220 = !DILocation(line: 172, column: 23, scope: !1210)
!1221 = !DILocation(line: 172, column: 11, scope: !1210)
!1222 = !DILocation(line: 172, column: 3, scope: !1210)
!1223 = !DILocation(line: 174, column: 11, scope: !1210)
!1224 = !DILocation(line: 174, column: 17, scope: !1210)
!1225 = !DILocation(line: 174, column: 25, scope: !1210)
!1226 = !DILocation(line: 174, column: 29, scope: !1210)
!1227 = !DILocation(line: 174, column: 23, scope: !1210)
!1228 = !DILocation(line: 174, column: 9, scope: !1210)
!1229 = !DILocation(line: 175, column: 6, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 175, column: 6)
!1231 = !DILocation(line: 175, column: 17, scope: !1230)
!1232 = !DILocation(line: 175, column: 23, scope: !1230)
!1233 = !DILocation(line: 175, column: 14, scope: !1230)
!1234 = !DILocation(line: 175, column: 27, scope: !1230)
!1235 = !DILocation(line: 175, column: 30, scope: !1230)
!1236 = !DILocation(line: 175, column: 39, scope: !1230)
!1237 = !DILocation(line: 175, column: 43, scope: !1230)
!1238 = !DILocation(line: 175, column: 36, scope: !1230)
!1239 = !DILocation(line: 175, column: 6, scope: !1195)
!1240 = !DILocation(line: 176, column: 3, scope: !1230)
!1241 = !DILocalVariable(name: "__UNIQUE_ID___x239", scope: !1242, file: !3, line: 178, type: !134)
!1242 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 178, column: 9)
!1243 = !DILocation(line: 178, column: 9, scope: !1242)
!1244 = !DILocalVariable(name: "__UNIQUE_ID___y240", scope: !1242, file: !3, line: 178, type: !134)
!1245 = !DILocation(line: 178, column: 7, scope: !1195)
!1246 = !DILocation(line: 179, column: 6, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 179, column: 6)
!1248 = !DILocation(line: 179, column: 11, scope: !1247)
!1249 = !DILocation(line: 179, column: 6, scope: !1195)
!1250 = !DILocation(line: 180, column: 3, scope: !1247)
!1251 = !DILocation(line: 181, column: 7, scope: !1195)
!1252 = !DILocation(line: 183, column: 9, scope: !1195)
!1253 = !DILocation(line: 183, column: 13, scope: !1195)
!1254 = !DILocation(line: 183, column: 17, scope: !1195)
!1255 = !DILocation(line: 183, column: 16, scope: !1195)
!1256 = !DILocation(line: 183, column: 2, scope: !1195)
!1257 = !DILocation(line: 183, column: 24, scope: !1195)
!1258 = !DILocation(line: 183, column: 30, scope: !1195)
!1259 = !DILocation(line: 183, column: 34, scope: !1195)
!1260 = !DILocation(line: 183, column: 33, scope: !1195)
!1261 = !DILocation(line: 183, column: 43, scope: !1195)
!1262 = !DILocation(line: 184, column: 9, scope: !1195)
!1263 = !DILocation(line: 184, column: 13, scope: !1195)
!1264 = !DILocation(line: 184, column: 19, scope: !1195)
!1265 = !DILocation(line: 184, column: 18, scope: !1195)
!1266 = !DILocation(line: 184, column: 2, scope: !1195)
!1267 = !DILocation(line: 184, column: 26, scope: !1195)
!1268 = !DILocation(line: 184, column: 32, scope: !1195)
!1269 = !DILocation(line: 184, column: 38, scope: !1195)
!1270 = !DILocation(line: 184, column: 37, scope: !1195)
!1271 = !DILocation(line: 184, column: 47, scope: !1195)
!1272 = !DILocation(line: 185, column: 9, scope: !1195)
!1273 = !DILocation(line: 185, column: 13, scope: !1195)
!1274 = !DILocation(line: 185, column: 18, scope: !1195)
!1275 = !DILocation(line: 185, column: 17, scope: !1195)
!1276 = !DILocation(line: 185, column: 2, scope: !1195)
!1277 = !DILocation(line: 185, column: 25, scope: !1195)
!1278 = !DILocation(line: 185, column: 31, scope: !1195)
!1279 = !DILocation(line: 185, column: 36, scope: !1195)
!1280 = !DILocation(line: 185, column: 35, scope: !1195)
!1281 = !DILocation(line: 185, column: 45, scope: !1195)
!1282 = !DILocation(line: 186, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 186, column: 6)
!1284 = !DILocation(line: 186, column: 12, scope: !1283)
!1285 = !DILocation(line: 186, column: 19, scope: !1283)
!1286 = !DILocation(line: 186, column: 22, scope: !1283)
!1287 = !DILocation(line: 186, column: 26, scope: !1283)
!1288 = !DILocation(line: 186, column: 6, scope: !1195)
!1289 = !DILocation(line: 187, column: 10, scope: !1283)
!1290 = !DILocation(line: 187, column: 14, scope: !1283)
!1291 = !DILocation(line: 187, column: 21, scope: !1283)
!1292 = !DILocation(line: 187, column: 20, scope: !1283)
!1293 = !DILocation(line: 187, column: 3, scope: !1283)
!1294 = !DILocation(line: 187, column: 28, scope: !1283)
!1295 = !DILocation(line: 187, column: 34, scope: !1283)
!1296 = !DILocation(line: 187, column: 41, scope: !1283)
!1297 = !DILocation(line: 187, column: 40, scope: !1283)
!1298 = !DILocation(line: 187, column: 50, scope: !1283)
!1299 = !DILocation(line: 188, column: 2, scope: !1195)
!1300 = !DILocation(line: 189, column: 1, scope: !1195)
!1301 = distinct !DISubprogram(name: "fb_default_cmap", scope: !3, file: !3, line: 307, type: !1302, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1198, !140}
!1304 = !DILocalVariable(name: "len", arg: 1, scope: !1301, file: !3, line: 307, type: !140)
!1305 = !DILocation(line: 307, column: 43, scope: !1301)
!1306 = !DILocation(line: 309, column: 9, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 309, column: 9)
!1308 = !DILocation(line: 309, column: 13, scope: !1307)
!1309 = !DILocation(line: 309, column: 9, scope: !1301)
!1310 = !DILocation(line: 310, column: 2, scope: !1307)
!1311 = !DILocation(line: 311, column: 9, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 311, column: 9)
!1313 = !DILocation(line: 311, column: 13, scope: !1312)
!1314 = !DILocation(line: 311, column: 9, scope: !1301)
!1315 = !DILocation(line: 312, column: 2, scope: !1312)
!1316 = !DILocation(line: 313, column: 9, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 313, column: 9)
!1318 = !DILocation(line: 313, column: 13, scope: !1317)
!1319 = !DILocation(line: 313, column: 9, scope: !1301)
!1320 = !DILocation(line: 314, column: 2, scope: !1317)
!1321 = !DILocation(line: 315, column: 5, scope: !1301)
!1322 = !DILocation(line: 316, column: 1, scope: !1301)
!1323 = distinct !DISubprogram(name: "fb_alloc_cmap", scope: !3, file: !3, line: 133, type: !1324, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!140, !209, !140, !140}
!1326 = !DILocalVariable(name: "cmap", arg: 1, scope: !1323, file: !3, line: 133, type: !209)
!1327 = !DILocation(line: 133, column: 35, scope: !1323)
!1328 = !DILocalVariable(name: "len", arg: 2, scope: !1323, file: !3, line: 133, type: !140)
!1329 = !DILocation(line: 133, column: 45, scope: !1323)
!1330 = !DILocalVariable(name: "transp", arg: 3, scope: !1323, file: !3, line: 133, type: !140)
!1331 = !DILocation(line: 133, column: 54, scope: !1323)
!1332 = !DILocation(line: 135, column: 27, scope: !1323)
!1333 = !DILocation(line: 135, column: 33, scope: !1323)
!1334 = !DILocation(line: 135, column: 38, scope: !1323)
!1335 = !DILocation(line: 135, column: 9, scope: !1323)
!1336 = !DILocation(line: 135, column: 2, scope: !1323)
!1337 = distinct !DISubprogram(name: "fb_cmap_to_user", scope: !3, file: !3, line: 191, type: !1338, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!140, !1198, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap_user", file: !1342, line: 93, size: 320, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1341, file: !1342, line: 94, baseType: !149, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1341, file: !1342, line: 95, baseType: !149, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !1341, file: !1342, line: 96, baseType: !153, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !1341, file: !1342, line: 97, baseType: !153, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !1341, file: !1342, line: 98, baseType: !153, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !1341, file: !1342, line: 99, baseType: !153, size: 64, offset: 256)
!1350 = !DILocalVariable(name: "addr", arg: 1, scope: !1351, file: !1352, line: 138, type: !1357)
!1351 = distinct !DISubprogram(name: "check_copy_size", scope: !1352, file: !1352, line: 138, type: !1353, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1352 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1355, !1357, !134, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !133, line: 30, baseType: !1356)
!1356 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1359 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1366)
!1361 = distinct !DILexicalBlock(scope: !1363, file: !1362, line: 199, column: 6)
!1362 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!1363 = distinct !DISubprogram(name: "copy_to_user", scope: !1362, file: !1362, line: 197, type: !1364, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!138, !139, !1357, !138}
!1366 = distinct !DILocation(line: 215, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 215, column: 7)
!1368 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 214, column: 6)
!1369 = !DILocalVariable(name: "bytes", arg: 2, scope: !1351, file: !1352, line: 138, type: !134)
!1370 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !1360)
!1371 = !DILocalVariable(name: "is_source", arg: 3, scope: !1351, file: !1352, line: 138, type: !1355)
!1372 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !1360)
!1373 = !DILocalVariable(name: "sz", scope: !1351, file: !1352, line: 140, type: !140)
!1374 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !1360)
!1375 = !DILocalVariable(name: "__ret_warn_on", scope: !1376, file: !1352, line: 150, type: !140)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1352, line: 150, column: 6)
!1377 = distinct !DILexicalBlock(scope: !1351, file: !1352, line: 150, column: 6)
!1378 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !1360)
!1379 = !DILocalVariable(name: "to", arg: 1, scope: !1363, file: !1362, line: 197, type: !139)
!1380 = !DILocation(line: 197, column: 27, scope: !1363, inlinedAt: !1366)
!1381 = !DILocalVariable(name: "from", arg: 2, scope: !1363, file: !1362, line: 197, type: !1357)
!1382 = !DILocation(line: 197, column: 43, scope: !1363, inlinedAt: !1366)
!1383 = !DILocalVariable(name: "n", arg: 3, scope: !1363, file: !1362, line: 197, type: !138)
!1384 = !DILocation(line: 197, column: 63, scope: !1363, inlinedAt: !1366)
!1385 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 212, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 212, column: 6)
!1389 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !1386)
!1390 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !1386)
!1391 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !1386)
!1392 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !1386)
!1393 = !DILocation(line: 197, column: 27, scope: !1363, inlinedAt: !1387)
!1394 = !DILocation(line: 197, column: 43, scope: !1363, inlinedAt: !1387)
!1395 = !DILocation(line: 197, column: 63, scope: !1363, inlinedAt: !1387)
!1396 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 210, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 210, column: 6)
!1400 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !1397)
!1401 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !1397)
!1402 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !1397)
!1403 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !1397)
!1404 = !DILocation(line: 197, column: 27, scope: !1363, inlinedAt: !1398)
!1405 = !DILocation(line: 197, column: 43, scope: !1363, inlinedAt: !1398)
!1406 = !DILocation(line: 197, column: 63, scope: !1363, inlinedAt: !1398)
!1407 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 208, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 208, column: 6)
!1411 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !1408)
!1412 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !1408)
!1413 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !1408)
!1414 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !1408)
!1415 = !DILocation(line: 197, column: 27, scope: !1363, inlinedAt: !1409)
!1416 = !DILocation(line: 197, column: 43, scope: !1363, inlinedAt: !1409)
!1417 = !DILocation(line: 197, column: 63, scope: !1363, inlinedAt: !1409)
!1418 = !DILocalVariable(name: "from", arg: 1, scope: !1337, file: !3, line: 191, type: !1198)
!1419 = !DILocation(line: 191, column: 43, scope: !1337)
!1420 = !DILocalVariable(name: "to", arg: 2, scope: !1337, file: !3, line: 191, type: !1340)
!1421 = !DILocation(line: 191, column: 70, scope: !1337)
!1422 = !DILocalVariable(name: "tooff", scope: !1337, file: !3, line: 193, type: !7)
!1423 = !DILocation(line: 193, column: 15, scope: !1337)
!1424 = !DILocalVariable(name: "fromoff", scope: !1337, file: !3, line: 193, type: !7)
!1425 = !DILocation(line: 193, column: 26, scope: !1337)
!1426 = !DILocalVariable(name: "size", scope: !1337, file: !3, line: 194, type: !134)
!1427 = !DILocation(line: 194, column: 9, scope: !1337)
!1428 = !DILocation(line: 196, column: 6, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 196, column: 6)
!1430 = !DILocation(line: 196, column: 10, scope: !1429)
!1431 = !DILocation(line: 196, column: 18, scope: !1429)
!1432 = !DILocation(line: 196, column: 24, scope: !1429)
!1433 = !DILocation(line: 196, column: 16, scope: !1429)
!1434 = !DILocation(line: 196, column: 6, scope: !1337)
!1435 = !DILocation(line: 197, column: 13, scope: !1429)
!1436 = !DILocation(line: 197, column: 17, scope: !1429)
!1437 = !DILocation(line: 197, column: 25, scope: !1429)
!1438 = !DILocation(line: 197, column: 31, scope: !1429)
!1439 = !DILocation(line: 197, column: 23, scope: !1429)
!1440 = !DILocation(line: 197, column: 11, scope: !1429)
!1441 = !DILocation(line: 197, column: 3, scope: !1429)
!1442 = !DILocation(line: 199, column: 11, scope: !1429)
!1443 = !DILocation(line: 199, column: 17, scope: !1429)
!1444 = !DILocation(line: 199, column: 25, scope: !1429)
!1445 = !DILocation(line: 199, column: 29, scope: !1429)
!1446 = !DILocation(line: 199, column: 23, scope: !1429)
!1447 = !DILocation(line: 199, column: 9, scope: !1429)
!1448 = !DILocation(line: 200, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 200, column: 6)
!1450 = !DILocation(line: 200, column: 17, scope: !1449)
!1451 = !DILocation(line: 200, column: 23, scope: !1449)
!1452 = !DILocation(line: 200, column: 14, scope: !1449)
!1453 = !DILocation(line: 200, column: 27, scope: !1449)
!1454 = !DILocation(line: 200, column: 30, scope: !1449)
!1455 = !DILocation(line: 200, column: 39, scope: !1449)
!1456 = !DILocation(line: 200, column: 43, scope: !1449)
!1457 = !DILocation(line: 200, column: 36, scope: !1449)
!1458 = !DILocation(line: 200, column: 6, scope: !1337)
!1459 = !DILocation(line: 201, column: 3, scope: !1449)
!1460 = !DILocalVariable(name: "__UNIQUE_ID___x241", scope: !1461, file: !3, line: 203, type: !134)
!1461 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 203, column: 9)
!1462 = !DILocation(line: 203, column: 9, scope: !1461)
!1463 = !DILocalVariable(name: "__UNIQUE_ID___y242", scope: !1461, file: !3, line: 203, type: !134)
!1464 = !DILocation(line: 203, column: 7, scope: !1337)
!1465 = !DILocation(line: 204, column: 6, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 204, column: 6)
!1467 = !DILocation(line: 204, column: 11, scope: !1466)
!1468 = !DILocation(line: 204, column: 6, scope: !1337)
!1469 = !DILocation(line: 205, column: 3, scope: !1466)
!1470 = !DILocation(line: 206, column: 7, scope: !1337)
!1471 = !DILocation(line: 208, column: 19, scope: !1410)
!1472 = !DILocation(line: 208, column: 23, scope: !1410)
!1473 = !DILocation(line: 208, column: 27, scope: !1410)
!1474 = !DILocation(line: 208, column: 26, scope: !1410)
!1475 = !DILocation(line: 208, column: 34, scope: !1410)
!1476 = !DILocation(line: 208, column: 40, scope: !1410)
!1477 = !DILocation(line: 208, column: 44, scope: !1410)
!1478 = !DILocation(line: 208, column: 43, scope: !1410)
!1479 = !DILocation(line: 208, column: 53, scope: !1410)
!1480 = !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1409)
!1481 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !1408)
!1482 = distinct !DILexicalBlock(scope: !1351, file: !1352, line: 141, column: 6)
!1483 = !DILocation(line: 0, scope: !1482, inlinedAt: !1408)
!1484 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !1408)
!1485 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !1408)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !1352, line: 142, column: 7)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !1352, line: 141, column: 39)
!1488 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !1408)
!1489 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !1408)
!1490 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !1408)
!1491 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !1408)
!1492 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !1408)
!1493 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !1408)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !1352, line: 144, column: 12)
!1495 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !1408)
!1496 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !1408)
!1497 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !1408)
!1498 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !1408)
!1499 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !1408)
!1500 = distinct !DILexicalBlock(scope: !1376, file: !1352, line: 150, column: 6)
!1501 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !1408)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1352, line: 150, column: 6)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !1352, line: 150, column: 6)
!1504 = !{i32 -2145550199, i32 -2145550170, i32 -2145550124, i32 -2145550066, i32 -2145550012, i32 -2145549958, i32 -2145549903, i32 -2145549872}
!1505 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !1408)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !1352, line: 150, column: 6)
!1507 = !{i32 -2145549452, i32 -2145549445, i32 -2145549393, i32 -2145549362, i32 -2145549332}
!1508 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !1408)
!1509 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !1408)
!1510 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !1408)
!1511 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !1408)
!1512 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !1408)
!1513 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !1408)
!1514 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !1408)
!1515 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !1408)
!1516 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !1408)
!1517 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !1408)
!1518 = !DILocation(line: 199, column: 6, scope: !1363, inlinedAt: !1409)
!1519 = !DILocation(line: 200, column: 21, scope: !1361, inlinedAt: !1409)
!1520 = !DILocation(line: 200, column: 25, scope: !1361, inlinedAt: !1409)
!1521 = !DILocation(line: 200, column: 31, scope: !1361, inlinedAt: !1409)
!1522 = !DILocation(line: 200, column: 7, scope: !1361, inlinedAt: !1409)
!1523 = !DILocation(line: 200, column: 5, scope: !1361, inlinedAt: !1409)
!1524 = !DILocation(line: 200, column: 3, scope: !1361, inlinedAt: !1409)
!1525 = !DILocation(line: 201, column: 9, scope: !1363, inlinedAt: !1409)
!1526 = !DILocation(line: 208, column: 6, scope: !1410)
!1527 = !DILocation(line: 208, column: 6, scope: !1337)
!1528 = !DILocation(line: 209, column: 3, scope: !1410)
!1529 = !DILocation(line: 210, column: 19, scope: !1399)
!1530 = !DILocation(line: 210, column: 23, scope: !1399)
!1531 = !DILocation(line: 210, column: 29, scope: !1399)
!1532 = !DILocation(line: 210, column: 28, scope: !1399)
!1533 = !DILocation(line: 210, column: 36, scope: !1399)
!1534 = !DILocation(line: 210, column: 42, scope: !1399)
!1535 = !DILocation(line: 210, column: 48, scope: !1399)
!1536 = !DILocation(line: 210, column: 47, scope: !1399)
!1537 = !DILocation(line: 210, column: 57, scope: !1399)
!1538 = !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1398)
!1539 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !1397)
!1540 = !DILocation(line: 0, scope: !1482, inlinedAt: !1397)
!1541 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !1397)
!1542 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !1397)
!1543 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !1397)
!1544 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !1397)
!1545 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !1397)
!1546 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !1397)
!1547 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !1397)
!1548 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !1397)
!1549 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !1397)
!1550 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !1397)
!1551 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !1397)
!1552 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !1397)
!1553 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !1397)
!1554 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !1397)
!1555 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !1397)
!1556 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !1397)
!1557 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !1397)
!1558 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !1397)
!1559 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !1397)
!1560 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !1397)
!1561 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !1397)
!1562 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !1397)
!1563 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !1397)
!1564 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !1397)
!1565 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !1397)
!1566 = !DILocation(line: 199, column: 6, scope: !1363, inlinedAt: !1398)
!1567 = !DILocation(line: 200, column: 21, scope: !1361, inlinedAt: !1398)
!1568 = !DILocation(line: 200, column: 25, scope: !1361, inlinedAt: !1398)
!1569 = !DILocation(line: 200, column: 31, scope: !1361, inlinedAt: !1398)
!1570 = !DILocation(line: 200, column: 7, scope: !1361, inlinedAt: !1398)
!1571 = !DILocation(line: 200, column: 5, scope: !1361, inlinedAt: !1398)
!1572 = !DILocation(line: 200, column: 3, scope: !1361, inlinedAt: !1398)
!1573 = !DILocation(line: 201, column: 9, scope: !1363, inlinedAt: !1398)
!1574 = !DILocation(line: 210, column: 6, scope: !1399)
!1575 = !DILocation(line: 210, column: 6, scope: !1337)
!1576 = !DILocation(line: 211, column: 3, scope: !1399)
!1577 = !DILocation(line: 212, column: 19, scope: !1388)
!1578 = !DILocation(line: 212, column: 23, scope: !1388)
!1579 = !DILocation(line: 212, column: 28, scope: !1388)
!1580 = !DILocation(line: 212, column: 27, scope: !1388)
!1581 = !DILocation(line: 212, column: 35, scope: !1388)
!1582 = !DILocation(line: 212, column: 41, scope: !1388)
!1583 = !DILocation(line: 212, column: 46, scope: !1388)
!1584 = !DILocation(line: 212, column: 45, scope: !1388)
!1585 = !DILocation(line: 212, column: 55, scope: !1388)
!1586 = !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1387)
!1587 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !1386)
!1588 = !DILocation(line: 0, scope: !1482, inlinedAt: !1386)
!1589 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !1386)
!1590 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !1386)
!1591 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !1386)
!1592 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !1386)
!1593 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !1386)
!1594 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !1386)
!1595 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !1386)
!1596 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !1386)
!1597 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !1386)
!1598 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !1386)
!1599 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !1386)
!1600 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !1386)
!1601 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !1386)
!1602 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !1386)
!1603 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !1386)
!1604 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !1386)
!1605 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !1386)
!1606 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !1386)
!1607 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !1386)
!1608 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !1386)
!1609 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !1386)
!1610 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !1386)
!1611 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !1386)
!1612 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !1386)
!1613 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !1386)
!1614 = !DILocation(line: 199, column: 6, scope: !1363, inlinedAt: !1387)
!1615 = !DILocation(line: 200, column: 21, scope: !1361, inlinedAt: !1387)
!1616 = !DILocation(line: 200, column: 25, scope: !1361, inlinedAt: !1387)
!1617 = !DILocation(line: 200, column: 31, scope: !1361, inlinedAt: !1387)
!1618 = !DILocation(line: 200, column: 7, scope: !1361, inlinedAt: !1387)
!1619 = !DILocation(line: 200, column: 5, scope: !1361, inlinedAt: !1387)
!1620 = !DILocation(line: 200, column: 3, scope: !1361, inlinedAt: !1387)
!1621 = !DILocation(line: 201, column: 9, scope: !1363, inlinedAt: !1387)
!1622 = !DILocation(line: 212, column: 6, scope: !1388)
!1623 = !DILocation(line: 212, column: 6, scope: !1337)
!1624 = !DILocation(line: 213, column: 3, scope: !1388)
!1625 = !DILocation(line: 214, column: 6, scope: !1368)
!1626 = !DILocation(line: 214, column: 12, scope: !1368)
!1627 = !DILocation(line: 214, column: 19, scope: !1368)
!1628 = !DILocation(line: 214, column: 22, scope: !1368)
!1629 = !DILocation(line: 214, column: 26, scope: !1368)
!1630 = !DILocation(line: 214, column: 6, scope: !1337)
!1631 = !DILocation(line: 215, column: 20, scope: !1367)
!1632 = !DILocation(line: 215, column: 24, scope: !1367)
!1633 = !DILocation(line: 215, column: 31, scope: !1367)
!1634 = !DILocation(line: 215, column: 30, scope: !1367)
!1635 = !DILocation(line: 215, column: 38, scope: !1367)
!1636 = !DILocation(line: 215, column: 44, scope: !1367)
!1637 = !DILocation(line: 215, column: 51, scope: !1367)
!1638 = !DILocation(line: 215, column: 50, scope: !1367)
!1639 = !DILocation(line: 215, column: 60, scope: !1367)
!1640 = !DILocation(line: 199, column: 6, scope: !1361, inlinedAt: !1366)
!1641 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !1360)
!1642 = !DILocation(line: 0, scope: !1482, inlinedAt: !1360)
!1643 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !1360)
!1644 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !1360)
!1645 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !1360)
!1646 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !1360)
!1647 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !1360)
!1648 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !1360)
!1649 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !1360)
!1650 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !1360)
!1651 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !1360)
!1652 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !1360)
!1653 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !1360)
!1654 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !1360)
!1655 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !1360)
!1656 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !1360)
!1657 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !1360)
!1658 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !1360)
!1659 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !1360)
!1660 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !1360)
!1661 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !1360)
!1662 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !1360)
!1663 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !1360)
!1664 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !1360)
!1665 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !1360)
!1666 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !1360)
!1667 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !1360)
!1668 = !DILocation(line: 199, column: 6, scope: !1363, inlinedAt: !1366)
!1669 = !DILocation(line: 200, column: 21, scope: !1361, inlinedAt: !1366)
!1670 = !DILocation(line: 200, column: 25, scope: !1361, inlinedAt: !1366)
!1671 = !DILocation(line: 200, column: 31, scope: !1361, inlinedAt: !1366)
!1672 = !DILocation(line: 200, column: 7, scope: !1361, inlinedAt: !1366)
!1673 = !DILocation(line: 200, column: 5, scope: !1361, inlinedAt: !1366)
!1674 = !DILocation(line: 200, column: 3, scope: !1361, inlinedAt: !1366)
!1675 = !DILocation(line: 201, column: 9, scope: !1363, inlinedAt: !1366)
!1676 = !DILocation(line: 215, column: 7, scope: !1367)
!1677 = !DILocation(line: 215, column: 7, scope: !1368)
!1678 = !DILocation(line: 216, column: 4, scope: !1367)
!1679 = !DILocation(line: 215, column: 64, scope: !1367)
!1680 = !DILocation(line: 217, column: 2, scope: !1337)
!1681 = !DILocation(line: 218, column: 1, scope: !1337)
!1682 = distinct !DISubprogram(name: "fb_set_cmap", scope: !3, file: !3, line: 231, type: !1683, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!140, !209, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !1342, line: 437, size: 8128, elements: !1687)
!1687 = !{!1688, !1693, !1694, !1695, !1696, !1731, !1732, !1770, !1791, !1857, !1869, !1888, !1889, !1890, !1891, !1892, !5618, !5619, !5621, !5628, !5643, !5768, !5769, !5770, !5771, !5847, !5852, !5853, !5854, !5855, !5856, !5857, !5869}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1686, file: !1342, line: 438, baseType: !1689, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !133, line: 168, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 166, size: 32, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1690, file: !133, line: 167, baseType: !140, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1686, file: !1342, line: 439, baseType: !140, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !1342, line: 440, baseType: !140, size: 32, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !1686, file: !1342, line: 445, baseType: !140, size: 32, offset: 96)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1686, file: !1342, line: 446, baseType: !1697, size: 192, offset: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1698, line: 53, size: 192, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1710, !1725}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1697, file: !1698, line: 54, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1702, line: 13, baseType: !1703)
!1702 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !133, line: 175, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 173, size: 64, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1704, file: !133, line: 174, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !167, line: 22, baseType: !1708)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !150, line: 30, baseType: !1709)
!1709 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1697, file: !1698, line: 55, baseType: !1711, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1712, line: 83, baseType: !1713)
!1712 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1712, line: 71, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !1712, line: 72, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !1712, line: 72, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1716, file: !1712, line: 73, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1712, line: 20, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1719, file: !1712, line: 21, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1723, line: 25, baseType: !1724)
!1723 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1723, line: 25, elements: !210)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1697, file: !1698, line: 59, baseType: !1726, size: 128, offset: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !133, line: 178, size: 128, elements: !1727)
!1727 = !{!1728, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1726, file: !133, line: 179, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1726, file: !133, line: 179, baseType: !1729, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !1686, file: !1342, line: 447, baseType: !1697, size: 192, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1686, file: !1342, line: 448, baseType: !1733, size: 1280, offset: 512)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !146, line: 242, size: 1280, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !1733, file: !146, line: 243, baseType: !149, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !1733, file: !146, line: 244, baseType: !149, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !1733, file: !146, line: 245, baseType: !149, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !1733, file: !146, line: 246, baseType: !149, size: 32, offset: 96)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !1733, file: !146, line: 247, baseType: !149, size: 32, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !1733, file: !146, line: 248, baseType: !149, size: 32, offset: 160)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !1733, file: !146, line: 250, baseType: !149, size: 32, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !1733, file: !146, line: 251, baseType: !149, size: 32, offset: 224)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !1733, file: !146, line: 253, baseType: !1744, size: 96, offset: 256)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !146, line: 188, size: 96, elements: !1745)
!1745 = !{!1746, !1747, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1744, file: !146, line: 189, baseType: !149, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1744, file: !146, line: 190, baseType: !149, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !1744, file: !146, line: 191, baseType: !149, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !1733, file: !146, line: 254, baseType: !1744, size: 96, offset: 352)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !1733, file: !146, line: 255, baseType: !1744, size: 96, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !1733, file: !146, line: 256, baseType: !1744, size: 96, offset: 544)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !1733, file: !146, line: 258, baseType: !149, size: 32, offset: 640)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1733, file: !146, line: 260, baseType: !149, size: 32, offset: 672)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1733, file: !146, line: 262, baseType: !149, size: 32, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1733, file: !146, line: 263, baseType: !149, size: 32, offset: 736)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !1733, file: !146, line: 265, baseType: !149, size: 32, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !1733, file: !146, line: 268, baseType: !149, size: 32, offset: 800)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !1733, file: !146, line: 269, baseType: !149, size: 32, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !1733, file: !146, line: 270, baseType: !149, size: 32, offset: 864)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !1733, file: !146, line: 271, baseType: !149, size: 32, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !1733, file: !146, line: 272, baseType: !149, size: 32, offset: 928)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !1733, file: !146, line: 273, baseType: !149, size: 32, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !1733, file: !146, line: 274, baseType: !149, size: 32, offset: 992)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1733, file: !146, line: 275, baseType: !149, size: 32, offset: 1024)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !1733, file: !146, line: 276, baseType: !149, size: 32, offset: 1056)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !1733, file: !146, line: 277, baseType: !149, size: 32, offset: 1088)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1733, file: !146, line: 278, baseType: !149, size: 32, offset: 1120)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1733, file: !146, line: 279, baseType: !1769, size: 128, offset: 1152)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, elements: !177)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !1686, file: !1342, line: 449, baseType: !1771, size: 640, offset: 1792)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !146, line: 157, size: 640, elements: !1772)
!1772 = !{!1773, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1771, file: !146, line: 158, baseType: !1774, size: 128)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 128, elements: !195)
!1775 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !1771, file: !146, line: 159, baseType: !138, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !1771, file: !146, line: 161, baseType: !149, size: 32, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !146, line: 162, baseType: !149, size: 32, offset: 224)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !1771, file: !146, line: 163, baseType: !149, size: 32, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !1771, file: !146, line: 164, baseType: !149, size: 32, offset: 288)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !1771, file: !146, line: 165, baseType: !154, size: 16, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !1771, file: !146, line: 166, baseType: !154, size: 16, offset: 336)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !1771, file: !146, line: 167, baseType: !154, size: 16, offset: 352)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !1771, file: !146, line: 168, baseType: !149, size: 32, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !1771, file: !146, line: 169, baseType: !138, size: 64, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !1771, file: !146, line: 171, baseType: !149, size: 32, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !1771, file: !146, line: 172, baseType: !149, size: 32, offset: 544)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1771, file: !146, line: 174, baseType: !154, size: 16, offset: 576)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1771, file: !146, line: 175, baseType: !1790, size: 32, offset: 592)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 32, elements: !168)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !1686, file: !1342, line: 450, baseType: !1792, size: 1152, offset: 2432)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !1342, line: 63, size: 1152, elements: !1793)
!1793 = !{!1794, !1805, !1826, !1830, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !1792, file: !1342, line: 64, baseType: !1795, size: 256)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !1342, line: 52, size: 256, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !1795, file: !1342, line: 53, baseType: !149, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !1795, file: !1342, line: 54, baseType: !149, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !1795, file: !1342, line: 55, baseType: !149, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !1795, file: !1342, line: 56, baseType: !149, size: 32, offset: 96)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !1795, file: !1342, line: 57, baseType: !149, size: 32, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !1795, file: !1342, line: 58, baseType: !149, size: 32, offset: 160)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !1795, file: !1342, line: 59, baseType: !149, size: 32, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !1795, file: !1342, line: 60, baseType: !149, size: 32, offset: 224)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !1792, file: !1342, line: 65, baseType: !1806, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !1342, line: 766, size: 512, elements: !1808)
!1808 = !{!1809, !1812, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1807, file: !1342, line: 767, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1775)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1807, file: !1342, line: 768, baseType: !1813, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !167, line: 21, baseType: !149)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !1807, file: !1342, line: 769, baseType: !1813, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !1807, file: !1342, line: 770, baseType: !1813, size: 32, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !1807, file: !1342, line: 771, baseType: !1813, size: 32, offset: 160)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !1807, file: !1342, line: 772, baseType: !1813, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !1807, file: !1342, line: 773, baseType: !1813, size: 32, offset: 224)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !1807, file: !1342, line: 774, baseType: !1813, size: 32, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !1807, file: !1342, line: 775, baseType: !1813, size: 32, offset: 288)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !1807, file: !1342, line: 776, baseType: !1813, size: 32, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !1807, file: !1342, line: 777, baseType: !1813, size: 32, offset: 352)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1807, file: !1342, line: 778, baseType: !1813, size: 32, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !1807, file: !1342, line: 779, baseType: !1813, size: 32, offset: 416)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1807, file: !1342, line: 780, baseType: !1813, size: 32, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !1792, file: !1342, line: 66, baseType: !1827, size: 32, offset: 320)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1828, size: 32, elements: !177)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !150, line: 21, baseType: !1829)
!1829 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !1792, file: !1342, line: 67, baseType: !1831, size: 112, offset: 352)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1828, size: 112, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 14)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !1792, file: !1342, line: 68, baseType: !1831, size: 112, offset: 464)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1792, file: !1342, line: 69, baseType: !1831, size: 112, offset: 576)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !1792, file: !1342, line: 70, baseType: !149, size: 32, offset: 704)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !1792, file: !1342, line: 71, baseType: !149, size: 32, offset: 736)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1792, file: !1342, line: 72, baseType: !149, size: 32, offset: 768)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !1792, file: !1342, line: 73, baseType: !149, size: 32, offset: 800)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !1792, file: !1342, line: 74, baseType: !149, size: 32, offset: 832)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !1792, file: !1342, line: 75, baseType: !149, size: 32, offset: 864)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !1792, file: !1342, line: 76, baseType: !149, size: 32, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !1792, file: !1342, line: 77, baseType: !149, size: 32, offset: 928)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !1792, file: !1342, line: 78, baseType: !149, size: 32, offset: 960)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1792, file: !1342, line: 79, baseType: !154, size: 16, offset: 992)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !1792, file: !1342, line: 80, baseType: !154, size: 16, offset: 1008)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1792, file: !1342, line: 81, baseType: !154, size: 16, offset: 1024)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !1792, file: !1342, line: 82, baseType: !154, size: 16, offset: 1040)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !1792, file: !1342, line: 83, baseType: !154, size: 16, offset: 1056)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !1792, file: !1342, line: 84, baseType: !154, size: 16, offset: 1072)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !1792, file: !1342, line: 85, baseType: !154, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !1792, file: !1342, line: 86, baseType: !154, size: 16, offset: 1104)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1792, file: !1342, line: 87, baseType: !1828, size: 8, offset: 1120)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1792, file: !1342, line: 88, baseType: !1828, size: 8, offset: 1128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !1792, file: !1342, line: 89, baseType: !1828, size: 8, offset: 1136)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !1792, file: !1342, line: 90, baseType: !1828, size: 8, offset: 1144)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1686, file: !1342, line: 451, baseType: !1858, size: 256, offset: 3584)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1859, line: 102, size: 256, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1862, !1863}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1858, file: !1859, line: 103, baseType: !1701, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1858, file: !1859, line: 104, baseType: !1726, size: 128, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1858, file: !1859, line: 105, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1859, line: 21, baseType: !1865)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !1686, file: !1342, line: 452, baseType: !1870, size: 448, offset: 3840)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !1342, line: 185, size: 448, elements: !1871)
!1871 = !{!1872, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1887}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1870, file: !1342, line: 186, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !167, line: 17, baseType: !1828)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1870, file: !1342, line: 187, baseType: !1813, size: 32, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1870, file: !1342, line: 188, baseType: !1813, size: 32, offset: 96)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !1870, file: !1342, line: 189, baseType: !1813, size: 32, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !1870, file: !1342, line: 190, baseType: !1813, size: 32, offset: 160)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !1870, file: !1342, line: 191, baseType: !1813, size: 32, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1342, line: 192, baseType: !1813, size: 32, offset: 224)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !1870, file: !1342, line: 193, baseType: !1813, size: 32, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !1870, file: !1342, line: 194, baseType: !1813, size: 32, offset: 288)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !1870, file: !1342, line: 198, baseType: !1884, size: 64, offset: 320)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1685, !139, !139, !7}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !1870, file: !1342, line: 199, baseType: !1884, size: 64, offset: 384)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !1686, file: !1342, line: 453, baseType: !1870, size: 448, offset: 4288)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !1686, file: !1342, line: 454, baseType: !145, size: 320, offset: 4736)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !1686, file: !1342, line: 455, baseType: !1726, size: 128, offset: 5056)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1686, file: !1342, line: 456, baseType: !1806, size: 64, offset: 5184)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !1686, file: !1342, line: 462, baseType: !1893, size: 64, offset: 5248)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !6, line: 280, size: 6912, elements: !1895)
!1895 = !{!1896, !1906, !1907, !1908, !1923, !1935, !1936, !5615, !5617}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !1894, file: !6, line: 284, baseType: !1897, size: 224)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !6, line: 182, size: 224, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1897, file: !6, line: 194, baseType: !140, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !1897, file: !6, line: 203, baseType: !140, size: 32, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1897, file: !6, line: 219, baseType: !140, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !1897, file: !6, line: 238, baseType: !140, size: 32, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1897, file: !6, line: 249, baseType: !5, size: 32, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1897, file: !6, line: 264, baseType: !7, size: 32, offset: 160)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1897, file: !6, line: 272, baseType: !13, size: 32, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !1894, file: !6, line: 294, baseType: !1697, size: 192, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !1894, file: !6, line: 303, baseType: !1697, size: 192, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1894, file: !6, line: 312, baseType: !1909, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !6, line: 120, size: 256, elements: !1912)
!1912 = !{!1913, !1914, !1918, !1919}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1911, file: !6, line: 128, baseType: !7, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !1911, file: !6, line: 146, baseType: !1915, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!140, !1893}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !1911, file: !6, line: 160, baseType: !1915, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !1911, file: !6, line: 174, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!140, !1893, !1685}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !1894, file: !6, line: 317, baseType: !1924, size: 192, offset: 704)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1925, line: 54, size: 192, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !{!1927, !1933, !1934}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1924, file: !1925, line: 55, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1925, line: 51, baseType: !1929)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!140, !1932, !138, !139}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1924, file: !1925, line: 56, baseType: !1932, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1924, file: !1925, line: 57, baseType: !140, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1894, file: !6, line: 322, baseType: !1726, size: 128, offset: 896)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1894, file: !6, line: 327, baseType: !1937, size: 5568, offset: 1024)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !85, line: 461, size: 5568, elements: !1938)
!1938 = !{!1939, !5068, !5070, !5073, !5074, !5125, !5216, !5217, !5218, !5219, !5220, !5229, !5334, !5347, !5542, !5543, !5547, !5549, !5550, !5551, !5555, !5561, !5562, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5603, !5604, !5605, !5608, !5611, !5612, !5613, !5614}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1937, file: !85, line: 462, baseType: !1940, size: 512)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1941, line: 64, size: 512, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1942 = !{!1943, !1944, !1945, !1947, !1992, !4929, !5062, !5063, !5064, !5065, !5066, !5067}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1940, file: !1941, line: 65, baseType: !1810, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1940, file: !1941, line: 66, baseType: !1726, size: 128, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1940, file: !1941, line: 67, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1940, file: !1941, line: 68, baseType: !1948, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1941, line: 192, size: 704, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1949, file: !1941, line: 193, baseType: !1726, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1949, file: !1941, line: 194, baseType: !1711, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1949, file: !1941, line: 195, baseType: !1940, size: 512, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1949, file: !1941, line: 196, baseType: !1955, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1957)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1941, line: 156, size: 192, elements: !1958)
!1958 = !{!1959, !1964, !1969}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1957, file: !1941, line: 157, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!140, !1948, !1946}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1957, file: !1941, line: 158, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1810, !1948, !1946}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1957, file: !1941, line: 159, baseType: !1970, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1971)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!140, !1948, !1946, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1941, line: 148, size: 20736, elements: !1976)
!1976 = !{!1977, !1982, !1986, !1987, !1991}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1975, file: !1941, line: 149, baseType: !1978, size: 192)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1979, size: 192, elements: !1980)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1980 = !{!1981}
!1981 = !DISubrange(count: 3)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1975, file: !1941, line: 150, baseType: !1983, size: 4096, offset: 192)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1979, size: 4096, elements: !1984)
!1984 = !{!1985}
!1985 = !DISubrange(count: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1975, file: !1941, line: 151, baseType: !140, size: 32, offset: 4288)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1975, file: !1941, line: 152, baseType: !1988, size: 16384, offset: 4320)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 16384, elements: !1989)
!1989 = !{!1990}
!1990 = !DISubrange(count: 2048)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1975, file: !1941, line: 153, baseType: !140, size: 32, offset: 20704)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1940, file: !1941, line: 69, baseType: !1993, size: 64, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1941, line: 138, size: 448, elements: !1995)
!1995 = !{!1996, !2000, !2024, !2026, !4891, !4919, !4923}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1994, file: !1941, line: 139, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1946}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1994, file: !1941, line: 140, baseType: !2001, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2004, line: 230, size: 128, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2005 = !{!2006, !2020}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2003, file: !2004, line: 231, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!2010, !1946, !2014, !1979}
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !133, line: 60, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !136, line: 73, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !136, line: 15, baseType: !2013)
!2013 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2004, line: 30, size: 128, elements: !2016)
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2015, file: !2004, line: 31, baseType: !1810, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2015, file: !2004, line: 32, baseType: !2019, size: 16, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !133, line: 19, baseType: !155)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2003, file: !2004, line: 232, baseType: !2021, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!2010, !1946, !2014, !1810, !134}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1994, file: !1941, line: 141, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1994, file: !1941, line: 142, baseType: !2027, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2004, line: 84, size: 320, elements: !2031)
!2031 = !{!2032, !2033, !2037, !4888, !4889}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2030, file: !2004, line: 85, baseType: !1810, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2030, file: !2004, line: 86, baseType: !2034, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2019, !1946, !2014, !140}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2030, file: !2004, line: 88, baseType: !2038, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!2019, !1946, !2041, !140}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2004, line: 168, size: 448, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !4883, !4884}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2042, file: !2004, line: 169, baseType: !2015, size: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2042, file: !2004, line: 170, baseType: !134, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2042, file: !2004, line: 171, baseType: !139, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2042, file: !2004, line: 172, baseType: !2048, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2010, !2051, !1946, !2041, !1979, !2223, !134}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 916, size: 1856, align: 32, elements: !2053)
!2053 = !{!2054, !2072, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4866, !4867, !4876, !4877, !4878, !4879, !4880, !4881, !4882}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !2052, file: !56, line: 920, baseType: !2055, size: 128)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !56, line: 917, size: 128, elements: !2056)
!2056 = !{!2057, !2063}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !2055, file: !56, line: 918, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2059, line: 58, size: 64, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2058, file: !2059, line: 59, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !2055, file: !56, line: 919, baseType: !2064, size: 128, align: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !133, line: 216, size: 128, align: 64, elements: !2065)
!2065 = !{!2066, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2064, file: !133, line: 217, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2064, file: !133, line: 218, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !2067}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !2052, file: !56, line: 921, baseType: !2073, size: 128, offset: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2074, line: 8, size: 128, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !{!2076, !2080}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2073, file: !2074, line: 9, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !2079, line: 18, flags: DIFlagFwdDecl)
!2079 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2073, file: !2074, line: 10, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !2079, line: 89, size: 1536, elements: !2083)
!2083 = !{!2084, !2085, !2095, !2103, !2104, !2122, !4816, !4818, !4830, !4831, !4832, !4833, !4834, !4840, !4841, !4842}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !2082, file: !2079, line: 91, baseType: !7, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !2082, file: !2079, line: 92, baseType: !2086, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !2087, line: 277, baseType: !2088)
!2087 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !2087, line: 277, size: 32, elements: !2089)
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2088, file: !2087, line: 277, baseType: !2091, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !2087, line: 70, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !2087, line: 65, size: 32, elements: !2093)
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !2092, file: !2087, line: 66, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2082, file: !2079, line: 93, baseType: !2096, size: 128, offset: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !2097, line: 38, size: 128, elements: !2098)
!2097 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2096, file: !2097, line: 39, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2096, file: !2097, line: 39, baseType: !2102, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !2082, file: !2079, line: 94, baseType: !2081, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !2082, file: !2079, line: 95, baseType: !2105, size: 128, offset: 256)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !2079, line: 47, size: 128, elements: !2106)
!2106 = !{!2107, !2119}
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2079, line: 48, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2079, line: 48, size: 64, elements: !2109)
!2109 = !{!2110, !2115}
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2079, line: 49, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !2079, line: 49, size: 64, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2111, file: !2079, line: 50, baseType: !1813, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2111, file: !2079, line: 50, baseType: !1813, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !2108, file: !2079, line: 52, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !167, line: 23, baseType: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !150, line: 31, baseType: !2118)
!2118 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2105, file: !2079, line: 54, baseType: !2120, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !2082, file: !2079, line: 96, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 610, size: 4224, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2136, !2143, !2144, !2288, !4527, !4528, !4529, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4792, !4800, !4801, !4802, !4812, !4813, !4814, !4815}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !2124, file: !56, line: 611, baseType: !2019, size: 16)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !2124, file: !56, line: 612, baseType: !155, size: 16, offset: 16)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !2124, file: !56, line: 613, baseType: !2129, size: 32, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !2130, line: 23, baseType: !2131)
!2130 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2130, line: 21, size: 32, elements: !2132)
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2131, file: !2130, line: 22, baseType: !2134, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !133, line: 32, baseType: !2135)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !136, line: 49, baseType: !7)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !2124, file: !56, line: 614, baseType: !2137, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !2130, line: 28, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2130, line: 26, size: 32, elements: !2139)
!2139 = !{!2140}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2138, file: !2130, line: 27, baseType: !2141, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !133, line: 33, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !136, line: 50, baseType: !7)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2124, file: !56, line: 615, baseType: !7, size: 32, offset: 96)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !2124, file: !56, line: 622, baseType: !2145, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1864, size: 1536, align: 512, elements: !2148)
!2148 = !{!2149, !2153, !2166, !2170, !2176, !2180, !2184, !2188, !2192, !2196, !2200, !2201, !2207, !2211, !2235, !2264, !2268, !2274, !2279, !2283, !2284}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2147, file: !56, line: 1865, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2081, !2123, !2081, !7}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !2147, file: !56, line: 1866, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!1810, !2081, !2123, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2159, line: 10, size: 128, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2165}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2158, file: !2159, line: 11, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !139}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2158, file: !2159, line: 12, baseType: !139, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !2147, file: !56, line: 1867, baseType: !2167, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!140, !2123, !140}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !2147, file: !56, line: 1868, baseType: !2171, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!2174, !2123, !140}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 581, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !2147, file: !56, line: 1870, baseType: !2177, size: 64, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!140, !2081, !1979, !140}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !2147, file: !56, line: 1872, baseType: !2181, size: 64, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!140, !2123, !2081, !2019, !1355}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2147, file: !56, line: 1873, baseType: !2185, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!140, !2081, !2123, !2081}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !2147, file: !56, line: 1874, baseType: !2189, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!140, !2123, !2081}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2147, file: !56, line: 1875, baseType: !2193, size: 64, offset: 512)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!140, !2123, !2081, !1810}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2147, file: !56, line: 1876, baseType: !2197, size: 64, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!140, !2123, !2081, !2019}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2147, file: !56, line: 1877, baseType: !2189, size: 64, offset: 640)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !2147, file: !56, line: 1878, baseType: !2202, size: 64, offset: 704)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!140, !2123, !2081, !2019, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !133, line: 16, baseType: !2206)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !133, line: 13, baseType: !1813)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2147, file: !56, line: 1879, baseType: !2208, size: 64, offset: 768)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!140, !2123, !2081, !2123, !2081, !7}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !2147, file: !56, line: 1881, baseType: !2212, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!140, !2081, !2215}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 219, size: 640, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2225, !2232, !2233, !2234}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2216, file: !56, line: 220, baseType: !7, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2216, file: !56, line: 221, baseType: !2019, size: 16, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2216, file: !56, line: 222, baseType: !2129, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2216, file: !56, line: 223, baseType: !2137, size: 32, offset: 96)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2216, file: !56, line: 224, baseType: !2223, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !133, line: 46, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !136, line: 88, baseType: !1709)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2216, file: !56, line: 225, baseType: !2226, size: 128, offset: 192)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2227, line: 13, size: 128, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2231}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2226, file: !2227, line: 14, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2227, line: 8, baseType: !1708)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2226, file: !2227, line: 15, baseType: !2013, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2216, file: !56, line: 226, baseType: !2226, size: 128, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2216, file: !56, line: 227, baseType: !2226, size: 128, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2216, file: !56, line: 234, baseType: !2051, size: 64, offset: 576)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !2147, file: !56, line: 1882, baseType: !2236, size: 64, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!140, !2239, !2241, !1813, !7}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2243, line: 22, size: 1152, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2244 = !{!2245, !2246, !2247, !2248, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2242, file: !2243, line: 23, baseType: !1813, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2242, file: !2243, line: 24, baseType: !2019, size: 16, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2242, file: !2243, line: 25, baseType: !7, size: 32, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2242, file: !2243, line: 26, baseType: !2249, size: 32, offset: 96)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !133, line: 104, baseType: !1813)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2242, file: !2243, line: 27, baseType: !2116, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2242, file: !2243, line: 28, baseType: !2116, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2242, file: !2243, line: 37, baseType: !2116, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2242, file: !2243, line: 38, baseType: !2205, size: 32, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2242, file: !2243, line: 39, baseType: !2205, size: 32, offset: 352)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2242, file: !2243, line: 40, baseType: !2129, size: 32, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2242, file: !2243, line: 41, baseType: !2137, size: 32, offset: 416)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2242, file: !2243, line: 42, baseType: !2223, size: 64, offset: 448)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2242, file: !2243, line: 43, baseType: !2226, size: 128, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2242, file: !2243, line: 44, baseType: !2226, size: 128, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2242, file: !2243, line: 45, baseType: !2226, size: 128, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2242, file: !2243, line: 46, baseType: !2226, size: 128, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2242, file: !2243, line: 47, baseType: !2116, size: 64, offset: 1024)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2242, file: !2243, line: 48, baseType: !2116, size: 64, offset: 1088)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !2147, file: !56, line: 1883, baseType: !2265, size: 64, offset: 960)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2010, !2081, !1979, !134}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !2147, file: !56, line: 1884, baseType: !2269, size: 64, offset: 1024)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!140, !2123, !2272, !2116, !2116}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !2147, file: !56, line: 1886, baseType: !2275, size: 64, offset: 1088)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!140, !2123, !2278, !140}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !2147, file: !56, line: 1887, baseType: !2280, size: 64, offset: 1152)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!140, !2123, !2081, !2051, !7, !2019}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !2147, file: !56, line: 1890, baseType: !2197, size: 64, offset: 1216)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !2147, file: !56, line: 1891, baseType: !2285, size: 64, offset: 1280)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!140, !2123, !2174, !140}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !2124, file: !56, line: 623, baseType: !2289, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1416, size: 9472, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2347, !4134, !4216, !4299, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4315, !4319, !4320, !4323, !4324, !4327, !4328, !4329, !4370, !4397, !4398, !4399, !4400, !4401, !4402, !4405, !4407, !4414, !4415, !4417, !4418, !4419, !4478, !4479, !4494, !4495, !4496, !4497, !4498, !4501, !4502, !4503, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !2290, file: !56, line: 1417, baseType: !1726, size: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !2290, file: !56, line: 1418, baseType: !2205, size: 32, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !2290, file: !56, line: 1419, baseType: !1829, size: 8, offset: 160)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !2290, file: !56, line: 1420, baseType: !138, size: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !2290, file: !56, line: 1421, baseType: !2223, size: 64, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !2290, file: !56, line: 1422, baseType: !2298, size: 64, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2228, size: 576, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2310, !2314, !2318, !2322, !2326, !2327, !2337, !2340, !2341, !2342, !2344, !2345, !2346}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2299, file: !56, line: 2229, baseType: !1810, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !2299, file: !56, line: 2230, baseType: !140, size: 32, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !2299, file: !56, line: 2238, baseType: !2304, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!140, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !2309, line: 28, flags: DIFlagFwdDecl)
!2309 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !2299, file: !56, line: 2239, baseType: !2311, size: 64, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 70, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !2299, file: !56, line: 2240, baseType: !2315, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!2081, !2298, !140, !1810, !139}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !2299, file: !56, line: 2242, baseType: !2319, size: 64, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !2289}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2299, file: !56, line: 2243, baseType: !2323, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !2325, line: 189, flags: DIFlagFwdDecl)
!2325 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2299, file: !56, line: 2244, baseType: !2298, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !2299, file: !56, line: 2245, baseType: !2328, size: 64, offset: 512)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !133, line: 182, size: 64, elements: !2329)
!2329 = !{!2330}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2328, file: !133, line: 183, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !133, line: 186, size: 128, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2332, file: !133, line: 187, baseType: !2331, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2332, file: !133, line: 187, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !2299, file: !56, line: 2247, baseType: !2338, offset: 576)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2339, line: 187, elements: !210)
!2339 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !2299, file: !56, line: 2248, baseType: !2338, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !2299, file: !56, line: 2249, baseType: !2338, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !2299, file: !56, line: 2250, baseType: !2343, offset: 576)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, elements: !1980)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !2299, file: !56, line: 2252, baseType: !2338, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !2299, file: !56, line: 2253, baseType: !2338, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !2299, file: !56, line: 2254, baseType: !2338, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !2290, file: !56, line: 1423, baseType: !2348, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 1935, size: 1472, elements: !2351)
!2351 = !{!2352, !2356, !2360, !2361, !2365, !2371, !2375, !2376, !2377, !2381, !2385, !2386, !2387, !2388, !2394, !2399, !2400, !2407, !2408, !2409, !2410, !4118, !4133}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2350, file: !56, line: 1936, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2123, !2289}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2350, file: !56, line: 1937, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2123}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2350, file: !56, line: 1938, baseType: !2357, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2350, file: !56, line: 1940, baseType: !2362, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2123, !140}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2350, file: !56, line: 1941, baseType: !2366, size: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!140, !2123, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 40, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2350, file: !56, line: 1942, baseType: !2372, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!140, !2123}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2350, file: !56, line: 1943, baseType: !2357, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2350, file: !56, line: 1944, baseType: !2319, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2350, file: !56, line: 1945, baseType: !2378, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!140, !2289, !140}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2350, file: !56, line: 1946, baseType: !2382, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!140, !2289}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2350, file: !56, line: 1947, baseType: !2382, size: 64, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2350, file: !56, line: 1948, baseType: !2382, size: 64, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2350, file: !56, line: 1949, baseType: !2382, size: 64, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2350, file: !56, line: 1950, baseType: !2389, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!140, !2081, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 57, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2350, file: !56, line: 1951, baseType: !2395, size: 64, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!140, !2289, !2398, !1979}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2350, file: !56, line: 1952, baseType: !2319, size: 64, offset: 960)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2350, file: !56, line: 1954, baseType: !2401, size: 64, offset: 1024)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!140, !2404, !2081}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2406, line: 539, flags: DIFlagFwdDecl)
!2406 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2350, file: !56, line: 1955, baseType: !2401, size: 64, offset: 1088)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2350, file: !56, line: 1956, baseType: !2401, size: 64, offset: 1152)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2350, file: !56, line: 1957, baseType: !2401, size: 64, offset: 1216)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !2350, file: !56, line: 1963, baseType: !2411, size: 64, offset: 1280)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!140, !2289, !2414, !132}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !217, line: 68, size: 512, align: 128, elements: !2416)
!2416 = !{!2417, !2418, !4110, !4117}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2415, file: !217, line: 69, baseType: !138, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2415, file: !217, line: 77, baseType: !2419, size: 320, offset: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2415, file: !217, line: 77, size: 320, elements: !2420)
!2420 = !{!2421, !2595, !2600, !2626, !2634, !2640, !4041, !4109}
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !217, line: 78, baseType: !2422, size: 320)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !217, line: 78, size: 320, elements: !2423)
!2423 = !{!2424, !2425, !2593, !2594}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2422, file: !217, line: 84, baseType: !1726, size: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2422, file: !217, line: 86, baseType: !2426, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 451, size: 1216, align: 64, elements: !2428)
!2428 = !{!2429, !2430, !2437, !2438, !2439, !2454, !2463, !2464, !2465, !2466, !2586, !2587, !2590, !2591, !2592}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2427, file: !56, line: 452, baseType: !2123, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2427, file: !56, line: 453, baseType: !2431, size: 128, offset: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2432, line: 292, size: 128, elements: !2433)
!2432 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2433 = !{!2434, !2435, !2436}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2431, file: !2432, line: 293, baseType: !1711)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2431, file: !2432, line: 295, baseType: !132, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2431, file: !2432, line: 296, baseType: !139, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2427, file: !56, line: 454, baseType: !132, size: 32, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2427, file: !56, line: 455, baseType: !1689, size: 32, offset: 224)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2427, file: !56, line: 460, baseType: !2440, size: 128, offset: 256)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !2441, line: 125, size: 128, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443, !2453}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2440, file: !2441, line: 126, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !2441, line: 31, size: 64, elements: !2445)
!2445 = !{!2446}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2444, file: !2441, line: 32, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !2441, line: 24, size: 192, align: 64, elements: !2449)
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !2448, file: !2441, line: 25, baseType: !138, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !2448, file: !2441, line: 26, baseType: !2447, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !2448, file: !2441, line: 27, baseType: !2447, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2440, file: !2441, line: 127, baseType: !2447, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2427, file: !56, line: 461, baseType: !2455, size: 256, offset: 384)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !2456, line: 35, size: 256, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !{!2458, !2459, !2460, !2462}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2455, file: !2456, line: 36, baseType: !1701, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2455, file: !2456, line: 42, baseType: !1701, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2455, file: !2456, line: 46, baseType: !2461, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !1712, line: 29, baseType: !1719)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2455, file: !2456, line: 47, baseType: !1726, size: 128, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2427, file: !56, line: 462, baseType: !138, size: 64, offset: 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !2427, file: !56, line: 463, baseType: !138, size: 64, offset: 704)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2427, file: !56, line: 464, baseType: !138, size: 64, offset: 768)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2427, file: !56, line: 465, baseType: !2467, size: 64, offset: 832)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 367, size: 1408, elements: !2470)
!2470 = !{!2471, !2475, !2479, !2483, !2487, !2491, !2497, !2503, !2507, !2512, !2516, !2520, !2524, !2550, !2554, !2560, !2561, !2562, !2566, !2571, !2575, !2582}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2469, file: !56, line: 368, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!140, !2414, !2369}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2469, file: !56, line: 369, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!140, !2051, !2414}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2469, file: !56, line: 372, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!140, !2426, !2369}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2469, file: !56, line: 375, baseType: !2484, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!140, !2414}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2469, file: !56, line: 381, baseType: !2488, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!140, !2051, !2426, !1729, !7}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2469, file: !56, line: 383, baseType: !2492, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 290, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2469, file: !56, line: 385, baseType: !2498, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!140, !2051, !2426, !2223, !7, !7, !2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2469, file: !56, line: 388, baseType: !2504, size: 64, offset: 448)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!140, !2051, !2426, !2223, !7, !7, !2414, !139}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2469, file: !56, line: 393, baseType: !2508, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!2511, !2426, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !133, line: 125, baseType: !2116)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2469, file: !56, line: 394, baseType: !2513, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2414, !7, !7}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2469, file: !56, line: 395, baseType: !2517, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!140, !2414, !132}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2469, file: !56, line: 396, baseType: !2521, size: 64, offset: 704)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !2414}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2469, file: !56, line: 397, baseType: !2525, size: 64, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!2010, !2528, !2548}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 320, size: 384, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2537, !2538, !2539, !2540, !2541}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2529, file: !56, line: 321, baseType: !2051, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2529, file: !56, line: 326, baseType: !2223, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2529, file: !56, line: 327, baseType: !2534, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !2528, !2013, !2013}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2529, file: !56, line: 328, baseType: !139, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2529, file: !56, line: 329, baseType: !140, size: 32, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !2529, file: !56, line: 330, baseType: !166, size: 16, offset: 288)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2529, file: !56, line: 331, baseType: !166, size: 16, offset: 304)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2529, file: !56, line: 332, baseType: !2542, size: 64, offset: 320)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2529, file: !56, line: 332, size: 64, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !2542, file: !56, line: 333, baseType: !7, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2542, file: !56, line: 334, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 334, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !56, line: 64, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2469, file: !56, line: 402, baseType: !2551, size: 64, offset: 832)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!140, !2426, !2414, !2414, !18}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2469, file: !56, line: 404, baseType: !2555, size: 64, offset: 896)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!1355, !2414, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2559, line: 305, baseType: !7)
!2559 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2469, file: !56, line: 405, baseType: !2521, size: 64, offset: 960)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2469, file: !56, line: 406, baseType: !2484, size: 64, offset: 1024)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2469, file: !56, line: 407, baseType: !2563, size: 64, offset: 1088)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!140, !2414, !138, !138}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2469, file: !56, line: 409, baseType: !2567, size: 64, offset: 1152)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !2414, !2570, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2469, file: !56, line: 410, baseType: !2572, size: 64, offset: 1216)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!140, !2426, !2414}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2469, file: !56, line: 413, baseType: !2576, size: 64, offset: 1280)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!140, !2579, !2051, !2581}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 61, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2469, file: !56, line: 415, baseType: !2583, size: 64, offset: 1344)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2051}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2427, file: !56, line: 466, baseType: !138, size: 64, offset: 896)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2427, file: !56, line: 467, baseType: !2588, size: 32, offset: 960)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2589, line: 8, baseType: !1813)
!2589 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2427, file: !56, line: 468, baseType: !1711, offset: 992)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2427, file: !56, line: 469, baseType: !1726, size: 128, offset: 1024)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2427, file: !56, line: 470, baseType: !139, size: 64, offset: 1152)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2422, file: !217, line: 87, baseType: !138, size: 64, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2422, file: !217, line: 94, baseType: !138, size: 64, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !217, line: 96, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !217, line: 96, size: 64, elements: !2597)
!2597 = !{!2598}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2596, file: !217, line: 101, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !133, line: 143, baseType: !2116)
!2600 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !217, line: 103, baseType: !2601, size: 320)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !217, line: 103, size: 320, elements: !2602)
!2602 = !{!2603, !2613, !2614, !2615}
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !217, line: 104, baseType: !2604, size: 128)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2601, file: !217, line: 104, size: 128, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2604, file: !217, line: 105, baseType: !1726, size: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !217, line: 106, baseType: !2608, size: 128)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !217, line: 106, size: 128, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2608, file: !217, line: 107, baseType: !2414, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2608, file: !217, line: 109, baseType: !140, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2608, file: !217, line: 110, baseType: !140, size: 32, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2601, file: !217, line: 117, baseType: !215, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2601, file: !217, line: 119, baseType: !139, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, scope: !2601, file: !217, line: 120, baseType: !2616, size: 64, offset: 256)
!2616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2601, file: !217, line: 120, size: 64, elements: !2617)
!2617 = !{!2618, !2619, !2620}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2616, file: !217, line: 121, baseType: !139, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2616, file: !217, line: 122, baseType: !138, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2616, file: !217, line: 123, baseType: !2621, size: 32)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !217, line: 123, size: 32, elements: !2622)
!2622 = !{!2623, !2624, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2621, file: !217, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2621, file: !217, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2621, file: !217, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !217, line: 130, baseType: !2627, size: 192)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !217, line: 130, size: 192, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2627, file: !217, line: 131, baseType: !138, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2627, file: !217, line: 134, baseType: !1829, size: 8, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2627, file: !217, line: 135, baseType: !1829, size: 8, offset: 72)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2627, file: !217, line: 136, baseType: !1689, size: 32, offset: 96)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2627, file: !217, line: 137, baseType: !7, size: 32, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !217, line: 139, baseType: !2635, size: 256)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !217, line: 139, size: 256, elements: !2636)
!2636 = !{!2637, !2638, !2639}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2635, file: !217, line: 140, baseType: !138, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2635, file: !217, line: 141, baseType: !1689, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2635, file: !217, line: 143, baseType: !1726, size: 128, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !217, line: 145, baseType: !2641, size: 256)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !217, line: 145, size: 256, elements: !2642)
!2642 = !{!2643, !2644, !2646, !2647, !4040}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2641, file: !217, line: 146, baseType: !138, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2641, file: !217, line: 147, baseType: !2645, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2406, line: 509, baseType: !2414)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2641, file: !217, line: 148, baseType: !138, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !2641, file: !217, line: 149, baseType: !2648, size: 64, offset: 192)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2641, file: !217, line: 149, size: 64, elements: !2649)
!2649 = !{!2650, !4039}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2648, file: !217, line: 150, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !217, line: 388, size: 7296, elements: !2653)
!2653 = !{!2654, !4035}
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !2652, file: !217, line: 389, baseType: !2655, size: 7296)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !217, line: 389, size: 7296, elements: !2656)
!2656 = !{!2657, !2775, !2776, !2777, !2781, !2782, !2783, !2784, !2785, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2826, !2832, !2835, !2875, !2876, !4019, !4020, !4023, !4024, !4025, !4028, !4029, !4030, !4033, !4034}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2655, file: !217, line: 390, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !217, line: 305, size: 1472, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2675, !2676, !2681, !2682, !2685, !2769, !2770, !2771, !2772, !2773}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2659, file: !217, line: 308, baseType: !138, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2659, file: !217, line: 309, baseType: !138, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !2659, file: !217, line: 313, baseType: !2658, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !2659, file: !217, line: 313, baseType: !2658, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !2659, file: !217, line: 315, baseType: !2448, size: 192, align: 64, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !2659, file: !217, line: 323, baseType: !138, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2659, file: !217, line: 327, baseType: !2651, size: 64, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2659, file: !217, line: 333, baseType: !2669, size: 64, offset: 576)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2406, line: 284, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2406, line: 284, size: 64, elements: !2671)
!2671 = !{!2672}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2670, file: !2406, line: 284, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2674, line: 19, baseType: !138)
!2674 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2659, file: !217, line: 334, baseType: !138, size: 64, offset: 640)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2659, file: !217, line: 343, baseType: !2677, size: 256, offset: 704)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2659, file: !217, line: 340, size: 256, elements: !2678)
!2678 = !{!2679, !2680}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2677, file: !217, line: 341, baseType: !2448, size: 192, align: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2677, file: !217, line: 342, baseType: !138, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2659, file: !217, line: 351, baseType: !1726, size: 128, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2659, file: !217, line: 353, baseType: !2683, size: 64, offset: 1088)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !217, line: 353, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2659, file: !217, line: 356, baseType: !2686, size: 64, offset: 1152)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !26, line: 557, size: 832, elements: !2689)
!2689 = !{!2690, !2694, !2695, !2699, !2703, !2743, !2747, !2751, !2755, !2756, !2757, !2761, !2765}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2688, file: !26, line: 558, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{null, !2658}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2688, file: !26, line: 559, baseType: !2691, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2688, file: !26, line: 560, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!140, !2658, !138}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2688, file: !26, line: 561, baseType: !2700, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!140, !2658}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2688, file: !26, line: 562, baseType: !2704, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !217, line: 682, baseType: !7)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !26, line: 508, size: 768, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2716, !2723, !2730, !2736, !2737, !2738, !2740, !2742}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2709, file: !26, line: 509, baseType: !2658, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2709, file: !26, line: 510, baseType: !7, size: 32, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2709, file: !26, line: 511, baseType: !132, size: 32, offset: 96)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2709, file: !26, line: 512, baseType: !138, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2709, file: !26, line: 513, baseType: !138, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2709, file: !26, line: 514, baseType: !2717, size: 64, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2406, line: 385, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2406, line: 385, size: 64, elements: !2720)
!2720 = !{!2721}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2719, file: !2406, line: 385, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2674, line: 15, baseType: !138)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2709, file: !26, line: 516, baseType: !2724, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2406, line: 359, baseType: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2406, line: 359, size: 64, elements: !2727)
!2727 = !{!2728}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2726, file: !2406, line: 359, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2674, line: 16, baseType: !138)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2709, file: !26, line: 519, baseType: !2731, size: 64, offset: 384)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2674, line: 21, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2674, line: 21, size: 64, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2732, file: !2674, line: 21, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2674, line: 14, baseType: !138)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2709, file: !26, line: 521, baseType: !2414, size: 64, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2709, file: !26, line: 522, baseType: !2414, size: 64, offset: 512)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2709, file: !26, line: 528, baseType: !2739, size: 64, offset: 576)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2709, file: !26, line: 532, baseType: !2741, size: 64, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2709, file: !26, line: 536, baseType: !2645, size: 64, offset: 704)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2688, file: !26, line: 563, baseType: !2744, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!2707, !2708, !25}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2688, file: !26, line: 565, baseType: !2748, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2708, !138, !138}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2688, file: !26, line: 567, baseType: !2752, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!138, !2658}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2688, file: !26, line: 571, baseType: !2704, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2688, file: !26, line: 574, baseType: !2704, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2688, file: !26, line: 579, baseType: !2758, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!140, !2658, !138, !139, !140, !140}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2688, file: !26, line: 585, baseType: !2762, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!1810, !2658}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2688, file: !26, line: 615, baseType: !2766, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!2414, !2658, !138}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2659, file: !217, line: 359, baseType: !138, size: 64, offset: 1216)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2659, file: !217, line: 361, baseType: !2051, size: 64, offset: 1280)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2659, file: !217, line: 362, baseType: !139, size: 64, offset: 1344)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2659, file: !217, line: 365, baseType: !1701, size: 64, offset: 1408)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2659, file: !217, line: 373, baseType: !2774, offset: 1472)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !217, line: 296, elements: !210)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !2655, file: !217, line: 391, baseType: !2444, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !2655, file: !217, line: 392, baseType: !2116, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2655, file: !217, line: 394, baseType: !2778, size: 64, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!138, !2051, !138, !138, !138, !138}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2655, file: !217, line: 398, baseType: !138, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2655, file: !217, line: 399, baseType: !138, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2655, file: !217, line: 405, baseType: !138, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !2655, file: !217, line: 406, baseType: !138, size: 64, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2655, file: !217, line: 407, baseType: !2786, size: 64, offset: 512)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2406, line: 286, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2406, line: 286, size: 64, elements: !2789)
!2789 = !{!2790}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2788, file: !2406, line: 286, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2674, line: 18, baseType: !138)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2655, file: !217, line: 416, baseType: !1689, size: 32, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2655, file: !217, line: 428, baseType: !1689, size: 32, offset: 608)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2655, file: !217, line: 437, baseType: !1689, size: 32, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !2655, file: !217, line: 447, baseType: !1689, size: 32, offset: 672)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2655, file: !217, line: 450, baseType: !1701, size: 64, offset: 704)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2655, file: !217, line: 452, baseType: !140, size: 32, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2655, file: !217, line: 454, baseType: !1711, offset: 800)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2655, file: !217, line: 457, baseType: !2455, size: 256, offset: 832)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2655, file: !217, line: 459, baseType: !1726, size: 128, offset: 1088)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2655, file: !217, line: 466, baseType: !138, size: 64, offset: 1216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2655, file: !217, line: 467, baseType: !138, size: 64, offset: 1280)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2655, file: !217, line: 469, baseType: !138, size: 64, offset: 1344)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2655, file: !217, line: 470, baseType: !138, size: 64, offset: 1408)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2655, file: !217, line: 471, baseType: !1703, size: 64, offset: 1472)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2655, file: !217, line: 472, baseType: !138, size: 64, offset: 1536)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2655, file: !217, line: 473, baseType: !138, size: 64, offset: 1600)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2655, file: !217, line: 474, baseType: !138, size: 64, offset: 1664)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2655, file: !217, line: 475, baseType: !138, size: 64, offset: 1728)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2655, file: !217, line: 477, baseType: !1711, offset: 1792)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2655, file: !217, line: 478, baseType: !138, size: 64, offset: 1792)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2655, file: !217, line: 478, baseType: !138, size: 64, offset: 1856)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2655, file: !217, line: 478, baseType: !138, size: 64, offset: 1920)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2655, file: !217, line: 478, baseType: !138, size: 64, offset: 1984)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2655, file: !217, line: 479, baseType: !138, size: 64, offset: 2048)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2655, file: !217, line: 479, baseType: !138, size: 64, offset: 2112)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2655, file: !217, line: 479, baseType: !138, size: 64, offset: 2176)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2655, file: !217, line: 480, baseType: !138, size: 64, offset: 2240)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2655, file: !217, line: 480, baseType: !138, size: 64, offset: 2304)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2655, file: !217, line: 480, baseType: !138, size: 64, offset: 2368)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2655, file: !217, line: 480, baseType: !138, size: 64, offset: 2432)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2655, file: !217, line: 482, baseType: !2823, size: 2816, offset: 2496)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 2816, elements: !2824)
!2824 = !{!2825}
!2825 = !DISubrange(count: 44)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2655, file: !217, line: 488, baseType: !2827, size: 256, offset: 5312)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2828, line: 60, size: 256, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2827, file: !2828, line: 61, baseType: !2831, size: 256)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1701, size: 256, elements: !177)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2655, file: !217, line: 490, baseType: !2833, size: 64, offset: 5568)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !217, line: 490, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2655, file: !217, line: 493, baseType: !2836, size: 896, offset: 5632)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2837, line: 53, baseType: !2838)
!2837 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2837, line: 13, size: 896, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2843, !2846, !2847, !2848, !2849, !2869, !2870, !2871}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2838, file: !2837, line: 18, baseType: !2116, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2838, file: !2837, line: 28, baseType: !1703, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2838, file: !2837, line: 31, baseType: !2455, size: 256, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2838, file: !2837, line: 32, baseType: !2844, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2837, line: 32, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2838, file: !2837, line: 37, baseType: !155, size: 16, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2838, file: !2837, line: 40, baseType: !1697, size: 192, offset: 512)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2838, file: !2837, line: 41, baseType: !139, size: 64, offset: 704)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2838, file: !2837, line: 42, baseType: !2850, size: 64, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2852)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2853, line: 13, size: 896, elements: !2854)
!2853 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2852, file: !2853, line: 14, baseType: !139, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2852, file: !2853, line: 15, baseType: !138, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2852, file: !2853, line: 17, baseType: !138, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2852, file: !2853, line: 17, baseType: !138, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2852, file: !2853, line: 19, baseType: !2013, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2852, file: !2853, line: 21, baseType: !2013, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2852, file: !2853, line: 22, baseType: !2013, size: 64, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2852, file: !2853, line: 23, baseType: !2013, size: 64, offset: 448)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2852, file: !2853, line: 24, baseType: !2013, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2852, file: !2853, line: 25, baseType: !2013, size: 64, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2852, file: !2853, line: 26, baseType: !2013, size: 64, offset: 640)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2852, file: !2853, line: 27, baseType: !2013, size: 64, offset: 704)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2852, file: !2853, line: 28, baseType: !2013, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2852, file: !2853, line: 29, baseType: !2013, size: 64, offset: 832)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2838, file: !2837, line: 44, baseType: !1689, size: 32, offset: 832)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2838, file: !2837, line: 50, baseType: !166, size: 16, offset: 864)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2838, file: !2837, line: 51, baseType: !2872, size: 16, offset: 880)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !167, line: 18, baseType: !2873)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !150, line: 23, baseType: !2874)
!2874 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !217, line: 495, baseType: !138, size: 64, offset: 6528)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2655, file: !217, line: 497, baseType: !2877, size: 64, offset: 6592)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !217, line: 381, size: 384, elements: !2879)
!2879 = !{!2880, !2881, !4018}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2878, file: !217, line: 382, baseType: !1689, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2878, file: !217, line: 383, baseType: !2882, size: 128, offset: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !217, line: 376, size: 128, elements: !2883)
!2883 = !{!2884, !4016}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2882, file: !217, line: 377, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2887, line: 640, size: 48640, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!2888 = !{!2889, !2895, !2897, !2898, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2915, !2933, !2944, !3025, !3026, !3027, !3038, !3039, !3041, !3042, !3043, !3044, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3123, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3198, !3200, !3201, !3202, !3214, !3215, !3216, !3217, !3218, !3219, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3243, !3248, !3428, !3429, !3430, !3431, !3432, !3435, !3438, !3441, !3444, !3470, !3571, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3617, !3618, !3619, !3620, !3621, !3626, !3627, !3628, !3631, !3632, !3635, !3638, !3641, !3644, !3676, !3679, !3680, !3759, !3760, !3763, !3764, !3767, !3768, !3769, !3773, !3774, !3775, !3788, !3789, !3790, !3800, !3805, !3808, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2886, file: !2887, line: 646, baseType: !2890, size: 128)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2891, line: 56, size: 128, elements: !2892)
!2891 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!2892 = !{!2893, !2894}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2890, file: !2891, line: 57, baseType: !138, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2890, file: !2891, line: 58, baseType: !1813, size: 32, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2886, file: !2887, line: 649, baseType: !2896, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2013)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2886, file: !2887, line: 657, baseType: !139, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2886, file: !2887, line: 658, baseType: !2899, size: 32, offset: 256)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !2900, line: 113, baseType: !2901)
!2900 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !2900, line: 111, size: 32, elements: !2902)
!2902 = !{!2903}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2901, file: !2900, line: 112, baseType: !1689, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2886, file: !2887, line: 660, baseType: !7, size: 32, offset: 288)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2886, file: !2887, line: 661, baseType: !7, size: 32, offset: 320)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2886, file: !2887, line: 684, baseType: !140, size: 32, offset: 352)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2886, file: !2887, line: 686, baseType: !140, size: 32, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2886, file: !2887, line: 687, baseType: !140, size: 32, offset: 416)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2886, file: !2887, line: 688, baseType: !140, size: 32, offset: 448)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2886, file: !2887, line: 689, baseType: !7, size: 32, offset: 480)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2886, file: !2887, line: 691, baseType: !2912, size: 64, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2914)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2887, line: 691, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2886, file: !2887, line: 692, baseType: !2916, size: 832, offset: 576)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2887, line: 451, size: 832, elements: !2917)
!2917 = !{!2918, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2916, file: !2887, line: 453, baseType: !2919, size: 128)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2887, line: 325, size: 128, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2919, file: !2887, line: 326, baseType: !138, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2919, file: !2887, line: 327, baseType: !1813, size: 32, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2916, file: !2887, line: 454, baseType: !2448, size: 192, align: 64, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2916, file: !2887, line: 455, baseType: !1726, size: 128, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2916, file: !2887, line: 456, baseType: !7, size: 32, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2916, file: !2887, line: 458, baseType: !2116, size: 64, offset: 512)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2916, file: !2887, line: 459, baseType: !2116, size: 64, offset: 576)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2916, file: !2887, line: 460, baseType: !2116, size: 64, offset: 640)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2916, file: !2887, line: 461, baseType: !2116, size: 64, offset: 704)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2916, file: !2887, line: 463, baseType: !2116, size: 64, offset: 768)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !2916, file: !2887, line: 465, baseType: !2932, offset: 832)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2887, line: 415, elements: !210)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2886, file: !2887, line: 693, baseType: !2934, size: 384, offset: 1408)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2887, line: 489, size: 384, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2934, file: !2887, line: 490, baseType: !1726, size: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2934, file: !2887, line: 491, baseType: !138, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2934, file: !2887, line: 492, baseType: !138, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2934, file: !2887, line: 493, baseType: !7, size: 32, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2934, file: !2887, line: 494, baseType: !155, size: 16, offset: 288)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2934, file: !2887, line: 495, baseType: !155, size: 16, offset: 304)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2934, file: !2887, line: 497, baseType: !2943, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2886, file: !2887, line: 697, baseType: !2945, size: 1792, offset: 1792)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2887, line: 507, size: 1792, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !3022, !3023}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2945, file: !2887, line: 508, baseType: !2448, size: 192, align: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2945, file: !2887, line: 515, baseType: !2116, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2945, file: !2887, line: 516, baseType: !2116, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2945, file: !2887, line: 517, baseType: !2116, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2945, file: !2887, line: 518, baseType: !2116, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2945, file: !2887, line: 519, baseType: !2116, size: 64, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2945, file: !2887, line: 526, baseType: !1707, size: 64, offset: 512)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2945, file: !2887, line: 527, baseType: !2116, size: 64, offset: 576)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2945, file: !2887, line: 528, baseType: !7, size: 32, offset: 640)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2945, file: !2887, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2945, file: !2887, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2945, file: !2887, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2945, file: !2887, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2945, file: !2887, line: 563, baseType: !2961, size: 512, offset: 704)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !2962)
!2962 = !{!2963, !2971, !2972, !2977, !3018, !3019, !3020, !3021}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2961, file: !32, line: 119, baseType: !2964, size: 256)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2965, line: 9, size: 256, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2964, file: !2965, line: 10, baseType: !2448, size: 192, align: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2964, file: !2965, line: 11, baseType: !2969, size: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2970, line: 29, baseType: !1707)
!2970 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2961, file: !32, line: 120, baseType: !2969, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2961, file: !32, line: 121, baseType: !2973, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!31, !2976}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2961, file: !32, line: 122, baseType: !2978, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !2980)
!2980 = !{!2981, !2999, !3000, !3003, !3008, !3009, !3013, !3017}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2979, file: !32, line: 160, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 214, size: 4608, align: 512, elements: !2984)
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2983, file: !32, line: 215, baseType: !2461)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2983, file: !32, line: 216, baseType: !7, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2983, file: !32, line: 217, baseType: !7, size: 32, offset: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2983, file: !32, line: 218, baseType: !7, size: 32, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2983, file: !32, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2983, file: !32, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2983, file: !32, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2983, file: !32, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2983, file: !32, line: 233, baseType: !2969, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2983, file: !32, line: 234, baseType: !2976, size: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2983, file: !32, line: 235, baseType: !2969, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2983, file: !32, line: 236, baseType: !2976, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2983, file: !32, line: 237, baseType: !2998, size: 4096, offset: 512)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 4096, elements: !186)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2979, file: !32, line: 161, baseType: !7, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2979, file: !32, line: 162, baseType: !3001, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !133, line: 27, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !136, line: 96, baseType: !140)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2979, file: !32, line: 163, baseType: !3004, size: 32, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !2087, line: 276, baseType: !3005)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !2087, line: 276, size: 32, elements: !3006)
!3006 = !{!3007}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3005, file: !2087, line: 276, baseType: !2091, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2979, file: !32, line: 164, baseType: !2976, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2979, file: !32, line: 165, baseType: !3010, size: 128, offset: 256)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2965, line: 14, size: 128, elements: !3011)
!3011 = !{!3012}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3010, file: !2965, line: 15, baseType: !2440, size: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2979, file: !32, line: 166, baseType: !3014, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!2969}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2979, file: !32, line: 167, baseType: !2969, size: 64, offset: 448)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2961, file: !32, line: 123, baseType: !1874, size: 8, offset: 448)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2961, file: !32, line: 124, baseType: !1874, size: 8, offset: 456)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2961, file: !32, line: 125, baseType: !1874, size: 8, offset: 464)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2961, file: !32, line: 126, baseType: !1874, size: 8, offset: 472)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2945, file: !2887, line: 572, baseType: !2961, size: 512, offset: 1216)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2945, file: !2887, line: 580, baseType: !3024, size: 64, offset: 1728)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2886, file: !2887, line: 721, baseType: !7, size: 32, offset: 3584)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2886, file: !2887, line: 722, baseType: !140, size: 32, offset: 3616)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2886, file: !2887, line: 723, baseType: !3028, size: 64, offset: 3648)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3030)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3031, line: 17, baseType: !3032)
!3031 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3031, line: 17, size: 64, elements: !3033)
!3033 = !{!3034}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3032, file: !3031, line: 17, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !3036)
!3036 = !{!3037}
!3037 = !DISubrange(count: 1)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2886, file: !2887, line: 724, baseType: !3030, size: 64, offset: 3712)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2886, file: !2887, line: 749, baseType: !3040, offset: 3776)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2887, line: 290, elements: !210)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2886, file: !2887, line: 751, baseType: !1726, size: 128, offset: 3776)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2886, file: !2887, line: 757, baseType: !2651, size: 64, offset: 3904)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2886, file: !2887, line: 758, baseType: !2651, size: 64, offset: 3968)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !2886, file: !2887, line: 761, baseType: !3045, size: 320, offset: 4032)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2828, line: 34, size: 320, elements: !3046)
!3046 = !{!3047, !3048}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !3045, file: !2828, line: 35, baseType: !2116, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !3045, file: !2828, line: 36, baseType: !3049, size: 256, offset: 64)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2658, size: 256, elements: !177)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2886, file: !2887, line: 766, baseType: !140, size: 32, offset: 4352)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2886, file: !2887, line: 767, baseType: !140, size: 32, offset: 4384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2886, file: !2887, line: 768, baseType: !140, size: 32, offset: 4416)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2886, file: !2887, line: 770, baseType: !140, size: 32, offset: 4448)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2886, file: !2887, line: 772, baseType: !138, size: 64, offset: 4480)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2886, file: !2887, line: 775, baseType: !7, size: 32, offset: 4544)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2886, file: !2887, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2886, file: !2887, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2886, file: !2887, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2886, file: !2887, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2886, file: !2887, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2886, file: !2887, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2886, file: !2887, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !2886, file: !2887, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2886, file: !2887, line: 831, baseType: !138, size: 64, offset: 4672)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2886, file: !2887, line: 833, baseType: !3066, size: 384, offset: 4736)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 384, elements: !3067)
!3067 = !{!3068, !3073}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3066, file: !37, line: 26, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!2013, !3072}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !3066, file: !37, line: 27, baseType: !3074, size: 320, offset: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3066, file: !37, line: 27, size: 320, elements: !3075)
!3075 = !{!3076, !3086, !3113}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3074, file: !37, line: 36, baseType: !3077, size: 320)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !37, line: 29, size: 320, elements: !3078)
!3078 = !{!3079, !3081, !3082, !3083, !3084, !3085}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3077, file: !37, line: 30, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3077, file: !37, line: 31, baseType: !1813, size: 32, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3077, file: !37, line: 32, baseType: !1813, size: 32, offset: 96)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3077, file: !37, line: 33, baseType: !1813, size: 32, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3077, file: !37, line: 34, baseType: !2116, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3077, file: !37, line: 35, baseType: !3080, size: 64, offset: 256)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3074, file: !37, line: 46, baseType: !3087, size: 192)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !37, line: 38, size: 192, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3112}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3087, file: !37, line: 39, baseType: !3001, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3087, file: !37, line: 40, baseType: !36, size: 32, offset: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !3087, file: !37, line: 41, baseType: !3092, size: 64, offset: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3087, file: !37, line: 41, size: 64, elements: !3093)
!3093 = !{!3094, !3102}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3092, file: !37, line: 42, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3097, line: 7, size: 128, elements: !3098)
!3097 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!3098 = !{!3099, !3101}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3096, file: !3097, line: 8, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !136, line: 93, baseType: !1709)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3096, file: !3097, line: 9, baseType: !1709, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3092, file: !37, line: 43, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3105, line: 7, size: 64, elements: !3106)
!3105 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!3106 = !{!3107, !3111}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3104, file: !3105, line: 8, baseType: !3108, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3105, line: 5, baseType: !3109)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !167, line: 20, baseType: !3110)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !150, line: 26, baseType: !140)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3104, file: !3105, line: 9, baseType: !3109, size: 32, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3087, file: !37, line: 45, baseType: !2116, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3074, file: !37, line: 54, baseType: !3114, size: 256)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !37, line: 48, size: 256, elements: !3115)
!3115 = !{!3116, !3119, !3120, !3121, !3122}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3114, file: !37, line: 49, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3114, file: !37, line: 50, baseType: !140, size: 32, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3114, file: !37, line: 51, baseType: !140, size: 32, offset: 96)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3114, file: !37, line: 52, baseType: !138, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3114, file: !37, line: 53, baseType: !138, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2886, file: !2887, line: 835, baseType: !3124, size: 32, offset: 5120)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !133, line: 22, baseType: !3125)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !136, line: 28, baseType: !140)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2886, file: !2887, line: 836, baseType: !3124, size: 32, offset: 5152)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2886, file: !2887, line: 840, baseType: !138, size: 64, offset: 5184)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2886, file: !2887, line: 849, baseType: !2885, size: 64, offset: 5248)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2886, file: !2887, line: 852, baseType: !2885, size: 64, offset: 5312)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2886, file: !2887, line: 857, baseType: !1726, size: 128, offset: 5376)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2886, file: !2887, line: 858, baseType: !1726, size: 128, offset: 5504)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2886, file: !2887, line: 859, baseType: !2885, size: 64, offset: 5632)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2886, file: !2887, line: 867, baseType: !1726, size: 128, offset: 5696)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2886, file: !2887, line: 868, baseType: !1726, size: 128, offset: 5824)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2886, file: !2887, line: 871, baseType: !3136, size: 64, offset: 5952)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !65, line: 59, size: 768, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3144, !3145, !3152, !3153}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3137, file: !65, line: 61, baseType: !2899, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3137, file: !65, line: 62, baseType: !7, size: 32, offset: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3137, file: !65, line: 63, baseType: !1711, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3137, file: !65, line: 65, baseType: !3143, size: 256, offset: 64)
!3143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2328, size: 256, elements: !177)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3137, file: !65, line: 66, baseType: !2328, size: 64, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !3137, file: !65, line: 68, baseType: !3146, size: 128, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !3147, line: 40, baseType: !3148)
!3147 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !3147, line: 36, size: 128, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3148, file: !3147, line: 37, baseType: !1711)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3148, file: !3147, line: 38, baseType: !1726, size: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3137, file: !65, line: 69, baseType: !2064, size: 128, align: 64, offset: 512)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !3137, file: !65, line: 70, baseType: !3154, size: 128, offset: 640)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3155, size: 128, elements: !3036)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !65, line: 54, size: 128, elements: !3156)
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3155, file: !65, line: 55, baseType: !140, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3155, file: !65, line: 56, baseType: !3159, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !3161, line: 20, size: 1088, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!3162 = !{!3163, !3168, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3184, !3187, !3188}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3160, file: !3161, line: 21, baseType: !3164, size: 32)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3165, line: 19, size: 32, elements: !3166)
!3165 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3166 = !{!3167}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3164, file: !3165, line: 20, baseType: !2899, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !3160, file: !3161, line: 22, baseType: !3169, size: 192, offset: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3170, line: 19, size: 192, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3171 = !{!3172, !3173, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3169, file: !3170, line: 20, baseType: !2431, size: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3169, file: !3170, line: 21, baseType: !7, size: 32, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3169, file: !3170, line: 22, baseType: !7, size: 32, offset: 160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3160, file: !3161, line: 23, baseType: !2064, size: 128, align: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !3160, file: !3161, line: 24, baseType: !7, size: 32, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !3160, file: !3161, line: 25, baseType: !2885, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !3160, file: !3161, line: 26, baseType: !215, size: 64, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3160, file: !3161, line: 27, baseType: !7, size: 32, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3160, file: !3161, line: 28, baseType: !3159, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3160, file: !3161, line: 32, baseType: !3182, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !2130, line: 18, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3160, file: !3161, line: 33, baseType: !3185, size: 64, offset: 768)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !3161, line: 33, flags: DIFlagFwdDecl)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !3160, file: !3161, line: 34, baseType: !140, size: 32, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3160, file: !3161, line: 35, baseType: !3189, size: 192, offset: 896)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3190, line: 7, size: 192, elements: !3191)
!3190 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!3191 = !{!3192, !3193, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3189, file: !3190, line: 8, baseType: !1701, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3189, file: !3190, line: 9, baseType: !3194, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3196)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3190, line: 5, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3189, file: !3190, line: 10, baseType: !7, size: 32, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2886, file: !2887, line: 872, baseType: !3199, size: 512, offset: 6016)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2332, size: 512, elements: !177)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2886, file: !2887, line: 873, baseType: !1726, size: 128, offset: 6528)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2886, file: !2887, line: 874, baseType: !1726, size: 128, offset: 6656)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2886, file: !2887, line: 876, baseType: !3203, size: 64, offset: 6784)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !3205, line: 26, size: 192, elements: !3206)
!3205 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3204, file: !3205, line: 27, baseType: !7, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3204, file: !3205, line: 28, baseType: !3209, size: 128, offset: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !3210, line: 43, size: 128, elements: !3211)
!3210 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!3211 = !{!3212, !3213}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3209, file: !3210, line: 44, baseType: !2461)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !3209, file: !3210, line: 45, baseType: !1726, size: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2886, file: !2887, line: 879, baseType: !2398, size: 64, offset: 6848)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2886, file: !2887, line: 882, baseType: !2398, size: 64, offset: 6912)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2886, file: !2887, line: 884, baseType: !2116, size: 64, offset: 6976)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2886, file: !2887, line: 885, baseType: !2116, size: 64, offset: 7040)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2886, file: !2887, line: 890, baseType: !2116, size: 64, offset: 7104)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2886, file: !2887, line: 891, baseType: !3220, size: 128, offset: 7168)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2887, line: 242, size: 128, elements: !3221)
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3220, file: !2887, line: 244, baseType: !2116, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3220, file: !2887, line: 245, baseType: !2116, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3220, file: !2887, line: 246, baseType: !2461, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2886, file: !2887, line: 900, baseType: !138, size: 64, offset: 7296)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2886, file: !2887, line: 901, baseType: !138, size: 64, offset: 7360)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2886, file: !2887, line: 904, baseType: !2116, size: 64, offset: 7424)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2886, file: !2887, line: 907, baseType: !2116, size: 64, offset: 7488)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2886, file: !2887, line: 910, baseType: !138, size: 64, offset: 7552)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2886, file: !2887, line: 911, baseType: !138, size: 64, offset: 7616)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2886, file: !2887, line: 914, baseType: !3232, size: 640, offset: 7680)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3233, line: 123, size: 640, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!3234 = !{!3235, !3241, !3242}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3232, file: !3233, line: 124, baseType: !3236, size: 576)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3237, size: 576, elements: !1980)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3233, line: 108, size: 192, elements: !3238)
!3238 = !{!3239, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3237, file: !3233, line: 109, baseType: !2116, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3237, file: !3233, line: 110, baseType: !3010, size: 128, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3232, file: !3233, line: 125, baseType: !7, size: 32, offset: 576)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3232, file: !3233, line: 126, baseType: !7, size: 32, offset: 608)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2886, file: !2887, line: 917, baseType: !3244, size: 192, offset: 8320)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3233, line: 134, size: 192, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3244, file: !3233, line: 135, baseType: !2064, size: 128, align: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3244, file: !3233, line: 136, baseType: !7, size: 32, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2886, file: !2887, line: 923, baseType: !3249, size: 64, offset: 8512)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3251)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !3252, line: 111, size: 1280, elements: !3253)
!3252 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!3253 = !{!3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3271, !3272, !3273, !3274, !3275, !3276, !3383, !3384, !3385, !3386, !3412, !3413, !3423}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3251, file: !3252, line: 112, baseType: !1689, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3251, file: !3252, line: 120, baseType: !2129, size: 32, offset: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3251, file: !3252, line: 121, baseType: !2137, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !3251, file: !3252, line: 122, baseType: !2129, size: 32, offset: 96)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !3251, file: !3252, line: 123, baseType: !2137, size: 32, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3251, file: !3252, line: 124, baseType: !2129, size: 32, offset: 160)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !3251, file: !3252, line: 125, baseType: !2137, size: 32, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !3251, file: !3252, line: 126, baseType: !2129, size: 32, offset: 224)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !3251, file: !3252, line: 127, baseType: !2137, size: 32, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !3251, file: !3252, line: 128, baseType: !7, size: 32, offset: 288)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !3251, file: !3252, line: 129, baseType: !3265, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !3266, line: 26, baseType: !3267)
!3266 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !3266, line: 24, size: 64, elements: !3268)
!3268 = !{!3269}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !3267, file: !3266, line: 25, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !168)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !3251, file: !3252, line: 130, baseType: !3265, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !3251, file: !3252, line: 131, baseType: !3265, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !3251, file: !3252, line: 132, baseType: !3265, size: 64, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !3251, file: !3252, line: 133, baseType: !3265, size: 64, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !3251, file: !3252, line: 135, baseType: !1829, size: 8, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !3251, file: !3252, line: 137, baseType: !3277, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !3279, line: 189, size: 1664, elements: !3280)
!3279 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!3280 = !{!3281, !3282, !3285, !3290, !3291, !3294, !3295, !3300, !3301, !3302, !3303, !3305, !3306, !3307, !3308, !3309, !3347, !3368}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3278, file: !3279, line: 190, baseType: !2899, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3278, file: !3279, line: 191, baseType: !3283, size: 32, offset: 32)
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !3279, line: 28, baseType: !3284)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !133, line: 98, baseType: !3109)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !3279, line: 192, baseType: !3286, size: 192, offset: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3278, file: !3279, line: 192, size: 192, elements: !3287)
!3287 = !{!3288, !3289}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !3286, file: !3279, line: 193, baseType: !1726, size: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !3286, file: !3279, line: 194, baseType: !2448, size: 192, align: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !3278, file: !3279, line: 199, baseType: !2455, size: 256, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !3278, file: !3279, line: 200, baseType: !3292, size: 64, offset: 512)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !3279, line: 200, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3278, file: !3279, line: 201, baseType: !139, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !3279, line: 202, baseType: !3296, size: 64, offset: 640)
!3296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3278, file: !3279, line: 202, size: 64, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !3296, file: !3279, line: 203, baseType: !2230, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !3296, file: !3279, line: 204, baseType: !2230, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !3278, file: !3279, line: 206, baseType: !2230, size: 64, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3278, file: !3279, line: 207, baseType: !2129, size: 32, offset: 768)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3278, file: !3279, line: 208, baseType: !2137, size: 32, offset: 800)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3278, file: !3279, line: 209, baseType: !3304, size: 32, offset: 832)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !3279, line: 31, baseType: !2249)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !3278, file: !3279, line: 210, baseType: !155, size: 16, offset: 864)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !3278, file: !3279, line: 211, baseType: !155, size: 16, offset: 880)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3278, file: !3279, line: 215, baseType: !2874, size: 16, offset: 896)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3278, file: !3279, line: 222, baseType: !138, size: 64, offset: 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !3279, line: 239, baseType: !3310, size: 320, offset: 1024)
!3310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3278, file: !3279, line: 239, size: 320, elements: !3311)
!3311 = !{!3312, !3339}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !3310, file: !3279, line: 240, baseType: !3313, size: 320)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !3279, line: 108, size: 320, elements: !3314)
!3314 = !{!3315, !3316, !3328, !3331, !3338}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3313, file: !3279, line: 110, baseType: !138, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3279, line: 111, baseType: !3317, size: 64, offset: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3279, line: 111, size: 64, elements: !3318)
!3318 = !{!3319, !3327}
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3317, file: !3279, line: 112, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3279, line: 112, size: 64, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !3320, file: !3279, line: 114, baseType: !166, size: 16)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3320, file: !3279, line: 115, baseType: !3324, size: 48, offset: 16)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 48, elements: !3325)
!3325 = !{!3326}
!3326 = !DISubrange(count: 6)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3317, file: !3279, line: 121, baseType: !138, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3313, file: !3279, line: 123, baseType: !3329, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !3279, line: 96, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !3313, file: !3279, line: 124, baseType: !3332, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !3279, line: 102, size: 192, elements: !3334)
!3334 = !{!3335, !3336, !3337}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3333, file: !3279, line: 103, baseType: !2064, size: 128, align: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3333, file: !3279, line: 104, baseType: !2899, size: 32, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3333, file: !3279, line: 105, baseType: !1355, size: 8, offset: 160)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3313, file: !3279, line: 125, baseType: !1810, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !3279, line: 241, baseType: !3340, size: 320)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3310, file: !3279, line: 241, size: 320, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3340, file: !3279, line: 242, baseType: !138, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !3340, file: !3279, line: 243, baseType: !138, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3340, file: !3279, line: 244, baseType: !3329, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !3340, file: !3279, line: 245, baseType: !3332, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3340, file: !3279, line: 246, baseType: !1979, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !3279, line: 254, baseType: !3348, size: 256, offset: 1344)
!3348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3278, file: !3279, line: 254, size: 256, elements: !3349)
!3349 = !{!3350, !3356}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3348, file: !3279, line: 255, baseType: !3351, size: 256)
!3351 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !3279, line: 128, size: 256, elements: !3352)
!3352 = !{!3353, !3354}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !3351, file: !3279, line: 129, baseType: !139, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3351, file: !3279, line: 130, baseType: !3355, size: 256)
!3355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !177)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3348, file: !3279, line: 256, baseType: !3357, size: 256)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3348, file: !3279, line: 256, size: 256, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !3357, file: !3279, line: 258, baseType: !1726, size: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !3357, file: !3279, line: 259, baseType: !3361, size: 128, offset: 128)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !3362, line: 22, size: 128, elements: !3363)
!3362 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!3363 = !{!3364, !3367}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3361, file: !3362, line: 23, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !3362, line: 23, flags: DIFlagFwdDecl)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !3361, file: !3362, line: 24, baseType: !138, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !3278, file: !3279, line: 274, baseType: !3369, size: 64, offset: 1600)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !3279, line: 170, size: 192, elements: !3371)
!3371 = !{!3372, !3381, !3382}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !3370, file: !3279, line: 171, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !3279, line: 165, baseType: !3374)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!140, !3277, !3377, !3379, !3277}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3330)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3370, file: !3279, line: 172, baseType: !3277, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !3370, file: !3279, line: 173, baseType: !3329, size: 64, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !3251, file: !3252, line: 138, baseType: !3277, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !3251, file: !3252, line: 139, baseType: !3277, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !3251, file: !3252, line: 140, baseType: !3277, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !3251, file: !3252, line: 145, baseType: !3387, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !3389, line: 13, size: 896, elements: !3390)
!3389 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3388, file: !3389, line: 14, baseType: !2899, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !3388, file: !3389, line: 15, baseType: !1689, size: 32, offset: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !3388, file: !3389, line: 16, baseType: !1689, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !3388, file: !3389, line: 21, baseType: !1701, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !3388, file: !3389, line: 27, baseType: !138, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !3388, file: !3389, line: 28, baseType: !138, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !3388, file: !3389, line: 29, baseType: !1701, size: 64, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !3388, file: !3389, line: 32, baseType: !2332, size: 128, offset: 384)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3388, file: !3389, line: 33, baseType: !2129, size: 32, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !3388, file: !3389, line: 37, baseType: !1701, size: 64, offset: 576)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !3388, file: !3389, line: 44, baseType: !3402, size: 256, offset: 640)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !3403, line: 15, size: 256, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3402, file: !3403, line: 16, baseType: !2461)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3402, file: !3403, line: 18, baseType: !140, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !3402, file: !3403, line: 19, baseType: !140, size: 32, offset: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !3402, file: !3403, line: 20, baseType: !140, size: 32, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !3402, file: !3403, line: 21, baseType: !140, size: 32, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !3402, file: !3403, line: 22, baseType: !138, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3402, file: !3403, line: 23, baseType: !138, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3251, file: !3252, line: 146, baseType: !3182, size: 64, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !3251, file: !3252, line: 147, baseType: !3414, size: 64, offset: 1088)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !3252, line: 25, size: 64, elements: !3416)
!3416 = !{!3417, !3418, !3419}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3415, file: !3252, line: 26, baseType: !1689, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3415, file: !3252, line: 27, baseType: !140, size: 32, offset: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3415, file: !3252, line: 28, baseType: !3420, offset: 64)
!3420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, elements: !3421)
!3421 = !{!3422}
!3422 = !DISubrange(count: 0)
!3423 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !3252, line: 149, baseType: !3424, size: 128, offset: 1152)
!3424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3251, file: !3252, line: 149, size: 128, elements: !3425)
!3425 = !{!3426, !3427}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3424, file: !3252, line: 150, baseType: !140, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3424, file: !3252, line: 151, baseType: !2064, size: 128, align: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2886, file: !2887, line: 926, baseType: !3249, size: 64, offset: 8576)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2886, file: !2887, line: 929, baseType: !3249, size: 64, offset: 8640)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2886, file: !2887, line: 933, baseType: !3277, size: 64, offset: 8704)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2886, file: !2887, line: 943, baseType: !1774, size: 128, offset: 8768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2886, file: !2887, line: 945, baseType: !3433, size: 64, offset: 8896)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2887, line: 49, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2886, file: !2887, line: 956, baseType: !3436, size: 64, offset: 8960)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2887, line: 45, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2886, file: !2887, line: 959, baseType: !3439, size: 64, offset: 9024)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2887, line: 959, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2886, file: !2887, line: 962, baseType: !3442, size: 64, offset: 9088)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2887, line: 66, flags: DIFlagFwdDecl)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2886, file: !2887, line: 966, baseType: !3445, size: 64, offset: 9152)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3447, line: 31, size: 576, elements: !3448)
!3447 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!3448 = !{!3449, !3450, !3453, !3456, !3459, !3460, !3463, !3466, !3467}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3446, file: !3447, line: 32, baseType: !1689, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3446, file: !3447, line: 33, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3447, line: 9, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3446, file: !3447, line: 34, baseType: !3454, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3447, line: 10, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3446, file: !3447, line: 35, baseType: !3457, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3447, line: 8, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3446, file: !3447, line: 36, baseType: !3159, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3446, file: !3447, line: 37, baseType: !3461, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !3279, line: 34, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3446, file: !3447, line: 38, baseType: !3464, size: 64, offset: 384)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3447, line: 38, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3446, file: !3447, line: 39, baseType: !3464, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3446, file: !3447, line: 40, baseType: !3468, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3447, line: 12, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2886, file: !2887, line: 969, baseType: !3471, size: 64, offset: 9216)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3473, line: 82, size: 7296, elements: !3474)
!3473 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3510, !3519, !3520, !3522, !3523, !3524, !3527, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3557, !3558, !3565, !3566, !3567, !3568, !3569, !3570}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3472, file: !3473, line: 83, baseType: !2899, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3472, file: !3473, line: 84, baseType: !1689, size: 32, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3472, file: !3473, line: 85, baseType: !140, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3472, file: !3473, line: 86, baseType: !1726, size: 128, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3472, file: !3473, line: 88, baseType: !3146, size: 128, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3472, file: !3473, line: 91, baseType: !2885, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3472, file: !3473, line: 94, baseType: !3482, size: 192, offset: 448)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3483, line: 30, size: 192, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3482, file: !3483, line: 31, baseType: !1726, size: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3482, file: !3483, line: 32, baseType: !3487, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3488, line: 25, baseType: !3489)
!3488 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3488, line: 23, size: 64, elements: !3490)
!3490 = !{!3491}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3489, file: !3488, line: 24, baseType: !3035, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3472, file: !3473, line: 97, baseType: !2328, size: 64, offset: 640)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3472, file: !3473, line: 100, baseType: !140, size: 32, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3472, file: !3473, line: 106, baseType: !140, size: 32, offset: 736)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !3472, file: !3473, line: 107, baseType: !2885, size: 64, offset: 768)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3472, file: !3473, line: 110, baseType: !140, size: 32, offset: 832)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3472, file: !3473, line: 111, baseType: !7, size: 32, offset: 864)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3472, file: !3473, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3472, file: !3473, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !3472, file: !3473, line: 128, baseType: !140, size: 32, offset: 928)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3472, file: !3473, line: 129, baseType: !1726, size: 128, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3472, file: !3473, line: 132, baseType: !2961, size: 512, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3472, file: !3473, line: 133, baseType: !2969, size: 64, offset: 1600)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3472, file: !3473, line: 140, baseType: !3505, size: 256, offset: 1664)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3506, size: 256, elements: !168)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3473, line: 38, size: 128, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3506, file: !3473, line: 39, baseType: !2116, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3506, file: !3473, line: 40, baseType: !2116, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3472, file: !3473, line: 146, baseType: !3511, size: 192, offset: 1920)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3473, line: 66, size: 192, elements: !3512)
!3512 = !{!3513}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3511, file: !3473, line: 67, baseType: !3514, size: 192)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3473, line: 47, size: 192, elements: !3515)
!3515 = !{!3516, !3517, !3518}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3514, file: !3473, line: 48, baseType: !1703, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3514, file: !3473, line: 49, baseType: !1703, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3514, file: !3473, line: 50, baseType: !1703, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3472, file: !3473, line: 150, baseType: !3232, size: 640, offset: 2112)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3472, file: !3473, line: 153, baseType: !3521, size: 256, offset: 2752)
!3521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3136, size: 256, elements: !177)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3472, file: !3473, line: 159, baseType: !3136, size: 64, offset: 3008)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3472, file: !3473, line: 162, baseType: !140, size: 32, offset: 3072)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3472, file: !3473, line: 164, baseType: !3525, size: 64, offset: 3136)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3473, line: 164, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3472, file: !3473, line: 175, baseType: !3528, size: 32, offset: 3200)
!3528 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !2087, line: 805, baseType: !3529)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2087, line: 798, size: 32, elements: !3530)
!3530 = !{!3531, !3532}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3529, file: !2087, line: 803, baseType: !2086, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3529, file: !2087, line: 804, baseType: !1711, offset: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3472, file: !3473, line: 176, baseType: !2116, size: 64, offset: 3264)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3472, file: !3473, line: 176, baseType: !2116, size: 64, offset: 3328)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3472, file: !3473, line: 176, baseType: !2116, size: 64, offset: 3392)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3472, file: !3473, line: 176, baseType: !2116, size: 64, offset: 3456)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3472, file: !3473, line: 177, baseType: !2116, size: 64, offset: 3520)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3472, file: !3473, line: 178, baseType: !2116, size: 64, offset: 3584)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3472, file: !3473, line: 179, baseType: !3220, size: 128, offset: 3648)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3472, file: !3473, line: 180, baseType: !138, size: 64, offset: 3776)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3472, file: !3473, line: 180, baseType: !138, size: 64, offset: 3840)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3472, file: !3473, line: 180, baseType: !138, size: 64, offset: 3904)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3472, file: !3473, line: 180, baseType: !138, size: 64, offset: 3968)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3472, file: !3473, line: 181, baseType: !138, size: 64, offset: 4032)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3472, file: !3473, line: 181, baseType: !138, size: 64, offset: 4096)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3472, file: !3473, line: 181, baseType: !138, size: 64, offset: 4160)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3472, file: !3473, line: 181, baseType: !138, size: 64, offset: 4224)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3472, file: !3473, line: 182, baseType: !138, size: 64, offset: 4288)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3472, file: !3473, line: 182, baseType: !138, size: 64, offset: 4352)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3472, file: !3473, line: 182, baseType: !138, size: 64, offset: 4416)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3472, file: !3473, line: 182, baseType: !138, size: 64, offset: 4480)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3472, file: !3473, line: 183, baseType: !138, size: 64, offset: 4544)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3472, file: !3473, line: 183, baseType: !138, size: 64, offset: 4608)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3472, file: !3473, line: 184, baseType: !3555, offset: 4672)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3556, line: 12, elements: !210)
!3556 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3472, file: !3473, line: 192, baseType: !2118, size: 64, offset: 4672)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3472, file: !3473, line: 203, baseType: !3559, size: 2048, offset: 4736)
!3559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3560, size: 2048, elements: !195)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3561, line: 43, size: 128, elements: !3562)
!3561 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3560, file: !3561, line: 44, baseType: !137, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3560, file: !3561, line: 45, baseType: !137, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3472, file: !3473, line: 220, baseType: !1355, size: 8, offset: 6784)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3472, file: !3473, line: 221, baseType: !2874, size: 16, offset: 6800)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3472, file: !3473, line: 222, baseType: !2874, size: 16, offset: 6816)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3472, file: !3473, line: 224, baseType: !2651, size: 64, offset: 6848)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3472, file: !3473, line: 227, baseType: !1697, size: 192, offset: 6912)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !3472, file: !3473, line: 233, baseType: !1697, size: 192, offset: 7104)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2886, file: !2887, line: 970, baseType: !3572, size: 64, offset: 9280)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3473, line: 20, size: 16576, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3573, file: !3473, line: 21, baseType: !1711)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3573, file: !3473, line: 22, baseType: !2899, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3573, file: !3473, line: 23, baseType: !3146, size: 128, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3573, file: !3473, line: 24, baseType: !3579, size: 16384, offset: 192)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3580, size: 16384, elements: !1984)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3483, line: 49, size: 256, elements: !3581)
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3580, file: !3483, line: 50, baseType: !3583, size: 256)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3483, line: 35, size: 256, elements: !3584)
!3584 = !{!3585, !3592, !3593, !3599}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3583, file: !3483, line: 37, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3587, line: 19, baseType: !3588)
!3587 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3587, line: 18, baseType: !3590)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !140}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3583, file: !3483, line: 38, baseType: !138, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3583, file: !3483, line: 44, baseType: !3594, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3587, line: 22, baseType: !3595)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3587, line: 21, baseType: !3597)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3583, file: !3483, line: 46, baseType: !3487, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2886, file: !2887, line: 971, baseType: !3487, size: 64, offset: 9344)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2886, file: !2887, line: 972, baseType: !3487, size: 64, offset: 9408)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2886, file: !2887, line: 974, baseType: !3487, size: 64, offset: 9472)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2886, file: !2887, line: 975, baseType: !3482, size: 192, offset: 9536)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2886, file: !2887, line: 976, baseType: !138, size: 64, offset: 9728)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2886, file: !2887, line: 977, baseType: !134, size: 64, offset: 9792)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2886, file: !2887, line: 978, baseType: !7, size: 32, offset: 9856)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2886, file: !2887, line: 980, baseType: !2067, size: 64, offset: 9920)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2886, file: !2887, line: 989, baseType: !3609, size: 128, offset: 9984)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3610, line: 35, size: 128, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3609, file: !3610, line: 36, baseType: !140, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3609, file: !3610, line: 37, baseType: !1689, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3609, file: !3610, line: 38, baseType: !3615, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3610, line: 23, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2886, file: !2887, line: 992, baseType: !2116, size: 64, offset: 10112)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2886, file: !2887, line: 993, baseType: !2116, size: 64, offset: 10176)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2886, file: !2887, line: 996, baseType: !1711, offset: 10240)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2886, file: !2887, line: 999, baseType: !2461, offset: 10240)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2886, file: !2887, line: 1001, baseType: !3622, size: 64, offset: 10240)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2887, line: 636, size: 64, elements: !3623)
!3623 = !{!3624}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3622, file: !2887, line: 637, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2886, file: !2887, line: 1005, baseType: !2440, size: 128, offset: 10304)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2886, file: !2887, line: 1007, baseType: !2885, size: 64, offset: 10432)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2886, file: !2887, line: 1009, baseType: !3629, size: 64, offset: 10496)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2887, line: 1009, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2886, file: !2887, line: 1043, baseType: !139, size: 64, offset: 10560)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2886, file: !2887, line: 1046, baseType: !3633, size: 64, offset: 10624)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2887, line: 41, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2886, file: !2887, line: 1050, baseType: !3636, size: 64, offset: 10688)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2887, line: 42, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2886, file: !2887, line: 1054, baseType: !3639, size: 64, offset: 10752)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2887, line: 55, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2886, file: !2887, line: 1056, baseType: !3642, size: 64, offset: 10816)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !2887, line: 40, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2886, file: !2887, line: 1058, baseType: !3645, size: 64, offset: 10880)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3647, line: 99, size: 704, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3674, !3675}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3646, file: !3647, line: 100, baseType: !1701, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3646, file: !3647, line: 101, baseType: !1689, size: 32, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3646, file: !3647, line: 102, baseType: !1689, size: 32, offset: 96)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3646, file: !3647, line: 105, baseType: !1711, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3646, file: !3647, line: 107, baseType: !155, size: 16, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3646, file: !3647, line: 109, baseType: !2431, size: 128, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3646, file: !3647, line: 110, baseType: !3656, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3647, line: 73, size: 448, elements: !3658)
!3658 = !{!3659, !3662, !3663, !3668, !3673}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3657, file: !3647, line: 74, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3647, line: 74, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3657, file: !3647, line: 75, baseType: !3645, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !3647, line: 83, baseType: !3664, size: 128, offset: 128)
!3664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3657, file: !3647, line: 83, size: 128, elements: !3665)
!3665 = !{!3666, !3667}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3664, file: !3647, line: 84, baseType: !1726, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3664, file: !3647, line: 85, baseType: !215, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, scope: !3657, file: !3647, line: 87, baseType: !3669, size: 128, offset: 256)
!3669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3657, file: !3647, line: 87, size: 128, elements: !3670)
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3669, file: !3647, line: 88, baseType: !2332, size: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3669, file: !3647, line: 89, baseType: !2064, size: 128, align: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3657, file: !3647, line: 92, baseType: !7, size: 32, offset: 384)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3646, file: !3647, line: 111, baseType: !2328, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3646, file: !3647, line: 113, baseType: !1858, size: 256, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2886, file: !2887, line: 1061, baseType: !3677, size: 64, offset: 10944)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2887, line: 43, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2886, file: !2887, line: 1064, baseType: !138, size: 64, offset: 11008)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2886, file: !2887, line: 1065, baseType: !3681, size: 64, offset: 11072)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3483, line: 14, baseType: !3683)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3483, line: 12, size: 384, elements: !3684)
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3683, file: !3483, line: 13, baseType: !3686, size: 384)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3683, file: !3483, line: 13, size: 384, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3686, file: !3483, line: 13, baseType: !140, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3686, file: !3483, line: 13, baseType: !140, size: 32, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3686, file: !3483, line: 13, baseType: !140, size: 32, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3686, file: !3483, line: 13, baseType: !3692, size: 256, offset: 128)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3693, line: 32, size: 256, elements: !3694)
!3693 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3694 = !{!3695, !3700, !3713, !3719, !3728, !3748, !3753}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3692, file: !3693, line: 37, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 34, size: 64, elements: !3697)
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3696, file: !3693, line: 35, baseType: !3125, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3696, file: !3693, line: 36, baseType: !2135, size: 32, offset: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3692, file: !3693, line: 45, baseType: !3701, size: 192)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 40, size: 192, elements: !3702)
!3702 = !{!3703, !3705, !3706, !3712}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3701, file: !3693, line: 41, baseType: !3704, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !136, line: 95, baseType: !140)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3701, file: !3693, line: 42, baseType: !140, size: 32, offset: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3701, file: !3693, line: 43, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3693, line: 11, baseType: !3708)
!3708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3693, line: 8, size: 64, elements: !3709)
!3709 = !{!3710, !3711}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3708, file: !3693, line: 9, baseType: !140, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3708, file: !3693, line: 10, baseType: !139, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3701, file: !3693, line: 44, baseType: !140, size: 32, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3692, file: !3693, line: 52, baseType: !3714, size: 128)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 48, size: 128, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3714, file: !3693, line: 49, baseType: !3125, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3714, file: !3693, line: 50, baseType: !2135, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3714, file: !3693, line: 51, baseType: !3707, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3692, file: !3693, line: 61, baseType: !3720, size: 256)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 55, size: 256, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725, !3727}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3720, file: !3693, line: 56, baseType: !3125, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3720, file: !3693, line: 57, baseType: !2135, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3720, file: !3693, line: 58, baseType: !140, size: 32, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3720, file: !3693, line: 59, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !136, line: 94, baseType: !2012)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3720, file: !3693, line: 60, baseType: !3726, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3692, file: !3693, line: 95, baseType: !3729, size: 256)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 64, size: 256, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3729, file: !3693, line: 65, baseType: !139, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, scope: !3729, file: !3693, line: 77, baseType: !3733, size: 192, offset: 64)
!3733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3729, file: !3693, line: 77, size: 192, elements: !3734)
!3734 = !{!3735, !3736, !3743}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3733, file: !3693, line: 82, baseType: !2874, size: 16)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3733, file: !3693, line: 88, baseType: !3737, size: 192)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3733, file: !3693, line: 84, size: 192, elements: !3738)
!3738 = !{!3739, !3741, !3742}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3737, file: !3693, line: 85, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 64, elements: !186)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3737, file: !3693, line: 86, baseType: !139, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3737, file: !3693, line: 87, baseType: !139, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3733, file: !3693, line: 93, baseType: !3744, size: 96)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3733, file: !3693, line: 90, size: 96, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3744, file: !3693, line: 91, baseType: !3740, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3744, file: !3693, line: 92, baseType: !149, size: 32, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3692, file: !3693, line: 101, baseType: !3749, size: 128)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 98, size: 128, elements: !3750)
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3749, file: !3693, line: 99, baseType: !2013, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3749, file: !3693, line: 100, baseType: !140, size: 32, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3692, file: !3693, line: 108, baseType: !3754, size: 128)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !3693, line: 104, size: 128, elements: !3755)
!3755 = !{!3756, !3757, !3758}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3754, file: !3693, line: 105, baseType: !139, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3754, file: !3693, line: 106, baseType: !140, size: 32, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3754, file: !3693, line: 107, baseType: !7, size: 32, offset: 96)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2886, file: !2887, line: 1067, baseType: !3555, offset: 11136)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2886, file: !2887, line: 1099, baseType: !3761, size: 64, offset: 11136)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2887, line: 56, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2886, file: !2887, line: 1103, baseType: !1726, size: 128, offset: 11200)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2886, file: !2887, line: 1104, baseType: !3765, size: 64, offset: 11328)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2887, line: 46, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2886, file: !2887, line: 1105, baseType: !1697, size: 192, offset: 11392)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2886, file: !2887, line: 1106, baseType: !7, size: 32, offset: 11584)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2886, file: !2887, line: 1109, baseType: !3770, size: 128, offset: 11648)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3771, size: 128, elements: !168)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2887, line: 51, flags: DIFlagFwdDecl)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2886, file: !2887, line: 1110, baseType: !1697, size: 192, offset: 11776)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2886, file: !2887, line: 1111, baseType: !1726, size: 128, offset: 11968)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2886, file: !2887, line: 1173, baseType: !3776, size: 64, offset: 12096)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3778, line: 62, size: 256, align: 256, elements: !3779)
!3778 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3779 = !{!3780, !3781, !3782, !3787}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3777, file: !3778, line: 75, baseType: !149, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3777, file: !3778, line: 90, baseType: !149, size: 32, offset: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3777, file: !3778, line: 124, baseType: !3783, size: 64, offset: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3777, file: !3778, line: 109, size: 64, elements: !3784)
!3784 = !{!3785, !3786}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3783, file: !3778, line: 110, baseType: !2117, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3783, file: !3778, line: 112, baseType: !2117, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3777, file: !3778, line: 144, baseType: !149, size: 32, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2886, file: !2887, line: 1174, baseType: !1813, size: 32, offset: 12160)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2886, file: !2887, line: 1179, baseType: !138, size: 64, offset: 12224)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2886, file: !2887, line: 1182, baseType: !3791, size: 128, offset: 12288)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2828, line: 76, size: 128, elements: !3792)
!3792 = !{!3793, !3798, !3799}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3791, file: !2828, line: 85, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3795, line: 7, size: 64, elements: !3796)
!3795 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3796 = !{!3797}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3794, file: !3795, line: 12, baseType: !3032, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3791, file: !2828, line: 88, baseType: !1355, size: 8, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3791, file: !2828, line: 95, baseType: !1355, size: 8, offset: 72)
!3800 = !DIDerivedType(tag: DW_TAG_member, scope: !2886, file: !2887, line: 1184, baseType: !3801, size: 128, offset: 12416)
!3801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2886, file: !2887, line: 1184, size: 128, elements: !3802)
!3802 = !{!3803, !3804}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3801, file: !2887, line: 1185, baseType: !2899, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3801, file: !2887, line: 1186, baseType: !2064, size: 128, align: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2886, file: !2887, line: 1190, baseType: !3806, size: 64, offset: 12544)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2887, line: 53, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2886, file: !2887, line: 1192, baseType: !3809, size: 128, offset: 12608)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2828, line: 64, size: 128, elements: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3809, file: !2828, line: 65, baseType: !2414, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3809, file: !2828, line: 67, baseType: !149, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3809, file: !2828, line: 68, baseType: !149, size: 32, offset: 96)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2886, file: !2887, line: 1206, baseType: !140, size: 32, offset: 12736)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2886, file: !2887, line: 1207, baseType: !140, size: 32, offset: 12768)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2886, file: !2887, line: 1209, baseType: !138, size: 64, offset: 12800)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2886, file: !2887, line: 1219, baseType: !2116, size: 64, offset: 12864)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2886, file: !2887, line: 1220, baseType: !2116, size: 64, offset: 12928)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2886, file: !2887, line: 1317, baseType: !140, size: 32, offset: 12992)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2886, file: !2887, line: 1319, baseType: !2885, size: 64, offset: 13056)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2886, file: !2887, line: 1322, baseType: !3822, size: 64, offset: 13120)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3824, line: 56, size: 512, elements: !3825)
!3824 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3834}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3823, file: !3824, line: 57, baseType: !3822, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3823, file: !3824, line: 58, baseType: !139, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3823, file: !3824, line: 59, baseType: !138, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3823, file: !3824, line: 60, baseType: !138, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3823, file: !3824, line: 61, baseType: !2501, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3823, file: !3824, line: 62, baseType: !7, size: 32, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3823, file: !3824, line: 63, baseType: !3833, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !133, line: 153, baseType: !2116)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3823, file: !3824, line: 64, baseType: !1357, size: 64, offset: 448)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2886, file: !2887, line: 1326, baseType: !2899, size: 32, offset: 13184)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2886, file: !2887, line: 1342, baseType: !139, size: 64, offset: 13248)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2886, file: !2887, line: 1343, baseType: !2117, size: 64, offset: 13312)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2886, file: !2887, line: 1344, baseType: !2116, size: 64, offset: 13376)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2886, file: !2887, line: 1345, baseType: !2117, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2886, file: !2887, line: 1346, baseType: !2117, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2886, file: !2887, line: 1347, baseType: !2117, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2886, file: !2887, line: 1348, baseType: !2064, size: 128, align: 64, offset: 13504)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2886, file: !2887, line: 1358, baseType: !3844, size: 34816, offset: 13824)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3845, line: 485, size: 34816, elements: !3846)
!3845 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3846 = !{!3847, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3876, !3877, !3878, !3879, !3880, !3881, !3884, !3885, !3886}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3844, file: !3845, line: 487, baseType: !3848, size: 192)
!3848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3849, size: 192, elements: !1980)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3850, line: 16, size: 64, elements: !3851)
!3850 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3849, file: !3850, line: 17, baseType: !166, size: 16)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3849, file: !3850, line: 18, baseType: !166, size: 16, offset: 16)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3849, file: !3850, line: 19, baseType: !166, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3849, file: !3850, line: 19, baseType: !166, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3849, file: !3850, line: 19, baseType: !166, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3849, file: !3850, line: 19, baseType: !166, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3849, file: !3850, line: 19, baseType: !166, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3849, file: !3850, line: 20, baseType: !166, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3849, file: !3850, line: 20, baseType: !166, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3849, file: !3850, line: 20, baseType: !166, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3849, file: !3850, line: 20, baseType: !166, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3849, file: !3850, line: 20, baseType: !166, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3849, file: !3850, line: 20, baseType: !166, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3844, file: !3845, line: 491, baseType: !138, size: 64, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3844, file: !3845, line: 495, baseType: !155, size: 16, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3844, file: !3845, line: 496, baseType: !155, size: 16, offset: 272)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3844, file: !3845, line: 497, baseType: !155, size: 16, offset: 288)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3844, file: !3845, line: 498, baseType: !155, size: 16, offset: 304)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3844, file: !3845, line: 502, baseType: !138, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3844, file: !3845, line: 503, baseType: !138, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3844, file: !3845, line: 514, baseType: !3873, size: 256, offset: 448)
!3873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3874, size: 256, elements: !177)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3845, line: 483, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3844, file: !3845, line: 516, baseType: !138, size: 64, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3844, file: !3845, line: 518, baseType: !138, size: 64, offset: 768)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3844, file: !3845, line: 520, baseType: !138, size: 64, offset: 832)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3844, file: !3845, line: 521, baseType: !138, size: 64, offset: 896)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3844, file: !3845, line: 522, baseType: !138, size: 64, offset: 960)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3844, file: !3845, line: 528, baseType: !3882, size: 64, offset: 1024)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3845, line: 10, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3844, file: !3845, line: 535, baseType: !138, size: 64, offset: 1088)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3844, file: !3845, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3844, file: !3845, line: 540, baseType: !3887, size: 33280, offset: 1536)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3888, line: 317, size: 33280, elements: !3889)
!3888 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3889 = !{!3890, !3891, !3892}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3887, file: !3888, line: 330, baseType: !7, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3887, file: !3888, line: 337, baseType: !138, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3887, file: !3888, line: 348, baseType: !3893, size: 32768, offset: 512)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3888, line: 304, size: 32768, elements: !3894)
!3894 = !{!3895, !3910, !3949, !3999, !4012}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3893, file: !3888, line: 305, baseType: !3896, size: 896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3888, line: 12, size: 896, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3909}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3896, file: !3888, line: 13, baseType: !1813, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3896, file: !3888, line: 14, baseType: !1813, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3896, file: !3888, line: 15, baseType: !1813, size: 32, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3896, file: !3888, line: 16, baseType: !1813, size: 32, offset: 96)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3896, file: !3888, line: 17, baseType: !1813, size: 32, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3896, file: !3888, line: 18, baseType: !1813, size: 32, offset: 160)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3896, file: !3888, line: 19, baseType: !1813, size: 32, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3896, file: !3888, line: 22, baseType: !3906, size: 640, offset: 224)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 640, elements: !3907)
!3907 = !{!3908}
!3908 = !DISubrange(count: 20)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3896, file: !3888, line: 25, baseType: !1813, size: 32, offset: 864)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3893, file: !3888, line: 306, baseType: !3911, size: 4096, align: 128)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3888, line: 34, size: 4096, align: 128, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3916, !3917, !3932, !3933, !3934, !3938, !3940, !3944}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3911, file: !3888, line: 35, baseType: !166, size: 16)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3911, file: !3888, line: 36, baseType: !166, size: 16, offset: 16)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3911, file: !3888, line: 37, baseType: !166, size: 16, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3911, file: !3888, line: 38, baseType: !166, size: 16, offset: 48)
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3911, file: !3888, line: 39, baseType: !3918, size: 128, offset: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3911, file: !3888, line: 39, size: 128, elements: !3919)
!3919 = !{!3920, !3925}
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !3888, line: 40, baseType: !3921, size: 128)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3888, line: 40, size: 128, elements: !3922)
!3922 = !{!3923, !3924}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3921, file: !3888, line: 41, baseType: !2116, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3921, file: !3888, line: 42, baseType: !2116, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !3888, line: 44, baseType: !3926, size: 128)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3888, line: 44, size: 128, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3926, file: !3888, line: 45, baseType: !1813, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3926, file: !3888, line: 46, baseType: !1813, size: 32, offset: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3926, file: !3888, line: 47, baseType: !1813, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3926, file: !3888, line: 48, baseType: !1813, size: 32, offset: 96)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3911, file: !3888, line: 51, baseType: !1813, size: 32, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3911, file: !3888, line: 52, baseType: !1813, size: 32, offset: 224)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3911, file: !3888, line: 55, baseType: !3935, size: 1024, offset: 256)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 1024, elements: !3936)
!3936 = !{!3937}
!3937 = !DISubrange(count: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3911, file: !3888, line: 58, baseType: !3939, size: 2048, offset: 1280)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 2048, elements: !1984)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3911, file: !3888, line: 60, baseType: !3941, size: 384, offset: 3328)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 384, elements: !3942)
!3942 = !{!3943}
!3943 = !DISubrange(count: 12)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3911, file: !3888, line: 62, baseType: !3945, size: 384, offset: 3712)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3911, file: !3888, line: 62, size: 384, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3945, file: !3888, line: 63, baseType: !3941, size: 384)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3945, file: !3888, line: 64, baseType: !3941, size: 384)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3893, file: !3888, line: 307, baseType: !3950, size: 1088)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3888, line: 79, size: 1088, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3998}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3950, file: !3888, line: 80, baseType: !1813, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3950, file: !3888, line: 81, baseType: !1813, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3950, file: !3888, line: 82, baseType: !1813, size: 32, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3950, file: !3888, line: 83, baseType: !1813, size: 32, offset: 96)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3950, file: !3888, line: 84, baseType: !1813, size: 32, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3950, file: !3888, line: 85, baseType: !1813, size: 32, offset: 160)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3950, file: !3888, line: 86, baseType: !1813, size: 32, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3950, file: !3888, line: 88, baseType: !3906, size: 640, offset: 224)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3950, file: !3888, line: 89, baseType: !1874, size: 8, offset: 864)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3950, file: !3888, line: 90, baseType: !1874, size: 8, offset: 872)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3950, file: !3888, line: 91, baseType: !1874, size: 8, offset: 880)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3950, file: !3888, line: 92, baseType: !1874, size: 8, offset: 888)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3950, file: !3888, line: 93, baseType: !1874, size: 8, offset: 896)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3950, file: !3888, line: 94, baseType: !1874, size: 8, offset: 904)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3950, file: !3888, line: 95, baseType: !3967, size: 64, offset: 960)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3969, line: 11, size: 128, elements: !3970)
!3969 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3970 = !{!3971, !3972}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3968, file: !3969, line: 12, baseType: !2013, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3968, file: !3969, line: 13, baseType: !3973, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3975, line: 56, size: 1344, elements: !3976)
!3975 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3974, file: !3975, line: 61, baseType: !138, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3974, file: !3975, line: 62, baseType: !138, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3974, file: !3975, line: 63, baseType: !138, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3974, file: !3975, line: 64, baseType: !138, size: 64, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3974, file: !3975, line: 65, baseType: !138, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3974, file: !3975, line: 66, baseType: !138, size: 64, offset: 320)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3974, file: !3975, line: 68, baseType: !138, size: 64, offset: 384)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3974, file: !3975, line: 69, baseType: !138, size: 64, offset: 448)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3974, file: !3975, line: 70, baseType: !138, size: 64, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3974, file: !3975, line: 71, baseType: !138, size: 64, offset: 576)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3974, file: !3975, line: 72, baseType: !138, size: 64, offset: 640)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3974, file: !3975, line: 73, baseType: !138, size: 64, offset: 704)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3974, file: !3975, line: 74, baseType: !138, size: 64, offset: 768)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3974, file: !3975, line: 75, baseType: !138, size: 64, offset: 832)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3974, file: !3975, line: 76, baseType: !138, size: 64, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3974, file: !3975, line: 81, baseType: !138, size: 64, offset: 960)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3974, file: !3975, line: 83, baseType: !138, size: 64, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3974, file: !3975, line: 84, baseType: !138, size: 64, offset: 1088)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3974, file: !3975, line: 85, baseType: !138, size: 64, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3974, file: !3975, line: 86, baseType: !138, size: 64, offset: 1216)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3974, file: !3975, line: 87, baseType: !138, size: 64, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3950, file: !3888, line: 96, baseType: !1813, size: 32, offset: 1024)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3893, file: !3888, line: 308, baseType: !4000, size: 4608, align: 512)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3888, line: 289, size: 4608, align: 512, elements: !4001)
!4001 = !{!4002, !4003, !4010}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4000, file: !3888, line: 290, baseType: !3911, size: 4096, align: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4000, file: !3888, line: 291, baseType: !4004, size: 512, offset: 4096)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3888, line: 268, size: 512, elements: !4005)
!4005 = !{!4006, !4007, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4004, file: !3888, line: 269, baseType: !2116, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4004, file: !3888, line: 270, baseType: !2116, size: 64, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4004, file: !3888, line: 271, baseType: !4009, size: 384, offset: 128)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2116, size: 384, elements: !3325)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4000, file: !3888, line: 292, baseType: !4011, offset: 4608)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1874, elements: !3421)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3893, file: !3888, line: 309, baseType: !4013, size: 32768)
!4013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1874, size: 32768, elements: !4014)
!4014 = !{!4015}
!4015 = !DISubrange(count: 4096)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2882, file: !217, line: 378, baseType: !4017, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2878, file: !217, line: 384, baseType: !3204, size: 192, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2655, file: !217, line: 500, baseType: !1711, offset: 6656)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2655, file: !217, line: 501, baseType: !4021, size: 64, offset: 6656)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !217, line: 387, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2655, file: !217, line: 516, baseType: !3182, size: 64, offset: 6720)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2655, file: !217, line: 519, baseType: !2051, size: 64, offset: 6784)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2655, file: !217, line: 521, baseType: !4026, size: 64, offset: 6848)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !217, line: 521, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2655, file: !217, line: 545, baseType: !1689, size: 32, offset: 6912)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2655, file: !217, line: 548, baseType: !1355, size: 8, offset: 6944)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2655, file: !217, line: 550, baseType: !4031, offset: 6952)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !4032, line: 142, elements: !210)
!4032 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2655, file: !217, line: 554, baseType: !1858, size: 256, offset: 6976)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !2655, file: !217, line: 557, baseType: !1813, size: 32, offset: 7232)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2652, file: !217, line: 565, baseType: !4036, offset: 7296)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, elements: !4037)
!4037 = !{!4038}
!4038 = !DISubrange(count: -1)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2648, file: !217, line: 151, baseType: !1689, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2641, file: !217, line: 156, baseType: !1711, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !217, line: 159, baseType: !4042, size: 128)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !217, line: 159, size: 128, elements: !4043)
!4043 = !{!4044, !4108}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4042, file: !217, line: 161, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 110, size: 1152, elements: !4047)
!4047 = !{!4048, !4058, !4079, !4080, !4081, !4082, !4083, !4095, !4096, !4097}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4046, file: !43, line: 111, baseType: !4049, size: 384)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 19, size: 384, elements: !4050)
!4050 = !{!4051, !4053, !4054, !4055, !4056, !4057}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4049, file: !43, line: 20, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4049, file: !43, line: 21, baseType: !4052, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4049, file: !43, line: 22, baseType: !4052, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4049, file: !43, line: 23, baseType: !138, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4049, file: !43, line: 24, baseType: !138, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4049, file: !43, line: 25, baseType: !138, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4046, file: !43, line: 112, baseType: !4059, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4061, line: 105, size: 128, elements: !4062)
!4061 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!4062 = !{!4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4060, file: !4061, line: 110, baseType: !138, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4060, file: !4061, line: 118, baseType: !4065, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4061, line: 95, size: 448, elements: !4067)
!4067 = !{!4068, !4069, !4074, !4075, !4076, !4077, !4078}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4066, file: !4061, line: 96, baseType: !1701, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4066, file: !4061, line: 97, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4061, line: 60, baseType: !4072)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !4059}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4066, file: !4061, line: 98, baseType: !4070, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4066, file: !4061, line: 99, baseType: !1355, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4066, file: !4061, line: 100, baseType: !1355, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4066, file: !4061, line: 101, baseType: !2064, size: 128, align: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4066, file: !4061, line: 102, baseType: !4059, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !4046, file: !43, line: 113, baseType: !4060, size: 128, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4046, file: !43, line: 114, baseType: !3204, size: 192, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4046, file: !43, line: 115, baseType: !42, size: 32, offset: 768)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4046, file: !43, line: 116, baseType: !7, size: 32, offset: 800)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4046, file: !43, line: 117, baseType: !4084, size: 64, offset: 832)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 67, size: 256, elements: !4087)
!4087 = !{!4088, !4089, !4093, !4094}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4086, file: !43, line: 73, baseType: !2521, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !4086, file: !43, line: 78, baseType: !4090, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !4045}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4086, file: !43, line: 83, baseType: !4090, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4086, file: !43, line: 89, baseType: !2704, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4046, file: !43, line: 118, baseType: !139, size: 64, offset: 896)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4046, file: !43, line: 119, baseType: !140, size: 32, offset: 960)
!4097 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !43, line: 120, baseType: !4098, size: 128, offset: 1024)
!4098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4046, file: !43, line: 120, size: 128, elements: !4099)
!4099 = !{!4100, !4106}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4098, file: !43, line: 121, baseType: !4101, size: 128)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4102, line: 6, size: 128, elements: !4103)
!4102 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4101, file: !4102, line: 7, baseType: !2116, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4101, file: !4102, line: 8, baseType: !2116, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4098, file: !43, line: 122, baseType: !4107)
!4107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4101, elements: !3421)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4042, file: !217, line: 162, baseType: !139, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2419, file: !217, line: 176, baseType: !2064, size: 128, align: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, scope: !2415, file: !217, line: 179, baseType: !4111, size: 32, offset: 384)
!4111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2415, file: !217, line: 179, size: 32, elements: !4112)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4111, file: !217, line: 184, baseType: !1689, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4111, file: !217, line: 192, baseType: !7, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4111, file: !217, line: 194, baseType: !7, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !4111, file: !217, line: 195, baseType: !140, size: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2415, file: !217, line: 199, baseType: !1689, size: 32, offset: 416)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2350, file: !56, line: 1964, baseType: !4119, size: 64, offset: 1344)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!2013, !2289, !4122}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4124, line: 12, size: 256, elements: !4125)
!4124 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!4125 = !{!4126, !4127, !4128, !4129, !4130}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4123, file: !4124, line: 13, baseType: !132, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4123, file: !4124, line: 16, baseType: !140, size: 32, offset: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4123, file: !4124, line: 23, baseType: !138, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4123, file: !4124, line: 30, baseType: !138, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4123, file: !4124, line: 33, baseType: !4131, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !217, line: 27, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2350, file: !56, line: 1966, baseType: !4119, size: 64, offset: 1408)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !2290, file: !56, line: 1424, baseType: !4135, size: 64, offset: 448)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4137)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !50, line: 322, size: 704, elements: !4138)
!4138 = !{!4139, !4185, !4189, !4193, !4194, !4195, !4196, !4197, !4202, !4207, !4211}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4137, file: !50, line: 323, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!140, !4143}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !50, line: 294, size: 1600, elements: !4145)
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4170, !4171, !4172}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4144, file: !50, line: 295, baseType: !2332, size: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4144, file: !50, line: 296, baseType: !1726, size: 128, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4144, file: !50, line: 297, baseType: !1726, size: 128, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4144, file: !50, line: 298, baseType: !1726, size: 128, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4144, file: !50, line: 299, baseType: !1697, size: 192, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4144, file: !50, line: 300, baseType: !1711, offset: 704)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4144, file: !50, line: 301, baseType: !1689, size: 32, offset: 704)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4144, file: !50, line: 302, baseType: !2289, size: 64, offset: 768)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4144, file: !50, line: 303, baseType: !4155, size: 64, offset: 832)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !50, line: 68, size: 64, elements: !4156)
!4156 = !{!4157, !4169}
!4157 = !DIDerivedType(tag: DW_TAG_member, scope: !4155, file: !50, line: 69, baseType: !4158, size: 32)
!4158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4155, file: !50, line: 69, size: 32, elements: !4159)
!4159 = !{!4160, !4161, !4162}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4158, file: !50, line: 70, baseType: !2129, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4158, file: !50, line: 71, baseType: !2137, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4158, file: !50, line: 72, baseType: !4163, size: 32)
!4163 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4164, line: 24, baseType: !4165)
!4164 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4164, line: 22, size: 32, elements: !4166)
!4166 = !{!4167}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4165, file: !4164, line: 23, baseType: !4168, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4164, line: 20, baseType: !2135)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4155, file: !50, line: 74, baseType: !49, size: 32, offset: 32)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4144, file: !50, line: 304, baseType: !2223, size: 64, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4144, file: !50, line: 305, baseType: !138, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4144, file: !50, line: 306, baseType: !4173, size: 576, offset: 1024)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !50, line: 205, size: 576, elements: !4174)
!4174 = !{!4175, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4173, file: !50, line: 206, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !50, line: 66, baseType: !1709)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4173, file: !50, line: 207, baseType: !4176, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4173, file: !50, line: 208, baseType: !4176, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4173, file: !50, line: 209, baseType: !4176, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4173, file: !50, line: 210, baseType: !4176, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4173, file: !50, line: 211, baseType: !4176, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4173, file: !50, line: 212, baseType: !4176, size: 64, offset: 384)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4173, file: !50, line: 213, baseType: !2230, size: 64, offset: 448)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4173, file: !50, line: 214, baseType: !2230, size: 64, offset: 512)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4137, file: !50, line: 324, baseType: !4186, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!4143, !2289, !140}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4137, file: !50, line: 325, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !4143}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4137, file: !50, line: 326, baseType: !4140, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4137, file: !50, line: 327, baseType: !4140, size: 64, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4137, file: !50, line: 328, baseType: !4140, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4137, file: !50, line: 329, baseType: !2378, size: 64, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4137, file: !50, line: 332, baseType: !4198, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!4201, !2123}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4137, file: !50, line: 333, baseType: !4203, size: 64, offset: 512)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!140, !2123, !4206}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4137, file: !50, line: 335, baseType: !4208, size: 64, offset: 576)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!140, !2123, !4201}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4137, file: !50, line: 337, baseType: !4212, size: 64, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!140, !2289, !4215}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !2290, file: !56, line: 1425, baseType: !4217, size: 64, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4219)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !50, line: 428, size: 704, elements: !4220)
!4220 = !{!4221, !4225, !4226, !4230, !4231, !4232, !4247, !4270, !4274, !4275, !4298}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4219, file: !50, line: 429, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!140, !2289, !140, !140, !2239}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4219, file: !50, line: 430, baseType: !2378, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4219, file: !50, line: 431, baseType: !4227, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!140, !2289, !7}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4219, file: !50, line: 432, baseType: !4227, size: 64, offset: 192)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4219, file: !50, line: 433, baseType: !2378, size: 64, offset: 256)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4219, file: !50, line: 434, baseType: !4233, size: 64, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!140, !2289, !140, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !50, line: 415, size: 256, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4237, file: !50, line: 416, baseType: !140, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4237, file: !50, line: 417, baseType: !7, size: 32, offset: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4237, file: !50, line: 418, baseType: !7, size: 32, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4237, file: !50, line: 420, baseType: !7, size: 32, offset: 96)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4237, file: !50, line: 421, baseType: !7, size: 32, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4237, file: !50, line: 422, baseType: !7, size: 32, offset: 160)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4237, file: !50, line: 423, baseType: !7, size: 32, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4237, file: !50, line: 424, baseType: !7, size: 32, offset: 224)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4219, file: !50, line: 435, baseType: !4248, size: 64, offset: 384)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!140, !2289, !4155, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !50, line: 343, size: 960, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4252, file: !50, line: 344, baseType: !140, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4252, file: !50, line: 345, baseType: !2116, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4252, file: !50, line: 346, baseType: !2116, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4252, file: !50, line: 347, baseType: !2116, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4252, file: !50, line: 348, baseType: !2116, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4252, file: !50, line: 349, baseType: !2116, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4252, file: !50, line: 350, baseType: !2116, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4252, file: !50, line: 351, baseType: !1707, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4252, file: !50, line: 353, baseType: !1707, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4252, file: !50, line: 354, baseType: !140, size: 32, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4252, file: !50, line: 355, baseType: !140, size: 32, offset: 608)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4252, file: !50, line: 356, baseType: !2116, size: 64, offset: 640)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4252, file: !50, line: 357, baseType: !2116, size: 64, offset: 704)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4252, file: !50, line: 358, baseType: !2116, size: 64, offset: 768)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4252, file: !50, line: 359, baseType: !1707, size: 64, offset: 832)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4252, file: !50, line: 360, baseType: !140, size: 32, offset: 896)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4219, file: !50, line: 436, baseType: !4271, size: 64, offset: 448)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!140, !2289, !4215, !4251}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4219, file: !50, line: 438, baseType: !4248, size: 64, offset: 512)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4219, file: !50, line: 439, baseType: !4276, size: 64, offset: 576)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!140, !2289, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !50, line: 409, size: 1408, elements: !4281)
!4281 = !{!4282, !4283}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4280, file: !50, line: 410, baseType: !7, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4280, file: !50, line: 411, baseType: !4284, size: 1344, offset: 64)
!4284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4285, size: 1344, elements: !1980)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !50, line: 395, size: 448, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4297}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4285, file: !50, line: 396, baseType: !7, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4285, file: !50, line: 397, baseType: !7, size: 32, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4285, file: !50, line: 399, baseType: !7, size: 32, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4285, file: !50, line: 400, baseType: !7, size: 32, offset: 96)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4285, file: !50, line: 401, baseType: !7, size: 32, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4285, file: !50, line: 402, baseType: !7, size: 32, offset: 160)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4285, file: !50, line: 403, baseType: !7, size: 32, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4285, file: !50, line: 404, baseType: !2118, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4285, file: !50, line: 405, baseType: !4296, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !133, line: 126, baseType: !2116)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4285, file: !50, line: 406, baseType: !4296, size: 64, offset: 384)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4219, file: !50, line: 440, baseType: !4227, size: 64, offset: 640)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !2290, file: !56, line: 1426, baseType: !4300, size: 64, offset: 576)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4302)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 49, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !2290, file: !56, line: 1427, baseType: !138, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !2290, file: !56, line: 1428, baseType: !138, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !2290, file: !56, line: 1429, baseType: !138, size: 64, offset: 768)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !2290, file: !56, line: 1430, baseType: !2081, size: 64, offset: 832)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !2290, file: !56, line: 1431, baseType: !2455, size: 256, offset: 896)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !2290, file: !56, line: 1432, baseType: !140, size: 32, offset: 1152)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !2290, file: !56, line: 1433, baseType: !1689, size: 32, offset: 1184)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !2290, file: !56, line: 1437, baseType: !4311, size: 64, offset: 1216)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4314)
!4314 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1437, flags: DIFlagFwdDecl)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !2290, file: !56, line: 1449, baseType: !4316, size: 64, offset: 1280)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !2097, line: 34, size: 64, elements: !4317)
!4317 = !{!4318}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4316, file: !2097, line: 35, baseType: !2100, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !2290, file: !56, line: 1450, baseType: !1726, size: 128, offset: 1344)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !2290, file: !56, line: 1451, baseType: !4321, size: 64, offset: 1472)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 699, flags: DIFlagFwdDecl)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !2290, file: !56, line: 1452, baseType: !3642, size: 64, offset: 1536)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !2290, file: !56, line: 1453, baseType: !4325, size: 64, offset: 1600)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1453, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !2290, file: !56, line: 1454, baseType: !2332, size: 128, offset: 1664)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !2290, file: !56, line: 1455, baseType: !7, size: 32, offset: 1792)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !2290, file: !56, line: 1456, baseType: !4330, size: 2432, offset: 1856)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !50, line: 518, size: 2432, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4336, !4368}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4330, file: !50, line: 519, baseType: !7, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4330, file: !50, line: 520, baseType: !2455, size: 256, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4330, file: !50, line: 521, baseType: !4335, size: 192, offset: 320)
!4335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2123, size: 192, elements: !1980)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4330, file: !50, line: 522, baseType: !4337, size: 1728, offset: 512)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4338, size: 1728, elements: !1980)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !50, line: 222, size: 576, elements: !4339)
!4339 = !{!4340, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4338, file: !50, line: 223, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !50, line: 443, size: 256, elements: !4343)
!4343 = !{!4344, !4345, !4358, !4359}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4342, file: !50, line: 444, baseType: !140, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4342, file: !50, line: 445, baseType: !4346, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4348)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !50, line: 310, size: 512, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4348, file: !50, line: 311, baseType: !2378, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4348, file: !50, line: 312, baseType: !2378, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4348, file: !50, line: 313, baseType: !2378, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4348, file: !50, line: 314, baseType: !2378, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4348, file: !50, line: 315, baseType: !4140, size: 64, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4348, file: !50, line: 316, baseType: !4140, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4348, file: !50, line: 317, baseType: !4140, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4348, file: !50, line: 318, baseType: !4212, size: 64, offset: 448)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4342, file: !50, line: 446, baseType: !2323, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4342, file: !50, line: 447, baseType: !4341, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4338, file: !50, line: 224, baseType: !140, size: 32, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4338, file: !50, line: 226, baseType: !1726, size: 128, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4338, file: !50, line: 227, baseType: !138, size: 64, offset: 256)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4338, file: !50, line: 228, baseType: !7, size: 32, offset: 320)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4338, file: !50, line: 229, baseType: !7, size: 32, offset: 352)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4338, file: !50, line: 230, baseType: !4176, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4338, file: !50, line: 231, baseType: !4176, size: 64, offset: 448)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4338, file: !50, line: 232, baseType: !139, size: 64, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4330, file: !50, line: 523, baseType: !4369, size: 192, offset: 2240)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4346, size: 192, elements: !1980)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !2290, file: !56, line: 1458, baseType: !4371, size: 2112, offset: 4288)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1410, size: 2112, elements: !4372)
!4372 = !{!4373, !4374, !4375}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4371, file: !56, line: 1411, baseType: !140, size: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !4371, file: !56, line: 1412, baseType: !3146, size: 128, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4371, file: !56, line: 1413, baseType: !4376, size: 1920, offset: 192)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4377, size: 1920, elements: !1980)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4378, line: 12, size: 640, elements: !4379)
!4378 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!4379 = !{!4380, !4388, !4390, !4395, !4396}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4377, file: !4378, line: 13, baseType: !4381, size: 320)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4382, line: 17, size: 320, elements: !4383)
!4382 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4381, file: !4382, line: 18, baseType: !140, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4381, file: !4382, line: 19, baseType: !140, size: 32, offset: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4381, file: !4382, line: 20, baseType: !3146, size: 128, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4381, file: !4382, line: 22, baseType: !2064, size: 128, align: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4377, file: !4378, line: 14, baseType: !4389, size: 64, offset: 320)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4377, file: !4378, line: 15, baseType: !4391, size: 64, offset: 384)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4392, line: 16, size: 64, elements: !4393)
!4392 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!4393 = !{!4394}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4391, file: !4392, line: 17, baseType: !2885, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4377, file: !4378, line: 16, baseType: !3146, size: 128, offset: 448)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4377, file: !4378, line: 17, baseType: !1689, size: 32, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !2290, file: !56, line: 1465, baseType: !139, size: 64, offset: 6400)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !2290, file: !56, line: 1468, baseType: !1813, size: 32, offset: 6464)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !2290, file: !56, line: 1470, baseType: !2230, size: 64, offset: 6528)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !2290, file: !56, line: 1471, baseType: !2230, size: 64, offset: 6592)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !2290, file: !56, line: 1473, baseType: !149, size: 32, offset: 6656)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !2290, file: !56, line: 1474, baseType: !4403, size: 64, offset: 6720)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 603, flags: DIFlagFwdDecl)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !2290, file: !56, line: 1477, baseType: !4406, size: 256, offset: 6784)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 256, elements: !3936)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !2290, file: !56, line: 1478, baseType: !4408, size: 128, offset: 7040)
!4408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4409, line: 18, baseType: !4410)
!4409 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4409, line: 16, size: 128, elements: !4411)
!4411 = !{!4412}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4410, file: !4409, line: 17, baseType: !4413, size: 128)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1828, size: 128, elements: !195)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !2290, file: !56, line: 1480, baseType: !7, size: 32, offset: 7168)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !2290, file: !56, line: 1481, baseType: !4416, size: 32, offset: 7200)
!4416 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !133, line: 150, baseType: !7)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !2290, file: !56, line: 1487, baseType: !1697, size: 192, offset: 7232)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !2290, file: !56, line: 1493, baseType: !1810, size: 64, offset: 7424)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !2290, file: !56, line: 1495, baseType: !4420, size: 64, offset: 7488)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4422)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !2079, line: 135, size: 1024, align: 512, elements: !4423)
!4423 = !{!4424, !4428, !4429, !4436, !4442, !4446, !4450, !4454, !4455, !4459, !4463, !4468, !4472}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4422, file: !2079, line: 136, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!140, !2081, !7}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4422, file: !2079, line: 137, baseType: !4425, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4422, file: !2079, line: 138, baseType: !4430, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!140, !4433, !4435}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4422, file: !2079, line: 139, baseType: !4437, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!140, !4433, !7, !1810, !4440}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4422, file: !2079, line: 141, baseType: !4443, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!140, !4433}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4422, file: !2079, line: 142, baseType: !4447, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!140, !2081}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4422, file: !2079, line: 143, baseType: !4451, size: 64, offset: 384)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !2081}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4422, file: !2079, line: 144, baseType: !4451, size: 64, offset: 448)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4422, file: !2079, line: 145, baseType: !4456, size: 64, offset: 512)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !2081, !2123}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4422, file: !2079, line: 146, baseType: !4460, size: 64, offset: 576)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!1979, !2081, !1979, !140}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4422, file: !2079, line: 147, baseType: !4464, size: 64, offset: 640)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!2077, !4467}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4422, file: !2079, line: 148, baseType: !4469, size: 64, offset: 704)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!140, !2239, !1355}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4422, file: !2079, line: 149, baseType: !4473, size: 64, offset: 768)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!2081, !2081, !4476}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !2290, file: !56, line: 1500, baseType: !140, size: 32, offset: 7552)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !2290, file: !56, line: 1502, baseType: !4480, size: 448, offset: 7616)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4124, line: 60, size: 448, elements: !4481)
!4481 = !{!4482, !4487, !4488, !4489, !4490, !4491, !4492}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4480, file: !4124, line: 61, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!138, !4486, !4122}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4480, file: !4124, line: 63, baseType: !4483, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4480, file: !4124, line: 66, baseType: !2013, size: 64, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4480, file: !4124, line: 67, baseType: !140, size: 32, offset: 192)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4480, file: !4124, line: 68, baseType: !7, size: 32, offset: 224)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4480, file: !4124, line: 71, baseType: !1726, size: 128, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4480, file: !4124, line: 77, baseType: !4493, size: 64, offset: 384)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !2290, file: !56, line: 1505, baseType: !1701, size: 64, offset: 8064)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !2290, file: !56, line: 1508, baseType: !1701, size: 64, offset: 8128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !2290, file: !56, line: 1511, baseType: !140, size: 32, offset: 8192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !2290, file: !56, line: 1514, baseType: !2588, size: 32, offset: 8224)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !2290, file: !56, line: 1517, baseType: !4499, size: 64, offset: 8256)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1859, line: 18, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !2290, file: !56, line: 1518, baseType: !2328, size: 64, offset: 8320)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !2290, file: !56, line: 1525, baseType: !3182, size: 64, offset: 8384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !2290, file: !56, line: 1532, baseType: !4504, size: 64, offset: 8448)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4505, line: 52, size: 64, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!4506 = !{!4507}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4504, file: !4505, line: 53, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4505, line: 40, size: 256, elements: !4510)
!4510 = !{!4511, !4512, !4517}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4509, file: !4505, line: 42, baseType: !1711)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4509, file: !4505, line: 44, baseType: !4513, size: 192)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4505, line: 28, size: 192, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4513, file: !4505, line: 29, baseType: !1726, size: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4513, file: !4505, line: 31, baseType: !2013, size: 64, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4509, file: !4505, line: 49, baseType: !2013, size: 64, offset: 192)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !2290, file: !56, line: 1533, baseType: !4504, size: 64, offset: 8512)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2290, file: !56, line: 1534, baseType: !2064, size: 128, align: 64, offset: 8576)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2290, file: !56, line: 1535, baseType: !1858, size: 256, offset: 8704)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !2290, file: !56, line: 1537, baseType: !1697, size: 192, offset: 8960)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !2290, file: !56, line: 1542, baseType: !140, size: 32, offset: 9152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !2290, file: !56, line: 1545, baseType: !1711, offset: 9184)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !2290, file: !56, line: 1546, baseType: !1726, size: 128, offset: 9216)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !2290, file: !56, line: 1548, baseType: !1711, offset: 9344)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !2290, file: !56, line: 1549, baseType: !1726, size: 128, offset: 9344)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !2124, file: !56, line: 624, baseType: !2426, size: 64, offset: 256)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !2124, file: !56, line: 631, baseType: !138, size: 64, offset: 320)
!4529 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !56, line: 639, baseType: !4530, size: 32, offset: 384)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !56, line: 639, size: 32, elements: !4531)
!4531 = !{!4532, !4534}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4530, file: !56, line: 640, baseType: !4533, size: 32)
!4533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4530, file: !56, line: 641, baseType: !7, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !2124, file: !56, line: 643, baseType: !2205, size: 32, offset: 416)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !2124, file: !56, line: 644, baseType: !2223, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !2124, file: !56, line: 645, baseType: !2226, size: 128, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !2124, file: !56, line: 646, baseType: !2226, size: 128, offset: 640)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !2124, file: !56, line: 647, baseType: !2226, size: 128, offset: 768)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !2124, file: !56, line: 648, baseType: !1711, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !2124, file: !56, line: 649, baseType: !155, size: 16, offset: 896)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !2124, file: !56, line: 650, baseType: !1874, size: 8, offset: 912)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !2124, file: !56, line: 651, baseType: !1874, size: 8, offset: 920)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !2124, file: !56, line: 652, baseType: !4296, size: 64, offset: 960)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !2124, file: !56, line: 659, baseType: !138, size: 64, offset: 1024)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !2124, file: !56, line: 660, baseType: !2455, size: 256, offset: 1088)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !2124, file: !56, line: 662, baseType: !138, size: 64, offset: 1344)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !2124, file: !56, line: 663, baseType: !138, size: 64, offset: 1408)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !2124, file: !56, line: 665, baseType: !2332, size: 128, offset: 1472)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !2124, file: !56, line: 666, baseType: !1726, size: 128, offset: 1600)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !2124, file: !56, line: 675, baseType: !1726, size: 128, offset: 1728)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !2124, file: !56, line: 676, baseType: !1726, size: 128, offset: 1856)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !2124, file: !56, line: 677, baseType: !1726, size: 128, offset: 1984)
!4554 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !56, line: 678, baseType: !4555, size: 128, offset: 2112)
!4555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !56, line: 678, size: 128, elements: !4556)
!4556 = !{!4557, !4558}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4555, file: !56, line: 679, baseType: !2328, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4555, file: !56, line: 680, baseType: !2064, size: 128, align: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !2124, file: !56, line: 682, baseType: !1703, size: 64, offset: 2240)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !2124, file: !56, line: 683, baseType: !1703, size: 64, offset: 2304)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !2124, file: !56, line: 684, baseType: !1689, size: 32, offset: 2368)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !2124, file: !56, line: 685, baseType: !1689, size: 32, offset: 2400)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !2124, file: !56, line: 686, baseType: !1689, size: 32, offset: 2432)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !2124, file: !56, line: 688, baseType: !1689, size: 32, offset: 2464)
!4565 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !56, line: 690, baseType: !4566, size: 64, offset: 2496)
!4566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !56, line: 690, size: 64, elements: !4567)
!4567 = !{!4568, !4791}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4566, file: !56, line: 691, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4571)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1822, size: 2048, elements: !4572)
!4572 = !{!4573, !4574, !4578, !4583, !4587, !4588, !4589, !4593, !4606, !4607, !4615, !4619, !4620, !4624, !4625, !4629, !4634, !4635, !4639, !4643, !4751, !4755, !4756, !4760, !4761, !4765, !4769, !4774, !4778, !4782, !4786, !4790}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4571, file: !56, line: 1823, baseType: !2323, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4571, file: !56, line: 1824, baseType: !4575, size: 64, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!2223, !2051, !2223, !140}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4571, file: !56, line: 1825, baseType: !4579, size: 64, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!2010, !2051, !1979, !134, !4582}
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4571, file: !56, line: 1826, baseType: !4584, size: 64, offset: 192)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!2010, !2051, !1810, !134, !4582}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4571, file: !56, line: 1827, baseType: !2525, size: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4571, file: !56, line: 1828, baseType: !2525, size: 64, offset: 320)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4571, file: !56, line: 1829, baseType: !4590, size: 64, offset: 384)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!140, !2528, !1355}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !4571, file: !56, line: 1830, baseType: !4594, size: 64, offset: 448)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!140, !2051, !4597}
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1776, size: 128, elements: !4599)
!4599 = !{!4600, !4605}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4598, file: !56, line: 1777, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1773, baseType: !4602)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!140, !4597, !1810, !140, !2223, !2116, !7}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4598, file: !56, line: 1778, baseType: !2223, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4571, file: !56, line: 1831, baseType: !4594, size: 64, offset: 512)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4571, file: !56, line: 1832, baseType: !4608, size: 64, offset: 576)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!4611, !2051, !4613}
!4611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4612, line: 52, baseType: !7)
!4612 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2309, line: 27, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4571, file: !56, line: 1833, baseType: !4616, size: 64, offset: 640)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!2013, !2051, !7, !138}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4571, file: !56, line: 1834, baseType: !4616, size: 64, offset: 704)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4571, file: !56, line: 1835, baseType: !4621, size: 64, offset: 768)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!140, !2051, !2658}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4571, file: !56, line: 1836, baseType: !138, size: 64, offset: 832)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4571, file: !56, line: 1837, baseType: !4626, size: 64, offset: 896)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!140, !2123, !2051}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4571, file: !56, line: 1838, baseType: !4630, size: 64, offset: 960)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!140, !2051, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1007, baseType: !139)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4571, file: !56, line: 1839, baseType: !4626, size: 64, offset: 1024)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4571, file: !56, line: 1840, baseType: !4636, size: 64, offset: 1088)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!140, !2051, !2223, !2223, !140}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4571, file: !56, line: 1841, baseType: !4640, size: 64, offset: 1152)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!140, !140, !2051, !140}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4571, file: !56, line: 1842, baseType: !4644, size: 64, offset: 1216)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!140, !2051, !140, !4647}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1062, size: 1664, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4681, !4682, !4683, !4696, !4727}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !4648, file: !56, line: 1063, baseType: !4647, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !4648, file: !56, line: 1064, baseType: !1726, size: 128, offset: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !4648, file: !56, line: 1065, baseType: !2332, size: 128, offset: 192)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !4648, file: !56, line: 1066, baseType: !1726, size: 128, offset: 320)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !4648, file: !56, line: 1069, baseType: !1726, size: 128, offset: 448)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !4648, file: !56, line: 1072, baseType: !4633, size: 64, offset: 576)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !4648, file: !56, line: 1073, baseType: !7, size: 32, offset: 640)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !4648, file: !56, line: 1074, baseType: !1829, size: 8, offset: 672)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !4648, file: !56, line: 1075, baseType: !7, size: 32, offset: 704)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !4648, file: !56, line: 1076, baseType: !140, size: 32, offset: 736)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !4648, file: !56, line: 1077, baseType: !3146, size: 128, offset: 768)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !4648, file: !56, line: 1078, baseType: !2051, size: 64, offset: 896)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !4648, file: !56, line: 1079, baseType: !2223, size: 64, offset: 960)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !4648, file: !56, line: 1080, baseType: !2223, size: 64, offset: 1024)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !4648, file: !56, line: 1082, baseType: !4665, size: 64, offset: 1088)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !56, line: 1314, size: 320, elements: !4667)
!4667 = !{!4668, !4676, !4677, !4678, !4679, !4680}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4666, file: !56, line: 1315, baseType: !4669)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4670, line: 20, baseType: !4671)
!4670 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4670, line: 11, elements: !4672)
!4672 = !{!4673}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4671, file: !4670, line: 12, baseType: !4674)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1723, line: 33, baseType: !4675)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1723, line: 31, elements: !210)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4666, file: !56, line: 1316, baseType: !140, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4666, file: !56, line: 1317, baseType: !140, size: 32, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4666, file: !56, line: 1318, baseType: !4665, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4666, file: !56, line: 1319, baseType: !2051, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4666, file: !56, line: 1320, baseType: !2064, size: 128, align: 64, offset: 192)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !4648, file: !56, line: 1084, baseType: !138, size: 64, offset: 1152)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !4648, file: !56, line: 1085, baseType: !138, size: 64, offset: 1216)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !4648, file: !56, line: 1087, baseType: !4684, size: 64, offset: 1280)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4686)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !56, line: 1011, size: 128, elements: !4687)
!4687 = !{!4688, !4692}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !4686, file: !56, line: 1012, baseType: !4689, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !4647, !4647}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !4686, file: !56, line: 1013, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{null, !4647}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !4648, file: !56, line: 1088, baseType: !4697, size: 64, offset: 1344)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4699)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !56, line: 1016, size: 512, elements: !4700)
!4700 = !{!4701, !4705, !4709, !4710, !4714, !4718, !4722, !4726}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !4699, file: !56, line: 1017, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!4633, !4633}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !4699, file: !56, line: 1018, baseType: !4706, size: 64, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !4633}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !4699, file: !56, line: 1019, baseType: !4693, size: 64, offset: 128)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !4699, file: !56, line: 1020, baseType: !4711, size: 64, offset: 192)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!140, !4647, !140}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !4699, file: !56, line: 1021, baseType: !4715, size: 64, offset: 256)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!1355, !4647}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !4699, file: !56, line: 1022, baseType: !4719, size: 64, offset: 320)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!140, !4647, !140, !1729}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !4699, file: !56, line: 1023, baseType: !4723, size: 64, offset: 384)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4647, !2502}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !4699, file: !56, line: 1024, baseType: !4715, size: 64, offset: 448)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !4648, file: !56, line: 1097, baseType: !4728, size: 256, offset: 1408)
!4728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4648, file: !56, line: 1089, size: 256, elements: !4729)
!4729 = !{!4730, !4739, !4745}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !4728, file: !56, line: 1090, baseType: !4731, size: 256)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !4732, line: 10, size: 256, elements: !4733)
!4732 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!4733 = !{!4734, !4735, !4738}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4731, file: !4732, line: 11, baseType: !1813, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4731, file: !4732, line: 12, baseType: !4736, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !4732, line: 5, flags: DIFlagFwdDecl)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4731, file: !4732, line: 13, baseType: !1726, size: 128, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !4728, file: !56, line: 1091, baseType: !4740, size: 64)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !4732, line: 17, size: 64, elements: !4741)
!4741 = !{!4742}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4740, file: !4732, line: 18, baseType: !4743, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !4732, line: 16, flags: DIFlagFwdDecl)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !4728, file: !56, line: 1096, baseType: !4746, size: 192)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4728, file: !56, line: 1092, size: 192, elements: !4747)
!4747 = !{!4748, !4749, !4750}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4746, file: !56, line: 1093, baseType: !1726, size: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4746, file: !56, line: 1094, baseType: !140, size: 32, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4746, file: !56, line: 1095, baseType: !7, size: 32, offset: 160)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !4571, file: !56, line: 1843, baseType: !4752, size: 64, offset: 1280)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!2010, !2051, !2414, !140, !134, !4582, !140}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4571, file: !56, line: 1844, baseType: !2778, size: 64, offset: 1344)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4571, file: !56, line: 1845, baseType: !4757, size: 64, offset: 1408)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!140, !140}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4571, file: !56, line: 1846, baseType: !4644, size: 64, offset: 1472)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4571, file: !56, line: 1847, baseType: !4762, size: 64, offset: 1536)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!2010, !3806, !2051, !4582, !134, !7}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4571, file: !56, line: 1848, baseType: !4766, size: 64, offset: 1600)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!2010, !2051, !4582, !3806, !134, !7}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4571, file: !56, line: 1849, baseType: !4770, size: 64, offset: 1664)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!140, !2051, !2013, !4773, !2502}
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4571, file: !56, line: 1850, baseType: !4775, size: 64, offset: 1728)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!2013, !2051, !140, !2223, !2223}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4571, file: !56, line: 1852, baseType: !4779, size: 64, offset: 1792)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !2404, !2051}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4571, file: !56, line: 1856, baseType: !4783, size: 64, offset: 1856)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!2010, !2051, !2223, !2051, !2223, !134, !7}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4571, file: !56, line: 1858, baseType: !4787, size: 64, offset: 1920)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!2223, !2051, !2223, !2051, !2223, !2223, !7}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4571, file: !56, line: 1861, baseType: !4636, size: 64, offset: 1984)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4566, file: !56, line: 692, baseType: !2357, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !2124, file: !56, line: 694, baseType: !4793, size: 64, offset: 2560)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 1100, size: 384, elements: !4795)
!4795 = !{!4796, !4797, !4798, !4799}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4794, file: !56, line: 1101, baseType: !1711)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4794, file: !56, line: 1102, baseType: !1726, size: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4794, file: !56, line: 1103, baseType: !1726, size: 128, offset: 128)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4794, file: !56, line: 1104, baseType: !1726, size: 128, offset: 256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !2124, file: !56, line: 695, baseType: !2427, size: 1216, align: 64, offset: 2624)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !2124, file: !56, line: 696, baseType: !1726, size: 128, offset: 3840)
!4802 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !56, line: 697, baseType: !4803, size: 64, offset: 3968)
!4803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !56, line: 697, size: 64, elements: !4804)
!4804 = !{!4805, !4806, !4807, !4810, !4811}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4803, file: !56, line: 698, baseType: !3806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4803, file: !56, line: 699, baseType: !4321, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4803, file: !56, line: 700, baseType: !4808, size: 64)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !56, line: 700, flags: DIFlagFwdDecl)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4803, file: !56, line: 701, baseType: !1979, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4803, file: !56, line: 702, baseType: !7, size: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !2124, file: !56, line: 705, baseType: !149, size: 32, offset: 4032)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !2124, file: !56, line: 708, baseType: !149, size: 32, offset: 4064)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !2124, file: !56, line: 709, baseType: !4403, size: 64, offset: 4096)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !2124, file: !56, line: 720, baseType: !139, size: 64, offset: 4160)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !2082, file: !2079, line: 98, baseType: !4817, size: 256, offset: 448)
!4817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, size: 256, elements: !3936)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !2082, file: !2079, line: 101, baseType: !4819, size: 32, offset: 704)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4820, line: 25, size: 32, elements: !4821)
!4820 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4821 = !{!4822}
!4822 = !DIDerivedType(tag: DW_TAG_member, scope: !4819, file: !4820, line: 26, baseType: !4823, size: 32)
!4823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4819, file: !4820, line: 26, size: 32, elements: !4824)
!4824 = !{!4825}
!4825 = !DIDerivedType(tag: DW_TAG_member, scope: !4823, file: !4820, line: 30, baseType: !4826, size: 32)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4823, file: !4820, line: 30, size: 32, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4826, file: !4820, line: 31, baseType: !1711)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4826, file: !4820, line: 32, baseType: !140, size: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !2082, file: !2079, line: 102, baseType: !4420, size: 64, offset: 768)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !2082, file: !2079, line: 103, baseType: !2289, size: 64, offset: 832)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !2082, file: !2079, line: 104, baseType: !138, size: 64, offset: 896)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !2082, file: !2079, line: 105, baseType: !139, size: 64, offset: 960)
!4834 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !2079, line: 107, baseType: !4835, size: 128, offset: 1024)
!4835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2082, file: !2079, line: 107, size: 128, elements: !4836)
!4836 = !{!4837, !4838}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4835, file: !2079, line: 108, baseType: !1726, size: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4835, file: !2079, line: 109, baseType: !4839, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !2082, file: !2079, line: 111, baseType: !1726, size: 128, offset: 1152)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !2082, file: !2079, line: 112, baseType: !1726, size: 128, offset: 1280)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !2082, file: !2079, line: 120, baseType: !4843, size: 128, offset: 1408)
!4843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2082, file: !2079, line: 116, size: 128, elements: !4844)
!4844 = !{!4845, !4846, !4847}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4843, file: !2079, line: 117, baseType: !2332, size: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4843, file: !2079, line: 118, baseType: !2096, size: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4843, file: !2079, line: 119, baseType: !2064, size: 128, align: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !2052, file: !56, line: 922, baseType: !2123, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !2052, file: !56, line: 923, baseType: !4569, size: 64, offset: 320)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !2052, file: !56, line: 929, baseType: !1711, offset: 384)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !2052, file: !56, line: 930, baseType: !55, size: 32, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !2052, file: !56, line: 931, baseType: !1701, size: 64, offset: 448)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !2052, file: !56, line: 932, baseType: !7, size: 32, offset: 512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !2052, file: !56, line: 933, baseType: !4416, size: 32, offset: 544)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !2052, file: !56, line: 934, baseType: !1697, size: 192, offset: 576)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !2052, file: !56, line: 935, baseType: !2223, size: 64, offset: 768)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !2052, file: !56, line: 936, baseType: !4858, size: 192, offset: 832)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 885, size: 192, elements: !4859)
!4859 = !{!4860, !4861, !4862, !4863, !4864, !4865}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4858, file: !56, line: 886, baseType: !4669)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4858, file: !56, line: 887, baseType: !3136, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4858, file: !56, line: 888, baseType: !64, size: 32, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4858, file: !56, line: 889, baseType: !2129, size: 32, offset: 96)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4858, file: !56, line: 889, baseType: !2129, size: 32, offset: 128)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4858, file: !56, line: 890, baseType: !140, size: 32, offset: 160)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !2052, file: !56, line: 937, baseType: !3249, size: 64, offset: 1024)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !2052, file: !56, line: 938, baseType: !4868, size: 256, offset: 1088)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 896, size: 256, elements: !4869)
!4869 = !{!4870, !4871, !4872, !4873, !4874, !4875}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4868, file: !56, line: 897, baseType: !138, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4868, file: !56, line: 898, baseType: !7, size: 32, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4868, file: !56, line: 899, baseType: !7, size: 32, offset: 96)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4868, file: !56, line: 902, baseType: !7, size: 32, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4868, file: !56, line: 903, baseType: !7, size: 32, offset: 160)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4868, file: !56, line: 904, baseType: !2223, size: 64, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !2052, file: !56, line: 940, baseType: !2116, size: 64, offset: 1344)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2052, file: !56, line: 945, baseType: !139, size: 64, offset: 1408)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !2052, file: !56, line: 949, baseType: !1726, size: 128, offset: 1472)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !2052, file: !56, line: 950, baseType: !1726, size: 128, offset: 1600)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2052, file: !56, line: 952, baseType: !2426, size: 64, offset: 1728)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !2052, file: !56, line: 953, baseType: !2588, size: 32, offset: 1792)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !2052, file: !56, line: 954, baseType: !2588, size: 32, offset: 1824)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2042, file: !2004, line: 174, baseType: !2048, size: 64, offset: 320)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2042, file: !2004, line: 176, baseType: !4885, size: 64, offset: 384)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!140, !2051, !1946, !2041, !2658}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2030, file: !2004, line: 90, baseType: !2025, size: 64, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2030, file: !2004, line: 91, baseType: !4890, size: 64, offset: 256)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1994, file: !1941, line: 143, baseType: !4892, size: 64, offset: 256)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!4895, !1946}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4897)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !4898)
!4898 = !{!4899, !4900, !4904, !4908, !4914, !4918}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4897, file: !73, line: 40, baseType: !72, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4897, file: !73, line: 41, baseType: !4901, size: 64, offset: 64)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!1355}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4897, file: !73, line: 42, baseType: !4905, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!139}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4897, file: !73, line: 43, baseType: !4909, size: 64, offset: 192)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!1357, !4912}
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4897, file: !73, line: 44, baseType: !4915, size: 64, offset: 256)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!1357}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4897, file: !73, line: 45, baseType: !2162, size: 64, offset: 320)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1994, file: !1941, line: 144, baseType: !4920, size: 64, offset: 320)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!1357, !1946}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1994, file: !1941, line: 145, baseType: !4924, size: 64, offset: 384)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{null, !1946, !4927, !4928}
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1940, file: !1941, line: 70, baseType: !4930, size: 64, offset: 384)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2309, line: 123, size: 1024, elements: !4932)
!4932 = !{!4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !5055, !5056, !5057, !5058, !5059}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4931, file: !2309, line: 124, baseType: !1689, size: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4931, file: !2309, line: 125, baseType: !1689, size: 32, offset: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4931, file: !2309, line: 135, baseType: !4930, size: 64, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4931, file: !2309, line: 136, baseType: !1810, size: 64, offset: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4931, file: !2309, line: 138, baseType: !2448, size: 192, align: 64, offset: 192)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4931, file: !2309, line: 140, baseType: !1357, size: 64, offset: 384)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4931, file: !2309, line: 141, baseType: !7, size: 32, offset: 448)
!4940 = !DIDerivedType(tag: DW_TAG_member, scope: !4931, file: !2309, line: 142, baseType: !4941, size: 256, offset: 512)
!4941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4931, file: !2309, line: 142, size: 256, elements: !4942)
!4942 = !{!4943, !4983, !4987}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4941, file: !2309, line: 143, baseType: !4944, size: 192)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2309, line: 91, size: 192, elements: !4945)
!4945 = !{!4946, !4947, !4948}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4944, file: !2309, line: 92, baseType: !138, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4944, file: !2309, line: 94, baseType: !2444, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4944, file: !2309, line: 100, baseType: !4949, size: 64, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2309, line: 180, size: 704, elements: !4951)
!4951 = !{!4952, !4953, !4954, !4955, !4956, !4957, !4981, !4982}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4950, file: !2309, line: 182, baseType: !4930, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4950, file: !2309, line: 183, baseType: !7, size: 32, offset: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !4950, file: !2309, line: 186, baseType: !3169, size: 192, offset: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !4950, file: !2309, line: 187, baseType: !1813, size: 32, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !4950, file: !2309, line: 188, baseType: !1813, size: 32, offset: 352)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !4950, file: !2309, line: 189, baseType: !4958, size: 64, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !2309, line: 168, size: 320, elements: !4960)
!4960 = !{!4961, !4965, !4969, !4973, !4977}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4959, file: !2309, line: 169, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!140, !2404, !4949}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4959, file: !2309, line: 171, baseType: !4966, size: 64, offset: 64)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!140, !4930, !1810, !2019}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4959, file: !2309, line: 173, baseType: !4970, size: 64, offset: 128)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!140, !4930}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !4959, file: !2309, line: 174, baseType: !4974, size: 64, offset: 192)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!140, !4930, !4930, !1810}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4959, file: !2309, line: 176, baseType: !4978, size: 64, offset: 256)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!140, !2404, !4930, !4949}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !4950, file: !2309, line: 192, baseType: !1726, size: 128, offset: 448)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !4950, file: !2309, line: 194, baseType: !3146, size: 128, offset: 576)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4941, file: !2309, line: 144, baseType: !4984, size: 64)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2309, line: 103, size: 64, elements: !4985)
!4985 = !{!4986}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4984, file: !2309, line: 104, baseType: !4930, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4941, file: !2309, line: 145, baseType: !4988, size: 256)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2309, line: 107, size: 256, elements: !4989)
!4989 = !{!4990, !5050, !5053, !5054}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4988, file: !2309, line: 108, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4993)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2309, line: 217, size: 768, elements: !4994)
!4994 = !{!4995, !5015, !5019, !5023, !5027, !5031, !5035, !5039, !5040, !5041, !5042, !5046}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4993, file: !2309, line: 222, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!140, !4999}
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2309, line: 197, size: 1088, elements: !5001)
!5001 = !{!5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5000, file: !2309, line: 199, baseType: !4930, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5000, file: !2309, line: 200, baseType: !2051, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5000, file: !2309, line: 201, baseType: !2404, size: 64, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5000, file: !2309, line: 202, baseType: !139, size: 64, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5000, file: !2309, line: 205, baseType: !1697, size: 192, offset: 256)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5000, file: !2309, line: 206, baseType: !1697, size: 192, offset: 448)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5000, file: !2309, line: 207, baseType: !140, size: 32, offset: 640)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5000, file: !2309, line: 208, baseType: !1726, size: 128, offset: 704)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5000, file: !2309, line: 209, baseType: !1979, size: 64, offset: 832)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5000, file: !2309, line: 211, baseType: !134, size: 64, offset: 896)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5000, file: !2309, line: 212, baseType: !1355, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5000, file: !2309, line: 213, baseType: !1355, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5000, file: !2309, line: 214, baseType: !2686, size: 64, offset: 1024)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4993, file: !2309, line: 223, baseType: !5016, size: 64, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{null, !4999}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4993, file: !2309, line: 236, baseType: !5020, size: 64, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!140, !2404, !139}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4993, file: !2309, line: 238, baseType: !5024, size: 64, offset: 192)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!139, !2404, !4582}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4993, file: !2309, line: 239, baseType: !5028, size: 64, offset: 256)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!139, !2404, !139, !4582}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4993, file: !2309, line: 240, baseType: !5032, size: 64, offset: 320)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !2404, !139}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4993, file: !2309, line: 242, baseType: !5036, size: 64, offset: 384)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!2010, !4999, !1979, !134, !2223}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4993, file: !2309, line: 252, baseType: !134, size: 64, offset: 448)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4993, file: !2309, line: 259, baseType: !1355, size: 8, offset: 512)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4993, file: !2309, line: 260, baseType: !5036, size: 64, offset: 576)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4993, file: !2309, line: 263, baseType: !5043, size: 64, offset: 640)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!4611, !4999, !4613}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4993, file: !2309, line: 266, baseType: !5047, size: 64, offset: 704)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!140, !4999, !2658}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4988, file: !2309, line: 109, baseType: !5051, size: 64, offset: 64)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2309, line: 31, flags: DIFlagFwdDecl)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4988, file: !2309, line: 110, baseType: !2223, size: 64, offset: 128)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4988, file: !2309, line: 111, baseType: !4930, size: 64, offset: 192)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4931, file: !2309, line: 148, baseType: !139, size: 64, offset: 768)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4931, file: !2309, line: 154, baseType: !2116, size: 64, offset: 832)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4931, file: !2309, line: 156, baseType: !155, size: 16, offset: 896)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4931, file: !2309, line: 157, baseType: !2019, size: 16, offset: 912)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4931, file: !2309, line: 158, baseType: !5060, size: 64, offset: 960)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2309, line: 32, flags: DIFlagFwdDecl)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1940, file: !1941, line: 71, baseType: !3164, size: 32, offset: 448)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1940, file: !1941, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1940, file: !1941, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1940, file: !1941, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1940, file: !1941, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1940, file: !1941, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1937, file: !85, line: 463, baseType: !5069, size: 64, offset: 512)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1937, file: !85, line: 465, baseType: !5071, size: 64, offset: 576)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !85, line: 36, flags: DIFlagFwdDecl)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1937, file: !85, line: 467, baseType: !1810, size: 64, offset: 640)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1937, file: !85, line: 468, baseType: !5075, size: 64, offset: 704)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5077)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !85, line: 87, size: 384, elements: !5078)
!5078 = !{!5079, !5080, !5081, !5085, !5090, !5094}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5077, file: !85, line: 88, baseType: !1810, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5077, file: !85, line: 89, baseType: !2027, size: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5077, file: !85, line: 90, baseType: !5082, size: 64, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!140, !5069, !1974}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5077, file: !85, line: 91, baseType: !5086, size: 64, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!1979, !5069, !5089, !4927, !4928}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5077, file: !85, line: 93, baseType: !5091, size: 64, offset: 256)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{null, !5069}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5077, file: !85, line: 95, baseType: !5095, size: 64, offset: 320)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5097)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !92, line: 278, size: 1472, elements: !5098)
!5098 = !{!5099, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5097, file: !92, line: 279, baseType: !5100, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!140, !5069}
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5097, file: !92, line: 280, baseType: !5091, size: 64, offset: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5097, file: !92, line: 281, baseType: !5100, size: 64, offset: 128)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5097, file: !92, line: 282, baseType: !5100, size: 64, offset: 192)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5097, file: !92, line: 283, baseType: !5100, size: 64, offset: 256)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5097, file: !92, line: 284, baseType: !5100, size: 64, offset: 320)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5097, file: !92, line: 285, baseType: !5100, size: 64, offset: 384)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5097, file: !92, line: 286, baseType: !5100, size: 64, offset: 448)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5097, file: !92, line: 287, baseType: !5100, size: 64, offset: 512)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5097, file: !92, line: 288, baseType: !5100, size: 64, offset: 576)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5097, file: !92, line: 289, baseType: !5100, size: 64, offset: 640)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5097, file: !92, line: 290, baseType: !5100, size: 64, offset: 704)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5097, file: !92, line: 291, baseType: !5100, size: 64, offset: 768)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5097, file: !92, line: 292, baseType: !5100, size: 64, offset: 832)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5097, file: !92, line: 293, baseType: !5100, size: 64, offset: 896)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5097, file: !92, line: 294, baseType: !5100, size: 64, offset: 960)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5097, file: !92, line: 295, baseType: !5100, size: 64, offset: 1024)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5097, file: !92, line: 296, baseType: !5100, size: 64, offset: 1088)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5097, file: !92, line: 297, baseType: !5100, size: 64, offset: 1152)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5097, file: !92, line: 298, baseType: !5100, size: 64, offset: 1216)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5097, file: !92, line: 299, baseType: !5100, size: 64, offset: 1280)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5097, file: !92, line: 300, baseType: !5100, size: 64, offset: 1344)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5097, file: !92, line: 301, baseType: !5100, size: 64, offset: 1408)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1937, file: !85, line: 470, baseType: !5126, size: 64, offset: 768)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5128, line: 82, size: 1408, elements: !5129)
!5128 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!5129 = !{!5130, !5131, !5132, !5133, !5134, !5135, !5136, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5211, !5214, !5215}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5127, file: !5128, line: 83, baseType: !1810, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5127, file: !5128, line: 84, baseType: !1810, size: 64, offset: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !5127, file: !5128, line: 85, baseType: !5069, size: 64, offset: 128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5127, file: !5128, line: 86, baseType: !2027, size: 64, offset: 192)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5127, file: !5128, line: 87, baseType: !2027, size: 64, offset: 256)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5127, file: !5128, line: 88, baseType: !2027, size: 64, offset: 320)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5127, file: !5128, line: 90, baseType: !5137, size: 64, offset: 384)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!140, !5069, !5140}
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 95, size: 1152, elements: !5142)
!5142 = !{!5143, !5144, !5145, !5146, !5147, !5148, !5149, !5162, !5175, !5176, !5177, !5178, !5179, !5187, !5188, !5189, !5190, !5191, !5192}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5141, file: !79, line: 96, baseType: !1810, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5141, file: !79, line: 97, baseType: !5126, size: 64, offset: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5141, file: !79, line: 99, baseType: !2323, size: 64, offset: 128)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5141, file: !79, line: 100, baseType: !1810, size: 64, offset: 192)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5141, file: !79, line: 102, baseType: !1355, size: 8, offset: 256)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5141, file: !79, line: 103, baseType: !78, size: 32, offset: 288)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5141, file: !79, line: 105, baseType: !5150, size: 64, offset: 320)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5152)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !5153, line: 262, size: 1600, elements: !5154)
!5153 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!5154 = !{!5155, !5156, !5157, !5161}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5152, file: !5153, line: 263, baseType: !4406, size: 256)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5152, file: !5153, line: 264, baseType: !4406, size: 256, offset: 256)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5152, file: !5153, line: 265, baseType: !5158, size: 1024, offset: 512)
!5158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1775, size: 1024, elements: !5159)
!5159 = !{!5160}
!5160 = !DISubrange(count: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5152, file: !5153, line: 266, baseType: !1357, size: 64, offset: 1536)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5141, file: !79, line: 106, baseType: !5163, size: 64, offset: 384)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5165)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !5153, line: 210, size: 256, elements: !5166)
!5166 = !{!5167, !5171, !5173, !5174}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5165, file: !5153, line: 211, baseType: !5168, size: 72)
!5168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1828, size: 72, elements: !5169)
!5169 = !{!5170}
!5170 = !DISubrange(count: 9)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5165, file: !5153, line: 212, baseType: !5172, size: 64, offset: 128)
!5172 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !5153, line: 14, baseType: !138)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !5165, file: !5153, line: 213, baseType: !149, size: 32, offset: 192)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !5165, file: !5153, line: 214, baseType: !149, size: 32, offset: 224)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5141, file: !79, line: 108, baseType: !5100, size: 64, offset: 448)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5141, file: !79, line: 109, baseType: !5091, size: 64, offset: 512)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5141, file: !79, line: 110, baseType: !5100, size: 64, offset: 576)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5141, file: !79, line: 111, baseType: !5091, size: 64, offset: 640)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5141, file: !79, line: 112, baseType: !5180, size: 64, offset: 704)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!140, !5069, !5183}
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !92, line: 52, baseType: !5184)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !92, line: 50, size: 32, elements: !5185)
!5185 = !{!5186}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5184, file: !92, line: 51, baseType: !140, size: 32)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5141, file: !79, line: 113, baseType: !5100, size: 64, offset: 768)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5141, file: !79, line: 114, baseType: !2027, size: 64, offset: 832)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5141, file: !79, line: 115, baseType: !2027, size: 64, offset: 896)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5141, file: !79, line: 117, baseType: !5095, size: 64, offset: 960)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5141, file: !79, line: 118, baseType: !5091, size: 64, offset: 1024)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5141, file: !79, line: 120, baseType: !5193, size: 64, offset: 1088)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 120, flags: DIFlagFwdDecl)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5127, file: !5128, line: 91, baseType: !5082, size: 64, offset: 448)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5127, file: !5128, line: 92, baseType: !5100, size: 64, offset: 512)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5127, file: !5128, line: 93, baseType: !5091, size: 64, offset: 576)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5127, file: !5128, line: 94, baseType: !5100, size: 64, offset: 640)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5127, file: !5128, line: 95, baseType: !5091, size: 64, offset: 704)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5127, file: !5128, line: 97, baseType: !5100, size: 64, offset: 768)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5127, file: !5128, line: 98, baseType: !5100, size: 64, offset: 832)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5127, file: !5128, line: 100, baseType: !5180, size: 64, offset: 896)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5127, file: !5128, line: 101, baseType: !5100, size: 64, offset: 960)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5127, file: !5128, line: 103, baseType: !5100, size: 64, offset: 1024)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5127, file: !5128, line: 105, baseType: !5100, size: 64, offset: 1088)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5127, file: !5128, line: 107, baseType: !5095, size: 64, offset: 1152)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5127, file: !5128, line: 109, baseType: !5208, size: 64, offset: 1216)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5210)
!5210 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !5128, line: 109, flags: DIFlagFwdDecl)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5127, file: !5128, line: 111, baseType: !5212, size: 64, offset: 1280)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !5128, line: 111, flags: DIFlagFwdDecl)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !5127, file: !5128, line: 112, baseType: !2338, offset: 1344)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5127, file: !5128, line: 114, baseType: !1355, size: 8, offset: 1344)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1937, file: !85, line: 471, baseType: !5140, size: 64, offset: 832)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1937, file: !85, line: 473, baseType: !139, size: 64, offset: 896)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1937, file: !85, line: 475, baseType: !139, size: 64, offset: 960)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1937, file: !85, line: 480, baseType: !1697, size: 192, offset: 1024)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1937, file: !85, line: 484, baseType: !5221, size: 576, offset: 1216)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !85, line: 361, size: 576, elements: !5222)
!5222 = !{!5223, !5224, !5225, !5226, !5227, !5228}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5221, file: !85, line: 362, baseType: !1726, size: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5221, file: !85, line: 363, baseType: !1726, size: 128, offset: 128)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !5221, file: !85, line: 364, baseType: !1726, size: 128, offset: 256)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !5221, file: !85, line: 365, baseType: !1726, size: 128, offset: 384)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !5221, file: !85, line: 366, baseType: !1355, size: 8, offset: 512)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5221, file: !85, line: 367, baseType: !84, size: 32, offset: 544)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1937, file: !85, line: 485, baseType: !5230, size: 2304, offset: 1792)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !92, line: 565, size: 2304, elements: !5231)
!5231 = !{!5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5327, !5331}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5230, file: !92, line: 566, baseType: !5183, size: 32)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5230, file: !92, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5230, file: !92, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5230, file: !92, line: 569, baseType: !1355, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5230, file: !92, line: 570, baseType: !1355, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5230, file: !92, line: 571, baseType: !1355, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5230, file: !92, line: 572, baseType: !1355, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5230, file: !92, line: 573, baseType: !1355, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5230, file: !92, line: 574, baseType: !1355, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5230, file: !92, line: 575, baseType: !1355, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5230, file: !92, line: 576, baseType: !1355, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5230, file: !92, line: 577, baseType: !1813, size: 32, offset: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5230, file: !92, line: 578, baseType: !1711, offset: 96)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5230, file: !92, line: 580, baseType: !1726, size: 128, offset: 128)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5230, file: !92, line: 581, baseType: !3204, size: 192, offset: 256)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5230, file: !92, line: 582, baseType: !5248, size: 64, offset: 448)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5250, line: 43, size: 1472, elements: !5251)
!5250 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!5251 = !{!5252, !5253, !5254, !5255, !5256, !5259, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5249, file: !5250, line: 44, baseType: !1810, size: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5249, file: !5250, line: 45, baseType: !140, size: 32, offset: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5249, file: !5250, line: 46, baseType: !1726, size: 128, offset: 128)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5249, file: !5250, line: 47, baseType: !1711, offset: 256)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5249, file: !5250, line: 48, baseType: !5257, size: 64, offset: 256)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !92, line: 533, flags: DIFlagFwdDecl)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5249, file: !5250, line: 49, baseType: !5260, size: 320, offset: 320)
!5260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !5261, line: 11, size: 320, elements: !5262)
!5261 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!5262 = !{!5263, !5264, !5265, !5270}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5260, file: !5261, line: 16, baseType: !2332, size: 128)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5260, file: !5261, line: 17, baseType: !138, size: 64, offset: 128)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5260, file: !5261, line: 18, baseType: !5266, size: 64, offset: 192)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{null, !5269}
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5260, file: !5261, line: 19, baseType: !1813, size: 32, offset: 256)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5249, file: !5250, line: 50, baseType: !138, size: 64, offset: 640)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5249, file: !5250, line: 51, baseType: !2969, size: 64, offset: 704)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5249, file: !5250, line: 52, baseType: !2969, size: 64, offset: 768)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5249, file: !5250, line: 53, baseType: !2969, size: 64, offset: 832)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5249, file: !5250, line: 54, baseType: !2969, size: 64, offset: 896)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5249, file: !5250, line: 55, baseType: !2969, size: 64, offset: 960)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5249, file: !5250, line: 56, baseType: !138, size: 64, offset: 1024)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5249, file: !5250, line: 57, baseType: !138, size: 64, offset: 1088)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5249, file: !5250, line: 58, baseType: !138, size: 64, offset: 1152)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5249, file: !5250, line: 59, baseType: !138, size: 64, offset: 1216)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5249, file: !5250, line: 60, baseType: !138, size: 64, offset: 1280)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5249, file: !5250, line: 61, baseType: !5069, size: 64, offset: 1344)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5249, file: !5250, line: 62, baseType: !1355, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5249, file: !5250, line: 63, baseType: !1355, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5230, file: !92, line: 583, baseType: !1355, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5230, file: !92, line: 584, baseType: !1355, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5230, file: !92, line: 585, baseType: !1355, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5230, file: !92, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5230, file: !92, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5230, file: !92, line: 592, baseType: !2961, size: 512, offset: 576)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5230, file: !92, line: 593, baseType: !2116, size: 64, offset: 1088)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5230, file: !92, line: 594, baseType: !1858, size: 256, offset: 1152)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5230, file: !92, line: 595, baseType: !3146, size: 128, offset: 1408)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5230, file: !92, line: 596, baseType: !5257, size: 64, offset: 1536)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5230, file: !92, line: 597, baseType: !1689, size: 32, offset: 1600)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5230, file: !92, line: 598, baseType: !1689, size: 32, offset: 1632)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5230, file: !92, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5230, file: !92, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5230, file: !92, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5230, file: !92, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5230, file: !92, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5230, file: !92, line: 604, baseType: !1355, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5230, file: !92, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5230, file: !92, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5230, file: !92, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5230, file: !92, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5230, file: !92, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5230, file: !92, line: 610, baseType: !7, size: 32, offset: 1696)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5230, file: !92, line: 611, baseType: !91, size: 32, offset: 1728)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5230, file: !92, line: 612, baseType: !99, size: 32, offset: 1760)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5230, file: !92, line: 613, baseType: !140, size: 32, offset: 1792)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5230, file: !92, line: 614, baseType: !140, size: 32, offset: 1824)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5230, file: !92, line: 615, baseType: !2116, size: 64, offset: 1856)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5230, file: !92, line: 616, baseType: !2116, size: 64, offset: 1920)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5230, file: !92, line: 617, baseType: !2116, size: 64, offset: 1984)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5230, file: !92, line: 618, baseType: !2116, size: 64, offset: 2048)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5230, file: !92, line: 620, baseType: !5318, size: 64, offset: 2112)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !92, line: 536, size: 256, elements: !5320)
!5320 = !{!5321, !5322, !5323, !5324}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5319, file: !92, line: 537, baseType: !1711)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5319, file: !92, line: 538, baseType: !7, size: 32)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !5319, file: !92, line: 540, baseType: !1726, size: 128, offset: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !5319, file: !92, line: 543, baseType: !5325, size: 64, offset: 192)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !92, line: 534, flags: DIFlagFwdDecl)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5230, file: !92, line: 621, baseType: !5328, size: 64, offset: 2176)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{null, !5069, !3109}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5230, file: !92, line: 622, baseType: !5332, size: 64, offset: 2240)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !92, line: 622, flags: DIFlagFwdDecl)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1937, file: !85, line: 486, baseType: !5335, size: 64, offset: 4096)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !92, line: 642, size: 1792, elements: !5337)
!5337 = !{!5338, !5339, !5340, !5344, !5345, !5346}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5336, file: !92, line: 643, baseType: !5097, size: 1472)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5336, file: !92, line: 644, baseType: !5100, size: 64, offset: 1472)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5336, file: !92, line: 645, baseType: !5341, size: 64, offset: 1536)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{null, !5069, !1355}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5336, file: !92, line: 646, baseType: !5100, size: 64, offset: 1600)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5336, file: !92, line: 647, baseType: !5091, size: 64, offset: 1664)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5336, file: !92, line: 648, baseType: !5091, size: 64, offset: 1728)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1937, file: !85, line: 493, baseType: !5348, size: 64, offset: 4160)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !106, line: 162, size: 1088, elements: !5350)
!5350 = !{!5351, !5352, !5353, !5526, !5527, !5528, !5529, !5530, !5531, !5534, !5535, !5536, !5537, !5538, !5539, !5540}
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5349, file: !106, line: 163, baseType: !1726, size: 128)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5349, file: !106, line: 164, baseType: !1810, size: 64, offset: 128)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5349, file: !106, line: 165, baseType: !5354, size: 64, offset: 192)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5356)
!5356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !106, line: 105, size: 640, elements: !5357)
!5357 = !{!5358, !5476, !5487, !5492, !5496, !5503, !5507, !5511, !5518, !5522}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5356, file: !106, line: 106, baseType: !5359, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!140, !5348, !5362, !105}
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5364, line: 51, size: 1344, elements: !5365)
!5364 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!5365 = !{!5366, !5367, !5369, !5370, !5460, !5469, !5470, !5471, !5472, !5473, !5474, !5475}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5363, file: !5364, line: 52, baseType: !1810, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !5363, file: !5364, line: 53, baseType: !5368, size: 32, offset: 64)
!5368 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !5364, line: 28, baseType: !1813)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !5363, file: !5364, line: 54, baseType: !1810, size: 64, offset: 128)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5363, file: !5364, line: 55, baseType: !5371, size: 192, offset: 192)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5372, line: 17, size: 192, elements: !5373)
!5372 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!5373 = !{!5374, !5376, !5459}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5371, file: !5372, line: 18, baseType: !5375, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5371, file: !5372, line: 19, baseType: !5377, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5379)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5372, line: 110, size: 1152, elements: !5380)
!5380 = !{!5381, !5385, !5389, !5395, !5401, !5405, !5409, !5414, !5418, !5419, !5423, !5427, !5431, !5442, !5443, !5444, !5445, !5455}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5379, file: !5372, line: 111, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!5375, !5375}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5379, file: !5372, line: 112, baseType: !5386, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{null, !5375}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5379, file: !5372, line: 113, baseType: !5390, size: 64, offset: 128)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!1355, !5393}
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5371)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5379, file: !5372, line: 114, baseType: !5396, size: 64, offset: 192)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!1357, !5393, !5399}
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5379, file: !5372, line: 116, baseType: !5402, size: 64, offset: 256)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!1355, !5393, !1810}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5379, file: !5372, line: 118, baseType: !5406, size: 64, offset: 320)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!140, !5393, !1810, !7, !139, !134}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5379, file: !5372, line: 123, baseType: !5410, size: 64, offset: 384)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!140, !5393, !1810, !5413, !134}
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5379, file: !5372, line: 126, baseType: !5415, size: 64, offset: 448)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!1810, !5393}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5379, file: !5372, line: 127, baseType: !5415, size: 64, offset: 512)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5379, file: !5372, line: 128, baseType: !5420, size: 64, offset: 576)
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!5375, !5393}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5379, file: !5372, line: 130, baseType: !5424, size: 64, offset: 640)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!5375, !5393, !5375}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5379, file: !5372, line: 133, baseType: !5428, size: 64, offset: 704)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!5375, !5393, !1810}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5379, file: !5372, line: 135, baseType: !5432, size: 64, offset: 768)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!140, !5393, !1810, !1810, !7, !7, !5435}
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5372, line: 43, size: 640, elements: !5437)
!5437 = !{!5438, !5439, !5440}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5436, file: !5372, line: 44, baseType: !5375, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5436, file: !5372, line: 45, baseType: !7, size: 32, offset: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5436, file: !5372, line: 46, baseType: !5441, size: 512, offset: 128)
!5441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2116, size: 512, elements: !186)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5379, file: !5372, line: 140, baseType: !5424, size: 64, offset: 832)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5379, file: !5372, line: 143, baseType: !5420, size: 64, offset: 896)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5379, file: !5372, line: 145, baseType: !5382, size: 64, offset: 960)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5379, file: !5372, line: 146, baseType: !5446, size: 64, offset: 1024)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!140, !5393, !5449}
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5372, line: 29, size: 128, elements: !5451)
!5451 = !{!5452, !5453, !5454}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5450, file: !5372, line: 30, baseType: !7, size: 32)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5450, file: !5372, line: 31, baseType: !7, size: 32, offset: 32)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5450, file: !5372, line: 32, baseType: !5393, size: 64, offset: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5379, file: !5372, line: 148, baseType: !5456, size: 64, offset: 1088)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!140, !5393, !5069}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5371, file: !5372, line: 20, baseType: !5069, size: 64, offset: 128)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5363, file: !5364, line: 57, baseType: !5461, size: 64, offset: 384)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !5364, line: 31, size: 704, elements: !5463)
!5463 = !{!5464, !5465, !5466, !5467, !5468}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5462, file: !5364, line: 32, baseType: !1979, size: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5462, file: !5364, line: 33, baseType: !140, size: 32, offset: 64)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5462, file: !5364, line: 34, baseType: !139, size: 64, offset: 128)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5462, file: !5364, line: 35, baseType: !5461, size: 64, offset: 192)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5462, file: !5364, line: 43, baseType: !2042, size: 448, offset: 256)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !5363, file: !5364, line: 58, baseType: !5461, size: 64, offset: 448)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5363, file: !5364, line: 59, baseType: !5362, size: 64, offset: 512)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5363, file: !5364, line: 60, baseType: !5362, size: 64, offset: 576)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5363, file: !5364, line: 61, baseType: !5362, size: 64, offset: 640)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5363, file: !5364, line: 63, baseType: !1940, size: 512, offset: 704)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5363, file: !5364, line: 65, baseType: !138, size: 64, offset: 1216)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5363, file: !5364, line: 66, baseType: !139, size: 64, offset: 1280)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !5356, file: !106, line: 108, baseType: !5477, size: 64, offset: 64)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!140, !5348, !5480, !105}
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !106, line: 63, size: 640, elements: !5482)
!5482 = !{!5483, !5484, !5485}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5481, file: !106, line: 64, baseType: !5375, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !5481, file: !106, line: 65, baseType: !140, size: 32, offset: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5481, file: !106, line: 66, baseType: !5486, size: 512, offset: 96)
!5486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 512, elements: !195)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5356, file: !106, line: 110, baseType: !5488, size: 64, offset: 128)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!140, !5348, !7, !5491}
!5491 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !133, line: 164, baseType: !138)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !5356, file: !106, line: 111, baseType: !5493, size: 64, offset: 192)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !5348, !7}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !5356, file: !106, line: 112, baseType: !5497, size: 64, offset: 256)
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!140, !5348, !5362, !5500, !7, !5502, !4389}
!5500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5501, size: 64)
!5501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5356, file: !106, line: 117, baseType: !5504, size: 64, offset: 320)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!140, !5348, !7, !7, !139}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5356, file: !106, line: 119, baseType: !5508, size: 64, offset: 384)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{null, !5348, !7, !7}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5356, file: !106, line: 121, baseType: !5512, size: 64, offset: 448)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!140, !5348, !5515, !1355}
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !5517, line: 11, flags: DIFlagFwdDecl)
!5517 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !5356, file: !106, line: 122, baseType: !5519, size: 64, offset: 512)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{null, !5348, !5515}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !5356, file: !106, line: 123, baseType: !5523, size: 64, offset: 576)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!140, !5348, !5480, !5502, !4389}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !5349, file: !106, line: 166, baseType: !139, size: 64, offset: 256)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5349, file: !106, line: 167, baseType: !7, size: 32, offset: 320)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !5349, file: !106, line: 168, baseType: !7, size: 32, offset: 352)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5349, file: !106, line: 171, baseType: !5375, size: 64, offset: 384)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !5349, file: !106, line: 172, baseType: !105, size: 32, offset: 448)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !5349, file: !106, line: 173, baseType: !5532, size: 64, offset: 512)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !106, line: 134, flags: DIFlagFwdDecl)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5349, file: !106, line: 175, baseType: !5348, size: 64, offset: 576)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !5349, file: !106, line: 182, baseType: !5491, size: 64, offset: 640)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !5349, file: !106, line: 183, baseType: !7, size: 32, offset: 704)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !5349, file: !106, line: 184, baseType: !7, size: 32, offset: 736)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !5349, file: !106, line: 185, baseType: !2431, size: 128, offset: 768)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !5349, file: !106, line: 186, baseType: !1697, size: 192, offset: 896)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !5349, file: !106, line: 187, baseType: !5541, offset: 1088)
!5541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !4037)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1937, file: !85, line: 499, baseType: !1726, size: 128, offset: 4224)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1937, file: !85, line: 502, baseType: !5544, size: 64, offset: 4352)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5546)
!5546 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !85, line: 502, flags: DIFlagFwdDecl)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1937, file: !85, line: 504, baseType: !5548, size: 64, offset: 4416)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1937, file: !85, line: 505, baseType: !2116, size: 64, offset: 4480)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1937, file: !85, line: 510, baseType: !2116, size: 64, offset: 4544)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1937, file: !85, line: 511, baseType: !5552, size: 64, offset: 4608)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5554)
!5554 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !85, line: 511, flags: DIFlagFwdDecl)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1937, file: !85, line: 513, baseType: !5556, size: 64, offset: 4672)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !85, line: 288, size: 128, elements: !5558)
!5558 = !{!5559, !5560}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5557, file: !85, line: 293, baseType: !7, size: 32)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5557, file: !85, line: 294, baseType: !138, size: 64, offset: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1937, file: !85, line: 515, baseType: !1726, size: 128, offset: 4736)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1937, file: !85, line: 526, baseType: !5563, offset: 4864)
!5563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5564, line: 5, elements: !210)
!5564 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1937, file: !85, line: 528, baseType: !5362, size: 64, offset: 4864)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1937, file: !85, line: 529, baseType: !5375, size: 64, offset: 4928)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1937, file: !85, line: 534, baseType: !2205, size: 32, offset: 4992)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1937, file: !85, line: 535, baseType: !1813, size: 32, offset: 5024)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1937, file: !85, line: 537, baseType: !1711, offset: 5056)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1937, file: !85, line: 538, baseType: !1726, size: 128, offset: 5056)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1937, file: !85, line: 540, baseType: !5572, size: 64, offset: 5184)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5574, line: 54, size: 960, elements: !5575)
!5574 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!5575 = !{!5576, !5577, !5578, !5579, !5580, !5581, !5582, !5586, !5590, !5591, !5592, !5593, !5597, !5601, !5602}
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5573, file: !5574, line: 55, baseType: !1810, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5573, file: !5574, line: 56, baseType: !2323, size: 64, offset: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5573, file: !5574, line: 58, baseType: !2027, size: 64, offset: 128)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5573, file: !5574, line: 59, baseType: !2027, size: 64, offset: 192)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !5573, file: !5574, line: 60, baseType: !1946, size: 64, offset: 256)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5573, file: !5574, line: 62, baseType: !5082, size: 64, offset: 320)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5573, file: !5574, line: 63, baseType: !5583, size: 64, offset: 384)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!1979, !5069, !5089}
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5573, file: !5574, line: 65, baseType: !5587, size: 64, offset: 448)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{null, !5572}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5573, file: !5574, line: 66, baseType: !5091, size: 64, offset: 512)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5573, file: !5574, line: 68, baseType: !5100, size: 64, offset: 576)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5573, file: !5574, line: 70, baseType: !4895, size: 64, offset: 640)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5573, file: !5574, line: 71, baseType: !5594, size: 64, offset: 704)
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5595, size: 64)
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!1357, !5069}
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5573, file: !5574, line: 73, baseType: !5598, size: 64, offset: 768)
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5599, size: 64)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{null, !5069, !4927, !4928}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5573, file: !5574, line: 75, baseType: !5095, size: 64, offset: 832)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5573, file: !5574, line: 77, baseType: !5212, size: 64, offset: 896)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1937, file: !85, line: 541, baseType: !2027, size: 64, offset: 5248)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1937, file: !85, line: 543, baseType: !5091, size: 64, offset: 5312)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1937, file: !85, line: 544, baseType: !5606, size: 64, offset: 5376)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !85, line: 45, flags: DIFlagFwdDecl)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1937, file: !85, line: 545, baseType: !5609, size: 64, offset: 5440)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !85, line: 47, flags: DIFlagFwdDecl)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1937, file: !85, line: 547, baseType: !1355, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1937, file: !85, line: 548, baseType: !1355, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1937, file: !85, line: 549, baseType: !1355, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1937, file: !85, line: 550, baseType: !1355, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !1894, file: !6, line: 335, baseType: !5616, size: 256, offset: 6592)
!5616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !3936)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !1894, file: !6, line: 340, baseType: !140, size: 32, offset: 6848)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !1686, file: !1342, line: 465, baseType: !1697, size: 192, offset: 5312)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !1686, file: !1342, line: 466, baseType: !5620, size: 1024, offset: 5504)
!5620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1874, size: 1024, elements: !5159)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !1686, file: !1342, line: 469, baseType: !5622, size: 704, offset: 6528)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1859, line: 115, size: 704, elements: !5623)
!5623 = !{!5624, !5625, !5626, !5627}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5622, file: !1859, line: 116, baseType: !1858, size: 256)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5622, file: !1859, line: 117, baseType: !5260, size: 320, offset: 256)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5622, file: !1859, line: 120, baseType: !4499, size: 64, offset: 576)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5622, file: !1859, line: 121, baseType: !140, size: 32, offset: 640)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !1686, file: !1342, line: 470, baseType: !5629, size: 64, offset: 7232)
!5629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5630, size: 64)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !1342, line: 203, size: 512, elements: !5631)
!5631 = !{!5632, !5633, !5634, !5635, !5639}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !5630, file: !1342, line: 205, baseType: !138, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5630, file: !1342, line: 206, baseType: !1697, size: 192, offset: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !5630, file: !1342, line: 207, baseType: !1726, size: 128, offset: 256)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !5630, file: !1342, line: 209, baseType: !5636, size: 64, offset: 384)
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{null, !1685}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !5630, file: !1342, line: 210, baseType: !5640, size: 64, offset: 448)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{null, !1685, !1729}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !1686, file: !1342, line: 473, baseType: !5644, size: 64, offset: 7296)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5646)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !1342, line: 228, size: 1472, elements: !5647)
!5647 = !{!5648, !5649, !5653, !5654, !5658, !5662, !5667, !5671, !5675, !5677, !5681, !5682, !5696, !5710, !5727, !5744, !5745, !5749, !5750, !5754, !5765, !5766, !5767}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5646, file: !1342, line: 230, baseType: !2323, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !5646, file: !1342, line: 231, baseType: !5650, size: 64, offset: 64)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!140, !1685, !140}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !5646, file: !1342, line: 232, baseType: !5650, size: 64, offset: 128)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !5646, file: !1342, line: 237, baseType: !5655, size: 64, offset: 192)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!2010, !1685, !1979, !134, !4582}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !5646, file: !1342, line: 239, baseType: !5659, size: 64, offset: 256)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!2010, !1685, !1810, !134, !4582}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !5646, file: !1342, line: 244, baseType: !5663, size: 64, offset: 320)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!140, !5666, !1685}
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !5646, file: !1342, line: 247, baseType: !5668, size: 64, offset: 384)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!140, !1685}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !5646, file: !1342, line: 250, baseType: !5672, size: 64, offset: 448)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!140, !7, !7, !7, !7, !7, !1685}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !5646, file: !1342, line: 254, baseType: !5676, size: 64, offset: 512)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !5646, file: !1342, line: 257, baseType: !5678, size: 64, offset: 576)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!140, !140, !1685}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !5646, file: !1342, line: 260, baseType: !5663, size: 64, offset: 640)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !5646, file: !1342, line: 263, baseType: !5683, size: 64, offset: 704)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{null, !1685, !5686}
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5688)
!5688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !146, line: 351, size: 192, elements: !5689)
!5689 = !{!5690, !5691, !5692, !5693, !5694, !5695}
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5688, file: !146, line: 352, baseType: !149, size: 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !5688, file: !146, line: 353, baseType: !149, size: 32, offset: 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5688, file: !146, line: 354, baseType: !149, size: 32, offset: 64)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5688, file: !146, line: 355, baseType: !149, size: 32, offset: 96)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5688, file: !146, line: 356, baseType: !149, size: 32, offset: 128)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !5688, file: !146, line: 357, baseType: !149, size: 32, offset: 160)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !5646, file: !1342, line: 265, baseType: !5697, size: 64, offset: 768)
!5697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5698, size: 64)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{null, !1685, !5700}
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5702)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !146, line: 342, size: 192, elements: !5703)
!5703 = !{!5704, !5705, !5706, !5707, !5708, !5709}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5702, file: !146, line: 343, baseType: !149, size: 32)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !5702, file: !146, line: 344, baseType: !149, size: 32, offset: 32)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5702, file: !146, line: 345, baseType: !149, size: 32, offset: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5702, file: !146, line: 346, baseType: !149, size: 32, offset: 96)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !5702, file: !146, line: 347, baseType: !149, size: 32, offset: 128)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !5702, file: !146, line: 348, baseType: !149, size: 32, offset: 160)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !5646, file: !1342, line: 267, baseType: !5711, size: 64, offset: 832)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{null, !1685, !5714}
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5716)
!5716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !146, line: 360, size: 640, elements: !5717)
!5717 = !{!5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5716, file: !146, line: 361, baseType: !149, size: 32)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !5716, file: !146, line: 362, baseType: !149, size: 32, offset: 32)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5716, file: !146, line: 363, baseType: !149, size: 32, offset: 64)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5716, file: !146, line: 364, baseType: !149, size: 32, offset: 96)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !5716, file: !146, line: 365, baseType: !149, size: 32, offset: 128)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !5716, file: !146, line: 366, baseType: !149, size: 32, offset: 160)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5716, file: !146, line: 367, baseType: !1828, size: 8, offset: 192)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5716, file: !146, line: 368, baseType: !1810, size: 64, offset: 256)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !5716, file: !146, line: 369, baseType: !145, size: 320, offset: 320)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !5646, file: !1342, line: 270, baseType: !5728, size: 64, offset: 896)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!140, !1685, !5731}
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !146, line: 388, size: 832, elements: !5733)
!5733 = !{!5734, !5735, !5736, !5737, !5738, !5743}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5732, file: !146, line: 389, baseType: !154, size: 16)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5732, file: !146, line: 390, baseType: !154, size: 16, offset: 16)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !5732, file: !146, line: 391, baseType: !154, size: 16, offset: 32)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5732, file: !146, line: 392, baseType: !1810, size: 64, offset: 64)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !5732, file: !146, line: 393, baseType: !5739, size: 32, offset: 128)
!5739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !146, line: 384, size: 32, elements: !5740)
!5740 = !{!5741, !5742}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5739, file: !146, line: 385, baseType: !154, size: 16)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5739, file: !146, line: 385, baseType: !154, size: 16, offset: 16)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !5732, file: !146, line: 394, baseType: !5716, size: 640, offset: 192)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !5646, file: !1342, line: 273, baseType: !5668, size: 64, offset: 960)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !5646, file: !1342, line: 276, baseType: !5746, size: 64, offset: 1024)
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!140, !1685, !7, !138}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !5646, file: !1342, line: 280, baseType: !5746, size: 64, offset: 1088)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !5646, file: !1342, line: 284, baseType: !5751, size: 64, offset: 1152)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!140, !1685, !2658}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !5646, file: !1342, line: 287, baseType: !5755, size: 64, offset: 1216)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{null, !1685, !5758, !5666}
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !1342, line: 144, size: 128, elements: !5760)
!5760 = !{!5761, !5762, !5763, !5764}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5759, file: !1342, line: 145, baseType: !1813, size: 32)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5759, file: !1342, line: 146, baseType: !1813, size: 32, offset: 32)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5759, file: !1342, line: 147, baseType: !1813, size: 32, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5759, file: !1342, line: 148, baseType: !1813, size: 32, offset: 96)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !5646, file: !1342, line: 291, baseType: !5636, size: 64, offset: 1280)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !5646, file: !1342, line: 294, baseType: !5668, size: 64, offset: 1344)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !5646, file: !1342, line: 295, baseType: !5668, size: 64, offset: 1408)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1686, file: !1342, line: 474, baseType: !5069, size: 64, offset: 7360)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1686, file: !1342, line: 475, baseType: !5069, size: 64, offset: 7424)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !1686, file: !1342, line: 476, baseType: !140, size: 32, offset: 7488)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !1686, file: !1342, line: 478, baseType: !5772, size: 64, offset: 7552)
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !1342, line: 355, size: 384, elements: !5774)
!5774 = !{!5775, !5789, !5802, !5817, !5833, !5846}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !5773, file: !1342, line: 357, baseType: !5776, size: 64)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{null, !1685, !5779}
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5780, size: 64)
!5780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !1342, line: 306, size: 192, elements: !5781)
!5781 = !{!5782, !5783, !5784, !5785, !5786}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5780, file: !1342, line: 307, baseType: !149, size: 32)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5780, file: !1342, line: 308, baseType: !149, size: 32, offset: 32)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5780, file: !1342, line: 309, baseType: !149, size: 32, offset: 64)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5780, file: !1342, line: 310, baseType: !149, size: 32, offset: 96)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5780, file: !1342, line: 311, baseType: !5787, size: 64, offset: 128)
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !5773, file: !1342, line: 362, baseType: !5790, size: 64, offset: 64)
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5791, size: 64)
!5791 = !DISubroutineType(types: !5792)
!5792 = !{null, !1685, !5793}
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !1342, line: 326, size: 192, elements: !5795)
!5795 = !{!5796, !5797, !5798, !5799, !5800, !5801}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !5794, file: !1342, line: 327, baseType: !149, size: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !5794, file: !1342, line: 328, baseType: !149, size: 32, offset: 32)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5794, file: !1342, line: 329, baseType: !149, size: 32, offset: 64)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !5794, file: !1342, line: 330, baseType: !149, size: 32, offset: 96)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5794, file: !1342, line: 331, baseType: !149, size: 32, offset: 128)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5794, file: !1342, line: 332, baseType: !149, size: 32, offset: 160)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !5773, file: !1342, line: 364, baseType: !5803, size: 64, offset: 128)
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{null, !1685, !5806}
!5806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !1342, line: 315, size: 256, elements: !5808)
!5808 = !{!5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !5807, file: !1342, line: 316, baseType: !149, size: 32)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !5807, file: !1342, line: 317, baseType: !149, size: 32, offset: 32)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5807, file: !1342, line: 318, baseType: !149, size: 32, offset: 64)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5807, file: !1342, line: 319, baseType: !149, size: 32, offset: 96)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5807, file: !1342, line: 320, baseType: !149, size: 32, offset: 128)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !5807, file: !1342, line: 321, baseType: !149, size: 32, offset: 160)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !5807, file: !1342, line: 322, baseType: !149, size: 32, offset: 192)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !5807, file: !1342, line: 323, baseType: !149, size: 32, offset: 224)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !5773, file: !1342, line: 366, baseType: !5818, size: 64, offset: 192)
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{null, !1685, !5821}
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !1342, line: 335, size: 320, elements: !5823)
!5823 = !{!5824, !5825, !5826, !5827, !5828, !5829, !5830, !5831}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !5822, file: !1342, line: 336, baseType: !149, size: 32)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !5822, file: !1342, line: 337, baseType: !149, size: 32, offset: 32)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5822, file: !1342, line: 338, baseType: !149, size: 32, offset: 64)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5822, file: !1342, line: 339, baseType: !149, size: 32, offset: 96)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !5822, file: !1342, line: 340, baseType: !149, size: 32, offset: 128)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !5822, file: !1342, line: 341, baseType: !149, size: 32, offset: 160)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5822, file: !1342, line: 342, baseType: !149, size: 32, offset: 192)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !5822, file: !1342, line: 343, baseType: !5832, size: 64, offset: 256)
!5832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !5773, file: !1342, line: 368, baseType: !5834, size: 64, offset: 256)
!5834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5835, size: 64)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{null, !1685, !5837}
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!5838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !1342, line: 346, size: 192, elements: !5839)
!5839 = !{!5840, !5841, !5842, !5843, !5844, !5845}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !5838, file: !1342, line: 347, baseType: !149, size: 32)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !5838, file: !1342, line: 348, baseType: !149, size: 32, offset: 32)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5838, file: !1342, line: 349, baseType: !149, size: 32, offset: 64)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !5838, file: !1342, line: 350, baseType: !149, size: 32, offset: 96)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !5838, file: !1342, line: 351, baseType: !149, size: 32, offset: 128)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !5838, file: !1342, line: 352, baseType: !149, size: 32, offset: 160)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !5773, file: !1342, line: 371, baseType: !5668, size: 64, offset: 320)
!5847 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1342, line: 480, baseType: !5848, size: 64, offset: 7616)
!5848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1686, file: !1342, line: 480, size: 64, elements: !5849)
!5849 = !{!5850, !5851}
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !5848, file: !1342, line: 481, baseType: !1979, size: 64)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !5848, file: !1342, line: 482, baseType: !1979, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !1686, file: !1342, line: 484, baseType: !138, size: 64, offset: 7680)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !1686, file: !1342, line: 485, baseType: !139, size: 64, offset: 7744)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1686, file: !1342, line: 488, baseType: !1813, size: 32, offset: 7808)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !1686, file: !1342, line: 489, baseType: !139, size: 64, offset: 7872)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1686, file: !1342, line: 491, baseType: !139, size: 64, offset: 7936)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !1686, file: !1342, line: 501, baseType: !5858, size: 64, offset: 8000)
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !1342, line: 495, size: 64, elements: !5860)
!5860 = !{!5861, !5862}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5859, file: !1342, line: 496, baseType: !7, size: 32)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5859, file: !1342, line: 500, baseType: !5863, offset: 64)
!5863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5864, elements: !3421)
!5864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !1342, line: 497, size: 128, elements: !5865)
!5865 = !{!5866, !5868}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5864, file: !1342, line: 498, baseType: !5867, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !133, line: 158, baseType: !3833)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5864, file: !1342, line: 499, baseType: !5867, size: 64, offset: 64)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !1686, file: !1342, line: 503, baseType: !1355, size: 8, offset: 8064)
!5870 = !DILocalVariable(name: "cmap", arg: 1, scope: !1682, file: !3, line: 231, type: !209)
!5871 = !DILocation(line: 231, column: 33, scope: !1682)
!5872 = !DILocalVariable(name: "info", arg: 2, scope: !1682, file: !3, line: 231, type: !1685)
!5873 = !DILocation(line: 231, column: 55, scope: !1682)
!5874 = !DILocalVariable(name: "i", scope: !1682, file: !3, line: 233, type: !140)
!5875 = !DILocation(line: 233, column: 6, scope: !1682)
!5876 = !DILocalVariable(name: "start", scope: !1682, file: !3, line: 233, type: !140)
!5877 = !DILocation(line: 233, column: 9, scope: !1682)
!5878 = !DILocalVariable(name: "rc", scope: !1682, file: !3, line: 233, type: !140)
!5879 = !DILocation(line: 233, column: 16, scope: !1682)
!5880 = !DILocalVariable(name: "red", scope: !1682, file: !3, line: 234, type: !5881)
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!5882 = !DILocation(line: 234, column: 7, scope: !1682)
!5883 = !DILocalVariable(name: "green", scope: !1682, file: !3, line: 234, type: !5881)
!5884 = !DILocation(line: 234, column: 13, scope: !1682)
!5885 = !DILocalVariable(name: "blue", scope: !1682, file: !3, line: 234, type: !5881)
!5886 = !DILocation(line: 234, column: 21, scope: !1682)
!5887 = !DILocalVariable(name: "transp", scope: !1682, file: !3, line: 234, type: !5881)
!5888 = !DILocation(line: 234, column: 28, scope: !1682)
!5889 = !DILocalVariable(name: "hred", scope: !1682, file: !3, line: 235, type: !5890)
!5890 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !133, line: 81, baseType: !7)
!5891 = !DILocation(line: 235, column: 8, scope: !1682)
!5892 = !DILocalVariable(name: "hgreen", scope: !1682, file: !3, line: 235, type: !5890)
!5893 = !DILocation(line: 235, column: 14, scope: !1682)
!5894 = !DILocalVariable(name: "hblue", scope: !1682, file: !3, line: 235, type: !5890)
!5895 = !DILocation(line: 235, column: 22, scope: !1682)
!5896 = !DILocalVariable(name: "htransp", scope: !1682, file: !3, line: 235, type: !5890)
!5897 = !DILocation(line: 235, column: 29, scope: !1682)
!5898 = !DILocation(line: 237, column: 8, scope: !1682)
!5899 = !DILocation(line: 237, column: 14, scope: !1682)
!5900 = !DILocation(line: 237, column: 6, scope: !1682)
!5901 = !DILocation(line: 238, column: 10, scope: !1682)
!5902 = !DILocation(line: 238, column: 16, scope: !1682)
!5903 = !DILocation(line: 238, column: 8, scope: !1682)
!5904 = !DILocation(line: 239, column: 9, scope: !1682)
!5905 = !DILocation(line: 239, column: 15, scope: !1682)
!5906 = !DILocation(line: 239, column: 7, scope: !1682)
!5907 = !DILocation(line: 240, column: 11, scope: !1682)
!5908 = !DILocation(line: 240, column: 17, scope: !1682)
!5909 = !DILocation(line: 240, column: 9, scope: !1682)
!5910 = !DILocation(line: 241, column: 10, scope: !1682)
!5911 = !DILocation(line: 241, column: 16, scope: !1682)
!5912 = !DILocation(line: 241, column: 8, scope: !1682)
!5913 = !DILocation(line: 243, column: 6, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 243, column: 6)
!5915 = !DILocation(line: 243, column: 12, scope: !5914)
!5916 = !DILocation(line: 243, column: 16, scope: !5914)
!5917 = !DILocation(line: 243, column: 21, scope: !5914)
!5918 = !DILocation(line: 243, column: 27, scope: !5914)
!5919 = !DILocation(line: 243, column: 34, scope: !5914)
!5920 = !DILocation(line: 243, column: 47, scope: !5914)
!5921 = !DILocation(line: 244, column: 7, scope: !5914)
!5922 = !DILocation(line: 244, column: 13, scope: !5914)
!5923 = !DILocation(line: 244, column: 20, scope: !5914)
!5924 = !DILocation(line: 243, column: 6, scope: !1682)
!5925 = !DILocation(line: 245, column: 3, scope: !5914)
!5926 = !DILocation(line: 246, column: 6, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 246, column: 6)
!5928 = !DILocation(line: 246, column: 12, scope: !5927)
!5929 = !DILocation(line: 246, column: 19, scope: !5927)
!5930 = !DILocation(line: 246, column: 6, scope: !1682)
!5931 = !DILocation(line: 247, column: 8, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 246, column: 31)
!5933 = !DILocation(line: 247, column: 14, scope: !5932)
!5934 = !DILocation(line: 247, column: 21, scope: !5932)
!5935 = !DILocation(line: 247, column: 32, scope: !5932)
!5936 = !DILocation(line: 247, column: 38, scope: !5932)
!5937 = !DILocation(line: 247, column: 6, scope: !5932)
!5938 = !DILocation(line: 248, column: 2, scope: !5932)
!5939 = !DILocation(line: 249, column: 10, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 249, column: 3)
!5941 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 248, column: 9)
!5942 = !DILocation(line: 249, column: 8, scope: !5940)
!5943 = !DILocation(line: 249, column: 15, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 249, column: 3)
!5945 = !DILocation(line: 249, column: 19, scope: !5944)
!5946 = !DILocation(line: 249, column: 25, scope: !5944)
!5947 = !DILocation(line: 249, column: 17, scope: !5944)
!5948 = !DILocation(line: 249, column: 3, scope: !5940)
!5949 = !DILocation(line: 250, column: 15, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 249, column: 35)
!5951 = !DILocation(line: 250, column: 11, scope: !5950)
!5952 = !DILocation(line: 250, column: 9, scope: !5950)
!5953 = !DILocation(line: 251, column: 19, scope: !5950)
!5954 = !DILocation(line: 251, column: 13, scope: !5950)
!5955 = !DILocation(line: 251, column: 11, scope: !5950)
!5956 = !DILocation(line: 252, column: 17, scope: !5950)
!5957 = !DILocation(line: 252, column: 12, scope: !5950)
!5958 = !DILocation(line: 252, column: 10, scope: !5950)
!5959 = !DILocation(line: 253, column: 8, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 253, column: 8)
!5961 = !DILocation(line: 253, column: 8, scope: !5950)
!5962 = !DILocation(line: 254, column: 22, scope: !5960)
!5963 = !DILocation(line: 254, column: 15, scope: !5960)
!5964 = !DILocation(line: 254, column: 13, scope: !5960)
!5965 = !DILocation(line: 254, column: 5, scope: !5960)
!5966 = !DILocation(line: 255, column: 8, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 255, column: 8)
!5968 = !DILocation(line: 255, column: 14, scope: !5967)
!5969 = !DILocation(line: 255, column: 21, scope: !5967)
!5970 = !DILocation(line: 255, column: 39, scope: !5967)
!5971 = !DILocation(line: 256, column: 13, scope: !5967)
!5972 = !DILocation(line: 256, column: 19, scope: !5967)
!5973 = !DILocation(line: 256, column: 27, scope: !5967)
!5974 = !DILocation(line: 257, column: 13, scope: !5967)
!5975 = !DILocation(line: 257, column: 22, scope: !5967)
!5976 = !DILocation(line: 255, column: 8, scope: !5950)
!5977 = !DILocation(line: 258, column: 5, scope: !5967)
!5978 = !DILocation(line: 259, column: 3, scope: !5950)
!5979 = !DILocation(line: 249, column: 31, scope: !5944)
!5980 = !DILocation(line: 249, column: 3, scope: !5944)
!5981 = distinct !{!5981, !5948, !5982}
!5982 = !DILocation(line: 259, column: 3, scope: !5940)
!5983 = !DILocation(line: 261, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 261, column: 6)
!5985 = !DILocation(line: 261, column: 9, scope: !5984)
!5986 = !DILocation(line: 261, column: 6, scope: !1682)
!5987 = !DILocation(line: 262, column: 16, scope: !5984)
!5988 = !DILocation(line: 262, column: 23, scope: !5984)
!5989 = !DILocation(line: 262, column: 29, scope: !5984)
!5990 = !DILocation(line: 262, column: 3, scope: !5984)
!5991 = !DILocation(line: 264, column: 9, scope: !1682)
!5992 = !DILocation(line: 264, column: 2, scope: !1682)
!5993 = !DILocation(line: 265, column: 1, scope: !1682)
!5994 = distinct !DISubprogram(name: "fb_set_user_cmap", scope: !3, file: !3, line: 267, type: !5995, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{!140, !1340, !1685}
!5997 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !5998)
!5998 = distinct !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6001)
!5999 = distinct !DILexicalBlock(scope: !6000, file: !1362, line: 191, column: 6)
!6000 = distinct !DISubprogram(name: "copy_from_user", scope: !1362, file: !1362, line: 189, type: !1364, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6001 = distinct !DILocation(line: 283, column: 23, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 280, column: 6)
!6003 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !5998)
!6004 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !5998)
!6005 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !5998)
!6006 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !5998)
!6007 = !DILocalVariable(name: "to", arg: 1, scope: !6000, file: !1362, line: 189, type: !139)
!6008 = !DILocation(line: 189, column: 22, scope: !6000, inlinedAt: !6001)
!6009 = !DILocalVariable(name: "from", arg: 2, scope: !6000, file: !1362, line: 189, type: !1357)
!6010 = !DILocation(line: 189, column: 45, scope: !6000, inlinedAt: !6001)
!6011 = !DILocalVariable(name: "n", arg: 3, scope: !6000, file: !1362, line: 189, type: !138)
!6012 = !DILocation(line: 189, column: 65, scope: !6000, inlinedAt: !6001)
!6013 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !6014)
!6014 = distinct !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6015)
!6015 = distinct !DILocation(line: 282, column: 6, scope: !6002)
!6016 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !6014)
!6017 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !6014)
!6018 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !6014)
!6019 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !6014)
!6020 = !DILocation(line: 189, column: 22, scope: !6000, inlinedAt: !6015)
!6021 = !DILocation(line: 189, column: 45, scope: !6000, inlinedAt: !6015)
!6022 = !DILocation(line: 189, column: 65, scope: !6000, inlinedAt: !6015)
!6023 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !6024)
!6024 = distinct !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6025)
!6025 = distinct !DILocation(line: 281, column: 6, scope: !6002)
!6026 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !6024)
!6027 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !6024)
!6028 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !6024)
!6029 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !6024)
!6030 = !DILocation(line: 189, column: 22, scope: !6000, inlinedAt: !6025)
!6031 = !DILocation(line: 189, column: 45, scope: !6000, inlinedAt: !6025)
!6032 = !DILocation(line: 189, column: 65, scope: !6000, inlinedAt: !6025)
!6033 = !DILocation(line: 138, column: 29, scope: !1351, inlinedAt: !6034)
!6034 = distinct !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6035)
!6035 = distinct !DILocation(line: 280, column: 6, scope: !6002)
!6036 = !DILocation(line: 138, column: 42, scope: !1351, inlinedAt: !6034)
!6037 = !DILocation(line: 138, column: 54, scope: !1351, inlinedAt: !6034)
!6038 = !DILocation(line: 140, column: 6, scope: !1351, inlinedAt: !6034)
!6039 = !DILocation(line: 150, column: 6, scope: !1376, inlinedAt: !6034)
!6040 = !DILocation(line: 189, column: 22, scope: !6000, inlinedAt: !6035)
!6041 = !DILocation(line: 189, column: 45, scope: !6000, inlinedAt: !6035)
!6042 = !DILocation(line: 189, column: 65, scope: !6000, inlinedAt: !6035)
!6043 = !DILocalVariable(name: "cmap", arg: 1, scope: !5994, file: !3, line: 267, type: !1340)
!6044 = !DILocation(line: 267, column: 43, scope: !5994)
!6045 = !DILocalVariable(name: "info", arg: 2, scope: !5994, file: !3, line: 267, type: !1685)
!6046 = !DILocation(line: 267, column: 65, scope: !5994)
!6047 = !DILocalVariable(name: "rc", scope: !5994, file: !3, line: 269, type: !140)
!6048 = !DILocation(line: 269, column: 6, scope: !5994)
!6049 = !DILocalVariable(name: "size", scope: !5994, file: !3, line: 269, type: !140)
!6050 = !DILocation(line: 269, column: 10, scope: !5994)
!6051 = !DILocation(line: 269, column: 17, scope: !5994)
!6052 = !DILocation(line: 269, column: 23, scope: !5994)
!6053 = !DILocation(line: 269, column: 27, scope: !5994)
!6054 = !DILocalVariable(name: "umap", scope: !5994, file: !3, line: 270, type: !145)
!6055 = !DILocation(line: 270, column: 17, scope: !5994)
!6056 = !DILocation(line: 272, column: 6, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 272, column: 6)
!6058 = !DILocation(line: 272, column: 11, scope: !6057)
!6059 = !DILocation(line: 272, column: 15, scope: !6057)
!6060 = !DILocation(line: 272, column: 18, scope: !6057)
!6061 = !DILocation(line: 272, column: 25, scope: !6057)
!6062 = !DILocation(line: 272, column: 31, scope: !6057)
!6063 = !DILocation(line: 272, column: 23, scope: !6057)
!6064 = !DILocation(line: 272, column: 6, scope: !5994)
!6065 = !DILocation(line: 273, column: 3, scope: !6057)
!6066 = !DILocation(line: 275, column: 2, scope: !5994)
!6067 = !DILocation(line: 276, column: 32, scope: !5994)
!6068 = !DILocation(line: 276, column: 38, scope: !5994)
!6069 = !DILocation(line: 276, column: 43, scope: !5994)
!6070 = !DILocation(line: 276, column: 49, scope: !5994)
!6071 = !DILocation(line: 276, column: 56, scope: !5994)
!6072 = !DILocation(line: 276, column: 7, scope: !5994)
!6073 = !DILocation(line: 276, column: 5, scope: !5994)
!6074 = !DILocation(line: 278, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 278, column: 6)
!6076 = !DILocation(line: 278, column: 6, scope: !5994)
!6077 = !DILocation(line: 279, column: 10, scope: !6075)
!6078 = !DILocation(line: 279, column: 3, scope: !6075)
!6079 = !DILocation(line: 280, column: 26, scope: !6002)
!6080 = !DILocation(line: 280, column: 21, scope: !6002)
!6081 = !DILocation(line: 280, column: 31, scope: !6002)
!6082 = !DILocation(line: 280, column: 37, scope: !6002)
!6083 = !DILocation(line: 280, column: 42, scope: !6002)
!6084 = !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6035)
!6085 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !6034)
!6086 = !DILocation(line: 0, scope: !1482, inlinedAt: !6034)
!6087 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !6034)
!6088 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !6034)
!6089 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !6034)
!6090 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !6034)
!6091 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !6034)
!6092 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !6034)
!6093 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !6034)
!6094 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !6034)
!6095 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !6034)
!6096 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !6034)
!6097 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !6034)
!6098 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !6034)
!6099 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !6034)
!6100 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !6034)
!6101 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !6034)
!6102 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !6034)
!6103 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !6034)
!6104 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !6034)
!6105 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !6034)
!6106 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !6034)
!6107 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !6034)
!6108 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !6034)
!6109 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !6034)
!6110 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !6034)
!6111 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !6034)
!6112 = !DILocation(line: 191, column: 6, scope: !6000, inlinedAt: !6035)
!6113 = !DILocation(line: 192, column: 23, scope: !5999, inlinedAt: !6035)
!6114 = !DILocation(line: 192, column: 27, scope: !5999, inlinedAt: !6035)
!6115 = !DILocation(line: 192, column: 33, scope: !5999, inlinedAt: !6035)
!6116 = !DILocation(line: 192, column: 7, scope: !5999, inlinedAt: !6035)
!6117 = !DILocation(line: 192, column: 5, scope: !5999, inlinedAt: !6035)
!6118 = !DILocation(line: 192, column: 3, scope: !5999, inlinedAt: !6035)
!6119 = !DILocation(line: 193, column: 9, scope: !6000, inlinedAt: !6035)
!6120 = !DILocation(line: 280, column: 6, scope: !6002)
!6121 = !DILocation(line: 280, column: 48, scope: !6002)
!6122 = !DILocation(line: 281, column: 26, scope: !6002)
!6123 = !DILocation(line: 281, column: 21, scope: !6002)
!6124 = !DILocation(line: 281, column: 33, scope: !6002)
!6125 = !DILocation(line: 281, column: 39, scope: !6002)
!6126 = !DILocation(line: 281, column: 46, scope: !6002)
!6127 = !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6025)
!6128 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !6024)
!6129 = !DILocation(line: 0, scope: !1482, inlinedAt: !6024)
!6130 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !6024)
!6131 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !6024)
!6132 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !6024)
!6133 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !6024)
!6134 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !6024)
!6135 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !6024)
!6136 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !6024)
!6137 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !6024)
!6138 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !6024)
!6139 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !6024)
!6140 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !6024)
!6141 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !6024)
!6142 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !6024)
!6143 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !6024)
!6144 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !6024)
!6145 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !6024)
!6146 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !6024)
!6147 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !6024)
!6148 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !6024)
!6149 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !6024)
!6150 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !6024)
!6151 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !6024)
!6152 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !6024)
!6153 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !6024)
!6154 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !6024)
!6155 = !DILocation(line: 191, column: 6, scope: !6000, inlinedAt: !6025)
!6156 = !DILocation(line: 192, column: 23, scope: !5999, inlinedAt: !6025)
!6157 = !DILocation(line: 192, column: 27, scope: !5999, inlinedAt: !6025)
!6158 = !DILocation(line: 192, column: 33, scope: !5999, inlinedAt: !6025)
!6159 = !DILocation(line: 192, column: 7, scope: !5999, inlinedAt: !6025)
!6160 = !DILocation(line: 192, column: 5, scope: !5999, inlinedAt: !6025)
!6161 = !DILocation(line: 192, column: 3, scope: !5999, inlinedAt: !6025)
!6162 = !DILocation(line: 193, column: 9, scope: !6000, inlinedAt: !6025)
!6163 = !DILocation(line: 281, column: 6, scope: !6002)
!6164 = !DILocation(line: 281, column: 52, scope: !6002)
!6165 = !DILocation(line: 282, column: 26, scope: !6002)
!6166 = !DILocation(line: 282, column: 21, scope: !6002)
!6167 = !DILocation(line: 282, column: 32, scope: !6002)
!6168 = !DILocation(line: 282, column: 38, scope: !6002)
!6169 = !DILocation(line: 282, column: 44, scope: !6002)
!6170 = !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6015)
!6171 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !6014)
!6172 = !DILocation(line: 0, scope: !1482, inlinedAt: !6014)
!6173 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !6014)
!6174 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !6014)
!6175 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !6014)
!6176 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !6014)
!6177 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !6014)
!6178 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !6014)
!6179 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !6014)
!6180 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !6014)
!6181 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !6014)
!6182 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !6014)
!6183 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !6014)
!6184 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !6014)
!6185 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !6014)
!6186 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !6014)
!6187 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !6014)
!6188 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !6014)
!6189 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !6014)
!6190 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !6014)
!6191 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !6014)
!6192 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !6014)
!6193 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !6014)
!6194 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !6014)
!6195 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !6014)
!6196 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !6014)
!6197 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !6014)
!6198 = !DILocation(line: 191, column: 6, scope: !6000, inlinedAt: !6015)
!6199 = !DILocation(line: 192, column: 23, scope: !5999, inlinedAt: !6015)
!6200 = !DILocation(line: 192, column: 27, scope: !5999, inlinedAt: !6015)
!6201 = !DILocation(line: 192, column: 33, scope: !5999, inlinedAt: !6015)
!6202 = !DILocation(line: 192, column: 7, scope: !5999, inlinedAt: !6015)
!6203 = !DILocation(line: 192, column: 5, scope: !5999, inlinedAt: !6015)
!6204 = !DILocation(line: 192, column: 3, scope: !5999, inlinedAt: !6015)
!6205 = !DILocation(line: 193, column: 9, scope: !6000, inlinedAt: !6015)
!6206 = !DILocation(line: 282, column: 6, scope: !6002)
!6207 = !DILocation(line: 282, column: 50, scope: !6002)
!6208 = !DILocation(line: 283, column: 7, scope: !6002)
!6209 = !DILocation(line: 283, column: 13, scope: !6002)
!6210 = !DILocation(line: 283, column: 20, scope: !6002)
!6211 = !DILocation(line: 283, column: 43, scope: !6002)
!6212 = !DILocation(line: 283, column: 38, scope: !6002)
!6213 = !DILocation(line: 283, column: 51, scope: !6002)
!6214 = !DILocation(line: 283, column: 57, scope: !6002)
!6215 = !DILocation(line: 283, column: 65, scope: !6002)
!6216 = !DILocation(line: 191, column: 6, scope: !5999, inlinedAt: !6001)
!6217 = !DILocation(line: 141, column: 6, scope: !1482, inlinedAt: !5998)
!6218 = !DILocation(line: 0, scope: !1482, inlinedAt: !5998)
!6219 = !DILocation(line: 141, column: 6, scope: !1351, inlinedAt: !5998)
!6220 = !DILocation(line: 142, column: 29, scope: !1486, inlinedAt: !5998)
!6221 = !DILocation(line: 142, column: 8, scope: !1486, inlinedAt: !5998)
!6222 = !DILocation(line: 142, column: 7, scope: !1487, inlinedAt: !5998)
!6223 = !DILocation(line: 143, column: 18, scope: !1486, inlinedAt: !5998)
!6224 = !DILocation(line: 143, column: 22, scope: !1486, inlinedAt: !5998)
!6225 = !DILocation(line: 143, column: 4, scope: !1486, inlinedAt: !5998)
!6226 = !DILocation(line: 144, column: 12, scope: !1494, inlinedAt: !5998)
!6227 = !DILocation(line: 144, column: 12, scope: !1486, inlinedAt: !5998)
!6228 = !DILocation(line: 145, column: 4, scope: !1494, inlinedAt: !5998)
!6229 = !DILocation(line: 147, column: 4, scope: !1494, inlinedAt: !5998)
!6230 = !DILocation(line: 148, column: 3, scope: !1487, inlinedAt: !5998)
!6231 = !DILocation(line: 150, column: 6, scope: !1500, inlinedAt: !5998)
!6232 = !DILocation(line: 150, column: 6, scope: !1502, inlinedAt: !5998)
!6233 = !DILocation(line: 150, column: 6, scope: !1506, inlinedAt: !5998)
!6234 = !DILocation(line: 150, column: 6, scope: !1503, inlinedAt: !5998)
!6235 = !DILocation(line: 150, column: 6, scope: !1377, inlinedAt: !5998)
!6236 = !DILocation(line: 150, column: 6, scope: !1351, inlinedAt: !5998)
!6237 = !DILocation(line: 151, column: 3, scope: !1377, inlinedAt: !5998)
!6238 = !DILocation(line: 152, column: 20, scope: !1351, inlinedAt: !5998)
!6239 = !DILocation(line: 152, column: 26, scope: !1351, inlinedAt: !5998)
!6240 = !DILocation(line: 152, column: 33, scope: !1351, inlinedAt: !5998)
!6241 = !DILocation(line: 152, column: 2, scope: !1351, inlinedAt: !5998)
!6242 = !DILocation(line: 153, column: 2, scope: !1351, inlinedAt: !5998)
!6243 = !DILocation(line: 154, column: 1, scope: !1351, inlinedAt: !5998)
!6244 = !DILocation(line: 191, column: 6, scope: !6000, inlinedAt: !6001)
!6245 = !DILocation(line: 192, column: 23, scope: !5999, inlinedAt: !6001)
!6246 = !DILocation(line: 192, column: 27, scope: !5999, inlinedAt: !6001)
!6247 = !DILocation(line: 192, column: 33, scope: !5999, inlinedAt: !6001)
!6248 = !DILocation(line: 192, column: 7, scope: !5999, inlinedAt: !6001)
!6249 = !DILocation(line: 192, column: 5, scope: !5999, inlinedAt: !6001)
!6250 = !DILocation(line: 192, column: 3, scope: !5999, inlinedAt: !6001)
!6251 = !DILocation(line: 193, column: 9, scope: !6000, inlinedAt: !6001)
!6252 = !DILocation(line: 283, column: 23, scope: !6002)
!6253 = !DILocation(line: 280, column: 6, scope: !5994)
!6254 = !DILocation(line: 284, column: 6, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 283, column: 73)
!6256 = !DILocation(line: 285, column: 3, scope: !6255)
!6257 = !DILocation(line: 287, column: 15, scope: !5994)
!6258 = !DILocation(line: 287, column: 21, scope: !5994)
!6259 = !DILocation(line: 287, column: 7, scope: !5994)
!6260 = !DILocation(line: 287, column: 13, scope: !5994)
!6261 = !DILocation(line: 288, column: 15, scope: !5994)
!6262 = !DILocation(line: 288, column: 2, scope: !5994)
!6263 = !DILocation(line: 289, column: 26, scope: !5994)
!6264 = !DILocation(line: 289, column: 7, scope: !5994)
!6265 = !DILocation(line: 289, column: 5, scope: !5994)
!6266 = !DILocation(line: 290, column: 17, scope: !5994)
!6267 = !DILocation(line: 290, column: 2, scope: !5994)
!6268 = !DILabel(scope: !5994, name: "out", file: !3, line: 291)
!6269 = !DILocation(line: 291, column: 1, scope: !5994)
!6270 = !DILocation(line: 292, column: 2, scope: !5994)
!6271 = !DILocation(line: 293, column: 9, scope: !5994)
!6272 = !DILocation(line: 293, column: 2, scope: !5994)
!6273 = !DILocation(line: 294, column: 1, scope: !5994)
!6274 = distinct !DISubprogram(name: "lock_fb_info", scope: !1342, file: !1342, line: 634, type: !5637, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6275 = !DILocalVariable(name: "info", arg: 1, scope: !6274, file: !1342, line: 634, type: !1685)
!6276 = !DILocation(line: 634, column: 49, scope: !6274)
!6277 = !DILocation(line: 636, column: 14, scope: !6274)
!6278 = !DILocation(line: 636, column: 20, scope: !6274)
!6279 = !DILocation(line: 636, column: 2, scope: !6274)
!6280 = !DILocation(line: 637, column: 1, scope: !6274)
!6281 = distinct !DISubprogram(name: "unlock_fb_info", scope: !1342, file: !1342, line: 639, type: !5637, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6282 = !DILocalVariable(name: "info", arg: 1, scope: !6281, file: !1342, line: 639, type: !1685)
!6283 = !DILocation(line: 639, column: 51, scope: !6281)
!6284 = !DILocation(line: 641, column: 16, scope: !6281)
!6285 = !DILocation(line: 641, column: 22, scope: !6281)
!6286 = !DILocation(line: 641, column: 2, scope: !6281)
!6287 = !DILocation(line: 642, column: 1, scope: !6281)
!6288 = distinct !DISubprogram(name: "fb_invert_cmaps", scope: !3, file: !3, line: 326, type: !3597, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6289 = !DILocalVariable(name: "i", scope: !6288, file: !3, line: 328, type: !5890)
!6290 = !DILocation(line: 328, column: 11, scope: !6288)
!6291 = !DILocation(line: 330, column: 12, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 330, column: 5)
!6293 = !DILocation(line: 330, column: 10, scope: !6292)
!6294 = !DILocation(line: 330, column: 17, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6292, file: !3, line: 330, column: 5)
!6296 = !DILocation(line: 330, column: 19, scope: !6295)
!6297 = !DILocation(line: 330, column: 5, scope: !6292)
!6298 = !DILocation(line: 331, column: 18, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 330, column: 44)
!6300 = !DILocation(line: 331, column: 13, scope: !6299)
!6301 = !DILocation(line: 331, column: 12, scope: !6299)
!6302 = !DILocation(line: 331, column: 7, scope: !6299)
!6303 = !DILocation(line: 331, column: 2, scope: !6299)
!6304 = !DILocation(line: 331, column: 10, scope: !6299)
!6305 = !DILocation(line: 332, column: 22, scope: !6299)
!6306 = !DILocation(line: 332, column: 15, scope: !6299)
!6307 = !DILocation(line: 332, column: 14, scope: !6299)
!6308 = !DILocation(line: 332, column: 9, scope: !6299)
!6309 = !DILocation(line: 332, column: 2, scope: !6299)
!6310 = !DILocation(line: 332, column: 12, scope: !6299)
!6311 = !DILocation(line: 333, column: 20, scope: !6299)
!6312 = !DILocation(line: 333, column: 14, scope: !6299)
!6313 = !DILocation(line: 333, column: 13, scope: !6299)
!6314 = !DILocation(line: 333, column: 8, scope: !6299)
!6315 = !DILocation(line: 333, column: 2, scope: !6299)
!6316 = !DILocation(line: 333, column: 11, scope: !6299)
!6317 = !DILocation(line: 334, column: 5, scope: !6299)
!6318 = !DILocation(line: 330, column: 40, scope: !6295)
!6319 = !DILocation(line: 330, column: 5, scope: !6295)
!6320 = distinct !{!6320, !6297, !6321}
!6321 = !DILocation(line: 334, column: 5, scope: !6292)
!6322 = !DILocation(line: 335, column: 12, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 335, column: 5)
!6324 = !DILocation(line: 335, column: 10, scope: !6323)
!6325 = !DILocation(line: 335, column: 17, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 335, column: 5)
!6327 = !DILocation(line: 335, column: 19, scope: !6326)
!6328 = !DILocation(line: 335, column: 5, scope: !6323)
!6329 = !DILocation(line: 336, column: 18, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 335, column: 44)
!6331 = !DILocation(line: 336, column: 13, scope: !6330)
!6332 = !DILocation(line: 336, column: 12, scope: !6330)
!6333 = !DILocation(line: 336, column: 7, scope: !6330)
!6334 = !DILocation(line: 336, column: 2, scope: !6330)
!6335 = !DILocation(line: 336, column: 10, scope: !6330)
!6336 = !DILocation(line: 337, column: 22, scope: !6330)
!6337 = !DILocation(line: 337, column: 15, scope: !6330)
!6338 = !DILocation(line: 337, column: 14, scope: !6330)
!6339 = !DILocation(line: 337, column: 9, scope: !6330)
!6340 = !DILocation(line: 337, column: 2, scope: !6330)
!6341 = !DILocation(line: 337, column: 12, scope: !6330)
!6342 = !DILocation(line: 338, column: 20, scope: !6330)
!6343 = !DILocation(line: 338, column: 14, scope: !6330)
!6344 = !DILocation(line: 338, column: 13, scope: !6330)
!6345 = !DILocation(line: 338, column: 8, scope: !6330)
!6346 = !DILocation(line: 338, column: 2, scope: !6330)
!6347 = !DILocation(line: 338, column: 11, scope: !6330)
!6348 = !DILocation(line: 339, column: 5, scope: !6330)
!6349 = !DILocation(line: 335, column: 40, scope: !6326)
!6350 = !DILocation(line: 335, column: 5, scope: !6326)
!6351 = distinct !{!6351, !6328, !6352}
!6352 = !DILocation(line: 339, column: 5, scope: !6323)
!6353 = !DILocation(line: 340, column: 12, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 340, column: 5)
!6355 = !DILocation(line: 340, column: 10, scope: !6354)
!6356 = !DILocation(line: 340, column: 17, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 340, column: 5)
!6358 = !DILocation(line: 340, column: 19, scope: !6357)
!6359 = !DILocation(line: 340, column: 5, scope: !6354)
!6360 = !DILocation(line: 341, column: 18, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 340, column: 44)
!6362 = !DILocation(line: 341, column: 13, scope: !6361)
!6363 = !DILocation(line: 341, column: 12, scope: !6361)
!6364 = !DILocation(line: 341, column: 7, scope: !6361)
!6365 = !DILocation(line: 341, column: 2, scope: !6361)
!6366 = !DILocation(line: 341, column: 10, scope: !6361)
!6367 = !DILocation(line: 342, column: 22, scope: !6361)
!6368 = !DILocation(line: 342, column: 15, scope: !6361)
!6369 = !DILocation(line: 342, column: 14, scope: !6361)
!6370 = !DILocation(line: 342, column: 9, scope: !6361)
!6371 = !DILocation(line: 342, column: 2, scope: !6361)
!6372 = !DILocation(line: 342, column: 12, scope: !6361)
!6373 = !DILocation(line: 343, column: 20, scope: !6361)
!6374 = !DILocation(line: 343, column: 14, scope: !6361)
!6375 = !DILocation(line: 343, column: 13, scope: !6361)
!6376 = !DILocation(line: 343, column: 8, scope: !6361)
!6377 = !DILocation(line: 343, column: 2, scope: !6361)
!6378 = !DILocation(line: 343, column: 11, scope: !6361)
!6379 = !DILocation(line: 344, column: 5, scope: !6361)
!6380 = !DILocation(line: 340, column: 40, scope: !6357)
!6381 = !DILocation(line: 340, column: 5, scope: !6357)
!6382 = distinct !{!6382, !6359, !6383}
!6383 = !DILocation(line: 344, column: 5, scope: !6354)
!6384 = !DILocation(line: 345, column: 12, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 345, column: 5)
!6386 = !DILocation(line: 345, column: 10, scope: !6385)
!6387 = !DILocation(line: 345, column: 17, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 345, column: 5)
!6389 = !DILocation(line: 345, column: 19, scope: !6388)
!6390 = !DILocation(line: 345, column: 5, scope: !6385)
!6391 = !DILocation(line: 346, column: 20, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 345, column: 45)
!6393 = !DILocation(line: 346, column: 14, scope: !6392)
!6394 = !DILocation(line: 346, column: 13, scope: !6392)
!6395 = !DILocation(line: 346, column: 8, scope: !6392)
!6396 = !DILocation(line: 346, column: 2, scope: !6392)
!6397 = !DILocation(line: 346, column: 11, scope: !6392)
!6398 = !DILocation(line: 347, column: 24, scope: !6392)
!6399 = !DILocation(line: 347, column: 16, scope: !6392)
!6400 = !DILocation(line: 347, column: 15, scope: !6392)
!6401 = !DILocation(line: 347, column: 10, scope: !6392)
!6402 = !DILocation(line: 347, column: 2, scope: !6392)
!6403 = !DILocation(line: 347, column: 13, scope: !6392)
!6404 = !DILocation(line: 348, column: 22, scope: !6392)
!6405 = !DILocation(line: 348, column: 15, scope: !6392)
!6406 = !DILocation(line: 348, column: 14, scope: !6392)
!6407 = !DILocation(line: 348, column: 9, scope: !6392)
!6408 = !DILocation(line: 348, column: 2, scope: !6392)
!6409 = !DILocation(line: 348, column: 12, scope: !6392)
!6410 = !DILocation(line: 349, column: 5, scope: !6392)
!6411 = !DILocation(line: 345, column: 41, scope: !6388)
!6412 = !DILocation(line: 345, column: 5, scope: !6388)
!6413 = distinct !{!6413, !6390, !6414}
!6414 = !DILocation(line: 349, column: 5, scope: !6385)
!6415 = !DILocation(line: 350, column: 1, scope: !6288)
!6416 = distinct !DISubprogram(name: "get_order", scope: !6417, file: !6417, line: 29, type: !6418, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6417 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6418 = !DISubroutineType(types: !6419)
!6419 = !{!140, !138}
!6420 = !DILocalVariable(name: "x", arg: 1, scope: !6421, file: !6422, line: 366, type: !2117)
!6421 = distinct !DISubprogram(name: "fls64", scope: !6422, file: !6422, line: 366, type: !6423, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6422 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6423 = !DISubroutineType(types: !6424)
!6424 = !{!140, !2117}
!6425 = !DILocation(line: 366, column: 40, scope: !6421, inlinedAt: !6426)
!6426 = distinct !DILocation(line: 46, column: 9, scope: !6416)
!6427 = !DILocalVariable(name: "bitpos", scope: !6421, file: !6422, line: 368, type: !140)
!6428 = !DILocation(line: 368, column: 6, scope: !6421, inlinedAt: !6426)
!6429 = !DILocalVariable(name: "size", arg: 1, scope: !6416, file: !6417, line: 29, type: !138)
!6430 = !DILocation(line: 29, column: 63, scope: !6416)
!6431 = !DILocation(line: 31, column: 27, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6416, file: !6417, line: 31, column: 6)
!6433 = !DILocation(line: 31, column: 6, scope: !6432)
!6434 = !DILocation(line: 31, column: 6, scope: !6416)
!6435 = !DILocation(line: 32, column: 8, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !6417, line: 32, column: 7)
!6437 = distinct !DILexicalBlock(scope: !6432, file: !6417, line: 31, column: 34)
!6438 = !DILocation(line: 32, column: 7, scope: !6437)
!6439 = !DILocation(line: 33, column: 4, scope: !6436)
!6440 = !DILocation(line: 35, column: 7, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6437, file: !6417, line: 35, column: 7)
!6442 = !DILocation(line: 35, column: 12, scope: !6441)
!6443 = !DILocation(line: 35, column: 7, scope: !6437)
!6444 = !DILocation(line: 36, column: 4, scope: !6441)
!6445 = !DILocation(line: 38, column: 10, scope: !6437)
!6446 = !DILocation(line: 38, column: 28, scope: !6437)
!6447 = !DILocation(line: 38, column: 41, scope: !6437)
!6448 = !DILocation(line: 38, column: 3, scope: !6437)
!6449 = !DILocation(line: 41, column: 6, scope: !6416)
!6450 = !DILocation(line: 42, column: 7, scope: !6416)
!6451 = !DILocation(line: 46, column: 15, scope: !6416)
!6452 = !DILocation(line: 374, column: 2, scope: !6421, inlinedAt: !6426)
!6453 = !DILocation(line: 376, column: 14, scope: !6421, inlinedAt: !6426)
!6454 = !{i32 640818}
!6455 = !DILocation(line: 377, column: 9, scope: !6421, inlinedAt: !6426)
!6456 = !DILocation(line: 377, column: 16, scope: !6421, inlinedAt: !6426)
!6457 = !DILocation(line: 46, column: 2, scope: !6416)
!6458 = !DILocation(line: 48, column: 1, scope: !6416)
!6459 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6460, file: !6460, line: 30, type: !6461, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6460 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6461 = !DISubroutineType(types: !6462)
!6462 = !{!140, !2116}
!6463 = !DILocation(line: 366, column: 40, scope: !6421, inlinedAt: !6464)
!6464 = distinct !DILocation(line: 32, column: 9, scope: !6459)
!6465 = !DILocation(line: 368, column: 6, scope: !6421, inlinedAt: !6464)
!6466 = !DILocalVariable(name: "n", arg: 1, scope: !6459, file: !6460, line: 30, type: !2116)
!6467 = !DILocation(line: 30, column: 21, scope: !6459)
!6468 = !DILocation(line: 32, column: 15, scope: !6459)
!6469 = !DILocation(line: 374, column: 2, scope: !6421, inlinedAt: !6464)
!6470 = !DILocation(line: 376, column: 14, scope: !6421, inlinedAt: !6464)
!6471 = !DILocation(line: 377, column: 9, scope: !6421, inlinedAt: !6464)
!6472 = !DILocation(line: 377, column: 16, scope: !6421, inlinedAt: !6464)
!6473 = !DILocation(line: 32, column: 18, scope: !6459)
!6474 = !DILocation(line: 32, column: 2, scope: !6459)
!6475 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6476, file: !6476, line: 137, type: !6477, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6476 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!139, !215, !1357, !134, !132}
!6479 = !DILocalVariable(name: "s", arg: 1, scope: !6475, file: !6476, line: 137, type: !215)
!6480 = !DILocation(line: 137, column: 54, scope: !6475)
!6481 = !DILocalVariable(name: "object", arg: 2, scope: !6475, file: !6476, line: 137, type: !1357)
!6482 = !DILocation(line: 137, column: 69, scope: !6475)
!6483 = !DILocalVariable(name: "size", arg: 3, scope: !6475, file: !6476, line: 138, type: !134)
!6484 = !DILocation(line: 138, column: 12, scope: !6475)
!6485 = !DILocalVariable(name: "flags", arg: 4, scope: !6475, file: !6476, line: 138, type: !132)
!6486 = !DILocation(line: 138, column: 24, scope: !6475)
!6487 = !DILocation(line: 140, column: 17, scope: !6475)
!6488 = !DILocation(line: 140, column: 2, scope: !6475)
!6489 = distinct !DISubprogram(name: "copy_overflow", scope: !1352, file: !1352, line: 132, type: !6490, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6490 = !DISubroutineType(types: !6491)
!6491 = !{null, !140, !138}
!6492 = !DILocalVariable(name: "size", arg: 1, scope: !6489, file: !1352, line: 132, type: !140)
!6493 = !DILocation(line: 132, column: 38, scope: !6489)
!6494 = !DILocalVariable(name: "count", arg: 2, scope: !6489, file: !1352, line: 132, type: !138)
!6495 = !DILocation(line: 132, column: 58, scope: !6489)
!6496 = !DILocalVariable(name: "__ret_warn_on", scope: !6497, file: !1352, line: 134, type: !140)
!6497 = distinct !DILexicalBlock(scope: !6489, file: !1352, line: 134, column: 2)
!6498 = !DILocation(line: 134, column: 2, scope: !6497)
!6499 = !DILocation(line: 134, column: 2, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6497, file: !1352, line: 134, column: 2)
!6501 = !DILocation(line: 134, column: 2, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6500, file: !1352, line: 134, column: 2)
!6503 = !DILocation(line: 134, column: 2, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6502, file: !1352, line: 134, column: 2)
!6505 = !DILocation(line: 134, column: 2, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6502, file: !1352, line: 134, column: 2)
!6507 = !DILocation(line: 134, column: 2, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6506, file: !1352, line: 134, column: 2)
!6509 = !DILocation(line: 134, column: 2, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6506, file: !1352, line: 134, column: 2)
!6511 = !{i32 -2145552023, i32 -2145551994, i32 -2145551948, i32 -2145551890, i32 -2145551836, i32 -2145551782, i32 -2145551727, i32 -2145551696}
!6512 = !DILocation(line: 134, column: 2, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6506, file: !1352, line: 134, column: 2)
!6514 = !{i32 -2145551276, i32 -2145551269, i32 -2145551217, i32 -2145551186, i32 -2145551156}
!6515 = !DILocation(line: 134, column: 2, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6506, file: !1352, line: 134, column: 2)
!6517 = !DILocation(line: 134, column: 2, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6502, file: !1352, line: 134, column: 2)
!6519 = !DILocation(line: 135, column: 1, scope: !6489)
!6520 = distinct !DISubprogram(name: "check_object_size", scope: !1352, file: !1352, line: 122, type: !6521, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6521 = !DISubroutineType(types: !6522)
!6522 = !{null, !1357, !138, !1355}
!6523 = !DILocalVariable(name: "ptr", arg: 1, scope: !6520, file: !1352, line: 122, type: !1357)
!6524 = !DILocation(line: 122, column: 50, scope: !6520)
!6525 = !DILocalVariable(name: "n", arg: 2, scope: !6520, file: !1352, line: 122, type: !138)
!6526 = !DILocation(line: 122, column: 69, scope: !6520)
!6527 = !DILocalVariable(name: "to_user", arg: 3, scope: !6520, file: !1352, line: 123, type: !1355)
!6528 = !DILocation(line: 123, column: 15, scope: !6520)
!6529 = !DILocation(line: 124, column: 3, scope: !6520)
