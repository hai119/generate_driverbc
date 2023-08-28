; ModuleID = '../bcout/drivers/video/fbdev/pvr2fb.llvm.bc'
source_filename = "drivers/video/fbdev/pvr2fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_pvr2fb_init6:\09\09\09"
module asm ".long\09pvr2fb_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.pvr2_board = type { i32 ()*, void ()*, [16 x i8] }
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
%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
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
%struct.kmem_cache = type opaque
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
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, {}*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, {}*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
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
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.66, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pvr2fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8*, [16 x i32] }
%struct.pvr2_params = type { i32, i8* }

@board_driver = internal global [2 x %struct.pvr2_board] [%struct.pvr2_board { i32 ()* @pvr2fb_pci_init, void ()* @pvr2fb_pci_exit, [16 x i8] c"PCI PVR2\00\00\00\00\00\00\00\00" }, %struct.pvr2_board zeroinitializer], section ".ref.data", align 16, !dbg !0
@fb_info = internal global %struct.fb_info* null, align 8, !dbg !206
@__UNIQUE_ID___addressable_pvr2fb_init244 = internal global i8* bitcast (i32 ()* @pvr2fb_init to i8*), section ".discard.addressable", align 8, !dbg !175
@__exitcall_pvr2fb_exit = internal global void ()* @pvr2fb_exit, section ".exitcall.exit", align 8, !dbg !177
@__UNIQUE_ID_author245 = internal constant [79 x i8] c"pvr2fb.author=Paul Mundt <lethal@linux-sh.org>, M. R. Brown <mrbrown@0xd6.org>\00", section ".modinfo", align 1, !dbg !184
@__UNIQUE_ID_description246 = internal constant [78 x i8] c"pvr2fb.description=Framebuffer driver for NEC PowerVR 2 based graphics boards\00", section ".modinfo", align 1, !dbg !191
@__UNIQUE_ID_file247 = internal constant [39 x i8] c"pvr2fb.file=drivers/video/fbdev/pvr2fb\00", section ".modinfo", align 1, !dbg !196
@__UNIQUE_ID_license248 = internal constant [19 x i8] c"pvr2fb.license=GPL\00", section ".modinfo", align 1, !dbg !201
@pvr2fb_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @pvr2fb_pci_tbl, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pvr2fb_pci_probe, void (%struct.pci_dev*)* @pvr2fb_pci_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4418
@.str = private unnamed_addr constant [7 x i8] c"pvr2fb\00", align 1
@pvr2fb_pci_tbl = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4147, i32 103, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4696
@.str.1 = private unnamed_addr constant [29 x i8] c"\013pvr2fb: PCI enable failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013pvr2fb: PCI request regions failed\0A\00", align 1
@pvr2_fix = internal global %struct.fb_fix_screeninfo { [16 x i8] c"NEC PowerVR2\00\00\00\00", i64 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 1, i16 1, i32 0, i64 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, align 8, !dbg !4699
@currentpar = internal global %struct.pvr2fb_par* null, align 8, !dbg !4701
@.str.3 = private unnamed_addr constant [38 x i8] c"\013pvr2fb: Failed to remap smem space\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\013pvr2fb: Failed to remap mmio space\0A\00", align 1
@nopan = internal global i32 0, align 4, !dbg !4703
@nowrap = internal global i32 1, align 4, !dbg !4705
@video_output = internal global i32 2, align 4, !dbg !4711
@defmode = internal global i32 0, align 4, !dbg !4713
@mode_option = internal global i8* null, align 8, !dbg !4715
@.str.5 = private unnamed_addr constant [11 x i8] c"640x480@60\00", align 1
@pvr2_modedb = internal global [3 x %struct.fb_videomode] [%struct.fb_videomode { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 60, i32 640, i32 480, i32 74239, i32 38, i32 33, i32 0, i32 18, i32 146, i32 26, i32 16, i32 257, i32 0 }, %struct.fb_videomode { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 60, i32 640, i32 240, i32 74239, i32 38, i32 33, i32 0, i32 0, i32 146, i32 22, i32 16, i32 256, i32 0 }, %struct.fb_videomode { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 60, i32 640, i32 480, i32 37119, i32 38, i32 33, i32 0, i32 18, i32 146, i32 26, i32 0, i32 256, i32 0 }], align 16, !dbg !4717
@pvr2_var = internal constant %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 16, i32 0, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, align 4, !dbg !4720
@.str.6 = private unnamed_addr constant [79 x i8] c"\016fb%d: %s (rev %ld.%ld) frame buffer device, using %ldk/%ldk of video memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\016fb%d: Mode %dx%d-%d pitch = %ld cable: %s video output: %s\0A\00", align 1
@cables = internal global [3 x %struct.pvr2_params] [%struct.pvr2_params { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0) }, %struct.pvr2_params { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0) }, %struct.pvr2_params { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0) }], align 16, !dbg !4723
@cable_type = internal global i32 0, align 4, !dbg !4730
@outputs = internal global [3 x %struct.pvr2_params] [%struct.pvr2_params { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0) }, %struct.pvr2_params { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, %struct.pvr2_params { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0) }], align 16, !dbg !4732
@pvr2fb_ops = internal constant { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* } { %struct.module* null, i32 (%struct.fb_info*, i32)* null, i32 (%struct.fb_info*, i32)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pvr2fb_check_var, i32 (%struct.fb_info*)* @pvr2fb_set_par, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @pvr2fb_setcolreg, i32 (%struct.fb_cmap*, %struct.fb_info*)* null, i32 (i32, %struct.fb_info*)* @pvr2fb_blank, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* null, void (%struct.fb_info*, %struct.fb_fillrect*)* @cfb_fillrect, void (%struct.fb_info*, %struct.fb_copyarea*)* @cfb_copyarea, void (%struct.fb_info*, %struct.fb_image*)* @cfb_imageblit, i32 (%struct.fb_info*, %struct.fb_cursor*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, %struct.vm_area_struct*)* null, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)* null, void (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null }, align 8, !dbg !4707
@do_blank = internal global i16 0, align 2, !dbg !4709
@.str.9 = private unnamed_addr constant [14 x i8] c"ntsc_640x480i\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ntsc_640x240\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"vga_640x480\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"VGA\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"COMPOSITE\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\013pvr2fb: Failed init of %s device\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"cable:\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"output:\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"nopan\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"nowrap\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @pvr2fb_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_pvr2fb_init244 to i8*), i8* bitcast (void ()** @__exitcall_pvr2fb_exit to i8*), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__UNIQUE_ID_author245, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__UNIQUE_ID_description246, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_file247, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license248, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @pvr2fb_exit() #0 section ".exit.text" !dbg !4748 {
entry:
  %i = alloca i32, align 4
  %pvr_board = alloca %struct.pvr2_board*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i32 0, i32* %i, align 4, !dbg !4751
  br label %for.cond, !dbg !4753

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4754
  %conv = sext i32 %0 to i64, !dbg !4754
  %cmp = icmp ult i64 %conv, 2, !dbg !4756
  br i1 %cmp, label %for.body, label %for.end, !dbg !4757

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pvr2_board** %pvr_board, metadata !4758, metadata !DIExpression()), !dbg !4761
  %1 = load i32, i32* %i, align 4, !dbg !4762
  %idx.ext = sext i32 %1 to i64, !dbg !4763
  %add.ptr = getelementptr %struct.pvr2_board, %struct.pvr2_board* getelementptr inbounds ([2 x %struct.pvr2_board], [2 x %struct.pvr2_board]* @board_driver, i64 0, i64 0), i64 %idx.ext, !dbg !4763
  store %struct.pvr2_board* %add.ptr, %struct.pvr2_board** %pvr_board, align 8, !dbg !4761
  %2 = load %struct.pvr2_board*, %struct.pvr2_board** %pvr_board, align 8, !dbg !4764
  %exit = getelementptr inbounds %struct.pvr2_board, %struct.pvr2_board* %2, i32 0, i32 1, !dbg !4766
  %3 = load void ()*, void ()** %exit, align 8, !dbg !4766
  %tobool = icmp ne void ()* %3, null, !dbg !4764
  br i1 %tobool, label %if.then, label %if.end, !dbg !4767

if.then:                                          ; preds = %for.body
  %4 = load %struct.pvr2_board*, %struct.pvr2_board** %pvr_board, align 8, !dbg !4768
  %exit2 = getelementptr inbounds %struct.pvr2_board, %struct.pvr2_board* %4, i32 0, i32 1, !dbg !4769
  %5 = load void ()*, void ()** %exit2, align 8, !dbg !4769
  call void %5() #6, !dbg !4768
  br label %if.end, !dbg !4768

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4770

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !4771
  %inc = add i32 %6, 1, !dbg !4771
  store i32 %inc, i32* %i, align 4, !dbg !4771
  br label %for.cond, !dbg !4772, !llvm.loop !4773

for.end:                                          ; preds = %for.cond
  %7 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4775
  call void @unregister_framebuffer(%struct.fb_info* %7) #6, !dbg !4776
  %8 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4777
  call void @framebuffer_release(%struct.fb_info* %8) #6, !dbg !4778
  ret void, !dbg !4779
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @unregister_framebuffer(%struct.fb_info*) #2

; Function Attrs: noredzone
declare dso_local void @framebuffer_release(%struct.fb_info*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_init() #0 section ".init.text" !dbg !4780 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %option = alloca i8*, align 8
  %pvr_board = alloca %struct.pvr2_board*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4783, metadata !DIExpression()), !dbg !4784
  store i32 -19, i32* %ret, align 4, !dbg !4784
  call void @llvm.dbg.declare(metadata i8** %option, metadata !4785, metadata !DIExpression()), !dbg !4786
  store i8* null, i8** %option, align 8, !dbg !4786
  %call = call i32 @fb_get_options(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %option) #6, !dbg !4787
  %tobool = icmp ne i32 %call, 0, !dbg !4787
  br i1 %tobool, label %if.then, label %if.end, !dbg !4789

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %option, align 8, !dbg !4791
  %call1 = call i32 @pvr2fb_setup(i8* %0) #7, !dbg !4792
  %call2 = call %struct.fb_info* @framebuffer_alloc(i64 120, %struct.device* null) #6, !dbg !4793
  store %struct.fb_info* %call2, %struct.fb_info** @fb_info, align 8, !dbg !4794
  %1 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4795
  %tobool3 = icmp ne %struct.fb_info* %1, null, !dbg !4795
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4797

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4798
  br label %return, !dbg !4798

if.end5:                                          ; preds = %if.end
  %2 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4799
  %par = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 30, !dbg !4800
  %3 = load i8*, i8** %par, align 8, !dbg !4800
  %4 = bitcast i8* %3 to %struct.pvr2fb_par*, !dbg !4799
  store %struct.pvr2fb_par* %4, %struct.pvr2fb_par** @currentpar, align 8, !dbg !4801
  store i32 0, i32* %i, align 4, !dbg !4802
  br label %for.cond, !dbg !4804

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load i32, i32* %i, align 4, !dbg !4805
  %conv = sext i32 %5 to i64, !dbg !4805
  %cmp = icmp ult i64 %conv, 2, !dbg !4807
  br i1 %cmp, label %for.body, label %for.end, !dbg !4808

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pvr2_board** %pvr_board, metadata !4809, metadata !DIExpression()), !dbg !4811
  %6 = load i32, i32* %i, align 4, !dbg !4812
  %idx.ext = sext i32 %6 to i64, !dbg !4813
  %add.ptr = getelementptr %struct.pvr2_board, %struct.pvr2_board* getelementptr inbounds ([2 x %struct.pvr2_board], [2 x %struct.pvr2_board]* @board_driver, i64 0, i64 0), i64 %idx.ext, !dbg !4813
  store %struct.pvr2_board* %add.ptr, %struct.pvr2_board** %pvr_board, align 8, !dbg !4811
  %7 = load %struct.pvr2_board*, %struct.pvr2_board** %pvr_board, align 8, !dbg !4814
  %init = getelementptr inbounds %struct.pvr2_board, %struct.pvr2_board* %7, i32 0, i32 0, !dbg !4816
  %8 = load i32 ()*, i32 ()** %init, align 8, !dbg !4816
  %tobool7 = icmp ne i32 ()* %8, null, !dbg !4814
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4817

if.then8:                                         ; preds = %for.body
  br label %for.inc, !dbg !4818

if.end9:                                          ; preds = %for.body
  %9 = load %struct.pvr2_board*, %struct.pvr2_board** %pvr_board, align 8, !dbg !4819
  %init10 = getelementptr inbounds %struct.pvr2_board, %struct.pvr2_board* %9, i32 0, i32 0, !dbg !4820
  %10 = load i32 ()*, i32 ()** %init10, align 8, !dbg !4820
  %call11 = call i32 %10() #6, !dbg !4819
  store i32 %call11, i32* %ret, align 4, !dbg !4821
  %11 = load i32, i32* %ret, align 4, !dbg !4822
  %cmp12 = icmp ne i32 %11, 0, !dbg !4824
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !4825

if.then14:                                        ; preds = %if.end9
  %12 = load %struct.pvr2_board*, %struct.pvr2_board** %pvr_board, align 8, !dbg !4826
  %name = getelementptr inbounds %struct.pvr2_board, %struct.pvr2_board* %12, i32 0, i32 2, !dbg !4828
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4826
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i8* %arraydecay) #7, !dbg !4829
  %13 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4830
  call void @framebuffer_release(%struct.fb_info* %13) #6, !dbg !4831
  br label %for.end, !dbg !4832

if.end16:                                         ; preds = %if.end9
  br label %for.inc, !dbg !4833

for.inc:                                          ; preds = %if.end16, %if.then8
  %14 = load i32, i32* %i, align 4, !dbg !4834
  %inc = add i32 %14, 1, !dbg !4834
  store i32 %inc, i32* %i, align 4, !dbg !4834
  br label %for.cond, !dbg !4835, !llvm.loop !4836

for.end:                                          ; preds = %if.then14, %for.cond
  %15 = load i32, i32* %ret, align 4, !dbg !4838
  store i32 %15, i32* %retval, align 4, !dbg !4839
  br label %return, !dbg !4839

return:                                           ; preds = %for.end, %if.then4, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4840
  ret i32 %16, !dbg !4840
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_pci_init() #0 section ".init.text" !dbg !4841 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @pvr2fb_pci_driver, %struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4842
  ret i32 %call, !dbg !4843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pvr2fb_pci_exit() #3 !dbg !4844 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @pvr2fb_pci_driver) #6, !dbg !4845
  ret void, !dbg !4846
}

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_pci_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %ent) #3 !dbg !4847 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %ent.addr = alloca %struct.pci_device_id*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  store %struct.pci_device_id* %ent, %struct.pci_device_id** %ent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %ent.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4852, metadata !DIExpression()), !dbg !4853
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4854
  %call = call i32 @pci_enable_device(%struct.pci_dev* %0) #6, !dbg !4855
  store i32 %call, i32* %ret, align 4, !dbg !4856
  %1 = load i32, i32* %ret, align 4, !dbg !4857
  %tobool = icmp ne i32 %1, 0, !dbg !4857
  br i1 %tobool, label %if.then, label %if.end, !dbg !4859

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !4860
  %2 = load i32, i32* %ret, align 4, !dbg !4862
  store i32 %2, i32* %retval, align 4, !dbg !4863
  br label %return, !dbg !4863

if.end:                                           ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4864
  %call2 = call i32 @pci_request_regions(%struct.pci_dev* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4865
  store i32 %call2, i32* %ret, align 4, !dbg !4866
  %4 = load i32, i32* %ret, align 4, !dbg !4867
  %tobool3 = icmp ne i32 %4, 0, !dbg !4867
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4869

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !4870
  %5 = load i32, i32* %ret, align 4, !dbg !4872
  store i32 %5, i32* %retval, align 4, !dbg !4873
  br label %return, !dbg !4873

if.end6:                                          ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4874
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 44, !dbg !4874
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4874
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4874
  %7 = load i64, i64* %start, align 8, !dbg !4874
  store i64 %7, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 1), align 8, !dbg !4875
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4876
  %resource7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !4876
  %arrayidx8 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource7, i64 0, i64 0, !dbg !4876
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx8, i32 0, i32 0, !dbg !4876
  %9 = load i64, i64* %start9, align 8, !dbg !4876
  %cmp = icmp eq i64 %9, 0, !dbg !4876
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4876

land.lhs.true:                                    ; preds = %if.end6
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4876
  %resource10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !4876
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource10, i64 0, i64 0, !dbg !4876
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 1, !dbg !4876
  %11 = load i64, i64* %end, align 8, !dbg !4876
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4876
  %resource12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 44, !dbg !4876
  %arrayidx13 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource12, i64 0, i64 0, !dbg !4876
  %start14 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx13, i32 0, i32 0, !dbg !4876
  %13 = load i64, i64* %start14, align 8, !dbg !4876
  %cmp15 = icmp eq i64 %11, %13, !dbg !4876
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !4876

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4876

cond.false:                                       ; preds = %land.lhs.true, %if.end6
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4876
  %resource16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 44, !dbg !4876
  %arrayidx17 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource16, i64 0, i64 0, !dbg !4876
  %end18 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx17, i32 0, i32 1, !dbg !4876
  %15 = load i64, i64* %end18, align 8, !dbg !4876
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4876
  %resource19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4876
  %arrayidx20 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource19, i64 0, i64 0, !dbg !4876
  %start21 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx20, i32 0, i32 0, !dbg !4876
  %17 = load i64, i64* %start21, align 8, !dbg !4876
  %sub = sub i64 %15, %17, !dbg !4876
  %add = add i64 %sub, 1, !dbg !4876
  br label %cond.end, !dbg !4876

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4876
  %conv = trunc i64 %cond to i32, !dbg !4876
  store i32 %conv, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 2), align 8, !dbg !4877
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4878
  %resource22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 44, !dbg !4878
  %arrayidx23 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource22, i64 0, i64 1, !dbg !4878
  %start24 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx23, i32 0, i32 0, !dbg !4878
  %19 = load i64, i64* %start24, align 8, !dbg !4878
  store i64 %19, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 10), align 8, !dbg !4879
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4880
  %resource25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 44, !dbg !4880
  %arrayidx26 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource25, i64 0, i64 1, !dbg !4880
  %start27 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx26, i32 0, i32 0, !dbg !4880
  %21 = load i64, i64* %start27, align 8, !dbg !4880
  %cmp28 = icmp eq i64 %21, 0, !dbg !4880
  br i1 %cmp28, label %land.lhs.true30, label %cond.false40, !dbg !4880

land.lhs.true30:                                  ; preds = %cond.end
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4880
  %resource31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 44, !dbg !4880
  %arrayidx32 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource31, i64 0, i64 1, !dbg !4880
  %end33 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx32, i32 0, i32 1, !dbg !4880
  %23 = load i64, i64* %end33, align 8, !dbg !4880
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4880
  %resource34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 44, !dbg !4880
  %arrayidx35 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource34, i64 0, i64 1, !dbg !4880
  %start36 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx35, i32 0, i32 0, !dbg !4880
  %25 = load i64, i64* %start36, align 8, !dbg !4880
  %cmp37 = icmp eq i64 %23, %25, !dbg !4880
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !4880

cond.true39:                                      ; preds = %land.lhs.true30
  br label %cond.end49, !dbg !4880

cond.false40:                                     ; preds = %land.lhs.true30, %cond.end
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4880
  %resource41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 44, !dbg !4880
  %arrayidx42 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource41, i64 0, i64 1, !dbg !4880
  %end43 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx42, i32 0, i32 1, !dbg !4880
  %27 = load i64, i64* %end43, align 8, !dbg !4880
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4880
  %resource44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 44, !dbg !4880
  %arrayidx45 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource44, i64 0, i64 1, !dbg !4880
  %start46 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx45, i32 0, i32 0, !dbg !4880
  %29 = load i64, i64* %start46, align 8, !dbg !4880
  %sub47 = sub i64 %27, %29, !dbg !4880
  %add48 = add i64 %sub47, 1, !dbg !4880
  br label %cond.end49, !dbg !4880

cond.end49:                                       ; preds = %cond.false40, %cond.true39
  %cond50 = phi i64 [ 0, %cond.true39 ], [ %add48, %cond.false40 ], !dbg !4880
  %conv51 = trunc i64 %cond50 to i32, !dbg !4880
  store i32 %conv51, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 11), align 8, !dbg !4881
  %30 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4882
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 41, !dbg !4883
  %31 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4884
  %device = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 21, !dbg !4885
  store %struct.device* %dev, %struct.device** %device, align 8, !dbg !4886
  %call52 = call i32 @pvr2fb_common_init() #6, !dbg !4887
  store i32 %call52, i32* %retval, align 4, !dbg !4888
  br label %return, !dbg !4888

return:                                           ; preds = %cond.end49, %if.then4, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !4889
  ret i32 %32, !dbg !4889
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pvr2fb_pci_remove(%struct.pci_dev* %pdev) #3 !dbg !4890 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  %0 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4893
  %1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 25, !dbg !4895
  %screen_base = bitcast %union.anon.65* %1 to i8**, !dbg !4895
  %2 = load i8*, i8** %screen_base, align 8, !dbg !4895
  %tobool = icmp ne i8* %2, null, !dbg !4893
  br i1 %tobool, label %if.then, label %if.end, !dbg !4896

if.then:                                          ; preds = %entry
  %3 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4897
  %4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 25, !dbg !4899
  %screen_base1 = bitcast %union.anon.65* %4 to i8**, !dbg !4899
  %5 = load i8*, i8** %screen_base1, align 8, !dbg !4899
  call void @iounmap(i8* %5) #6, !dbg !4900
  %6 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4901
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 25, !dbg !4902
  %screen_base2 = bitcast %union.anon.65* %7 to i8**, !dbg !4902
  store i8* null, i8** %screen_base2, align 8, !dbg !4903
  br label %if.end, !dbg !4904

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** @currentpar, align 8, !dbg !4905
  %mmio_base = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %8, i32 0, i32 12, !dbg !4907
  %9 = load i8*, i8** %mmio_base, align 8, !dbg !4907
  %tobool3 = icmp ne i8* %9, null, !dbg !4905
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !4908

if.then4:                                         ; preds = %if.end
  %10 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** @currentpar, align 8, !dbg !4909
  %mmio_base5 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %10, i32 0, i32 12, !dbg !4911
  %11 = load i8*, i8** %mmio_base5, align 8, !dbg !4911
  call void @iounmap(i8* %11) #6, !dbg !4912
  %12 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** @currentpar, align 8, !dbg !4913
  %mmio_base6 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %12, i32 0, i32 12, !dbg !4914
  store i8* null, i8** %mmio_base6, align 8, !dbg !4915
  br label %if.end7, !dbg !4916

if.end7:                                          ; preds = %if.then4, %if.end
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4917
  call void @pci_release_regions(%struct.pci_dev* %13) #6, !dbg !4918
  ret void, !dbg !4919
}

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_common_init() #3 !dbg !4920 {
entry:
  %retval = alloca i32, align 4
  %par = alloca %struct.pvr2fb_par*, align 8
  %modememused = alloca i64, align 8
  %rev = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.pvr2fb_par** %par, metadata !4921, metadata !DIExpression()), !dbg !4922
  %0 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** @currentpar, align 8, !dbg !4923
  store %struct.pvr2fb_par* %0, %struct.pvr2fb_par** %par, align 8, !dbg !4922
  call void @llvm.dbg.declare(metadata i64* %modememused, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata i64* %rev, metadata !4926, metadata !DIExpression()), !dbg !4927
  %1 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 1), align 8, !dbg !4928
  %2 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 2), align 8, !dbg !4929
  %conv = zext i32 %2 to i64, !dbg !4930
  %call = call i8* @ioremap(i64 %1, i64 %conv) #6, !dbg !4931
  %3 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4932
  %4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 25, !dbg !4933
  %screen_base = bitcast %union.anon.65* %4 to i8**, !dbg !4933
  store i8* %call, i8** %screen_base, align 8, !dbg !4934
  %5 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4935
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !4937
  %screen_base1 = bitcast %union.anon.65* %6 to i8**, !dbg !4937
  %7 = load i8*, i8** %screen_base1, align 8, !dbg !4937
  %tobool = icmp ne i8* %7, null, !dbg !4935
  br i1 %tobool, label %if.end, label %if.then, !dbg !4938

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !4939
  br label %out_err, !dbg !4941

if.end:                                           ; preds = %entry
  %8 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 10), align 8, !dbg !4942
  %9 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 11), align 8, !dbg !4943
  %conv3 = zext i32 %9 to i64, !dbg !4944
  %call4 = call i8* @ioremap(i64 %8, i64 %conv3) #6, !dbg !4945
  %10 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !4946
  %mmio_base = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %10, i32 0, i32 12, !dbg !4947
  store i8* %call4, i8** %mmio_base, align 8, !dbg !4948
  %11 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !4949
  %mmio_base5 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %11, i32 0, i32 12, !dbg !4951
  %12 = load i8*, i8** %mmio_base5, align 8, !dbg !4951
  %tobool6 = icmp ne i8* %12, null, !dbg !4949
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !4952

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !4953
  br label %out_err, !dbg !4955

if.end9:                                          ; preds = %if.end
  %13 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4956
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 25, !dbg !4957
  %screen_base10 = bitcast %union.anon.65* %14 to i8**, !dbg !4957
  %15 = load i8*, i8** %screen_base10, align 8, !dbg !4957
  %16 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 2), align 8, !dbg !4958
  %conv11 = zext i32 %16 to i64, !dbg !4959
  call void @memset_io(i8* %15, i32 0, i64 %conv11) #6, !dbg !4960
  %17 = load i32, i32* @nopan, align 4, !dbg !4961
  %tobool12 = icmp ne i32 %17, 0, !dbg !4961
  %18 = zext i1 %tobool12 to i64, !dbg !4961
  %cond = select i1 %tobool12, i32 0, i32 1, !dbg !4961
  %conv13 = trunc i32 %cond to i16, !dbg !4961
  store i16 %conv13, i16* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 7), align 2, !dbg !4962
  %19 = load i32, i32* @nowrap, align 4, !dbg !4963
  %tobool14 = icmp ne i32 %19, 0, !dbg !4963
  %20 = zext i1 %tobool14 to i64, !dbg !4963
  %cond15 = select i1 %tobool14, i32 0, i32 1, !dbg !4963
  %conv16 = trunc i32 %cond15 to i16, !dbg !4963
  store i16 %conv16, i16* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 8), align 4, !dbg !4964
  %21 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4965
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 20, !dbg !4966
  store %struct.fb_ops* bitcast ({ %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }* @pvr2fb_ops to %struct.fb_ops*), %struct.fb_ops** %fbops, align 8, !dbg !4967
  %22 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4968
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 7, !dbg !4969
  %23 = bitcast %struct.fb_fix_screeninfo* %fix to i8*, !dbg !4970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @pvr2_fix, i32 0, i32 0, i32 0), i64 80, i1 false), !dbg !4970
  %24 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** @currentpar, align 8, !dbg !4971
  %25 = bitcast %struct.pvr2fb_par* %24 to i8*, !dbg !4971
  %26 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4972
  %par17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 30, !dbg !4973
  store i8* %25, i8** %par17, align 8, !dbg !4974
  %27 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** @currentpar, align 8, !dbg !4975
  %palette = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %27, i32 0, i32 13, !dbg !4976
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %palette, i64 0, i64 0, !dbg !4975
  %28 = bitcast i32* %arraydecay to i8*, !dbg !4975
  %29 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4977
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 27, !dbg !4978
  store i8* %28, i8** %pseudo_palette, align 8, !dbg !4979
  %30 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4980
  %flags = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 2, !dbg !4981
  store i32 8192, i32* %flags, align 8, !dbg !4982
  %31 = load i32, i32* @video_output, align 4, !dbg !4983
  %cmp = icmp eq i32 %31, 2, !dbg !4985
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !4986

if.then19:                                        ; preds = %if.end9
  store i32 2, i32* @defmode, align 4, !dbg !4987
  br label %if.end20, !dbg !4988

if.end20:                                         ; preds = %if.then19, %if.end9
  %32 = load i8*, i8** @mode_option, align 8, !dbg !4989
  %tobool21 = icmp ne i8* %32, null, !dbg !4989
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4991

if.then22:                                        ; preds = %if.end20
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** @mode_option, align 8, !dbg !4992
  br label %if.end23, !dbg !4993

if.end23:                                         ; preds = %if.then22, %if.end20
  %33 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4994
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 6, !dbg !4996
  %34 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !4997
  %35 = load i8*, i8** @mode_option, align 8, !dbg !4998
  %36 = load i32, i32* @defmode, align 4, !dbg !4999
  %idxprom = sext i32 %36 to i64, !dbg !5000
  %arrayidx = getelementptr [3 x %struct.fb_videomode], [3 x %struct.fb_videomode]* @pvr2_modedb, i64 0, i64 %idxprom, !dbg !5000
  %call24 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %var, %struct.fb_info* %34, i8* %35, %struct.fb_videomode* getelementptr inbounds ([3 x %struct.fb_videomode], [3 x %struct.fb_videomode]* @pvr2_modedb, i64 0, i64 0), i32 3, %struct.fb_videomode* %arrayidx, i32 16) #6, !dbg !5001
  %tobool25 = icmp ne i32 %call24, 0, !dbg !5001
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !5002

if.then26:                                        ; preds = %if.end23
  %37 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5003
  %var27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 6, !dbg !5004
  %38 = bitcast %struct.fb_var_screeninfo* %var27 to i8*, !dbg !5005
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 bitcast (%struct.fb_var_screeninfo* @pvr2_var to i8*), i64 160, i1 false), !dbg !5005
  br label %if.end28, !dbg !5003

if.end28:                                         ; preds = %if.then26, %if.end23
  %39 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5006
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 12, !dbg !5007
  %call29 = call i32 @fb_alloc_cmap(%struct.fb_cmap* %cmap, i32 256, i32 0) #6, !dbg !5008
  %40 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5009
  %call30 = call i32 @register_framebuffer(%struct.fb_info* %40) #6, !dbg !5011
  %cmp31 = icmp slt i32 %call30, 0, !dbg !5012
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5013

if.then33:                                        ; preds = %if.end28
  br label %out_err, !dbg !5014

if.end34:                                         ; preds = %if.end28
  %41 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5015
  call void @pvr2_init_display(%struct.fb_info* %41) #6, !dbg !5016
  %42 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5017
  %var35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 6, !dbg !5018
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var35, i32 0, i32 2, !dbg !5019
  %43 = load i32, i32* %xres_virtual, align 8, !dbg !5019
  %44 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5020
  %var36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 6, !dbg !5021
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var36, i32 0, i32 6, !dbg !5022
  %45 = load i32, i32* %bits_per_pixel, align 8, !dbg !5022
  %call37 = call i64 @get_line_length(i32 %43, i32 %45) #6, !dbg !5023
  store i64 %call37, i64* %modememused, align 8, !dbg !5024
  %46 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5025
  %var38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 6, !dbg !5026
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var38, i32 0, i32 3, !dbg !5027
  %47 = load i32, i32* %yres_virtual, align 4, !dbg !5027
  %conv39 = zext i32 %47 to i64, !dbg !5025
  %48 = load i64, i64* %modememused, align 8, !dbg !5028
  %mul = mul i64 %48, %conv39, !dbg !5028
  store i64 %mul, i64* %modememused, align 8, !dbg !5028
  %49 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5029
  %mmio_base40 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %49, i32 0, i32 12, !dbg !5030
  %50 = load i8*, i8** %mmio_base40, align 8, !dbg !5030
  %add.ptr = getelementptr i8, i8* %50, i64 4, !dbg !5031
  %call41 = call i32 @__readl(i8* %add.ptr) #6, !dbg !5032
  %conv42 = zext i32 %call41 to i64, !dbg !5032
  store i64 %conv42, i64* %rev, align 8, !dbg !5033
  %51 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5034
  %node = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 1, !dbg !5034
  %52 = load i32, i32* %node, align 4, !dbg !5034
  %53 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5034
  %fix43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 7, !dbg !5034
  %id = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix43, i32 0, i32 0, !dbg !5034
  %arraydecay44 = getelementptr inbounds [16 x i8], [16 x i8]* %id, i64 0, i64 0, !dbg !5034
  %54 = load i64, i64* %rev, align 8, !dbg !5034
  %shr = lshr i64 %54, 4, !dbg !5034
  %and = and i64 %shr, 15, !dbg !5034
  %55 = load i64, i64* %rev, align 8, !dbg !5034
  %and45 = and i64 %55, 15, !dbg !5034
  %56 = load i64, i64* %modememused, align 8, !dbg !5034
  %shr46 = lshr i64 %56, 10, !dbg !5034
  %57 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5034
  %fix47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 7, !dbg !5034
  %smem_len = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix47, i32 0, i32 2, !dbg !5034
  %58 = load i32, i32* %smem_len, align 8, !dbg !5034
  %shr48 = lshr i32 %58, 10, !dbg !5034
  %conv49 = zext i32 %shr48 to i64, !dbg !5034
  %call50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %52, i8* %arraydecay44, i64 %and, i64 %and45, i64 %shr46, i64 %conv49) #7, !dbg !5034
  %59 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5035
  %node51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 1, !dbg !5035
  %60 = load i32, i32* %node51, align 4, !dbg !5035
  %61 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5035
  %var52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 6, !dbg !5035
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var52, i32 0, i32 0, !dbg !5035
  %62 = load i32, i32* %xres, align 8, !dbg !5035
  %63 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5035
  %var53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 6, !dbg !5035
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var53, i32 0, i32 1, !dbg !5035
  %64 = load i32, i32* %yres, align 4, !dbg !5035
  %65 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5035
  %var54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 6, !dbg !5035
  %bits_per_pixel55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var54, i32 0, i32 6, !dbg !5035
  %66 = load i32, i32* %bits_per_pixel55, align 8, !dbg !5035
  %67 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5035
  %var56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 6, !dbg !5035
  %xres57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var56, i32 0, i32 0, !dbg !5035
  %68 = load i32, i32* %xres57, align 8, !dbg !5035
  %69 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5035
  %var58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 6, !dbg !5035
  %bits_per_pixel59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var58, i32 0, i32 6, !dbg !5035
  %70 = load i32, i32* %bits_per_pixel59, align 8, !dbg !5035
  %call60 = call i64 @get_line_length(i32 %68, i32 %70) #6, !dbg !5035
  %71 = load i32, i32* @cable_type, align 4, !dbg !5035
  %call61 = call i8* @pvr2_get_param_name(%struct.pvr2_params* getelementptr inbounds ([3 x %struct.pvr2_params], [3 x %struct.pvr2_params]* @cables, i64 0, i64 0), i32 %71, i32 3) #6, !dbg !5035
  %72 = load i32, i32* @video_output, align 4, !dbg !5035
  %call62 = call i8* @pvr2_get_param_name(%struct.pvr2_params* getelementptr inbounds ([3 x %struct.pvr2_params], [3 x %struct.pvr2_params]* @outputs, i64 0, i64 0), i32 %72, i32 3) #6, !dbg !5035
  %call63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %60, i32 %62, i32 %64, i32 %66, i64 %call60, i8* %call61, i8* %call62) #7, !dbg !5035
  store i32 0, i32* %retval, align 4, !dbg !5036
  br label %return, !dbg !5036

out_err:                                          ; preds = %if.then33, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !5037), !dbg !5038
  %73 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5039
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 25, !dbg !5041
  %screen_base64 = bitcast %union.anon.65* %74 to i8**, !dbg !5041
  %75 = load i8*, i8** %screen_base64, align 8, !dbg !5041
  %tobool65 = icmp ne i8* %75, null, !dbg !5039
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !5042

if.then66:                                        ; preds = %out_err
  %76 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !5043
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 25, !dbg !5044
  %screen_base67 = bitcast %union.anon.65* %77 to i8**, !dbg !5044
  %78 = load i8*, i8** %screen_base67, align 8, !dbg !5044
  call void @iounmap(i8* %78) #6, !dbg !5045
  br label %if.end68, !dbg !5045

if.end68:                                         ; preds = %if.then66, %out_err
  %79 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5046
  %mmio_base69 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %79, i32 0, i32 12, !dbg !5048
  %80 = load i8*, i8** %mmio_base69, align 8, !dbg !5048
  %tobool70 = icmp ne i8* %80, null, !dbg !5046
  br i1 %tobool70, label %if.then71, label %if.end73, !dbg !5049

if.then71:                                        ; preds = %if.end68
  %81 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5050
  %mmio_base72 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %81, i32 0, i32 12, !dbg !5051
  %82 = load i8*, i8** %mmio_base72, align 8, !dbg !5051
  call void @iounmap(i8* %82) #6, !dbg !5052
  br label %if.end73, !dbg !5052

if.end73:                                         ; preds = %if.then71, %if.end68
  store i32 -6, i32* %retval, align 4, !dbg !5053
  br label %return, !dbg !5053

return:                                           ; preds = %if.end73, %if.end34
  %83 = load i32, i32* %retval, align 4, !dbg !5054
  ret i32 %83, !dbg !5054
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @memset_io(i8*, i32, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.fb_info*, i8*, %struct.fb_videomode*, i32, %struct.fb_videomode*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @fb_alloc_cmap(%struct.fb_cmap*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @register_framebuffer(%struct.fb_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pvr2_init_display(%struct.fb_info* %info) #3 !dbg !5055 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.pvr2fb_par*, align 8
  %var = alloca %struct.fb_var_screeninfo*, align 8
  %diw_height = alloca i32, align 4
  %diw_width = alloca i32, align 4
  %diw_modulo = alloca i32, align 4
  %bytesperpixel = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata %struct.pvr2fb_par** %par, metadata !5058, metadata !DIExpression()), !dbg !5059
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5060
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5061
  %1 = load i8*, i8** %par1, align 8, !dbg !5061
  %2 = bitcast i8* %1 to %struct.pvr2fb_par*, !dbg !5062
  store %struct.pvr2fb_par* %2, %struct.pvr2fb_par** %par, align 8, !dbg !5059
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var, metadata !5063, metadata !DIExpression()), !dbg !5064
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5065
  %var2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5066
  store %struct.fb_var_screeninfo* %var2, %struct.fb_var_screeninfo** %var, align 8, !dbg !5064
  call void @llvm.dbg.declare(metadata i32* %diw_height, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.declare(metadata i32* %diw_width, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata i32* %diw_modulo, metadata !5071, metadata !DIExpression()), !dbg !5072
  store i32 1, i32* %diw_modulo, align 4, !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %bytesperpixel, metadata !5073, metadata !DIExpression()), !dbg !5074
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5075
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 6, !dbg !5076
  %5 = load i32, i32* %bits_per_pixel, align 4, !dbg !5076
  %shr = lshr i32 %5, 3, !dbg !5077
  store i32 %shr, i32* %bytesperpixel, align 4, !dbg !5074
  %6 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5078
  %vsync_total = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %6, i32 0, i32 1, !dbg !5079
  %7 = load i32, i32* %vsync_total, align 4, !dbg !5079
  %shl = shl i32 %7, 16, !dbg !5080
  %8 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5081
  %hsync_total = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %8, i32 0, i32 0, !dbg !5082
  %9 = load i32, i32* %hsync_total, align 8, !dbg !5082
  %or = or i32 %shl, %9, !dbg !5083
  %10 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5084
  %mmio_base = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %10, i32 0, i32 12, !dbg !5084
  %11 = load i8*, i8** %mmio_base, align 8, !dbg !5084
  %add.ptr = getelementptr i8, i8* %11, i64 216, !dbg !5084
  call void @__writel(i32 %or, i8* %add.ptr) #6, !dbg !5085
  %12 = load i32, i32* @video_output, align 4, !dbg !5086
  %cmp = icmp ne i32 %12, 2, !dbg !5088
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5089

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5090
  %is_interlaced = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %13, i32 0, i32 9, !dbg !5091
  %14 = load i8, i8* %is_interlaced, align 8, !dbg !5091
  %conv = zext i8 %14 to i32, !dbg !5090
  %tobool = icmp ne i32 %conv, 0, !dbg !5090
  br i1 %tobool, label %if.then, label %if.end, !dbg !5092

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5093
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 7, !dbg !5094
  %line_length = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 9, !dbg !5095
  %16 = load i32, i32* %line_length, align 8, !dbg !5095
  %div = udiv i32 %16, 4, !dbg !5096
  %17 = load i32, i32* %diw_modulo, align 4, !dbg !5097
  %add = add i32 %17, %div, !dbg !5097
  store i32 %add, i32* %diw_modulo, align 4, !dbg !5097
  br label %if.end, !dbg !5098

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %18 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5099
  %is_interlaced3 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %18, i32 0, i32 9, !dbg !5100
  %19 = load i8, i8* %is_interlaced3, align 8, !dbg !5100
  %conv4 = zext i8 %19 to i32, !dbg !5099
  %tobool5 = icmp ne i32 %conv4, 0, !dbg !5099
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !5099

cond.true:                                        ; preds = %if.end
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5101
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 1, !dbg !5102
  %21 = load i32, i32* %yres, align 4, !dbg !5102
  %div6 = udiv i32 %21, 2, !dbg !5103
  br label %cond.end, !dbg !5099

cond.false:                                       ; preds = %if.end
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5104
  %yres7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 1, !dbg !5105
  %23 = load i32, i32* %yres7, align 4, !dbg !5105
  br label %cond.end, !dbg !5099

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div6, %cond.true ], [ %23, %cond.false ], !dbg !5099
  store i32 %cond, i32* %diw_height, align 4, !dbg !5106
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5107
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 0, !dbg !5108
  %25 = load i32, i32* %xres, align 4, !dbg !5108
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5109
  %bits_per_pixel8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 6, !dbg !5110
  %27 = load i32, i32* %bits_per_pixel8, align 4, !dbg !5110
  %call = call i64 @get_line_length(i32 %25, i32 %27) #6, !dbg !5111
  %div9 = udiv i64 %call, 4, !dbg !5112
  %conv10 = trunc i64 %div9 to i32, !dbg !5111
  store i32 %conv10, i32* %diw_width, align 4, !dbg !5113
  %28 = load i32, i32* %diw_modulo, align 4, !dbg !5114
  %shl11 = shl i32 %28, 20, !dbg !5115
  %29 = load i32, i32* %diw_height, align 4, !dbg !5116
  %dec = add i32 %29, -1, !dbg !5116
  store i32 %dec, i32* %diw_height, align 4, !dbg !5116
  %shl12 = shl i32 %dec, 10, !dbg !5117
  %or13 = or i32 %shl11, %shl12, !dbg !5118
  %30 = load i32, i32* %diw_width, align 4, !dbg !5119
  %dec14 = add i32 %30, -1, !dbg !5119
  store i32 %dec14, i32* %diw_width, align 4, !dbg !5119
  %or15 = or i32 %or13, %dec14, !dbg !5120
  %31 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5121
  %mmio_base16 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %31, i32 0, i32 12, !dbg !5121
  %32 = load i8*, i8** %mmio_base16, align 8, !dbg !5121
  %add.ptr17 = getelementptr i8, i8* %32, i64 92, !dbg !5121
  call void @__writel(i32 %or15, i8* %add.ptr17) #6, !dbg !5122
  %33 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5123
  %disp_start = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %33, i32 0, i32 8, !dbg !5124
  %34 = load i64, i64* %disp_start, align 8, !dbg !5124
  %conv18 = trunc i64 %34 to i32, !dbg !5123
  %35 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5125
  %mmio_base19 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %35, i32 0, i32 12, !dbg !5125
  %36 = load i8*, i8** %mmio_base19, align 8, !dbg !5125
  %add.ptr20 = getelementptr i8, i8* %36, i64 80, !dbg !5125
  call void @__writel(i32 %conv18, i8* %add.ptr20) #6, !dbg !5126
  %37 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5127
  %disp_start21 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %37, i32 0, i32 8, !dbg !5128
  %38 = load i64, i64* %disp_start21, align 8, !dbg !5128
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5129
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 4, !dbg !5130
  %40 = load i32, i32* %xoffset, align 4, !dbg !5130
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5131
  %xres22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0, !dbg !5132
  %42 = load i32, i32* %xres22, align 4, !dbg !5132
  %add23 = add i32 %40, %42, !dbg !5133
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5134
  %bits_per_pixel24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 6, !dbg !5135
  %44 = load i32, i32* %bits_per_pixel24, align 4, !dbg !5135
  %call25 = call i64 @get_line_length(i32 %add23, i32 %44) #6, !dbg !5136
  %add26 = add i64 %38, %call25, !dbg !5137
  %conv27 = trunc i64 %add26 to i32, !dbg !5127
  %45 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5138
  %mmio_base28 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %45, i32 0, i32 12, !dbg !5138
  %46 = load i8*, i8** %mmio_base28, align 8, !dbg !5138
  %add.ptr29 = getelementptr i8, i8* %46, i64 84, !dbg !5138
  call void @__writel(i32 %conv27, i8* %add.ptr29) #6, !dbg !5139
  %47 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5140
  %borderstart_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %47, i32 0, i32 2, !dbg !5141
  %48 = load i32, i32* %borderstart_h, align 8, !dbg !5141
  %shl30 = shl i32 %48, 16, !dbg !5142
  %49 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5143
  %borderstop_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %49, i32 0, i32 3, !dbg !5144
  %50 = load i32, i32* %borderstop_h, align 4, !dbg !5144
  %or31 = or i32 %shl30, %50, !dbg !5145
  %51 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5146
  %mmio_base32 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %51, i32 0, i32 12, !dbg !5146
  %52 = load i8*, i8** %mmio_base32, align 8, !dbg !5146
  %add.ptr33 = getelementptr i8, i8* %52, i64 212, !dbg !5146
  call void @__writel(i32 %or31, i8* %add.ptr33) #6, !dbg !5147
  %53 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5148
  %borderstart_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %53, i32 0, i32 4, !dbg !5149
  %54 = load i32, i32* %borderstart_v, align 8, !dbg !5149
  %shl34 = shl i32 %54, 16, !dbg !5150
  %55 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5151
  %borderstop_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %55, i32 0, i32 5, !dbg !5152
  %56 = load i32, i32* %borderstop_v, align 4, !dbg !5152
  %or35 = or i32 %shl34, %56, !dbg !5153
  %57 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5154
  %mmio_base36 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %57, i32 0, i32 12, !dbg !5154
  %58 = load i8*, i8** %mmio_base36, align 8, !dbg !5154
  %add.ptr37 = getelementptr i8, i8* %58, i64 220, !dbg !5154
  call void @__writel(i32 %or35, i8* %add.ptr37) #6, !dbg !5155
  %59 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5156
  %mmio_base38 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %59, i32 0, i32 12, !dbg !5156
  %60 = load i8*, i8** %mmio_base38, align 8, !dbg !5156
  %add.ptr39 = getelementptr i8, i8* %60, i64 64, !dbg !5156
  call void @__writel(i32 0, i8* %add.ptr39) #6, !dbg !5157
  %61 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5158
  %diwstart_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %61, i32 0, i32 6, !dbg !5159
  %62 = load i32, i32* %diwstart_h, align 8, !dbg !5159
  %63 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5160
  %mmio_base40 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %63, i32 0, i32 12, !dbg !5160
  %64 = load i8*, i8** %mmio_base40, align 8, !dbg !5160
  %add.ptr41 = getelementptr i8, i8* %64, i64 236, !dbg !5160
  call void @__writel(i32 %62, i8* %add.ptr41) #6, !dbg !5161
  %65 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5162
  %diwstart_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %65, i32 0, i32 7, !dbg !5163
  %66 = load i32, i32* %diwstart_v, align 4, !dbg !5163
  %shl42 = shl i32 %66, 16, !dbg !5164
  %67 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5165
  %diwstart_v43 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %67, i32 0, i32 7, !dbg !5166
  %68 = load i32, i32* %diwstart_v43, align 4, !dbg !5166
  %or44 = or i32 %shl42, %68, !dbg !5167
  %69 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5168
  %mmio_base45 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %69, i32 0, i32 12, !dbg !5168
  %70 = load i8*, i8** %mmio_base45, align 8, !dbg !5168
  %add.ptr46 = getelementptr i8, i8* %70, i64 240, !dbg !5168
  call void @__writel(i32 %or44, i8* %add.ptr46) #6, !dbg !5169
  %71 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5170
  %is_lowres = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %71, i32 0, i32 11, !dbg !5171
  %72 = load i8, i8* %is_lowres, align 2, !dbg !5171
  %conv47 = zext i8 %72 to i32, !dbg !5170
  %or48 = or i32 1441792, %conv47, !dbg !5172
  %73 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5173
  %mmio_base49 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %73, i32 0, i32 12, !dbg !5173
  %74 = load i8*, i8** %mmio_base49, align 8, !dbg !5173
  %add.ptr50 = getelementptr i8, i8* %74, i64 232, !dbg !5173
  call void @__writel(i32 %or48, i8* %add.ptr50) #6, !dbg !5174
  %75 = load i32, i32* @video_output, align 4, !dbg !5175
  %cmp51 = icmp eq i32 %75, 2, !dbg !5176
  %conv52 = zext i1 %cmp51 to i32, !dbg !5176
  %shl53 = shl i32 %conv52, 23, !dbg !5177
  %76 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5178
  %is_doublescan = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %76, i32 0, i32 10, !dbg !5179
  %77 = load i8, i8* %is_doublescan, align 1, !dbg !5179
  %conv54 = zext i8 %77 to i32, !dbg !5178
  %shl55 = shl i32 %conv54, 1, !dbg !5180
  %or56 = or i32 %shl53, %shl55, !dbg !5181
  %or57 = or i32 %or56, 1, !dbg !5182
  %78 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5183
  %mmio_base58 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %78, i32 0, i32 12, !dbg !5183
  %79 = load i8*, i8** %mmio_base58, align 8, !dbg !5183
  %add.ptr59 = getelementptr i8, i8* %79, i64 68, !dbg !5183
  call void @__writel(i32 %or57, i8* %add.ptr59) #6, !dbg !5184
  %80 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5185
  %mmio_base60 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %80, i32 0, i32 12, !dbg !5185
  %81 = load i8*, i8** %mmio_base60, align 8, !dbg !5185
  %add.ptr61 = getelementptr i8, i8* %81, i64 68, !dbg !5185
  %call62 = call i32 @__readl(i8* %add.ptr61) #6, !dbg !5186
  %82 = load i32, i32* %bytesperpixel, align 4, !dbg !5187
  %dec63 = add i32 %82, -1, !dbg !5187
  store i32 %dec63, i32* %bytesperpixel, align 4, !dbg !5187
  %shl64 = shl i32 %dec63, 2, !dbg !5188
  %or65 = or i32 %call62, %shl64, !dbg !5189
  %83 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5190
  %mmio_base66 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %83, i32 0, i32 12, !dbg !5190
  %84 = load i8*, i8** %mmio_base66, align 8, !dbg !5190
  %add.ptr67 = getelementptr i8, i8* %84, i64 68, !dbg !5190
  call void @__writel(i32 %or65, i8* %add.ptr67) #6, !dbg !5191
  %85 = load i32, i32* %bytesperpixel, align 4, !dbg !5192
  %shl68 = shl i32 %85, 2, !dbg !5193
  %86 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5194
  %mmio_base69 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %86, i32 0, i32 12, !dbg !5194
  %87 = load i8*, i8** %mmio_base69, align 8, !dbg !5194
  %add.ptr70 = getelementptr i8, i8* %87, i64 264, !dbg !5194
  call void @__writel(i32 %shl68, i8* %add.ptr70) #6, !dbg !5195
  %88 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5196
  %is_interlaced71 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %88, i32 0, i32 9, !dbg !5197
  %89 = load i8, i8* %is_interlaced71, align 8, !dbg !5197
  %conv72 = zext i8 %89 to i32, !dbg !5198
  %shl73 = shl i32 %conv72, 4, !dbg !5199
  %or74 = or i32 256, %shl73, !dbg !5200
  %90 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5201
  %mmio_base75 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %90, i32 0, i32 12, !dbg !5201
  %91 = load i8*, i8** %mmio_base75, align 8, !dbg !5201
  %add.ptr76 = getelementptr i8, i8* %91, i64 208, !dbg !5201
  call void @__writel(i32 %or74, i8* %add.ptr76) #6, !dbg !5202
  ret void, !dbg !5203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get_line_length(i32 %xres_virtual, i32 %bpp) #3 !dbg !5204 {
entry:
  %xres_virtual.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  store i32 %xres_virtual, i32* %xres_virtual.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %xres_virtual.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  store i32 %bpp, i32* %bpp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bpp.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  %0 = load i32, i32* %xres_virtual.addr, align 4, !dbg !5211
  %1 = load i32, i32* %bpp.addr, align 4, !dbg !5212
  %mul = mul i32 %0, %1, !dbg !5213
  %add = add i32 %mul, 31, !dbg !5214
  %and = and i32 %add, -32, !dbg !5215
  %shr = ashr i32 %and, 3, !dbg !5216
  %conv = sext i32 %shr to i64, !dbg !5217
  ret i64 %conv, !dbg !5218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__readl(i8* %addr) #3 !dbg !5219 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5228, metadata !DIExpression()), !dbg !5227
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5227
  %1 = bitcast i8* %0 to i32*, !dbg !5227
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !5227, !srcloc !5229
  store i32 %2, i32* %ret, align 4, !dbg !5227
  %3 = load i32, i32* %ret, align 4, !dbg !5227
  ret i32 %3, !dbg !5227
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pvr2_get_param_name(%struct.pvr2_params* %p, i32 %val, i32 %size) #3 !dbg !5230 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.pvr2_params*, align 8
  %val.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pvr2_params* %p, %struct.pvr2_params** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pvr2_params** %p.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5241, metadata !DIExpression()), !dbg !5242
  store i32 0, i32* %i, align 4, !dbg !5243
  br label %for.cond, !dbg !5245

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5246
  %1 = load i32, i32* %size.addr, align 4, !dbg !5248
  %cmp = icmp slt i32 %0, %1, !dbg !5249
  br i1 %cmp, label %for.body, label %for.end, !dbg !5250

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pvr2_params*, %struct.pvr2_params** %p.addr, align 8, !dbg !5251
  %3 = load i32, i32* %i, align 4, !dbg !5254
  %idxprom = sext i32 %3 to i64, !dbg !5251
  %arrayidx = getelementptr %struct.pvr2_params, %struct.pvr2_params* %2, i64 %idxprom, !dbg !5251
  %val1 = getelementptr inbounds %struct.pvr2_params, %struct.pvr2_params* %arrayidx, i32 0, i32 0, !dbg !5255
  %4 = load i32, i32* %val1, align 8, !dbg !5255
  %5 = load i32, i32* %val.addr, align 4, !dbg !5256
  %cmp2 = icmp eq i32 %4, %5, !dbg !5257
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5258

if.then:                                          ; preds = %for.body
  %6 = load %struct.pvr2_params*, %struct.pvr2_params** %p.addr, align 8, !dbg !5259
  %7 = load i32, i32* %i, align 4, !dbg !5260
  %idxprom3 = sext i32 %7 to i64, !dbg !5259
  %arrayidx4 = getelementptr %struct.pvr2_params, %struct.pvr2_params* %6, i64 %idxprom3, !dbg !5259
  %name = getelementptr inbounds %struct.pvr2_params, %struct.pvr2_params* %arrayidx4, i32 0, i32 1, !dbg !5261
  %8 = load i8*, i8** %name, align 8, !dbg !5261
  store i8* %8, i8** %retval, align 8, !dbg !5262
  br label %return, !dbg !5262

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5263

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !5264
  %inc = add i32 %9, 1, !dbg !5264
  store i32 %inc, i32* %i, align 4, !dbg !5264
  br label %for.cond, !dbg !5265, !llvm.loop !5266

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8, !dbg !5268
  br label %return, !dbg !5268

return:                                           ; preds = %for.end, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !5269
  ret i8* %10, !dbg !5269
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_check_var(%struct.fb_var_screeninfo* %var, %struct.fb_info* %info) #3 !dbg !5270 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.pvr2fb_par*, align 8
  %vtotal = alloca i32, align 4
  %hsync_total = alloca i32, align 4
  %line_length = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp134 = alloca i32, align 4
  %tmp139 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.declare(metadata %struct.pvr2fb_par** %par, metadata !5275, metadata !DIExpression()), !dbg !5276
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5277
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5278
  %1 = load i8*, i8** %par1, align 8, !dbg !5278
  %2 = bitcast i8* %1 to %struct.pvr2fb_par*, !dbg !5279
  store %struct.pvr2fb_par* %2, %struct.pvr2fb_par** %par, align 8, !dbg !5276
  call void @llvm.dbg.declare(metadata i32* %vtotal, metadata !5280, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.declare(metadata i32* %hsync_total, metadata !5282, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata i64* %line_length, metadata !5284, metadata !DIExpression()), !dbg !5285
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5286
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 17, !dbg !5288
  %4 = load i32, i32* %pixclock, align 4, !dbg !5288
  %cmp = icmp ne i32 %4, 74239, !dbg !5289
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5290

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5291
  %pixclock2 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 17, !dbg !5292
  %6 = load i32, i32* %pixclock2, align 4, !dbg !5292
  %cmp3 = icmp ne i32 %6, 37119, !dbg !5293
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5294

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %tmp, align 4, !dbg !5295
  %7 = load i32, i32* %tmp, align 4, !dbg !5299
  store i32 -22, i32* %retval, align 4, !dbg !5300
  br label %return, !dbg !5300

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5301
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0, !dbg !5303
  %9 = load i32, i32* %xres, align 4, !dbg !5303
  %cmp4 = icmp ult i32 %9, 320, !dbg !5304
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !5305

if.then5:                                         ; preds = %if.end
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5306
  %xres6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0, !dbg !5307
  store i32 320, i32* %xres6, align 4, !dbg !5308
  br label %if.end7, !dbg !5306

if.end7:                                          ; preds = %if.then5, %if.end
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5309
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 1, !dbg !5311
  %12 = load i32, i32* %yres, align 4, !dbg !5311
  %cmp8 = icmp ult i32 %12, 240, !dbg !5312
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !5313

if.then9:                                         ; preds = %if.end7
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5314
  %yres10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1, !dbg !5315
  store i32 240, i32* %yres10, align 4, !dbg !5316
  br label %if.end11, !dbg !5314

if.end11:                                         ; preds = %if.then9, %if.end7
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5317
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 2, !dbg !5319
  %15 = load i32, i32* %xres_virtual, align 4, !dbg !5319
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5320
  %xres12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0, !dbg !5321
  %17 = load i32, i32* %xres12, align 4, !dbg !5321
  %cmp13 = icmp ult i32 %15, %17, !dbg !5322
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !5323

if.then14:                                        ; preds = %if.end11
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5324
  %xres15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0, !dbg !5325
  %19 = load i32, i32* %xres15, align 4, !dbg !5325
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5326
  %xres_virtual16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 2, !dbg !5327
  store i32 %19, i32* %xres_virtual16, align 4, !dbg !5328
  br label %if.end17, !dbg !5326

if.end17:                                         ; preds = %if.then14, %if.end11
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5329
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 3, !dbg !5331
  %22 = load i32, i32* %yres_virtual, align 4, !dbg !5331
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5332
  %yres18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 1, !dbg !5333
  %24 = load i32, i32* %yres18, align 4, !dbg !5333
  %cmp19 = icmp ult i32 %22, %24, !dbg !5334
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !5335

if.then20:                                        ; preds = %if.end17
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5336
  %yres21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1, !dbg !5337
  %26 = load i32, i32* %yres21, align 4, !dbg !5337
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5338
  %yres_virtual22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 3, !dbg !5339
  store i32 %26, i32* %yres_virtual22, align 4, !dbg !5340
  br label %if.end23, !dbg !5338

if.end23:                                         ; preds = %if.then20, %if.end17
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5341
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 6, !dbg !5343
  %29 = load i32, i32* %bits_per_pixel, align 4, !dbg !5343
  %cmp24 = icmp ule i32 %29, 16, !dbg !5344
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !5345

if.then25:                                        ; preds = %if.end23
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5346
  %bits_per_pixel26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 6, !dbg !5347
  store i32 16, i32* %bits_per_pixel26, align 4, !dbg !5348
  br label %if.end38, !dbg !5346

if.else:                                          ; preds = %if.end23
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5349
  %bits_per_pixel27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 6, !dbg !5351
  %32 = load i32, i32* %bits_per_pixel27, align 4, !dbg !5351
  %cmp28 = icmp ule i32 %32, 24, !dbg !5352
  br i1 %cmp28, label %if.then29, label %if.else31, !dbg !5353

if.then29:                                        ; preds = %if.else
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5354
  %bits_per_pixel30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 6, !dbg !5355
  store i32 24, i32* %bits_per_pixel30, align 4, !dbg !5356
  br label %if.end37, !dbg !5354

if.else31:                                        ; preds = %if.else
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5357
  %bits_per_pixel32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 6, !dbg !5359
  %35 = load i32, i32* %bits_per_pixel32, align 4, !dbg !5359
  %cmp33 = icmp ule i32 %35, 32, !dbg !5360
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !5361

if.then34:                                        ; preds = %if.else31
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5362
  %bits_per_pixel35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 6, !dbg !5363
  store i32 32, i32* %bits_per_pixel35, align 4, !dbg !5364
  br label %if.end36, !dbg !5362

if.end36:                                         ; preds = %if.then34, %if.else31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then29
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then25
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5365
  call void @set_color_bitfields(%struct.fb_var_screeninfo* %37) #6, !dbg !5366
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5367
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 25, !dbg !5369
  %39 = load i32, i32* %vmode, align 4, !dbg !5369
  %and = and i32 %39, 256, !dbg !5370
  %tobool = icmp ne i32 %and, 0, !dbg !5370
  br i1 %tobool, label %if.then39, label %if.else62, !dbg !5371

if.then39:                                        ; preds = %if.end38
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5372
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 4, !dbg !5375
  %41 = load i32, i32* %xoffset, align 4, !dbg !5375
  %tobool40 = icmp ne i32 %41, 0, !dbg !5372
  br i1 %tobool40, label %if.then43, label %lor.lhs.false, !dbg !5376

lor.lhs.false:                                    ; preds = %if.then39
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5377
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 5, !dbg !5378
  %43 = load i32, i32* %yoffset, align 4, !dbg !5378
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5379
  %yres_virtual41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 3, !dbg !5380
  %45 = load i32, i32* %yres_virtual41, align 4, !dbg !5380
  %cmp42 = icmp uge i32 %43, %45, !dbg !5381
  br i1 %cmp42, label %if.then43, label %if.else46, !dbg !5382

if.then43:                                        ; preds = %lor.lhs.false, %if.then39
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5383
  %yoffset44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 5, !dbg !5385
  store i32 0, i32* %yoffset44, align 4, !dbg !5386
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5387
  %xoffset45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 4, !dbg !5388
  store i32 0, i32* %xoffset45, align 4, !dbg !5389
  br label %if.end61, !dbg !5390

if.else46:                                        ; preds = %lor.lhs.false
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5391
  %xoffset47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 4, !dbg !5394
  %49 = load i32, i32* %xoffset47, align 4, !dbg !5394
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5395
  %xres_virtual48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 2, !dbg !5396
  %51 = load i32, i32* %xres_virtual48, align 4, !dbg !5396
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5397
  %xres49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 0, !dbg !5398
  %53 = load i32, i32* %xres49, align 4, !dbg !5398
  %sub = sub i32 %51, %53, !dbg !5399
  %cmp50 = icmp ugt i32 %49, %sub, !dbg !5400
  br i1 %cmp50, label %if.then57, label %lor.lhs.false51, !dbg !5401

lor.lhs.false51:                                  ; preds = %if.else46
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5402
  %yoffset52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 5, !dbg !5403
  %55 = load i32, i32* %yoffset52, align 4, !dbg !5403
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5404
  %yres_virtual53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 3, !dbg !5405
  %57 = load i32, i32* %yres_virtual53, align 4, !dbg !5405
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5406
  %yres54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1, !dbg !5407
  %59 = load i32, i32* %yres54, align 4, !dbg !5407
  %sub55 = sub i32 %57, %59, !dbg !5408
  %cmp56 = icmp ugt i32 %55, %sub55, !dbg !5409
  br i1 %cmp56, label %if.then57, label %if.end60, !dbg !5410

if.then57:                                        ; preds = %lor.lhs.false51, %if.else46
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5411
  %yoffset58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 5, !dbg !5412
  store i32 0, i32* %yoffset58, align 4, !dbg !5413
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5414
  %xoffset59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 4, !dbg !5415
  store i32 0, i32* %xoffset59, align 4, !dbg !5416
  br label %if.end60, !dbg !5414

if.end60:                                         ; preds = %if.then57, %lor.lhs.false51
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then43
  br label %if.end65, !dbg !5417

if.else62:                                        ; preds = %if.end38
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5418
  %yoffset63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 5, !dbg !5420
  store i32 0, i32* %yoffset63, align 4, !dbg !5421
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5422
  %xoffset64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 4, !dbg !5423
  store i32 0, i32* %xoffset64, align 4, !dbg !5424
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.end61
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5425
  %yres66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 1, !dbg !5427
  %65 = load i32, i32* %yres66, align 4, !dbg !5427
  %cmp67 = icmp ult i32 %65, 480, !dbg !5428
  br i1 %cmp67, label %land.lhs.true68, label %if.end72, !dbg !5429

land.lhs.true68:                                  ; preds = %if.end65
  %66 = load i32, i32* @video_output, align 4, !dbg !5430
  %cmp69 = icmp eq i32 %66, 2, !dbg !5431
  br i1 %cmp69, label %if.then70, label %if.end72, !dbg !5432

if.then70:                                        ; preds = %land.lhs.true68
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5433
  %vmode71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 25, !dbg !5434
  %68 = load i32, i32* %vmode71, align 4, !dbg !5435
  %or = or i32 %68, 2, !dbg !5435
  store i32 %or, i32* %vmode71, align 4, !dbg !5435
  br label %if.end72, !dbg !5433

if.end72:                                         ; preds = %if.then70, %land.lhs.true68, %if.end65
  %69 = load i32, i32* @video_output, align 4, !dbg !5436
  %cmp73 = icmp ne i32 %69, 2, !dbg !5438
  br i1 %cmp73, label %if.then74, label %if.else78, !dbg !5439

if.then74:                                        ; preds = %if.end72
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5440
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 24, !dbg !5442
  %71 = load i32, i32* %sync, align 4, !dbg !5443
  %or75 = or i32 %71, 16, !dbg !5443
  store i32 %or75, i32* %sync, align 4, !dbg !5443
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5444
  %vmode76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 25, !dbg !5445
  %73 = load i32, i32* %vmode76, align 4, !dbg !5446
  %or77 = or i32 %73, 1, !dbg !5446
  store i32 %or77, i32* %vmode76, align 4, !dbg !5446
  br label %if.end84, !dbg !5447

if.else78:                                        ; preds = %if.end72
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5448
  %sync79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 24, !dbg !5450
  %75 = load i32, i32* %sync79, align 4, !dbg !5451
  %and80 = and i32 %75, -17, !dbg !5451
  store i32 %and80, i32* %sync79, align 4, !dbg !5451
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5452
  %vmode81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 25, !dbg !5453
  %77 = load i32, i32* %vmode81, align 4, !dbg !5454
  %and82 = and i32 %77, -2, !dbg !5454
  store i32 %and82, i32* %vmode81, align 4, !dbg !5454
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5455
  %vmode83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 25, !dbg !5456
  %79 = load i32, i32* %vmode83, align 4, !dbg !5457
  store i32 %79, i32* %vmode83, align 4, !dbg !5457
  br label %if.end84

if.end84:                                         ; preds = %if.else78, %if.then74
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5458
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 13, !dbg !5460
  %81 = load i32, i32* %activate, align 4, !dbg !5460
  %and85 = and i32 %81, 15, !dbg !5461
  %cmp86 = icmp ne i32 %and85, 2, !dbg !5462
  br i1 %cmp86, label %if.then87, label %if.end106, !dbg !5463

if.then87:                                        ; preds = %if.end84
  %82 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5464
  %borderstop_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %82, i32 0, i32 3, !dbg !5466
  %83 = load i32, i32* %borderstop_h, align 4, !dbg !5466
  %84 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5467
  %diwstart_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %84, i32 0, i32 6, !dbg !5468
  %85 = load i32, i32* %diwstart_h, align 8, !dbg !5468
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5469
  %xres88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 0, !dbg !5470
  %87 = load i32, i32* %xres88, align 4, !dbg !5470
  %add = add i32 %85, %87, !dbg !5471
  %sub89 = sub i32 %83, %add, !dbg !5472
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5473
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 19, !dbg !5474
  store i32 %sub89, i32* %right_margin, align 4, !dbg !5475
  %89 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5476
  %diwstart_h90 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %89, i32 0, i32 6, !dbg !5477
  %90 = load i32, i32* %diwstart_h90, align 8, !dbg !5477
  %91 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5478
  %borderstart_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %91, i32 0, i32 2, !dbg !5479
  %92 = load i32, i32* %borderstart_h, align 8, !dbg !5479
  %sub91 = sub i32 %90, %92, !dbg !5480
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5481
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 18, !dbg !5482
  store i32 %sub91, i32* %left_margin, align 4, !dbg !5483
  %94 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5484
  %borderstart_h92 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %94, i32 0, i32 2, !dbg !5485
  %95 = load i32, i32* %borderstart_h92, align 8, !dbg !5485
  %96 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5486
  %hsync_total93 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %96, i32 0, i32 0, !dbg !5487
  %97 = load i32, i32* %hsync_total93, align 8, !dbg !5487
  %98 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5488
  %borderstop_h94 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %98, i32 0, i32 3, !dbg !5489
  %99 = load i32, i32* %borderstop_h94, align 4, !dbg !5489
  %sub95 = sub i32 %97, %99, !dbg !5490
  %add96 = add i32 %95, %sub95, !dbg !5491
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5492
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 22, !dbg !5493
  store i32 %add96, i32* %hsync_len, align 4, !dbg !5494
  %101 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5495
  %diwstart_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %101, i32 0, i32 7, !dbg !5496
  %102 = load i32, i32* %diwstart_v, align 4, !dbg !5496
  %103 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5497
  %borderstart_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %103, i32 0, i32 4, !dbg !5498
  %104 = load i32, i32* %borderstart_v, align 8, !dbg !5498
  %sub97 = sub i32 %102, %104, !dbg !5499
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5500
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 20, !dbg !5501
  store i32 %sub97, i32* %upper_margin, align 4, !dbg !5502
  %106 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5503
  %borderstop_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %106, i32 0, i32 5, !dbg !5504
  %107 = load i32, i32* %borderstop_v, align 4, !dbg !5504
  %108 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5505
  %diwstart_v98 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %108, i32 0, i32 7, !dbg !5506
  %109 = load i32, i32* %diwstart_v98, align 4, !dbg !5506
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5507
  %yres99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 1, !dbg !5508
  %111 = load i32, i32* %yres99, align 4, !dbg !5508
  %add100 = add i32 %109, %111, !dbg !5509
  %sub101 = sub i32 %107, %add100, !dbg !5510
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5511
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 21, !dbg !5512
  store i32 %sub101, i32* %lower_margin, align 4, !dbg !5513
  %113 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5514
  %borderstop_v102 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %113, i32 0, i32 5, !dbg !5515
  %114 = load i32, i32* %borderstop_v102, align 4, !dbg !5515
  %115 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5516
  %vsync_total = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %115, i32 0, i32 1, !dbg !5517
  %116 = load i32, i32* %vsync_total, align 4, !dbg !5517
  %117 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5518
  %borderstop_v103 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %117, i32 0, i32 5, !dbg !5519
  %118 = load i32, i32* %borderstop_v103, align 4, !dbg !5519
  %sub104 = sub i32 %116, %118, !dbg !5520
  %add105 = add i32 %114, %sub104, !dbg !5521
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5522
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 23, !dbg !5523
  store i32 %add105, i32* %vsync_len, align 4, !dbg !5524
  br label %if.end106, !dbg !5525

if.end106:                                        ; preds = %if.then87, %if.end84
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5526
  %left_margin107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 18, !dbg !5527
  %121 = load i32, i32* %left_margin107, align 4, !dbg !5527
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5528
  %xres108 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 0, !dbg !5529
  %123 = load i32, i32* %xres108, align 4, !dbg !5529
  %add109 = add i32 %121, %123, !dbg !5530
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5531
  %right_margin110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 19, !dbg !5532
  %125 = load i32, i32* %right_margin110, align 4, !dbg !5532
  %add111 = add i32 %add109, %125, !dbg !5533
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5534
  %hsync_len112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 22, !dbg !5535
  %127 = load i32, i32* %hsync_len112, align 4, !dbg !5535
  %add113 = add i32 %add111, %127, !dbg !5536
  store i32 %add113, i32* %hsync_total, align 4, !dbg !5537
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5538
  %upper_margin114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 20, !dbg !5539
  %129 = load i32, i32* %upper_margin114, align 4, !dbg !5539
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5540
  %yres115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 1, !dbg !5541
  %131 = load i32, i32* %yres115, align 4, !dbg !5541
  %add116 = add i32 %129, %131, !dbg !5542
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5543
  %lower_margin117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 21, !dbg !5544
  %133 = load i32, i32* %lower_margin117, align 4, !dbg !5544
  %add118 = add i32 %add116, %133, !dbg !5545
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5546
  %vsync_len119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 23, !dbg !5547
  %135 = load i32, i32* %vsync_len119, align 4, !dbg !5547
  %add120 = add i32 %add118, %135, !dbg !5548
  store i32 %add120, i32* %vtotal, align 4, !dbg !5549
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5550
  %sync121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 24, !dbg !5552
  %137 = load i32, i32* %sync121, align 4, !dbg !5552
  %and122 = and i32 %137, 16, !dbg !5553
  %tobool123 = icmp ne i32 %and122, 0, !dbg !5553
  br i1 %tobool123, label %if.then124, label %if.end142, !dbg !5554

if.then124:                                       ; preds = %if.end106
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5555
  %vmode125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 25, !dbg !5558
  %139 = load i32, i32* %vmode125, align 4, !dbg !5558
  %and126 = and i32 %139, 1, !dbg !5559
  %tobool127 = icmp ne i32 %and126, 0, !dbg !5559
  br i1 %tobool127, label %if.then128, label %if.end129, !dbg !5560

if.then128:                                       ; preds = %if.then124
  %140 = load i32, i32* %vtotal, align 4, !dbg !5561
  %div = udiv i32 %140, 2, !dbg !5561
  store i32 %div, i32* %vtotal, align 4, !dbg !5561
  br label %if.end129, !dbg !5562

if.end129:                                        ; preds = %if.then128, %if.then124
  %141 = load i32, i32* %vtotal, align 4, !dbg !5563
  %cmp130 = icmp ugt i32 %141, 287, !dbg !5565
  br i1 %cmp130, label %if.then131, label %if.else136, !dbg !5566

if.then131:                                       ; preds = %if.end129
  %142 = load i32, i32* %hsync_total, align 4, !dbg !5567
  %cmp132 = icmp ne i32 %142, 863, !dbg !5570
  br i1 %cmp132, label %if.then133, label %if.end135, !dbg !5571

if.then133:                                       ; preds = %if.then131
  store i32 0, i32* %tmp134, align 4, !dbg !5572
  %143 = load i32, i32* %tmp134, align 4, !dbg !5576
  store i32 -22, i32* %retval, align 4, !dbg !5577
  br label %return, !dbg !5577

if.end135:                                        ; preds = %if.then131
  br label %if.end141, !dbg !5578

if.else136:                                       ; preds = %if.end129
  %144 = load i32, i32* %hsync_total, align 4, !dbg !5579
  %cmp137 = icmp ne i32 %144, 857, !dbg !5582
  br i1 %cmp137, label %if.then138, label %if.end140, !dbg !5583

if.then138:                                       ; preds = %if.else136
  store i32 0, i32* %tmp139, align 4, !dbg !5584
  %145 = load i32, i32* %tmp139, align 4, !dbg !5588
  store i32 -22, i32* %retval, align 4, !dbg !5589
  br label %return, !dbg !5589

if.end140:                                        ; preds = %if.else136
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end135
  br label %if.end142, !dbg !5590

if.end142:                                        ; preds = %if.end141, %if.end106
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5591
  %xres_virtual143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 2, !dbg !5592
  %147 = load i32, i32* %xres_virtual143, align 4, !dbg !5592
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5593
  %bits_per_pixel144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 6, !dbg !5594
  %149 = load i32, i32* %bits_per_pixel144, align 4, !dbg !5594
  %call = call i64 @get_line_length(i32 %147, i32 %149) #6, !dbg !5595
  store i64 %call, i64* %line_length, align 8, !dbg !5596
  %150 = load i64, i64* %line_length, align 8, !dbg !5597
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5599
  %yres_virtual145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 3, !dbg !5600
  %152 = load i32, i32* %yres_virtual145, align 4, !dbg !5600
  %conv = zext i32 %152 to i64, !dbg !5599
  %mul = mul i64 %150, %conv, !dbg !5601
  %153 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5602
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %153, i32 0, i32 7, !dbg !5603
  %smem_len = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 2, !dbg !5604
  %154 = load i32, i32* %smem_len, align 8, !dbg !5604
  %conv146 = zext i32 %154 to i64, !dbg !5602
  %cmp147 = icmp ugt i64 %mul, %conv146, !dbg !5605
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !5606

if.then149:                                       ; preds = %if.end142
  store i32 -12, i32* %retval, align 4, !dbg !5607
  br label %return, !dbg !5607

if.end150:                                        ; preds = %if.end142
  store i32 0, i32* %retval, align 4, !dbg !5608
  br label %return, !dbg !5608

return:                                           ; preds = %if.end150, %if.then149, %if.then138, %if.then133, %if.then
  %155 = load i32, i32* %retval, align 4, !dbg !5609
  ret i32 %155, !dbg !5609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_set_par(%struct.fb_info* %info) #3 !dbg !5610 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.pvr2fb_par*, align 8
  %var = alloca %struct.fb_var_screeninfo*, align 8
  %line_length = alloca i64, align 8
  %vtotal = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  call void @llvm.dbg.declare(metadata %struct.pvr2fb_par** %par, metadata !5613, metadata !DIExpression()), !dbg !5614
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5615
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5616
  %1 = load i8*, i8** %par1, align 8, !dbg !5616
  %2 = bitcast i8* %1 to %struct.pvr2fb_par*, !dbg !5617
  store %struct.pvr2fb_par* %2, %struct.pvr2fb_par** %par, align 8, !dbg !5614
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var, metadata !5618, metadata !DIExpression()), !dbg !5619
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5620
  %var2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5621
  store %struct.fb_var_screeninfo* %var2, %struct.fb_var_screeninfo** %var, align 8, !dbg !5619
  call void @llvm.dbg.declare(metadata i64* %line_length, metadata !5622, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata i32* %vtotal, metadata !5624, metadata !DIExpression()), !dbg !5625
  %call = call i32 @pvr2_init_cable() #6, !dbg !5626
  store i32 %call, i32* @cable_type, align 4, !dbg !5627
  %4 = load i32, i32* @cable_type, align 4, !dbg !5628
  %cmp = icmp eq i32 %4, 0, !dbg !5630
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5631

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* @video_output, align 4, !dbg !5632
  %cmp3 = icmp ne i32 %5, 2, !dbg !5633
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5634

if.then:                                          ; preds = %land.lhs.true
  store i32 2, i32* @video_output, align 4, !dbg !5635
  br label %if.end, !dbg !5636

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5637
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 25, !dbg !5638
  %7 = load i32, i32* %vmode, align 4, !dbg !5639
  %and = and i32 %7, 255, !dbg !5639
  store i32 %and, i32* %vmode, align 4, !dbg !5639
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5640
  %vmode4 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 25, !dbg !5642
  %9 = load i32, i32* %vmode4, align 4, !dbg !5642
  %and5 = and i32 %9, 1, !dbg !5643
  %tobool = icmp ne i32 %and5, 0, !dbg !5643
  br i1 %tobool, label %land.lhs.true6, label %if.end9, !dbg !5644

land.lhs.true6:                                   ; preds = %if.end
  %10 = load i32, i32* @video_output, align 4, !dbg !5645
  %cmp7 = icmp ne i32 %10, 2, !dbg !5646
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5647

if.then8:                                         ; preds = %land.lhs.true6
  %11 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5648
  %is_interlaced = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %11, i32 0, i32 9, !dbg !5649
  store i8 1, i8* %is_interlaced, align 8, !dbg !5650
  br label %if.end9, !dbg !5648

if.end9:                                          ; preds = %if.then8, %land.lhs.true6, %if.end
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5651
  %vmode10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 25, !dbg !5653
  %13 = load i32, i32* %vmode10, align 4, !dbg !5653
  %and11 = and i32 %13, 2, !dbg !5654
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5654
  br i1 %tobool12, label %land.lhs.true13, label %if.end16, !dbg !5655

land.lhs.true13:                                  ; preds = %if.end9
  %14 = load i32, i32* @video_output, align 4, !dbg !5656
  %cmp14 = icmp eq i32 %14, 2, !dbg !5657
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5658

if.then15:                                        ; preds = %land.lhs.true13
  %15 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5659
  %is_doublescan = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %15, i32 0, i32 10, !dbg !5660
  store i8 1, i8* %is_doublescan, align 1, !dbg !5661
  br label %if.end16, !dbg !5659

if.end16:                                         ; preds = %if.then15, %land.lhs.true13, %if.end9
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5662
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 18, !dbg !5663
  %17 = load i32, i32* %left_margin, align 4, !dbg !5663
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5664
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0, !dbg !5665
  %19 = load i32, i32* %xres, align 4, !dbg !5665
  %add = add i32 %17, %19, !dbg !5666
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5667
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 19, !dbg !5668
  %21 = load i32, i32* %right_margin, align 4, !dbg !5668
  %add17 = add i32 %add, %21, !dbg !5669
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5670
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 22, !dbg !5671
  %23 = load i32, i32* %hsync_len, align 4, !dbg !5671
  %add18 = add i32 %add17, %23, !dbg !5672
  %24 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5673
  %hsync_total = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %24, i32 0, i32 0, !dbg !5674
  store i32 %add18, i32* %hsync_total, align 8, !dbg !5675
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5676
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 20, !dbg !5677
  %26 = load i32, i32* %upper_margin, align 4, !dbg !5677
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5678
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 1, !dbg !5679
  %28 = load i32, i32* %yres, align 4, !dbg !5679
  %add19 = add i32 %26, %28, !dbg !5680
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5681
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 21, !dbg !5682
  %30 = load i32, i32* %lower_margin, align 4, !dbg !5682
  %add20 = add i32 %add19, %30, !dbg !5683
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5684
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 23, !dbg !5685
  %32 = load i32, i32* %vsync_len, align 4, !dbg !5685
  %add21 = add i32 %add20, %32, !dbg !5686
  %33 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5687
  %vsync_total = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %33, i32 0, i32 1, !dbg !5688
  store i32 %add21, i32* %vsync_total, align 4, !dbg !5689
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5690
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 24, !dbg !5692
  %35 = load i32, i32* %sync, align 4, !dbg !5692
  %and22 = and i32 %35, 16, !dbg !5693
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5693
  br i1 %tobool23, label %if.then24, label %if.else35, !dbg !5694

if.then24:                                        ; preds = %if.end16
  %36 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5695
  %vsync_total25 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %36, i32 0, i32 1, !dbg !5697
  %37 = load i32, i32* %vsync_total25, align 4, !dbg !5697
  store i32 %37, i32* %vtotal, align 4, !dbg !5698
  %38 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5699
  %is_interlaced26 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %38, i32 0, i32 9, !dbg !5701
  %39 = load i8, i8* %is_interlaced26, align 8, !dbg !5701
  %tobool27 = icmp ne i8 %39, 0, !dbg !5699
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5702

if.then28:                                        ; preds = %if.then24
  %40 = load i32, i32* %vtotal, align 4, !dbg !5703
  %div = udiv i32 %40, 2, !dbg !5703
  store i32 %div, i32* %vtotal, align 4, !dbg !5703
  br label %if.end29, !dbg !5704

if.end29:                                         ; preds = %if.then28, %if.then24
  %41 = load i32, i32* %vtotal, align 4, !dbg !5705
  %cmp30 = icmp ugt i32 %41, 287, !dbg !5707
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !5708

if.then31:                                        ; preds = %if.end29
  %42 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5709
  %borderstart_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %42, i32 0, i32 2, !dbg !5711
  store i32 116, i32* %borderstart_h, align 8, !dbg !5712
  %43 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5713
  %borderstart_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %43, i32 0, i32 4, !dbg !5714
  store i32 44, i32* %borderstart_v, align 8, !dbg !5715
  br label %if.end34, !dbg !5716

if.else:                                          ; preds = %if.end29
  %44 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5717
  %borderstart_h32 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %44, i32 0, i32 2, !dbg !5719
  store i32 126, i32* %borderstart_h32, align 8, !dbg !5720
  %45 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5721
  %borderstart_v33 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %45, i32 0, i32 4, !dbg !5722
  store i32 18, i32* %borderstart_v33, align 8, !dbg !5723
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  br label %if.end38, !dbg !5724

if.else35:                                        ; preds = %if.end16
  %46 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5725
  %borderstart_h36 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %46, i32 0, i32 2, !dbg !5727
  store i32 126, i32* %borderstart_h36, align 8, !dbg !5728
  %47 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5729
  %borderstart_v37 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %47, i32 0, i32 4, !dbg !5730
  store i32 40, i32* %borderstart_v37, align 8, !dbg !5731
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.end34
  %48 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5732
  %borderstart_h39 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %48, i32 0, i32 2, !dbg !5733
  %49 = load i32, i32* %borderstart_h39, align 8, !dbg !5733
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5734
  %left_margin40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 18, !dbg !5735
  %51 = load i32, i32* %left_margin40, align 4, !dbg !5735
  %add41 = add i32 %49, %51, !dbg !5736
  %52 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5737
  %diwstart_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %52, i32 0, i32 6, !dbg !5738
  store i32 %add41, i32* %diwstart_h, align 8, !dbg !5739
  %53 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5740
  %borderstart_v42 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %53, i32 0, i32 4, !dbg !5741
  %54 = load i32, i32* %borderstart_v42, align 8, !dbg !5741
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5742
  %upper_margin43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 20, !dbg !5743
  %56 = load i32, i32* %upper_margin43, align 4, !dbg !5743
  %add44 = add i32 %54, %56, !dbg !5744
  %57 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5745
  %diwstart_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %57, i32 0, i32 7, !dbg !5746
  store i32 %add44, i32* %diwstart_v, align 4, !dbg !5747
  %58 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5748
  %diwstart_h45 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %58, i32 0, i32 6, !dbg !5749
  %59 = load i32, i32* %diwstart_h45, align 8, !dbg !5749
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5750
  %xres46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 0, !dbg !5751
  %61 = load i32, i32* %xres46, align 4, !dbg !5751
  %add47 = add i32 %59, %61, !dbg !5752
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5753
  %right_margin48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 19, !dbg !5754
  %63 = load i32, i32* %right_margin48, align 4, !dbg !5754
  %add49 = add i32 %add47, %63, !dbg !5755
  %64 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5756
  %borderstop_h = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %64, i32 0, i32 3, !dbg !5757
  store i32 %add49, i32* %borderstop_h, align 4, !dbg !5758
  %65 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5759
  %diwstart_v50 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %65, i32 0, i32 7, !dbg !5760
  %66 = load i32, i32* %diwstart_v50, align 4, !dbg !5760
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5761
  %yres51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 1, !dbg !5762
  %68 = load i32, i32* %yres51, align 4, !dbg !5762
  %add52 = add i32 %66, %68, !dbg !5763
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5764
  %lower_margin53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 21, !dbg !5765
  %70 = load i32, i32* %lower_margin53, align 4, !dbg !5765
  %add54 = add i32 %add52, %70, !dbg !5766
  %71 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5767
  %borderstop_v = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %71, i32 0, i32 5, !dbg !5768
  store i32 %add54, i32* %borderstop_v, align 4, !dbg !5769
  %72 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5770
  %is_interlaced55 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %72, i32 0, i32 9, !dbg !5772
  %73 = load i8, i8* %is_interlaced55, align 8, !dbg !5772
  %tobool56 = icmp ne i8 %73, 0, !dbg !5770
  br i1 %tobool56, label %if.end60, label %if.then57, !dbg !5773

if.then57:                                        ; preds = %if.end38
  %74 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5774
  %borderstop_v58 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %74, i32 0, i32 5, !dbg !5775
  %75 = load i32, i32* %borderstop_v58, align 4, !dbg !5776
  %div59 = udiv i32 %75, 2, !dbg !5776
  store i32 %div59, i32* %borderstop_v58, align 4, !dbg !5776
  br label %if.end60, !dbg !5774

if.end60:                                         ; preds = %if.then57, %if.end38
  %76 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5777
  %var61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 6, !dbg !5779
  %xres62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var61, i32 0, i32 0, !dbg !5780
  %77 = load i32, i32* %xres62, align 8, !dbg !5780
  %cmp63 = icmp ult i32 %77, 640, !dbg !5781
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5782

if.then64:                                        ; preds = %if.end60
  %78 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5783
  %is_lowres = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %78, i32 0, i32 11, !dbg !5784
  store i8 1, i8* %is_lowres, align 2, !dbg !5785
  br label %if.end65, !dbg !5783

if.end65:                                         ; preds = %if.then64, %if.end60
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5786
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 2, !dbg !5787
  %80 = load i32, i32* %xres_virtual, align 4, !dbg !5787
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5788
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 6, !dbg !5789
  %82 = load i32, i32* %bits_per_pixel, align 4, !dbg !5789
  %call66 = call i64 @get_line_length(i32 %80, i32 %82) #6, !dbg !5790
  store i64 %call66, i64* %line_length, align 8, !dbg !5791
  %83 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5792
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 7, !dbg !5793
  %smem_start = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 1, !dbg !5794
  %84 = load i64, i64* %smem_start, align 8, !dbg !5794
  %85 = load i64, i64* %line_length, align 8, !dbg !5795
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5796
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 5, !dbg !5797
  %87 = load i32, i32* %yoffset, align 4, !dbg !5797
  %conv = zext i32 %87 to i64, !dbg !5796
  %mul = mul i64 %85, %conv, !dbg !5798
  %88 = load i64, i64* %line_length, align 8, !dbg !5799
  %mul67 = mul i64 %mul, %88, !dbg !5800
  %add68 = add i64 %84, %mul67, !dbg !5801
  %89 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5802
  %disp_start = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %89, i32 0, i32 8, !dbg !5803
  store i64 %add68, i64* %disp_start, align 8, !dbg !5804
  %90 = load i64, i64* %line_length, align 8, !dbg !5805
  %conv69 = trunc i64 %90 to i32, !dbg !5805
  %91 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5806
  %fix70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 7, !dbg !5807
  %line_length71 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix70, i32 0, i32 9, !dbg !5808
  store i32 %conv69, i32* %line_length71, align 8, !dbg !5809
  ret i32 0, !dbg !5810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_setcolreg(i32 %regno, i32 %red, i32 %green, i32 %blue, i32 %transp, %struct.fb_info* %info) #3 !dbg !5811 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %red.addr = alloca i32, align 4
  %green.addr = alloca i32, align 4
  %blue.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.pvr2fb_par*, align 8
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %regno.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  store i32 %red, i32* %red.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %red.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  store i32 %green, i32* %green.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %green.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  store i32 %blue, i32* %blue.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blue.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i32 %transp, i32* %transp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %transp.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  call void @llvm.dbg.declare(metadata %struct.pvr2fb_par** %par, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5826
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5827
  %1 = load i8*, i8** %par1, align 8, !dbg !5827
  %2 = bitcast i8* %1 to %struct.pvr2fb_par*, !dbg !5828
  store %struct.pvr2fb_par* %2, %struct.pvr2fb_par** %par, align 8, !dbg !5825
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5829, metadata !DIExpression()), !dbg !5830
  %3 = load i32, i32* %regno.addr, align 4, !dbg !5831
  %4 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5833
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 12, !dbg !5834
  %len = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %cmap, i32 0, i32 1, !dbg !5835
  %5 = load i32, i32* %len, align 4, !dbg !5835
  %cmp = icmp ugt i32 %3, %5, !dbg !5836
  br i1 %cmp, label %if.then, label %if.end, !dbg !5837

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5838
  br label %return, !dbg !5838

if.end:                                           ; preds = %entry
  %6 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5839
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 6, !dbg !5840
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 6, !dbg !5841
  %7 = load i32, i32* %bits_per_pixel, align 8, !dbg !5841
  switch i32 %7, label %sw.default [
    i32 16, label %sw.bb
    i32 24, label %sw.bb6
    i32 32, label %sw.bb13
  ], !dbg !5842

sw.bb:                                            ; preds = %if.end
  %8 = load i32, i32* %red.addr, align 4, !dbg !5843
  %and = and i32 %8, 63488, !dbg !5845
  %9 = load i32, i32* %green.addr, align 4, !dbg !5846
  %and2 = and i32 %9, 64512, !dbg !5847
  %shr = lshr i32 %and2, 5, !dbg !5848
  %or = or i32 %and, %shr, !dbg !5849
  %10 = load i32, i32* %blue.addr, align 4, !dbg !5850
  %and3 = and i32 %10, 63488, !dbg !5851
  %shr4 = lshr i32 %and3, 11, !dbg !5852
  %or5 = or i32 %or, %shr4, !dbg !5853
  store i32 %or5, i32* %tmp, align 4, !dbg !5854
  %11 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5855
  %12 = load i32, i32* %regno.addr, align 4, !dbg !5856
  %13 = load i32, i32* %tmp, align 4, !dbg !5857
  call void @pvr2fb_set_pal_entry(%struct.pvr2fb_par* %11, i32 %12, i32 %13) #6, !dbg !5858
  br label %sw.epilog, !dbg !5859

sw.bb6:                                           ; preds = %if.end
  %14 = load i32, i32* %red.addr, align 4, !dbg !5860
  %shr7 = lshr i32 %14, 8, !dbg !5860
  store i32 %shr7, i32* %red.addr, align 4, !dbg !5860
  %15 = load i32, i32* %green.addr, align 4, !dbg !5861
  %shr8 = lshr i32 %15, 8, !dbg !5861
  store i32 %shr8, i32* %green.addr, align 4, !dbg !5861
  %16 = load i32, i32* %blue.addr, align 4, !dbg !5862
  %shr9 = lshr i32 %16, 8, !dbg !5862
  store i32 %shr9, i32* %blue.addr, align 4, !dbg !5862
  %17 = load i32, i32* %red.addr, align 4, !dbg !5863
  %shl = shl i32 %17, 16, !dbg !5864
  %18 = load i32, i32* %green.addr, align 4, !dbg !5865
  %shl10 = shl i32 %18, 8, !dbg !5866
  %or11 = or i32 %shl, %shl10, !dbg !5867
  %19 = load i32, i32* %blue.addr, align 4, !dbg !5868
  %or12 = or i32 %or11, %19, !dbg !5869
  store i32 %or12, i32* %tmp, align 4, !dbg !5870
  br label %sw.epilog, !dbg !5871

sw.bb13:                                          ; preds = %if.end
  %20 = load i32, i32* %red.addr, align 4, !dbg !5872
  %shr14 = lshr i32 %20, 8, !dbg !5872
  store i32 %shr14, i32* %red.addr, align 4, !dbg !5872
  %21 = load i32, i32* %green.addr, align 4, !dbg !5873
  %shr15 = lshr i32 %21, 8, !dbg !5873
  store i32 %shr15, i32* %green.addr, align 4, !dbg !5873
  %22 = load i32, i32* %blue.addr, align 4, !dbg !5874
  %shr16 = lshr i32 %22, 8, !dbg !5874
  store i32 %shr16, i32* %blue.addr, align 4, !dbg !5874
  %23 = load i32, i32* %transp.addr, align 4, !dbg !5875
  %shl17 = shl i32 %23, 24, !dbg !5876
  %24 = load i32, i32* %red.addr, align 4, !dbg !5877
  %shl18 = shl i32 %24, 16, !dbg !5878
  %or19 = or i32 %shl17, %shl18, !dbg !5879
  %25 = load i32, i32* %green.addr, align 4, !dbg !5880
  %shl20 = shl i32 %25, 8, !dbg !5881
  %or21 = or i32 %or19, %shl20, !dbg !5882
  %26 = load i32, i32* %blue.addr, align 4, !dbg !5883
  %or22 = or i32 %or21, %26, !dbg !5884
  store i32 %or22, i32* %tmp, align 4, !dbg !5885
  %27 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !5886
  %28 = load i32, i32* %regno.addr, align 4, !dbg !5887
  %29 = load i32, i32* %tmp, align 4, !dbg !5888
  call void @pvr2fb_set_pal_entry(%struct.pvr2fb_par* %27, i32 %28, i32 %29) #6, !dbg !5889
  br label %sw.epilog, !dbg !5890

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %tmp23, align 4, !dbg !5891
  %30 = load i32, i32* %tmp23, align 4, !dbg !5894
  store i32 1, i32* %retval, align 4, !dbg !5895
  br label %return, !dbg !5895

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb6, %sw.bb
  %31 = load i32, i32* %regno.addr, align 4, !dbg !5896
  %cmp24 = icmp ult i32 %31, 16, !dbg !5898
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5899

if.then25:                                        ; preds = %sw.epilog
  %32 = load i32, i32* %tmp, align 4, !dbg !5900
  %33 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5901
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 27, !dbg !5902
  %34 = load i8*, i8** %pseudo_palette, align 8, !dbg !5902
  %35 = bitcast i8* %34 to i32*, !dbg !5903
  %36 = load i32, i32* %regno.addr, align 4, !dbg !5904
  %idxprom = zext i32 %36 to i64, !dbg !5905
  %arrayidx = getelementptr i32, i32* %35, i64 %idxprom, !dbg !5905
  store i32 %32, i32* %arrayidx, align 4, !dbg !5906
  br label %if.end26, !dbg !5905

if.end26:                                         ; preds = %if.then25, %sw.epilog
  store i32 0, i32* %retval, align 4, !dbg !5907
  br label %return, !dbg !5907

return:                                           ; preds = %if.end26, %sw.default, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !5908
  ret i32 %37, !dbg !5908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_blank(i32 %blank, %struct.fb_info* %info) #3 !dbg !5909 {
entry:
  %blank.addr = alloca i32, align 4
  %info.addr = alloca %struct.fb_info*, align 8
  store i32 %blank, i32* %blank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blank.addr, metadata !5910, metadata !DIExpression()), !dbg !5911
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  %0 = load i32, i32* %blank.addr, align 4, !dbg !5914
  %tobool = icmp ne i32 %0, 0, !dbg !5914
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5914

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %blank.addr, align 4, !dbg !5915
  br label %cond.end, !dbg !5914

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5914

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ -1, %cond.false ], !dbg !5914
  %conv = trunc i32 %cond to i16, !dbg !5914
  store i16 %conv, i16* @do_blank, align 2, !dbg !5916
  ret i32 0, !dbg !5917
}

; Function Attrs: noredzone
declare dso_local void @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #2

; Function Attrs: noredzone
declare dso_local void @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #2

; Function Attrs: noredzone
declare dso_local void @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_color_bitfields(%struct.fb_var_screeninfo* %var) #3 !dbg !5918 {
entry:
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5923
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %0, i32 0, i32 6, !dbg !5924
  %1 = load i32, i32* %bits_per_pixel, align 4, !dbg !5924
  switch i32 %1, label %sw.epilog [
    i32 16, label %sw.bb
    i32 24, label %sw.bb11
    i32 32, label %sw.bb28
  ], !dbg !5925

sw.bb:                                            ; preds = %entry
  call void @pvr2fb_set_pal_type(i32 1) #6, !dbg !5926
  %2 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5928
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 8, !dbg !5929
  %offset = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red, i32 0, i32 0, !dbg !5930
  store i32 11, i32* %offset, align 4, !dbg !5931
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5932
  %red1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 8, !dbg !5933
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red1, i32 0, i32 1, !dbg !5934
  store i32 5, i32* %length, align 4, !dbg !5935
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5936
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 9, !dbg !5937
  %offset2 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green, i32 0, i32 0, !dbg !5938
  store i32 5, i32* %offset2, align 4, !dbg !5939
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5940
  %green3 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 9, !dbg !5941
  %length4 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green3, i32 0, i32 1, !dbg !5942
  store i32 6, i32* %length4, align 4, !dbg !5943
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5944
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 10, !dbg !5945
  %offset5 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue, i32 0, i32 0, !dbg !5946
  store i32 0, i32* %offset5, align 4, !dbg !5947
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5948
  %blue6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 10, !dbg !5949
  %length7 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue6, i32 0, i32 1, !dbg !5950
  store i32 5, i32* %length7, align 4, !dbg !5951
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5952
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 11, !dbg !5953
  %offset8 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp, i32 0, i32 0, !dbg !5954
  store i32 0, i32* %offset8, align 4, !dbg !5955
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5956
  %transp9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 11, !dbg !5957
  %length10 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp9, i32 0, i32 1, !dbg !5958
  store i32 0, i32* %length10, align 4, !dbg !5959
  br label %sw.epilog, !dbg !5960

sw.bb11:                                          ; preds = %entry
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5961
  %red12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 8, !dbg !5962
  %offset13 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red12, i32 0, i32 0, !dbg !5963
  store i32 16, i32* %offset13, align 4, !dbg !5964
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5965
  %red14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 8, !dbg !5966
  %length15 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red14, i32 0, i32 1, !dbg !5967
  store i32 8, i32* %length15, align 4, !dbg !5968
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5969
  %green16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 9, !dbg !5970
  %offset17 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green16, i32 0, i32 0, !dbg !5971
  store i32 8, i32* %offset17, align 4, !dbg !5972
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5973
  %green18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 9, !dbg !5974
  %length19 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green18, i32 0, i32 1, !dbg !5975
  store i32 8, i32* %length19, align 4, !dbg !5976
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5977
  %blue20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 10, !dbg !5978
  %offset21 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue20, i32 0, i32 0, !dbg !5979
  store i32 0, i32* %offset21, align 4, !dbg !5980
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5981
  %blue22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 10, !dbg !5982
  %length23 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue22, i32 0, i32 1, !dbg !5983
  store i32 8, i32* %length23, align 4, !dbg !5984
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5985
  %transp24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 11, !dbg !5986
  %offset25 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp24, i32 0, i32 0, !dbg !5987
  store i32 0, i32* %offset25, align 4, !dbg !5988
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5989
  %transp26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 11, !dbg !5990
  %length27 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp26, i32 0, i32 1, !dbg !5991
  store i32 0, i32* %length27, align 4, !dbg !5992
  br label %sw.epilog, !dbg !5993

sw.bb28:                                          ; preds = %entry
  call void @pvr2fb_set_pal_type(i32 3) #6, !dbg !5994
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5995
  %red29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 8, !dbg !5996
  %offset30 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red29, i32 0, i32 0, !dbg !5997
  store i32 16, i32* %offset30, align 4, !dbg !5998
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5999
  %red31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 8, !dbg !6000
  %length32 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red31, i32 0, i32 1, !dbg !6001
  store i32 8, i32* %length32, align 4, !dbg !6002
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6003
  %green33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 9, !dbg !6004
  %offset34 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green33, i32 0, i32 0, !dbg !6005
  store i32 8, i32* %offset34, align 4, !dbg !6006
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6007
  %green35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 9, !dbg !6008
  %length36 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green35, i32 0, i32 1, !dbg !6009
  store i32 8, i32* %length36, align 4, !dbg !6010
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6011
  %blue37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 10, !dbg !6012
  %offset38 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue37, i32 0, i32 0, !dbg !6013
  store i32 0, i32* %offset38, align 4, !dbg !6014
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6015
  %blue39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 10, !dbg !6016
  %length40 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue39, i32 0, i32 1, !dbg !6017
  store i32 8, i32* %length40, align 4, !dbg !6018
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6019
  %transp41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 11, !dbg !6020
  %offset42 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp41, i32 0, i32 0, !dbg !6021
  store i32 24, i32* %offset42, align 4, !dbg !6022
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !6023
  %transp43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 11, !dbg !6024
  %length44 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp43, i32 0, i32 1, !dbg !6025
  store i32 8, i32* %length44, align 4, !dbg !6026
  br label %sw.epilog, !dbg !6027

sw.epilog:                                        ; preds = %entry, %sw.bb28, %sw.bb11, %sw.bb
  ret void, !dbg !6028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pvr2fb_set_pal_type(i32 %type) #3 !dbg !6029 {
entry:
  %type.addr = alloca i32, align 4
  %par = alloca %struct.pvr2fb_par*, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  call void @llvm.dbg.declare(metadata %struct.pvr2fb_par** %par, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load %struct.fb_info*, %struct.fb_info** @fb_info, align 8, !dbg !6036
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !6037
  %1 = load i8*, i8** %par1, align 8, !dbg !6037
  %2 = bitcast i8* %1 to %struct.pvr2fb_par*, !dbg !6038
  store %struct.pvr2fb_par* %2, %struct.pvr2fb_par** %par, align 8, !dbg !6035
  %3 = load i32, i32* %type.addr, align 4, !dbg !6039
  %4 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par, align 8, !dbg !6040
  %mmio_base = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %4, i32 0, i32 12, !dbg !6041
  %5 = load i8*, i8** %mmio_base, align 8, !dbg !6041
  %add.ptr = getelementptr i8, i8* %5, i64 264, !dbg !6042
  call void @__writel(i32 %3, i8* %add.ptr) #6, !dbg !6043
  ret void, !dbg !6044
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #3 !dbg !6045 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6049, metadata !DIExpression()), !dbg !6050
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6051, metadata !DIExpression()), !dbg !6050
  %0 = load i32, i32* %val.addr, align 4, !dbg !6050
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6050
  %2 = bitcast i8* %1 to i32*, !dbg !6050
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !6050, !srcloc !6052
  ret void, !dbg !6050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2_init_cable() #3 !dbg !6053 {
entry:
  %0 = load i32, i32* @cable_type, align 4, !dbg !6054
  %cmp = icmp slt i32 %0, 0, !dbg !6056
  br i1 %cmp, label %if.then, label %if.end, !dbg !6057

if.then:                                          ; preds = %entry
  %call = call i32 @__readl(i8* inttoptr (i64 4286578732 to i8*)) #6, !dbg !6058
  %and = and i32 %call, -983041, !dbg !6060
  %or = or i32 %and, 655360, !dbg !6061
  call void @__writel(i32 %or, i8* inttoptr (i64 4286578732 to i8*)) #6, !dbg !6062
  %call1 = call zeroext i16 @__readw(i8* inttoptr (i64 4286578736 to i8*)) #6, !dbg !6063
  %conv = zext i16 %call1 to i32, !dbg !6063
  %shr = ashr i32 %conv, 8, !dbg !6064
  %and2 = and i32 %shr, 3, !dbg !6065
  store i32 %and2, i32* @cable_type, align 4, !dbg !6066
  br label %if.end, !dbg !6067

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @cable_type, align 4, !dbg !6068
  %cmp3 = icmp eq i32 %1, 3, !dbg !6070
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !6071

if.then5:                                         ; preds = %if.end
  call void @__writel(i32 768, i8* inttoptr (i64 2691705856 to i8*)) #6, !dbg !6072
  br label %if.end11, !dbg !6072

if.else:                                          ; preds = %if.end
  %2 = load i32, i32* @cable_type, align 4, !dbg !6073
  %cmp6 = icmp eq i32 %2, 2, !dbg !6075
  br i1 %cmp6, label %if.then8, label %if.else9, !dbg !6076

if.then8:                                         ; preds = %if.else
  call void @__writel(i32 512, i8* inttoptr (i64 2691705856 to i8*)) #6, !dbg !6077
  br label %if.end10, !dbg !6077

if.else9:                                         ; preds = %if.else
  call void @__writel(i32 0, i8* inttoptr (i64 2691705856 to i8*)) #6, !dbg !6078
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  %3 = load i32, i32* @cable_type, align 4, !dbg !6079
  ret i32 %3, !dbg !6080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @__readw(i8* %addr) #3 !dbg !6081 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !6086, metadata !DIExpression()), !dbg !6085
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6085
  %1 = bitcast i8* %0 to i16*, !dbg !6085
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i16* %1) #8, !dbg !6085, !srcloc !6087
  store i16 %2, i16* %ret, align 2, !dbg !6085
  %3 = load i16, i16* %ret, align 2, !dbg !6085
  ret i16 %3, !dbg !6085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pvr2fb_set_pal_entry(%struct.pvr2fb_par* %par, i32 %regno, i32 %val) #3 !dbg !6088 {
entry:
  %par.addr = alloca %struct.pvr2fb_par*, align 8
  %regno.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.pvr2fb_par* %par, %struct.pvr2fb_par** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pvr2fb_par** %par.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  store i32 %regno, i32* %regno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %regno.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6095, metadata !DIExpression()), !dbg !6096
  %0 = load i32, i32* %val.addr, align 4, !dbg !6097
  %1 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %par.addr, align 8, !dbg !6098
  %mmio_base = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %1, i32 0, i32 12, !dbg !6099
  %2 = load i8*, i8** %mmio_base, align 8, !dbg !6099
  %add.ptr = getelementptr i8, i8* %2, i64 4096, !dbg !6100
  %3 = load i32, i32* %regno.addr, align 4, !dbg !6101
  %mul = mul i32 4, %3, !dbg !6102
  %idx.ext = zext i32 %mul to i64, !dbg !6103
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !6103
  call void @__writel(i32 %0, i8* %add.ptr1) #6, !dbg !6104
  ret void, !dbg !6105
}

; Function Attrs: noredzone
declare dso_local void @pci_release_regions(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #2

; Function Attrs: noredzone
declare dso_local i32 @fb_get_options(i8*, i8**) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2fb_setup(i8* %options) #0 section ".init.text" !dbg !6106 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca i8*, align 8
  %this_opt = alloca i8*, align 8
  %cable_arg = alloca [80 x i8], align 16
  %output_arg = alloca [80 x i8], align 16
  store i8* %options, i8** %options.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %options.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  call void @llvm.dbg.declare(metadata i8** %this_opt, metadata !6111, metadata !DIExpression()), !dbg !6112
  call void @llvm.dbg.declare(metadata [80 x i8]* %cable_arg, metadata !6113, metadata !DIExpression()), !dbg !6117
  call void @llvm.dbg.declare(metadata [80 x i8]* %output_arg, metadata !6118, metadata !DIExpression()), !dbg !6119
  %0 = load i8*, i8** %options.addr, align 8, !dbg !6120
  %tobool = icmp ne i8* %0, null, !dbg !6120
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6122

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %options.addr, align 8, !dbg !6123
  %2 = load i8, i8* %1, align 1, !dbg !6124
  %tobool1 = icmp ne i8 %2, 0, !dbg !6124
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6125

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [80 x i8], [80 x i8]* %output_arg, i64 0, i64 0, !dbg !6127
  store i8 0, i8* %arrayidx, align 16, !dbg !6128
  %arrayidx2 = getelementptr [80 x i8], [80 x i8]* %cable_arg, i64 0, i64 0, !dbg !6129
  store i8 0, i8* %arrayidx2, align 16, !dbg !6130
  br label %while.cond, !dbg !6131

while.cond:                                       ; preds = %if.end34, %if.then5, %if.end
  %call = call i8* @strsep(i8** %options.addr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !6132
  store i8* %call, i8** %this_opt, align 8, !dbg !6133
  %tobool3 = icmp ne i8* %call, null, !dbg !6131
  br i1 %tobool3, label %while.body, label %while.end, !dbg !6131

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %this_opt, align 8, !dbg !6134
  %4 = load i8, i8* %3, align 1, !dbg !6137
  %tobool4 = icmp ne i8 %4, 0, !dbg !6137
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6138

if.then5:                                         ; preds = %while.body
  br label %while.cond, !dbg !6139, !llvm.loop !6140

if.end6:                                          ; preds = %while.body
  %5 = load i8*, i8** %this_opt, align 8, !dbg !6142
  %call7 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !6144
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6144
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !6145

if.then9:                                         ; preds = %if.end6
  call void @fb_invert_cmaps() #6, !dbg !6146
  br label %if.end34, !dbg !6148

if.else:                                          ; preds = %if.end6
  %6 = load i8*, i8** %this_opt, align 8, !dbg !6149
  %call10 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i64 6) #6, !dbg !6151
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6151
  br i1 %tobool11, label %if.else14, label %if.then12, !dbg !6152

if.then12:                                        ; preds = %if.else
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %cable_arg, i64 0, i64 0, !dbg !6153
  %7 = load i8*, i8** %this_opt, align 8, !dbg !6155
  %add.ptr = getelementptr i8, i8* %7, i64 6, !dbg !6156
  %call13 = call i8* @strcpy(i8* %arraydecay, i8* %add.ptr) #6, !dbg !6157
  br label %if.end33, !dbg !6158

if.else14:                                        ; preds = %if.else
  %8 = load i8*, i8** %this_opt, align 8, !dbg !6159
  %call15 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 7) #6, !dbg !6161
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6161
  br i1 %tobool16, label %if.else21, label %if.then17, !dbg !6162

if.then17:                                        ; preds = %if.else14
  %arraydecay18 = getelementptr inbounds [80 x i8], [80 x i8]* %output_arg, i64 0, i64 0, !dbg !6163
  %9 = load i8*, i8** %this_opt, align 8, !dbg !6165
  %add.ptr19 = getelementptr i8, i8* %9, i64 7, !dbg !6166
  %call20 = call i8* @strcpy(i8* %arraydecay18, i8* %add.ptr19) #6, !dbg !6167
  br label %if.end32, !dbg !6168

if.else21:                                        ; preds = %if.else14
  %10 = load i8*, i8** %this_opt, align 8, !dbg !6169
  %call22 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i64 5) #6, !dbg !6171
  %tobool23 = icmp ne i32 %call22, 0, !dbg !6171
  br i1 %tobool23, label %if.else25, label %if.then24, !dbg !6172

if.then24:                                        ; preds = %if.else21
  store i32 1, i32* @nopan, align 4, !dbg !6173
  br label %if.end31, !dbg !6175

if.else25:                                        ; preds = %if.else21
  %11 = load i8*, i8** %this_opt, align 8, !dbg !6176
  %call26 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i64 6) #6, !dbg !6178
  %tobool27 = icmp ne i32 %call26, 0, !dbg !6178
  br i1 %tobool27, label %if.else29, label %if.then28, !dbg !6179

if.then28:                                        ; preds = %if.else25
  store i32 1, i32* @nowrap, align 4, !dbg !6180
  br label %if.end30, !dbg !6182

if.else29:                                        ; preds = %if.else25
  %12 = load i8*, i8** %this_opt, align 8, !dbg !6183
  store i8* %12, i8** @mode_option, align 8, !dbg !6185
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then24
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then17
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then12
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then9
  br label %while.cond, !dbg !6131, !llvm.loop !6140

while.end:                                        ; preds = %while.cond
  %arraydecay35 = getelementptr inbounds [80 x i8], [80 x i8]* %cable_arg, i64 0, i64 0, !dbg !6186
  %13 = load i8, i8* %arraydecay35, align 16, !dbg !6186
  %tobool36 = icmp ne i8 %13, 0, !dbg !6186
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !6188

if.then37:                                        ; preds = %while.end
  %arraydecay38 = getelementptr inbounds [80 x i8], [80 x i8]* %cable_arg, i64 0, i64 0, !dbg !6189
  %call39 = call i32 @pvr2_get_param_val(%struct.pvr2_params* getelementptr inbounds ([3 x %struct.pvr2_params], [3 x %struct.pvr2_params]* @cables, i64 0, i64 0), i8* %arraydecay38, i32 3) #6, !dbg !6190
  store i32 %call39, i32* @cable_type, align 4, !dbg !6191
  br label %if.end40, !dbg !6192

if.end40:                                         ; preds = %if.then37, %while.end
  %arraydecay41 = getelementptr inbounds [80 x i8], [80 x i8]* %output_arg, i64 0, i64 0, !dbg !6193
  %14 = load i8, i8* %arraydecay41, align 16, !dbg !6193
  %tobool42 = icmp ne i8 %14, 0, !dbg !6193
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !6195

if.then43:                                        ; preds = %if.end40
  %arraydecay44 = getelementptr inbounds [80 x i8], [80 x i8]* %output_arg, i64 0, i64 0, !dbg !6196
  %call45 = call i32 @pvr2_get_param_val(%struct.pvr2_params* getelementptr inbounds ([3 x %struct.pvr2_params], [3 x %struct.pvr2_params]* @outputs, i64 0, i64 0), i8* %arraydecay44, i32 3) #6, !dbg !6197
  store i32 %call45, i32* @video_output, align 4, !dbg !6198
  br label %if.end46, !dbg !6199

if.end46:                                         ; preds = %if.then43, %if.end40
  store i32 0, i32* %retval, align 4, !dbg !6200
  br label %return, !dbg !6200

return:                                           ; preds = %if.end46, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !6201
  ret i32 %15, !dbg !6201
}

; Function Attrs: noredzone
declare dso_local %struct.fb_info* @framebuffer_alloc(i64, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local i8* @strsep(i8**, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @fb_invert_cmaps() #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pvr2_get_param_val(%struct.pvr2_params* %p, i8* %s, i32 %size) #3 !dbg !6202 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.pvr2_params*, align 8
  %s.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pvr2_params* %p, %struct.pvr2_params** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pvr2_params** %p.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6211, metadata !DIExpression()), !dbg !6212
  store i32 0, i32* %i, align 4, !dbg !6213
  br label %for.cond, !dbg !6215

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6216
  %1 = load i32, i32* %size.addr, align 4, !dbg !6218
  %cmp = icmp slt i32 %0, %1, !dbg !6219
  br i1 %cmp, label %for.body, label %for.end, !dbg !6220

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pvr2_params*, %struct.pvr2_params** %p.addr, align 8, !dbg !6221
  %3 = load i32, i32* %i, align 4, !dbg !6224
  %idxprom = sext i32 %3 to i64, !dbg !6221
  %arrayidx = getelementptr %struct.pvr2_params, %struct.pvr2_params* %2, i64 %idxprom, !dbg !6221
  %name = getelementptr inbounds %struct.pvr2_params, %struct.pvr2_params* %arrayidx, i32 0, i32 1, !dbg !6225
  %4 = load i8*, i8** %name, align 8, !dbg !6225
  %5 = load i8*, i8** %s.addr, align 8, !dbg !6226
  %6 = load i8*, i8** %s.addr, align 8, !dbg !6227
  %call = call i64 @strlen(i8* %6) #6, !dbg !6228
  %call1 = call i32 @strncasecmp(i8* %4, i8* %5, i64 %call) #6, !dbg !6229
  %tobool = icmp ne i32 %call1, 0, !dbg !6229
  br i1 %tobool, label %if.end, label %if.then, !dbg !6230

if.then:                                          ; preds = %for.body
  %7 = load %struct.pvr2_params*, %struct.pvr2_params** %p.addr, align 8, !dbg !6231
  %8 = load i32, i32* %i, align 4, !dbg !6232
  %idxprom2 = sext i32 %8 to i64, !dbg !6231
  %arrayidx3 = getelementptr %struct.pvr2_params, %struct.pvr2_params* %7, i64 %idxprom2, !dbg !6231
  %val = getelementptr inbounds %struct.pvr2_params, %struct.pvr2_params* %arrayidx3, i32 0, i32 0, !dbg !6233
  %9 = load i32, i32* %val, align 8, !dbg !6233
  store i32 %9, i32* %retval, align 4, !dbg !6234
  br label %return, !dbg !6234

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6235

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !6236
  %inc = add i32 %10, 1, !dbg !6236
  store i32 %inc, i32* %i, align 4, !dbg !6236
  br label %for.cond, !dbg !6237, !llvm.loop !6238

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4, !dbg !6240
  br label %return, !dbg !6240

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !6241
  ret i32 %11, !dbg !6241
}

; Function Attrs: noredzone
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4743, !4744, !4745, !4746}
!llvm.ident = !{!4747}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "board_driver", scope: !2, file: !3, line: 1064, type: !4734, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !174, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/pvr2fb.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !25, !31, !36, !42, !49, !55, !64, !72, !78, !84, !91, !99, !105, !119, !124, !130}
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
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 110, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "VO_PAL", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "VO_NTSC", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "VO_VGA", value: 2, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 113, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "PAL_ARGB1555", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "PAL_RGB565", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "PAL_ARGB4444", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "PAL_ARGB8888", value: 3, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 107, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "CT_VGA", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "CT_NONE", value: 1, isUnsigned: true)
!134 = !DIEnumerator(name: "CT_RGB", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "CT_COMPOSITE", value: 3, isUnsigned: true)
!136 = !{!137, !138, !141, !142, !168, !159, !170, !173}
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !140, line: 76, flags: DIFlagFwdDecl)
!140 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvr2fb_par", file: !3, line: 128, size: 960, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !160}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_total", scope: !143, file: !3, line: 129, baseType: !7, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_total", scope: !143, file: !3, line: 130, baseType: !7, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "borderstart_h", scope: !143, file: !3, line: 131, baseType: !7, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "borderstop_h", scope: !143, file: !3, line: 132, baseType: !7, size: 32, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "borderstart_v", scope: !143, file: !3, line: 133, baseType: !7, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "borderstop_v", scope: !143, file: !3, line: 134, baseType: !7, size: 32, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "diwstart_h", scope: !143, file: !3, line: 135, baseType: !7, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "diwstart_v", scope: !143, file: !3, line: 136, baseType: !7, size: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "disp_start", scope: !143, file: !3, line: 138, baseType: !141, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "is_interlaced", scope: !143, file: !3, line: 139, baseType: !155, size: 8, offset: 320)
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "is_doublescan", scope: !143, file: !3, line: 140, baseType: !155, size: 8, offset: 328)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "is_lowres", scope: !143, file: !3, line: 141, baseType: !155, size: 8, offset: 336)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_base", scope: !143, file: !3, line: 143, baseType: !159, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "palette", scope: !143, file: !3, line: 144, baseType: !161, size: 512, offset: 448)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 512, elements: !166)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !163, line: 21, baseType: !164)
!163 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !165, line: 27, baseType: !7)
!165 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167}
!167 = !DISubrange(count: 16)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!174 = !{!175, !177, !184, !191, !196, !201, !206, !0, !4418, !4696, !4699, !4701, !4703, !4705, !4707, !4709, !4711, !4713, !4715, !4717, !4720, !4723, !4730, !4732}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pvr2fb_init244", scope: !2, file: !3, line: 1130, type: !159, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "__exitcall_pvr2fb_exit", scope: !2, file: !3, line: 1131, type: !179, isLocal: true, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !180, line: 117, baseType: !181)
!180 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null}
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author245", scope: !2, file: !3, line: 1133, type: !186, isLocal: true, isDefinition: true, align: 8)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 632, elements: !189)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !{!190}
!190 = !DISubrange(count: 79)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description246", scope: !2, file: !3, line: 1134, type: !193, isLocal: true, isDefinition: true, align: 8)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 624, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 78)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file247", scope: !2, file: !3, line: 1135, type: !198, isLocal: true, isDefinition: true, align: 8)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 312, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 39)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license248", scope: !2, file: !3, line: 1135, type: !203, isLocal: true, isDefinition: true, align: 8)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 152, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 19)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "fb_info", scope: !2, file: !3, line: 147, type: !208, isLocal: true, isDefinition: true)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !210, line: 437, size: 8128, elements: !211)
!210 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212, !218, !219, !220, !221, !257, !258, !299, !322, !385, !397, !416, !417, !427, !428, !429, !4163, !4164, !4166, !4173, !4188, !4316, !4317, !4318, !4319, !4395, !4400, !4401, !4402, !4403, !4404, !4405, !4417}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !209, file: !210, line: 438, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !214, line: 168, baseType: !215)
!214 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 166, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !215, file: !214, line: 167, baseType: !137, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !210, line: 439, baseType: !137, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !210, line: 440, baseType: !137, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !209, file: !210, line: 445, baseType: !137, size: 32, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !209, file: !210, line: 446, baseType: !222, size: 192, offset: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !223, line: 53, size: 192, elements: !224)
!223 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !235, !251}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !222, file: !223, line: 54, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !227, line: 13, baseType: !228)
!227 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !214, line: 175, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 173, size: 64, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !229, file: !214, line: 174, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !163, line: 22, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !165, line: 30, baseType: !234)
!234 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !222, file: !223, line: 55, baseType: !236, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !237, line: 83, baseType: !238)
!237 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !237, line: 71, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !237, line: 72, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 72, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !241, file: !237, line: 73, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !237, line: 20, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !244, file: !237, line: 21, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !248, line: 25, baseType: !249)
!248 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 25, elements: !250)
!250 = !{}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !222, file: !223, line: 59, baseType: !252, size: 128, offset: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !214, line: 178, size: 128, elements: !253)
!253 = !{!254, !256}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !214, line: 179, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !252, file: !214, line: 179, baseType: !255, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !209, file: !210, line: 447, baseType: !222, size: 192, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !209, file: !210, line: 448, baseType: !259, size: 1280, offset: 512)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !260, line: 242, size: 1280, elements: !261)
!260 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !259, file: !260, line: 243, baseType: !164, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !259, file: !260, line: 244, baseType: !164, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !259, file: !260, line: 245, baseType: !164, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !259, file: !260, line: 246, baseType: !164, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !259, file: !260, line: 247, baseType: !164, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !259, file: !260, line: 248, baseType: !164, size: 32, offset: 160)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !259, file: !260, line: 250, baseType: !164, size: 32, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !259, file: !260, line: 251, baseType: !164, size: 32, offset: 224)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !259, file: !260, line: 253, baseType: !271, size: 96, offset: 256)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !260, line: 188, size: 96, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !271, file: !260, line: 189, baseType: !164, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !271, file: !260, line: 190, baseType: !164, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !271, file: !260, line: 191, baseType: !164, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !259, file: !260, line: 254, baseType: !271, size: 96, offset: 352)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !259, file: !260, line: 255, baseType: !271, size: 96, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !259, file: !260, line: 256, baseType: !271, size: 96, offset: 544)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !259, file: !260, line: 258, baseType: !164, size: 32, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !259, file: !260, line: 260, baseType: !164, size: 32, offset: 672)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !259, file: !260, line: 262, baseType: !164, size: 32, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !259, file: !260, line: 263, baseType: !164, size: 32, offset: 736)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !259, file: !260, line: 265, baseType: !164, size: 32, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !259, file: !260, line: 268, baseType: !164, size: 32, offset: 800)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !259, file: !260, line: 269, baseType: !164, size: 32, offset: 832)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !259, file: !260, line: 270, baseType: !164, size: 32, offset: 864)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !259, file: !260, line: 271, baseType: !164, size: 32, offset: 896)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !259, file: !260, line: 272, baseType: !164, size: 32, offset: 928)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !259, file: !260, line: 273, baseType: !164, size: 32, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !259, file: !260, line: 274, baseType: !164, size: 32, offset: 992)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !259, file: !260, line: 275, baseType: !164, size: 32, offset: 1024)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !259, file: !260, line: 276, baseType: !164, size: 32, offset: 1056)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !259, file: !260, line: 277, baseType: !164, size: 32, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !259, file: !260, line: 278, baseType: !164, size: 32, offset: 1120)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !259, file: !260, line: 279, baseType: !296, size: 128, offset: 1152)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 4)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !209, file: !210, line: 449, baseType: !300, size: 640, offset: 1792)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !260, line: 157, size: 640, elements: !301)
!301 = !{!302, !304, !305, !306, !307, !308, !309, !311, !312, !313, !314, !315, !316, !317, !318}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !300, file: !260, line: 158, baseType: !303, size: 128)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !166)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !300, file: !260, line: 159, baseType: !141, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !300, file: !260, line: 161, baseType: !164, size: 32, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !260, line: 162, baseType: !164, size: 32, offset: 224)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !300, file: !260, line: 163, baseType: !164, size: 32, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !300, file: !260, line: 164, baseType: !164, size: 32, offset: 288)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !300, file: !260, line: 165, baseType: !310, size: 16, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !165, line: 24, baseType: !172)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !300, file: !260, line: 166, baseType: !310, size: 16, offset: 336)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !300, file: !260, line: 167, baseType: !310, size: 16, offset: 352)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !300, file: !260, line: 168, baseType: !164, size: 32, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !300, file: !260, line: 169, baseType: !141, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !300, file: !260, line: 171, baseType: !164, size: 32, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !300, file: !260, line: 172, baseType: !164, size: 32, offset: 544)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !300, file: !260, line: 174, baseType: !310, size: 16, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !300, file: !260, line: 175, baseType: !319, size: 32, offset: 592)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 32, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 2)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !209, file: !210, line: 450, baseType: !323, size: 1152, offset: 2432)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !210, line: 63, size: 1152, elements: !324)
!324 = !{!325, !336, !355, !358, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !323, file: !210, line: 64, baseType: !326, size: 256)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !210, line: 52, size: 256, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !326, file: !210, line: 53, baseType: !164, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !326, file: !210, line: 54, baseType: !164, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !326, file: !210, line: 55, baseType: !164, size: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !326, file: !210, line: 56, baseType: !164, size: 32, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !326, file: !210, line: 57, baseType: !164, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !326, file: !210, line: 58, baseType: !164, size: 32, offset: 160)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !326, file: !210, line: 59, baseType: !164, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !326, file: !210, line: 60, baseType: !164, size: 32, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !323, file: !210, line: 65, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !210, line: 766, size: 512, elements: !339)
!339 = !{!340, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !210, line: 767, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !338, file: !210, line: 768, baseType: !162, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !338, file: !210, line: 769, baseType: !162, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !338, file: !210, line: 770, baseType: !162, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !338, file: !210, line: 771, baseType: !162, size: 32, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !338, file: !210, line: 772, baseType: !162, size: 32, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !338, file: !210, line: 773, baseType: !162, size: 32, offset: 224)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !338, file: !210, line: 774, baseType: !162, size: 32, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !338, file: !210, line: 775, baseType: !162, size: 32, offset: 288)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !338, file: !210, line: 776, baseType: !162, size: 32, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !338, file: !210, line: 777, baseType: !162, size: 32, offset: 352)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !338, file: !210, line: 778, baseType: !162, size: 32, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !338, file: !210, line: 779, baseType: !162, size: 32, offset: 416)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !338, file: !210, line: 780, baseType: !162, size: 32, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !323, file: !210, line: 66, baseType: !356, size: 32, offset: 320)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 32, elements: !297)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !165, line: 21, baseType: !155)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !323, file: !210, line: 67, baseType: !359, size: 112, offset: 352)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 112, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 14)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !323, file: !210, line: 68, baseType: !359, size: 112, offset: 464)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !323, file: !210, line: 69, baseType: !359, size: 112, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !323, file: !210, line: 70, baseType: !164, size: 32, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !323, file: !210, line: 71, baseType: !164, size: 32, offset: 736)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !323, file: !210, line: 72, baseType: !164, size: 32, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !323, file: !210, line: 73, baseType: !164, size: 32, offset: 800)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !323, file: !210, line: 74, baseType: !164, size: 32, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !323, file: !210, line: 75, baseType: !164, size: 32, offset: 864)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !323, file: !210, line: 76, baseType: !164, size: 32, offset: 896)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !323, file: !210, line: 77, baseType: !164, size: 32, offset: 928)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !323, file: !210, line: 78, baseType: !164, size: 32, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !323, file: !210, line: 79, baseType: !310, size: 16, offset: 992)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !323, file: !210, line: 80, baseType: !310, size: 16, offset: 1008)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !323, file: !210, line: 81, baseType: !310, size: 16, offset: 1024)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !323, file: !210, line: 82, baseType: !310, size: 16, offset: 1040)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !323, file: !210, line: 83, baseType: !310, size: 16, offset: 1056)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !323, file: !210, line: 84, baseType: !310, size: 16, offset: 1072)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !323, file: !210, line: 85, baseType: !310, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !323, file: !210, line: 86, baseType: !310, size: 16, offset: 1104)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !323, file: !210, line: 87, baseType: !357, size: 8, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !323, file: !210, line: 88, baseType: !357, size: 8, offset: 1128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !323, file: !210, line: 89, baseType: !357, size: 8, offset: 1136)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !323, file: !210, line: 90, baseType: !357, size: 8, offset: 1144)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !209, file: !210, line: 451, baseType: !386, size: 256, offset: 3584)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !387, line: 102, size: 256, elements: !388)
!387 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389, !390, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !386, file: !387, line: 103, baseType: !226, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !386, file: !387, line: 104, baseType: !252, size: 128, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !386, file: !387, line: 105, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !387, line: 21, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !209, file: !210, line: 452, baseType: !398, size: 448, offset: 3840)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !210, line: 185, size: 448, elements: !399)
!399 = !{!400, !403, !404, !405, !406, !407, !408, !409, !410, !411, !415}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !398, file: !210, line: 186, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !163, line: 17, baseType: !357)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !398, file: !210, line: 187, baseType: !162, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !398, file: !210, line: 188, baseType: !162, size: 32, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !398, file: !210, line: 189, baseType: !162, size: 32, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !398, file: !210, line: 190, baseType: !162, size: 32, offset: 160)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !398, file: !210, line: 191, baseType: !162, size: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !210, line: 192, baseType: !162, size: 32, offset: 224)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !398, file: !210, line: 193, baseType: !162, size: 32, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !398, file: !210, line: 194, baseType: !162, size: 32, offset: 288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !398, file: !210, line: 198, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !208, !159, !159, !7}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !398, file: !210, line: 199, baseType: !412, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !209, file: !210, line: 453, baseType: !398, size: 448, offset: 4288)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !209, file: !210, line: 454, baseType: !418, size: 320, offset: 4736)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !260, line: 282, size: 320, elements: !419)
!419 = !{!420, !421, !422, !424, !425, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !418, file: !260, line: 283, baseType: !164, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !418, file: !260, line: 284, baseType: !164, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !418, file: !260, line: 285, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !418, file: !260, line: 286, baseType: !423, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !418, file: !260, line: 287, baseType: !423, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !418, file: !260, line: 288, baseType: !423, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !209, file: !210, line: 455, baseType: !252, size: 128, offset: 5056)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !209, file: !210, line: 456, baseType: !337, size: 64, offset: 5184)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !209, file: !210, line: 462, baseType: !430, size: 64, offset: 5248)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !6, line: 280, size: 6912, elements: !432)
!432 = !{!433, !443, !444, !445, !460, !472, !473, !4160, !4162}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !431, file: !6, line: 284, baseType: !434, size: 224)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !6, line: 182, size: 224, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !434, file: !6, line: 194, baseType: !137, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !434, file: !6, line: 203, baseType: !137, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !434, file: !6, line: 219, baseType: !137, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !434, file: !6, line: 238, baseType: !137, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !6, line: 249, baseType: !5, size: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !434, file: !6, line: 264, baseType: !7, size: 32, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !434, file: !6, line: 272, baseType: !13, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !431, file: !6, line: 294, baseType: !222, size: 192, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !431, file: !6, line: 303, baseType: !222, size: 192, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !431, file: !6, line: 312, baseType: !446, size: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !6, line: 120, size: 256, elements: !449)
!449 = !{!450, !451, !455, !456}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !448, file: !6, line: 128, baseType: !7, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !448, file: !6, line: 146, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!137, !430}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !448, file: !6, line: 160, baseType: !452, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !448, file: !6, line: 174, baseType: !457, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!137, !430, !208}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !431, file: !6, line: 317, baseType: !461, size: 192, offset: 704)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !462, line: 54, size: 192, elements: !463)
!462 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !470, !471}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !461, file: !462, line: 55, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !462, line: 51, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!137, !469, !141, !159}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !462, line: 56, baseType: !469, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !461, file: !462, line: 57, baseType: !137, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !431, file: !6, line: 322, baseType: !252, size: 128, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !431, file: !6, line: 327, baseType: !474, size: 5568, offset: 1024)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !85, line: 461, size: 5568, elements: !475)
!475 = !{!476, !3614, !3616, !3619, !3620, !3671, !3762, !3763, !3764, !3765, !3766, !3775, !3880, !3893, !4087, !4088, !4092, !4094, !4095, !4096, !4100, !4106, !4107, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4148, !4149, !4150, !4153, !4156, !4157, !4158, !4159}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !474, file: !85, line: 462, baseType: !477, size: 512)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !478, line: 64, size: 512, elements: !479)
!478 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !481, !482, !484, !529, !3475, !3608, !3609, !3610, !3611, !3612, !3613}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !477, file: !478, line: 65, baseType: !341, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !477, file: !478, line: 66, baseType: !252, size: 128, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !477, file: !478, line: 67, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !477, file: !478, line: 68, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !478, line: 192, size: 704, elements: !487)
!487 = !{!488, !489, !490, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !486, file: !478, line: 193, baseType: !252, size: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !486, file: !478, line: 194, baseType: !236, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !486, file: !478, line: 195, baseType: !477, size: 512, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !486, file: !478, line: 196, baseType: !492, size: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !478, line: 156, size: 192, elements: !495)
!495 = !{!496, !501, !506}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !494, file: !478, line: 157, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!137, !485, !483}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !478, line: 158, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!341, !485, !483}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !494, file: !478, line: 159, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!137, !485, !483, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !478, line: 148, size: 20736, elements: !513)
!513 = !{!514, !519, !523, !524, !528}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !512, file: !478, line: 149, baseType: !515, size: 192)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 192, elements: !517)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!517 = !{!518}
!518 = !DISubrange(count: 3)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !512, file: !478, line: 150, baseType: !520, size: 4096, offset: 192)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 4096, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !512, file: !478, line: 151, baseType: !137, size: 32, offset: 4288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !512, file: !478, line: 152, baseType: !525, size: 16384, offset: 4320)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 16384, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 2048)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !512, file: !478, line: 153, baseType: !137, size: 32, offset: 20704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !477, file: !478, line: 69, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !478, line: 138, size: 448, elements: !532)
!532 = !{!533, !537, !565, !567, !3437, !3465, !3469}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !531, file: !478, line: 139, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !483}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !531, file: !478, line: 140, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !541, line: 230, size: 128, elements: !542)
!541 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!542 = !{!543, !558}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !540, file: !541, line: 231, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!547, !483, !552, !516}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !214, line: 60, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !549, line: 73, baseType: !550)
!549 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !549, line: 15, baseType: !551)
!551 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !541, line: 30, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !553, file: !541, line: 31, baseType: !341, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !553, file: !541, line: 32, baseType: !557, size: 16, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !214, line: 19, baseType: !172)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !540, file: !541, line: 232, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!547, !483, !552, !341, !562}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 55, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !549, line: 72, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !549, line: 16, baseType: !141)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !531, file: !478, line: 141, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !531, file: !478, line: 142, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !541, line: 84, size: 320, elements: !572)
!572 = !{!573, !574, !578, !3434, !3435}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !571, file: !541, line: 85, baseType: !341, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !571, file: !541, line: 86, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!557, !483, !552, !137}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !571, file: !541, line: 88, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!557, !483, !582, !137}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !541, line: 168, size: 448, elements: !584)
!584 = !{!585, !586, !587, !588, !3429, !3430}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !583, file: !541, line: 169, baseType: !553, size: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !583, file: !541, line: 170, baseType: !562, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !583, file: !541, line: 171, baseType: !159, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !583, file: !541, line: 172, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!547, !592, !483, !582, !516, !766, !562}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 916, size: 1856, align: 32, elements: !594)
!594 = !{!595, !613, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3412, !3413, !3422, !3423, !3424, !3425, !3426, !3427, !3428}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !593, file: !56, line: 920, baseType: !596, size: 128)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !56, line: 917, size: 128, elements: !597)
!597 = !{!598, !604}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !596, file: !56, line: 918, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !600, line: 58, size: 64, elements: !601)
!600 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !600, line: 59, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !596, file: !56, line: 919, baseType: !605, size: 128, align: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !214, line: 216, size: 128, align: 64, elements: !606)
!606 = !{!607, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !214, line: 217, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !605, file: !214, line: 218, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !608}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !593, file: !56, line: 921, baseType: !614, size: 128, offset: 128)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !615, line: 8, size: 128, elements: !616)
!615 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!616 = !{!617, !621}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !614, file: !615, line: 9, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !620, line: 18, flags: DIFlagFwdDecl)
!620 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !614, file: !615, line: 10, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !620, line: 89, size: 1536, elements: !624)
!624 = !{!625, !626, !636, !644, !645, !663, !3362, !3364, !3376, !3377, !3378, !3379, !3380, !3386, !3387, !3388}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !623, file: !620, line: 91, baseType: !7, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !623, file: !620, line: 92, baseType: !627, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !628, line: 277, baseType: !629)
!628 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !628, line: 277, size: 32, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !629, file: !628, line: 277, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !628, line: 70, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !628, line: 65, size: 32, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !633, file: !628, line: 66, baseType: !7, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !623, file: !620, line: 93, baseType: !637, size: 128, offset: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !638, line: 38, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!639 = !{!640, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !638, line: 39, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !637, file: !638, line: 39, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !623, file: !620, line: 94, baseType: !622, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !623, file: !620, line: 95, baseType: !646, size: 128, offset: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !620, line: 47, size: 128, elements: !647)
!647 = !{!648, !660}
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !620, line: 48, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !620, line: 48, size: 64, elements: !650)
!650 = !{!651, !656}
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !620, line: 49, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !620, line: 49, size: 64, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !652, file: !620, line: 50, baseType: !162, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !652, file: !620, line: 50, baseType: !162, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !649, file: !620, line: 52, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !163, line: 23, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !165, line: 31, baseType: !659)
!659 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !620, line: 54, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !623, file: !620, line: 96, baseType: !664, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 610, size: 4224, elements: !666)
!666 = !{!667, !668, !669, !677, !684, !685, !831, !3073, !3074, !3075, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3338, !3346, !3347, !3348, !3358, !3359, !3360, !3361}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !665, file: !56, line: 611, baseType: !557, size: 16)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !665, file: !56, line: 612, baseType: !172, size: 16, offset: 16)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !665, file: !56, line: 613, baseType: !670, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !671, line: 23, baseType: !672)
!671 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 21, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !672, file: !671, line: 22, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !214, line: 32, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !549, line: 49, baseType: !7)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !665, file: !56, line: 614, baseType: !678, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !671, line: 28, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 26, size: 32, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !679, file: !671, line: 27, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !214, line: 33, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !549, line: 50, baseType: !7)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !665, file: !56, line: 615, baseType: !7, size: 32, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !665, file: !56, line: 622, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1864, size: 1536, align: 512, elements: !689)
!689 = !{!690, !694, !707, !711, !717, !721, !727, !731, !735, !739, !743, !744, !750, !754, !778, !807, !811, !817, !822, !826, !827}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !688, file: !56, line: 1865, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!622, !664, !622, !7}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !688, file: !56, line: 1866, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!341, !622, !664, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !700, line: 10, size: 128, elements: !701)
!700 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!701 = !{!702, !706}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !699, file: !700, line: 11, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !159}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !699, file: !700, line: 12, baseType: !159, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !688, file: !56, line: 1867, baseType: !708, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!137, !664, !137}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !688, file: !56, line: 1868, baseType: !712, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!715, !664, !137}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 581, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !688, file: !56, line: 1870, baseType: !718, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!137, !622, !516, !137}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !688, file: !56, line: 1872, baseType: !722, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!137, !664, !622, !557, !725}
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !214, line: 30, baseType: !726)
!726 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !688, file: !56, line: 1873, baseType: !728, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!137, !622, !664, !622}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !688, file: !56, line: 1874, baseType: !732, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!137, !664, !622}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !688, file: !56, line: 1875, baseType: !736, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!137, !664, !622, !341}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !688, file: !56, line: 1876, baseType: !740, size: 64, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!137, !664, !622, !557}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !688, file: !56, line: 1877, baseType: !732, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !688, file: !56, line: 1878, baseType: !745, size: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!137, !664, !622, !557, !748}
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !214, line: 16, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !214, line: 13, baseType: !162)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !688, file: !56, line: 1879, baseType: !751, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!137, !664, !622, !664, !622, !7}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !688, file: !56, line: 1881, baseType: !755, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!137, !622, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 219, size: 640, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !768, !775, !776, !777}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !759, file: !56, line: 220, baseType: !7, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !759, file: !56, line: 221, baseType: !557, size: 16, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !759, file: !56, line: 222, baseType: !670, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !759, file: !56, line: 223, baseType: !678, size: 32, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !759, file: !56, line: 224, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !214, line: 46, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !549, line: 88, baseType: !234)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !759, file: !56, line: 225, baseType: !769, size: 128, offset: 192)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !770, line: 13, size: 128, elements: !771)
!770 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !769, file: !770, line: 14, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !770, line: 8, baseType: !233)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !769, file: !770, line: 15, baseType: !551, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !759, file: !56, line: 226, baseType: !769, size: 128, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !759, file: !56, line: 227, baseType: !769, size: 128, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !759, file: !56, line: 234, baseType: !592, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !688, file: !56, line: 1882, baseType: !779, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!137, !782, !784, !162, !7}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !786, line: 22, size: 1152, elements: !787)
!786 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!787 = !{!788, !789, !790, !791, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !785, file: !786, line: 23, baseType: !162, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !785, file: !786, line: 24, baseType: !557, size: 16, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !785, file: !786, line: 25, baseType: !7, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !785, file: !786, line: 26, baseType: !792, size: 32, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !214, line: 104, baseType: !162)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !785, file: !786, line: 27, baseType: !657, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !785, file: !786, line: 28, baseType: !657, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !785, file: !786, line: 37, baseType: !657, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !785, file: !786, line: 38, baseType: !748, size: 32, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !785, file: !786, line: 39, baseType: !748, size: 32, offset: 352)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !785, file: !786, line: 40, baseType: !670, size: 32, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !785, file: !786, line: 41, baseType: !678, size: 32, offset: 416)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !785, file: !786, line: 42, baseType: !766, size: 64, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !785, file: !786, line: 43, baseType: !769, size: 128, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !785, file: !786, line: 44, baseType: !769, size: 128, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !785, file: !786, line: 45, baseType: !769, size: 128, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !785, file: !786, line: 46, baseType: !769, size: 128, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !785, file: !786, line: 47, baseType: !657, size: 64, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !785, file: !786, line: 48, baseType: !657, size: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !688, file: !56, line: 1883, baseType: !808, size: 64, offset: 960)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!547, !622, !516, !562}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !688, file: !56, line: 1884, baseType: !812, size: 64, offset: 1024)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!137, !664, !815, !657, !657}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !688, file: !56, line: 1886, baseType: !818, size: 64, offset: 1088)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!137, !664, !821, !137}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !688, file: !56, line: 1887, baseType: !823, size: 64, offset: 1152)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!137, !664, !622, !592, !7, !557}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !688, file: !56, line: 1890, baseType: !740, size: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !688, file: !56, line: 1891, baseType: !828, size: 64, offset: 1280)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!137, !664, !715, !137}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !665, file: !56, line: 623, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1416, size: 9472, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !887, !2680, !2762, !2845, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2861, !2865, !2866, !2869, !2870, !2873, !2874, !2875, !2916, !2943, !2944, !2945, !2946, !2947, !2948, !2951, !2953, !2960, !2961, !2963, !2964, !2965, !3024, !3025, !3040, !3041, !3042, !3043, !3044, !3047, !3048, !3049, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !833, file: !56, line: 1417, baseType: !252, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !833, file: !56, line: 1418, baseType: !748, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !833, file: !56, line: 1419, baseType: !155, size: 8, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !833, file: !56, line: 1420, baseType: !141, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !833, file: !56, line: 1421, baseType: !766, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !833, file: !56, line: 1422, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2228, size: 576, elements: !843)
!843 = !{!844, !845, !846, !853, !857, !861, !865, !866, !867, !877, !880, !881, !882, !884, !885, !886}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !842, file: !56, line: 2229, baseType: !341, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !842, file: !56, line: 2230, baseType: !137, size: 32, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !842, file: !56, line: 2238, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!137, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !852, line: 28, flags: DIFlagFwdDecl)
!852 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!853 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !842, file: !56, line: 2239, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 70, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !842, file: !56, line: 2240, baseType: !858, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!622, !841, !137, !341, !159}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !842, file: !56, line: 2242, baseType: !862, size: 64, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !832}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !842, file: !56, line: 2243, baseType: !138, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !56, line: 2244, baseType: !841, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !842, file: !56, line: 2245, baseType: !868, size: 64, offset: 512)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !214, line: 182, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !868, file: !214, line: 183, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !214, line: 186, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !214, line: 187, baseType: !871, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !872, file: !214, line: 187, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !842, file: !56, line: 2247, baseType: !878, offset: 576)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !879, line: 187, elements: !250)
!879 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !842, file: !56, line: 2248, baseType: !878, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !842, file: !56, line: 2249, baseType: !878, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !842, file: !56, line: 2250, baseType: !883, offset: 576)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, elements: !517)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !842, file: !56, line: 2252, baseType: !878, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !842, file: !56, line: 2253, baseType: !878, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !842, file: !56, line: 2254, baseType: !878, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !833, file: !56, line: 1423, baseType: !888, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 1935, size: 1472, elements: !891)
!891 = !{!892, !896, !900, !901, !905, !911, !915, !916, !917, !921, !925, !926, !927, !928, !934, !939, !940, !947, !948, !949, !950, !2664, !2679}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !890, file: !56, line: 1936, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!664, !832}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !890, file: !56, line: 1937, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !664}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !890, file: !56, line: 1938, baseType: !897, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !890, file: !56, line: 1940, baseType: !902, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !664, !137}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !890, file: !56, line: 1941, baseType: !906, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!137, !664, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 40, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !890, file: !56, line: 1942, baseType: !912, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!137, !664}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !890, file: !56, line: 1943, baseType: !897, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !890, file: !56, line: 1944, baseType: !862, size: 64, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !890, file: !56, line: 1945, baseType: !918, size: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!137, !832, !137}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !890, file: !56, line: 1946, baseType: !922, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!137, !832}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !890, file: !56, line: 1947, baseType: !922, size: 64, offset: 640)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !890, file: !56, line: 1948, baseType: !922, size: 64, offset: 704)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !890, file: !56, line: 1949, baseType: !922, size: 64, offset: 768)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !890, file: !56, line: 1950, baseType: !929, size: 64, offset: 832)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!137, !622, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 57, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !890, file: !56, line: 1951, baseType: !935, size: 64, offset: 896)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!137, !832, !938, !516}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !890, file: !56, line: 1952, baseType: !862, size: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !890, file: !56, line: 1954, baseType: !941, size: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!137, !944, !622}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !946, line: 539, flags: DIFlagFwdDecl)
!946 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !890, file: !56, line: 1955, baseType: !941, size: 64, offset: 1088)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !890, file: !56, line: 1956, baseType: !941, size: 64, offset: 1152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !890, file: !56, line: 1957, baseType: !941, size: 64, offset: 1216)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !890, file: !56, line: 1963, baseType: !951, size: 64, offset: 1280)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!137, !832, !954, !977}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !956, line: 68, size: 512, align: 128, elements: !957)
!956 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!957 = !{!958, !959, !2656, !2663}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !956, line: 69, baseType: !141, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !956, line: 77, baseType: !960, size: 320, offset: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !956, line: 77, size: 320, elements: !961)
!961 = !{!962, !1138, !1143, !1171, !1179, !1185, !2587, !2655}
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !956, line: 78, baseType: !963, size: 320)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !956, line: 78, size: 320, elements: !964)
!964 = !{!965, !966, !1136, !1137}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !963, file: !956, line: 84, baseType: !252, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !963, file: !956, line: 86, baseType: !967, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 451, size: 1216, align: 64, elements: !969)
!969 = !{!970, !971, !979, !980, !981, !996, !1005, !1006, !1007, !1008, !1129, !1130, !1133, !1134, !1135}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !968, file: !56, line: 452, baseType: !664, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !968, file: !56, line: 453, baseType: !972, size: 128, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !973, line: 292, size: 128, elements: !974)
!973 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!974 = !{!975, !976, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !972, file: !973, line: 293, baseType: !236)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !972, file: !973, line: 295, baseType: !977, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !214, line: 148, baseType: !7)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !972, file: !973, line: 296, baseType: !159, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !968, file: !56, line: 454, baseType: !977, size: 32, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !968, file: !56, line: 455, baseType: !213, size: 32, offset: 224)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !968, file: !56, line: 460, baseType: !982, size: 128, offset: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !983, line: 125, size: 128, elements: !984)
!983 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!984 = !{!985, !995}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !982, file: !983, line: 126, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !983, line: 31, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !986, file: !983, line: 32, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !983, line: 24, size: 192, align: 64, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !990, file: !983, line: 25, baseType: !141, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !990, file: !983, line: 26, baseType: !989, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !990, file: !983, line: 27, baseType: !989, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !982, file: !983, line: 127, baseType: !989, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !968, file: !56, line: 461, baseType: !997, size: 256, offset: 384)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !998, line: 35, size: 256, elements: !999)
!998 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000, !1001, !1002, !1004}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !997, file: !998, line: 36, baseType: !226, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !997, file: !998, line: 42, baseType: !226, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !997, file: !998, line: 46, baseType: !1003, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !237, line: 29, baseType: !244)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !997, file: !998, line: 47, baseType: !252, size: 128, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !968, file: !56, line: 462, baseType: !141, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !968, file: !56, line: 463, baseType: !141, size: 64, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !968, file: !56, line: 464, baseType: !141, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !968, file: !56, line: 465, baseType: !1009, size: 64, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 367, size: 1408, elements: !1012)
!1012 = !{!1013, !1017, !1021, !1025, !1029, !1033, !1039, !1045, !1049, !1054, !1058, !1062, !1066, !1093, !1097, !1103, !1104, !1105, !1109, !1114, !1118, !1125}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1011, file: !56, line: 368, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!137, !954, !909}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1011, file: !56, line: 369, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!137, !592, !954}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1011, file: !56, line: 372, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!137, !967, !909}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1011, file: !56, line: 375, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!137, !954}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1011, file: !56, line: 381, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!137, !592, !967, !255, !7}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1011, file: !56, line: 383, baseType: !1034, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 290, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1011, file: !56, line: 385, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!137, !592, !967, !766, !7, !7, !1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1011, file: !56, line: 388, baseType: !1046, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!137, !592, !967, !766, !7, !7, !954, !159}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1011, file: !56, line: 393, baseType: !1050, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !967, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !214, line: 125, baseType: !657)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1011, file: !56, line: 394, baseType: !1055, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !954, !7, !7}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1011, file: !56, line: 395, baseType: !1059, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!137, !954, !977}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1011, file: !56, line: 396, baseType: !1063, size: 64, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !954}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1011, file: !56, line: 397, baseType: !1067, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!547, !1070, !1091}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 320, size: 384, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1079, !1080, !1081, !1083, !1084}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1071, file: !56, line: 321, baseType: !592, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1071, file: !56, line: 326, baseType: !766, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1071, file: !56, line: 327, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1070, !551, !551}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1071, file: !56, line: 328, baseType: !159, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1071, file: !56, line: 329, baseType: !137, size: 32, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1071, file: !56, line: 330, baseType: !1082, size: 16, offset: 288)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !163, line: 19, baseType: !310)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1071, file: !56, line: 331, baseType: !1082, size: 16, offset: 304)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !56, line: 332, baseType: !1085, size: 64, offset: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !56, line: 332, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1085, file: !56, line: 333, baseType: !7, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1085, file: !56, line: 334, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 334, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !56, line: 64, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1011, file: !56, line: 402, baseType: !1094, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!137, !967, !954, !954, !18}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1011, file: !56, line: 404, baseType: !1098, size: 64, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!725, !954, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1102, line: 305, baseType: !7)
!1102 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1011, file: !56, line: 405, baseType: !1063, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1011, file: !56, line: 406, baseType: !1026, size: 64, offset: 1024)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1011, file: !56, line: 407, baseType: !1106, size: 64, offset: 1088)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!137, !954, !141, !141}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1011, file: !56, line: 409, baseType: !1110, size: 64, offset: 1152)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !954, !1113, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1011, file: !56, line: 410, baseType: !1115, size: 64, offset: 1216)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!137, !967, !954}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1011, file: !56, line: 413, baseType: !1119, size: 64, offset: 1280)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!137, !1122, !592, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 61, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1011, file: !56, line: 415, baseType: !1126, size: 64, offset: 1344)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !592}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !56, line: 466, baseType: !141, size: 64, offset: 896)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !968, file: !56, line: 467, baseType: !1131, size: 32, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1132, line: 8, baseType: !162)
!1132 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !968, file: !56, line: 468, baseType: !236, offset: 992)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !968, file: !56, line: 469, baseType: !252, size: 128, offset: 1024)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !968, file: !56, line: 470, baseType: !159, size: 64, offset: 1152)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !963, file: !956, line: 87, baseType: !141, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !963, file: !956, line: 94, baseType: !141, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !956, line: 96, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !956, line: 96, size: 64, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1139, file: !956, line: 101, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !214, line: 143, baseType: !657)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !956, line: 103, baseType: !1144, size: 320)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !956, line: 103, size: 320, elements: !1145)
!1145 = !{!1146, !1156, !1159, !1160}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !956, line: 104, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !956, line: 104, size: 128, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1147, file: !956, line: 105, baseType: !252, size: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !956, line: 106, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1147, file: !956, line: 106, size: 128, elements: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !956, line: 107, baseType: !954, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1151, file: !956, line: 109, baseType: !137, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1151, file: !956, line: 110, baseType: !137, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1144, file: !956, line: 117, baseType: !1157, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !956, line: 117, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1144, file: !956, line: 119, baseType: !159, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !956, line: 120, baseType: !1161, size: 64, offset: 256)
!1161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !956, line: 120, size: 64, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1161, file: !956, line: 121, baseType: !159, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1161, file: !956, line: 122, baseType: !141, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !956, line: 123, baseType: !1166, size: 32)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !956, line: 123, size: 32, elements: !1167)
!1167 = !{!1168, !1169, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1166, file: !956, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1166, file: !956, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1166, file: !956, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !956, line: 130, baseType: !1172, size: 192)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !956, line: 130, size: 192, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1172, file: !956, line: 131, baseType: !141, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1172, file: !956, line: 134, baseType: !155, size: 8, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1172, file: !956, line: 135, baseType: !155, size: 8, offset: 72)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1172, file: !956, line: 136, baseType: !213, size: 32, offset: 96)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1172, file: !956, line: 137, baseType: !7, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !956, line: 139, baseType: !1180, size: 256)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !956, line: 139, size: 256, elements: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1180, file: !956, line: 140, baseType: !141, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1180, file: !956, line: 141, baseType: !213, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1180, file: !956, line: 143, baseType: !252, size: 128, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !956, line: 145, baseType: !1186, size: 256)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !956, line: 145, size: 256, elements: !1187)
!1187 = !{!1188, !1189, !1191, !1192, !2586}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1186, file: !956, line: 146, baseType: !141, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1186, file: !956, line: 147, baseType: !1190, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !946, line: 509, baseType: !954)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1186, file: !956, line: 148, baseType: !141, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !956, line: 149, baseType: !1193, size: 64, offset: 192)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !956, line: 149, size: 64, elements: !1194)
!1194 = !{!1195, !2585}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1193, file: !956, line: 150, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !956, line: 388, size: 7296, elements: !1198)
!1198 = !{!1199, !2581}
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !956, line: 389, baseType: !1200, size: 7296)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !956, line: 389, size: 7296, elements: !1201)
!1201 = !{!1202, !1320, !1321, !1322, !1326, !1327, !1328, !1329, !1330, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1371, !1377, !1380, !1420, !1421, !2565, !2566, !2569, !2570, !2571, !2574, !2575, !2576, !2579, !2580}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1200, file: !956, line: 390, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !956, line: 305, size: 1472, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1220, !1221, !1226, !1227, !1230, !1314, !1315, !1316, !1317, !1318}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1204, file: !956, line: 308, baseType: !141, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1204, file: !956, line: 309, baseType: !141, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1204, file: !956, line: 313, baseType: !1203, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1204, file: !956, line: 313, baseType: !1203, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1204, file: !956, line: 315, baseType: !990, size: 192, align: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1204, file: !956, line: 323, baseType: !141, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1204, file: !956, line: 327, baseType: !1196, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1204, file: !956, line: 333, baseType: !1214, size: 64, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !946, line: 284, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !946, line: 284, size: 64, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1215, file: !946, line: 284, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1219, line: 19, baseType: !141)
!1219 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1204, file: !956, line: 334, baseType: !141, size: 64, offset: 640)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1204, file: !956, line: 343, baseType: !1222, size: 256, offset: 704)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1204, file: !956, line: 340, size: 256, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1222, file: !956, line: 341, baseType: !990, size: 192, align: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1222, file: !956, line: 342, baseType: !141, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1204, file: !956, line: 351, baseType: !252, size: 128, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1204, file: !956, line: 353, baseType: !1228, size: 64, offset: 1088)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !956, line: 353, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1204, file: !956, line: 356, baseType: !1231, size: 64, offset: 1152)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !26, line: 557, size: 832, elements: !1234)
!1234 = !{!1235, !1239, !1240, !1244, !1248, !1288, !1292, !1296, !1300, !1301, !1302, !1306, !1310}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1233, file: !26, line: 558, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !1203}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1233, file: !26, line: 559, baseType: !1236, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1233, file: !26, line: 560, baseType: !1241, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!137, !1203, !141}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1233, file: !26, line: 561, baseType: !1245, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!137, !1203}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1233, file: !26, line: 562, baseType: !1249, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !956, line: 682, baseType: !7)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !26, line: 508, size: 768, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1268, !1275, !1281, !1282, !1283, !1285, !1287}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1254, file: !26, line: 509, baseType: !1203, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !26, line: 510, baseType: !7, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1254, file: !26, line: 511, baseType: !977, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1254, file: !26, line: 512, baseType: !141, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1254, file: !26, line: 513, baseType: !141, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1254, file: !26, line: 514, baseType: !1262, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !946, line: 385, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !946, line: 385, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1264, file: !946, line: 385, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1219, line: 15, baseType: !141)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1254, file: !26, line: 516, baseType: !1269, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !946, line: 359, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !946, line: 359, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1271, file: !946, line: 359, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1219, line: 16, baseType: !141)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1254, file: !26, line: 519, baseType: !1276, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1219, line: 21, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1219, line: 21, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1277, file: !1219, line: 21, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1219, line: 14, baseType: !141)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1254, file: !26, line: 521, baseType: !954, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1254, file: !26, line: 522, baseType: !954, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1254, file: !26, line: 528, baseType: !1284, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1254, file: !26, line: 532, baseType: !1286, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1254, file: !26, line: 536, baseType: !1190, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1233, file: !26, line: 563, baseType: !1289, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1252, !1253, !25}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1233, file: !26, line: 565, baseType: !1293, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !1253, !141, !141}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1233, file: !26, line: 567, baseType: !1297, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!141, !1203}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1233, file: !26, line: 571, baseType: !1249, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1233, file: !26, line: 574, baseType: !1249, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1233, file: !26, line: 579, baseType: !1303, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!137, !1203, !141, !159, !137, !137}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1233, file: !26, line: 585, baseType: !1307, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!341, !1203}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1233, file: !26, line: 615, baseType: !1311, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!954, !1203, !141}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1204, file: !956, line: 359, baseType: !141, size: 64, offset: 1216)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1204, file: !956, line: 361, baseType: !592, size: 64, offset: 1280)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1204, file: !956, line: 362, baseType: !159, size: 64, offset: 1344)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1204, file: !956, line: 365, baseType: !226, size: 64, offset: 1408)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1204, file: !956, line: 373, baseType: !1319, offset: 1472)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !956, line: 296, elements: !250)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1200, file: !956, line: 391, baseType: !986, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1200, file: !956, line: 392, baseType: !657, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1200, file: !956, line: 394, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!141, !592, !141, !141, !141, !141}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1200, file: !956, line: 398, baseType: !141, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1200, file: !956, line: 399, baseType: !141, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1200, file: !956, line: 405, baseType: !141, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1200, file: !956, line: 406, baseType: !141, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1200, file: !956, line: 407, baseType: !1331, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !946, line: 286, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !946, line: 286, size: 64, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1333, file: !946, line: 286, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1219, line: 18, baseType: !141)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1200, file: !956, line: 416, baseType: !213, size: 32, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1200, file: !956, line: 428, baseType: !213, size: 32, offset: 608)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1200, file: !956, line: 437, baseType: !213, size: 32, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1200, file: !956, line: 447, baseType: !213, size: 32, offset: 672)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1200, file: !956, line: 450, baseType: !226, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1200, file: !956, line: 452, baseType: !137, size: 32, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1200, file: !956, line: 454, baseType: !236, offset: 800)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1200, file: !956, line: 457, baseType: !997, size: 256, offset: 832)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1200, file: !956, line: 459, baseType: !252, size: 128, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1200, file: !956, line: 466, baseType: !141, size: 64, offset: 1216)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1200, file: !956, line: 467, baseType: !141, size: 64, offset: 1280)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1200, file: !956, line: 469, baseType: !141, size: 64, offset: 1344)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1200, file: !956, line: 470, baseType: !141, size: 64, offset: 1408)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1200, file: !956, line: 471, baseType: !228, size: 64, offset: 1472)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1200, file: !956, line: 472, baseType: !141, size: 64, offset: 1536)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1200, file: !956, line: 473, baseType: !141, size: 64, offset: 1600)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1200, file: !956, line: 474, baseType: !141, size: 64, offset: 1664)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1200, file: !956, line: 475, baseType: !141, size: 64, offset: 1728)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1200, file: !956, line: 477, baseType: !236, offset: 1792)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1200, file: !956, line: 478, baseType: !141, size: 64, offset: 1792)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1200, file: !956, line: 478, baseType: !141, size: 64, offset: 1856)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1200, file: !956, line: 478, baseType: !141, size: 64, offset: 1920)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1200, file: !956, line: 478, baseType: !141, size: 64, offset: 1984)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1200, file: !956, line: 479, baseType: !141, size: 64, offset: 2048)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1200, file: !956, line: 479, baseType: !141, size: 64, offset: 2112)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1200, file: !956, line: 479, baseType: !141, size: 64, offset: 2176)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1200, file: !956, line: 480, baseType: !141, size: 64, offset: 2240)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1200, file: !956, line: 480, baseType: !141, size: 64, offset: 2304)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1200, file: !956, line: 480, baseType: !141, size: 64, offset: 2368)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1200, file: !956, line: 480, baseType: !141, size: 64, offset: 2432)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1200, file: !956, line: 482, baseType: !1368, size: 2816, offset: 2496)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 2816, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 44)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1200, file: !956, line: 488, baseType: !1372, size: 256, offset: 5312)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1373, line: 60, size: 256, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1372, file: !1373, line: 61, baseType: !1376, size: 256)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !297)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1200, file: !956, line: 490, baseType: !1378, size: 64, offset: 5568)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !956, line: 490, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1200, file: !956, line: 493, baseType: !1381, size: 896, offset: 5632)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1382, line: 53, baseType: !1383)
!1382 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1382, line: 13, size: 896, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1391, !1392, !1393, !1394, !1414, !1415, !1416}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1383, file: !1382, line: 18, baseType: !657, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1383, file: !1382, line: 28, baseType: !228, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1383, file: !1382, line: 31, baseType: !997, size: 256, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1383, file: !1382, line: 32, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1382, line: 32, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1383, file: !1382, line: 37, baseType: !172, size: 16, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !1382, line: 40, baseType: !222, size: 192, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1383, file: !1382, line: 41, baseType: !159, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1383, file: !1382, line: 42, baseType: !1395, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1398, line: 13, size: 896, elements: !1399)
!1398 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1397, file: !1398, line: 14, baseType: !159, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1397, file: !1398, line: 15, baseType: !141, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1397, file: !1398, line: 17, baseType: !141, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1397, file: !1398, line: 17, baseType: !141, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1397, file: !1398, line: 19, baseType: !551, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1397, file: !1398, line: 21, baseType: !551, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1397, file: !1398, line: 22, baseType: !551, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1397, file: !1398, line: 23, baseType: !551, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1397, file: !1398, line: 24, baseType: !551, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1397, file: !1398, line: 25, baseType: !551, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1397, file: !1398, line: 26, baseType: !551, size: 64, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1397, file: !1398, line: 27, baseType: !551, size: 64, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1397, file: !1398, line: 28, baseType: !551, size: 64, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1397, file: !1398, line: 29, baseType: !551, size: 64, offset: 832)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1383, file: !1382, line: 44, baseType: !213, size: 32, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1383, file: !1382, line: 50, baseType: !1082, size: 16, offset: 864)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1383, file: !1382, line: 51, baseType: !1417, size: 16, offset: 880)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !163, line: 18, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !165, line: 23, baseType: !1419)
!1419 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !956, line: 495, baseType: !141, size: 64, offset: 6528)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1200, file: !956, line: 497, baseType: !1422, size: 64, offset: 6592)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !956, line: 381, size: 384, elements: !1424)
!1424 = !{!1425, !1426, !2564}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1423, file: !956, line: 382, baseType: !213, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1423, file: !956, line: 383, baseType: !1427, size: 128, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !956, line: 376, size: 128, elements: !1428)
!1428 = !{!1429, !2562}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1427, file: !956, line: 377, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1432, line: 640, size: 48640, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1440, !1442, !1443, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1460, !1478, !1489, !1572, !1573, !1574, !1585, !1586, !1588, !1589, !1590, !1591, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1669, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1744, !1746, !1747, !1748, !1760, !1761, !1762, !1763, !1764, !1765, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1789, !1794, !1974, !1975, !1976, !1977, !1978, !1981, !1984, !1987, !1990, !2016, !2117, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2161, !2162, !2163, !2164, !2165, !2170, !2171, !2172, !2175, !2176, !2179, !2182, !2185, !2188, !2220, !2223, !2224, !2303, !2304, !2307, !2308, !2311, !2312, !2313, !2317, !2318, !2319, !2332, !2333, !2334, !2344, !2349, !2352, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1431, file: !1432, line: 646, baseType: !1435, size: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1436, line: 56, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1436, line: 57, baseType: !141, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1435, file: !1436, line: 58, baseType: !162, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1431, file: !1432, line: 649, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !551)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1431, file: !1432, line: 657, baseType: !159, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1431, file: !1432, line: 658, baseType: !1444, size: 32, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1445, line: 113, baseType: !1446)
!1445 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1445, line: 111, size: 32, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1446, file: !1445, line: 112, baseType: !213, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1431, file: !1432, line: 660, baseType: !7, size: 32, offset: 288)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1431, file: !1432, line: 661, baseType: !7, size: 32, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1431, file: !1432, line: 684, baseType: !137, size: 32, offset: 352)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1431, file: !1432, line: 686, baseType: !137, size: 32, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1431, file: !1432, line: 687, baseType: !137, size: 32, offset: 416)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1431, file: !1432, line: 688, baseType: !137, size: 32, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1431, file: !1432, line: 689, baseType: !7, size: 32, offset: 480)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1431, file: !1432, line: 691, baseType: !1457, size: 64, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1432, line: 691, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1431, file: !1432, line: 692, baseType: !1461, size: 832, offset: 576)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1432, line: 451, size: 832, elements: !1462)
!1462 = !{!1463, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1461, file: !1432, line: 453, baseType: !1464, size: 128)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1432, line: 325, size: 128, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1464, file: !1432, line: 326, baseType: !141, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1464, file: !1432, line: 327, baseType: !162, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1461, file: !1432, line: 454, baseType: !990, size: 192, align: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1461, file: !1432, line: 455, baseType: !252, size: 128, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1461, file: !1432, line: 456, baseType: !7, size: 32, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1461, file: !1432, line: 458, baseType: !657, size: 64, offset: 512)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1461, file: !1432, line: 459, baseType: !657, size: 64, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1461, file: !1432, line: 460, baseType: !657, size: 64, offset: 640)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1461, file: !1432, line: 461, baseType: !657, size: 64, offset: 704)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1461, file: !1432, line: 463, baseType: !657, size: 64, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1461, file: !1432, line: 465, baseType: !1477, offset: 832)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1432, line: 415, elements: !250)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1431, file: !1432, line: 693, baseType: !1479, size: 384, offset: 1408)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1432, line: 489, size: 384, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1479, file: !1432, line: 490, baseType: !252, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1479, file: !1432, line: 491, baseType: !141, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1479, file: !1432, line: 492, baseType: !141, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1479, file: !1432, line: 493, baseType: !7, size: 32, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1479, file: !1432, line: 494, baseType: !172, size: 16, offset: 288)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1479, file: !1432, line: 495, baseType: !172, size: 16, offset: 304)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1479, file: !1432, line: 497, baseType: !1488, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1431, file: !1432, line: 697, baseType: !1490, size: 1792, offset: 1792)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1432, line: 507, size: 1792, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1569, !1570}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1490, file: !1432, line: 508, baseType: !990, size: 192, align: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1490, file: !1432, line: 515, baseType: !657, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1490, file: !1432, line: 516, baseType: !657, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1490, file: !1432, line: 517, baseType: !657, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1490, file: !1432, line: 518, baseType: !657, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1490, file: !1432, line: 519, baseType: !657, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1490, file: !1432, line: 526, baseType: !232, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1490, file: !1432, line: 527, baseType: !657, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1490, file: !1432, line: 528, baseType: !7, size: 32, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1490, file: !1432, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1490, file: !1432, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1490, file: !1432, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1490, file: !1432, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1490, file: !1432, line: 563, baseType: !1506, size: 512, offset: 704)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1507)
!1507 = !{!1508, !1516, !1517, !1522, !1565, !1566, !1567, !1568}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1506, file: !32, line: 119, baseType: !1509, size: 256)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1510, line: 9, size: 256, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1509, file: !1510, line: 10, baseType: !990, size: 192, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1509, file: !1510, line: 11, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1515, line: 29, baseType: !232)
!1515 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1506, file: !32, line: 120, baseType: !1514, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1506, file: !32, line: 121, baseType: !1518, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!31, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1506, file: !32, line: 122, baseType: !1523, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1525)
!1525 = !{!1526, !1546, !1547, !1550, !1555, !1556, !1560, !1564}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1524, file: !32, line: 160, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 214, size: 4608, align: 512, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !32, line: 215, baseType: !1003)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1528, file: !32, line: 216, baseType: !7, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1528, file: !32, line: 217, baseType: !7, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1528, file: !32, line: 218, baseType: !7, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1528, file: !32, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1528, file: !32, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1528, file: !32, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1528, file: !32, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1528, file: !32, line: 233, baseType: !1514, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1528, file: !32, line: 234, baseType: !1521, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1528, file: !32, line: 235, baseType: !1514, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1528, file: !32, line: 236, baseType: !1521, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1528, file: !32, line: 237, baseType: !1543, size: 4096, offset: 512)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1524, size: 4096, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 8)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1524, file: !32, line: 161, baseType: !7, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1524, file: !32, line: 162, baseType: !1548, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !214, line: 27, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !549, line: 96, baseType: !137)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1524, file: !32, line: 163, baseType: !1551, size: 32, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !628, line: 276, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !628, line: 276, size: 32, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1552, file: !628, line: 276, baseType: !632, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1524, file: !32, line: 164, baseType: !1521, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1524, file: !32, line: 165, baseType: !1557, size: 128, offset: 256)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1510, line: 14, size: 128, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1557, file: !1510, line: 15, baseType: !982, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1524, file: !32, line: 166, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1514}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1524, file: !32, line: 167, baseType: !1514, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1506, file: !32, line: 123, baseType: !402, size: 8, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1506, file: !32, line: 124, baseType: !402, size: 8, offset: 456)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1506, file: !32, line: 125, baseType: !402, size: 8, offset: 464)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1506, file: !32, line: 126, baseType: !402, size: 8, offset: 472)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1490, file: !1432, line: 572, baseType: !1506, size: 512, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1490, file: !1432, line: 580, baseType: !1571, size: 64, offset: 1728)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1431, file: !1432, line: 721, baseType: !7, size: 32, offset: 3584)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1431, file: !1432, line: 722, baseType: !137, size: 32, offset: 3616)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1431, file: !1432, line: 723, baseType: !1575, size: 64, offset: 3648)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1578, line: 17, baseType: !1579)
!1578 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1578, line: 17, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1579, file: !1578, line: 17, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 1)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1431, file: !1432, line: 724, baseType: !1577, size: 64, offset: 3712)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1431, file: !1432, line: 749, baseType: !1587, offset: 3776)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1432, line: 290, elements: !250)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1431, file: !1432, line: 751, baseType: !252, size: 128, offset: 3776)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1431, file: !1432, line: 757, baseType: !1196, size: 64, offset: 3904)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1431, file: !1432, line: 758, baseType: !1196, size: 64, offset: 3968)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1431, file: !1432, line: 761, baseType: !1592, size: 320, offset: 4032)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1373, line: 34, size: 320, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1592, file: !1373, line: 35, baseType: !657, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1592, file: !1373, line: 36, baseType: !1596, size: 256, offset: 64)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1203, size: 256, elements: !297)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1431, file: !1432, line: 766, baseType: !137, size: 32, offset: 4352)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1431, file: !1432, line: 767, baseType: !137, size: 32, offset: 4384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1431, file: !1432, line: 768, baseType: !137, size: 32, offset: 4416)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1431, file: !1432, line: 770, baseType: !137, size: 32, offset: 4448)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1431, file: !1432, line: 772, baseType: !141, size: 64, offset: 4480)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1431, file: !1432, line: 775, baseType: !7, size: 32, offset: 4544)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1431, file: !1432, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1431, file: !1432, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1431, file: !1432, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1431, file: !1432, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1431, file: !1432, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1431, file: !1432, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1431, file: !1432, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1431, file: !1432, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1431, file: !1432, line: 831, baseType: !141, size: 64, offset: 4672)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1431, file: !1432, line: 833, baseType: !1613, size: 384, offset: 4736)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 384, elements: !1614)
!1614 = !{!1615, !1620}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1613, file: !37, line: 26, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!551, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !37, line: 27, baseType: !1621, size: 320, offset: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1613, file: !37, line: 27, size: 320, elements: !1622)
!1622 = !{!1623, !1632, !1659}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1621, file: !37, line: 36, baseType: !1624, size: 320)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !37, line: 29, size: 320, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1624, file: !37, line: 30, baseType: !173, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1624, file: !37, line: 31, baseType: !162, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !37, line: 32, baseType: !162, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1624, file: !37, line: 33, baseType: !162, size: 32, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1624, file: !37, line: 34, baseType: !657, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1624, file: !37, line: 35, baseType: !173, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1621, file: !37, line: 46, baseType: !1633, size: 192)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !37, line: 38, size: 192, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1658}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1633, file: !37, line: 39, baseType: !1548, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1633, file: !37, line: 40, baseType: !36, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !37, line: 41, baseType: !1638, size: 64, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !37, line: 41, size: 64, elements: !1639)
!1639 = !{!1640, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1638, file: !37, line: 42, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1643, line: 7, size: 128, elements: !1644)
!1643 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1642, file: !1643, line: 8, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !549, line: 93, baseType: !234)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1642, file: !1643, line: 9, baseType: !234, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1638, file: !37, line: 43, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1651, line: 7, size: 64, elements: !1652)
!1651 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1657}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1650, file: !1651, line: 8, baseType: !1654, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1651, line: 5, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !163, line: 20, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !165, line: 26, baseType: !137)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1650, file: !1651, line: 9, baseType: !1655, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1633, file: !37, line: 45, baseType: !657, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1621, file: !37, line: 54, baseType: !1660, size: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !37, line: 48, size: 256, elements: !1661)
!1661 = !{!1662, !1665, !1666, !1667, !1668}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1660, file: !37, line: 49, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1660, file: !37, line: 50, baseType: !137, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1660, file: !37, line: 51, baseType: !137, size: 32, offset: 96)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1660, file: !37, line: 52, baseType: !141, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1660, file: !37, line: 53, baseType: !141, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1431, file: !1432, line: 835, baseType: !1670, size: 32, offset: 5120)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !214, line: 22, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !549, line: 28, baseType: !137)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1431, file: !1432, line: 836, baseType: !1670, size: 32, offset: 5152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1431, file: !1432, line: 840, baseType: !141, size: 64, offset: 5184)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1431, file: !1432, line: 849, baseType: !1430, size: 64, offset: 5248)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1431, file: !1432, line: 852, baseType: !1430, size: 64, offset: 5312)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1431, file: !1432, line: 857, baseType: !252, size: 128, offset: 5376)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1431, file: !1432, line: 858, baseType: !252, size: 128, offset: 5504)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1431, file: !1432, line: 859, baseType: !1430, size: 64, offset: 5632)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1431, file: !1432, line: 867, baseType: !252, size: 128, offset: 5696)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1431, file: !1432, line: 868, baseType: !252, size: 128, offset: 5824)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1431, file: !1432, line: 871, baseType: !1682, size: 64, offset: 5952)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !65, line: 59, size: 768, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1690, !1691, !1698, !1699}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1683, file: !65, line: 61, baseType: !1444, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1683, file: !65, line: 62, baseType: !7, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1683, file: !65, line: 63, baseType: !236, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1683, file: !65, line: 65, baseType: !1689, size: 256, offset: 64)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 256, elements: !297)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1683, file: !65, line: 66, baseType: !868, size: 64, offset: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1683, file: !65, line: 68, baseType: !1692, size: 128, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1693, line: 40, baseType: !1694)
!1693 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1693, line: 36, size: 128, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !1693, line: 37, baseType: !236)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1694, file: !1693, line: 38, baseType: !252, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1683, file: !65, line: 69, baseType: !605, size: 128, align: 64, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1683, file: !65, line: 70, baseType: !1700, size: 128, offset: 640)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1701, size: 128, elements: !1583)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !65, line: 54, size: 128, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1701, file: !65, line: 55, baseType: !137, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1701, file: !65, line: 56, baseType: !1705, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1707, line: 20, size: 1088, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1714, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1730, !1733, !1734}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1706, file: !1707, line: 21, baseType: !1710, size: 32)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1711, line: 19, size: 32, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1710, file: !1711, line: 20, baseType: !1444, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1706, file: !1707, line: 22, baseType: !1715, size: 192, offset: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1716, line: 19, size: 192, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !{!1718, !1719, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1715, file: !1716, line: 20, baseType: !972, size: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1715, file: !1716, line: 21, baseType: !7, size: 32, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1715, file: !1716, line: 22, baseType: !7, size: 32, offset: 160)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1706, file: !1707, line: 23, baseType: !605, size: 128, align: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1706, file: !1707, line: 24, baseType: !7, size: 32, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1706, file: !1707, line: 25, baseType: !1430, size: 64, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1706, file: !1707, line: 26, baseType: !1157, size: 64, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1706, file: !1707, line: 27, baseType: !7, size: 32, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1706, file: !1707, line: 28, baseType: !1705, size: 64, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1706, file: !1707, line: 32, baseType: !1728, size: 64, offset: 704)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !671, line: 18, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1706, file: !1707, line: 33, baseType: !1731, size: 64, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1707, line: 33, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1706, file: !1707, line: 34, baseType: !137, size: 32, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1706, file: !1707, line: 35, baseType: !1735, size: 192, offset: 896)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1736, line: 7, size: 192, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739, !1743}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1735, file: !1736, line: 8, baseType: !226, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1735, file: !1736, line: 9, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1736, line: 5, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1735, file: !1736, line: 10, baseType: !7, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1431, file: !1432, line: 872, baseType: !1745, size: 512, offset: 6016)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 512, elements: !297)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1431, file: !1432, line: 873, baseType: !252, size: 128, offset: 6528)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1431, file: !1432, line: 874, baseType: !252, size: 128, offset: 6656)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1431, file: !1432, line: 876, baseType: !1749, size: 64, offset: 6784)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1751, line: 26, size: 192, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1750, file: !1751, line: 27, baseType: !7, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1750, file: !1751, line: 28, baseType: !1755, size: 128, offset: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1756, line: 43, size: 128, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !1756, line: 44, baseType: !1003)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1755, file: !1756, line: 45, baseType: !252, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1431, file: !1432, line: 879, baseType: !938, size: 64, offset: 6848)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1431, file: !1432, line: 882, baseType: !938, size: 64, offset: 6912)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1431, file: !1432, line: 884, baseType: !657, size: 64, offset: 6976)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1431, file: !1432, line: 885, baseType: !657, size: 64, offset: 7040)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1431, file: !1432, line: 890, baseType: !657, size: 64, offset: 7104)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1431, file: !1432, line: 891, baseType: !1766, size: 128, offset: 7168)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1432, line: 242, size: 128, elements: !1767)
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1766, file: !1432, line: 244, baseType: !657, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1766, file: !1432, line: 245, baseType: !657, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1766, file: !1432, line: 246, baseType: !1003, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1431, file: !1432, line: 900, baseType: !141, size: 64, offset: 7296)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1431, file: !1432, line: 901, baseType: !141, size: 64, offset: 7360)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1431, file: !1432, line: 904, baseType: !657, size: 64, offset: 7424)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1431, file: !1432, line: 907, baseType: !657, size: 64, offset: 7488)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1431, file: !1432, line: 910, baseType: !141, size: 64, offset: 7552)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1431, file: !1432, line: 911, baseType: !141, size: 64, offset: 7616)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1431, file: !1432, line: 914, baseType: !1778, size: 640, offset: 7680)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1779, line: 123, size: 640, elements: !1780)
!1779 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !{!1781, !1787, !1788}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1778, file: !1779, line: 124, baseType: !1782, size: 576)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 576, elements: !517)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1779, line: 108, size: 192, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1783, file: !1779, line: 109, baseType: !657, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1783, file: !1779, line: 110, baseType: !1557, size: 128, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1778, file: !1779, line: 125, baseType: !7, size: 32, offset: 576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1778, file: !1779, line: 126, baseType: !7, size: 32, offset: 608)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1431, file: !1432, line: 917, baseType: !1790, size: 192, offset: 8320)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1779, line: 134, size: 192, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1790, file: !1779, line: 135, baseType: !605, size: 128, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1790, file: !1779, line: 136, baseType: !7, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1431, file: !1432, line: 923, baseType: !1795, size: 64, offset: 8512)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1798, line: 111, size: 1280, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1817, !1818, !1819, !1820, !1821, !1822, !1929, !1930, !1931, !1932, !1958, !1959, !1969}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1797, file: !1798, line: 112, baseType: !213, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1797, file: !1798, line: 120, baseType: !670, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1797, file: !1798, line: 121, baseType: !678, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1797, file: !1798, line: 122, baseType: !670, size: 32, offset: 96)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1797, file: !1798, line: 123, baseType: !678, size: 32, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1797, file: !1798, line: 124, baseType: !670, size: 32, offset: 160)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1797, file: !1798, line: 125, baseType: !678, size: 32, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1797, file: !1798, line: 126, baseType: !670, size: 32, offset: 224)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1797, file: !1798, line: 127, baseType: !678, size: 32, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1797, file: !1798, line: 128, baseType: !7, size: 32, offset: 288)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1797, file: !1798, line: 129, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1812, line: 26, baseType: !1813)
!1812 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1812, line: 24, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1813, file: !1812, line: 25, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1797, file: !1798, line: 130, baseType: !1811, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1797, file: !1798, line: 131, baseType: !1811, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1797, file: !1798, line: 132, baseType: !1811, size: 64, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1797, file: !1798, line: 133, baseType: !1811, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1797, file: !1798, line: 135, baseType: !155, size: 8, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1797, file: !1798, line: 137, baseType: !1823, size: 64, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1825, line: 189, size: 1664, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1831, !1836, !1837, !1840, !1841, !1846, !1847, !1848, !1849, !1851, !1852, !1853, !1854, !1855, !1893, !1914}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1824, file: !1825, line: 190, baseType: !1444, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1824, file: !1825, line: 191, baseType: !1829, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1825, line: 28, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !214, line: 98, baseType: !1655)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1825, line: 192, baseType: !1832, size: 192, offset: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1825, line: 192, size: 192, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1832, file: !1825, line: 193, baseType: !252, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1832, file: !1825, line: 194, baseType: !990, size: 192, align: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1824, file: !1825, line: 199, baseType: !997, size: 256, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1824, file: !1825, line: 200, baseType: !1838, size: 64, offset: 512)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1825, line: 200, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1824, file: !1825, line: 201, baseType: !159, size: 64, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1825, line: 202, baseType: !1842, size: 64, offset: 640)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1825, line: 202, size: 64, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1842, file: !1825, line: 203, baseType: !773, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1842, file: !1825, line: 204, baseType: !773, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1824, file: !1825, line: 206, baseType: !773, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1824, file: !1825, line: 207, baseType: !670, size: 32, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1824, file: !1825, line: 208, baseType: !678, size: 32, offset: 800)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1824, file: !1825, line: 209, baseType: !1850, size: 32, offset: 832)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1825, line: 31, baseType: !792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1824, file: !1825, line: 210, baseType: !172, size: 16, offset: 864)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1824, file: !1825, line: 211, baseType: !172, size: 16, offset: 880)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1824, file: !1825, line: 215, baseType: !1419, size: 16, offset: 896)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1824, file: !1825, line: 222, baseType: !141, size: 64, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1825, line: 239, baseType: !1856, size: 320, offset: 1024)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1825, line: 239, size: 320, elements: !1857)
!1857 = !{!1858, !1885}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1856, file: !1825, line: 240, baseType: !1859, size: 320)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1825, line: 108, size: 320, elements: !1860)
!1860 = !{!1861, !1862, !1874, !1877, !1884}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1859, file: !1825, line: 110, baseType: !141, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1825, line: 111, baseType: !1863, size: 64, offset: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1825, line: 111, size: 64, elements: !1864)
!1864 = !{!1865, !1873}
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !1825, line: 112, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !1825, line: 112, size: 64, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1866, file: !1825, line: 114, baseType: !1082, size: 16)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1866, file: !1825, line: 115, baseType: !1870, size: 48, offset: 16)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 6)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1863, file: !1825, line: 121, baseType: !141, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1859, file: !1825, line: 123, baseType: !1875, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1825, line: 96, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1859, file: !1825, line: 124, baseType: !1878, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1825, line: 102, size: 192, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1879, file: !1825, line: 103, baseType: !605, size: 128, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1879, file: !1825, line: 104, baseType: !1444, size: 32, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1879, file: !1825, line: 105, baseType: !725, size: 8, offset: 160)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1859, file: !1825, line: 125, baseType: !341, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !1825, line: 241, baseType: !1886, size: 320)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !1825, line: 241, size: 320, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1892}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1886, file: !1825, line: 242, baseType: !141, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1886, file: !1825, line: 243, baseType: !141, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1886, file: !1825, line: 244, baseType: !1875, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1886, file: !1825, line: 245, baseType: !1878, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1886, file: !1825, line: 246, baseType: !516, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1825, line: 254, baseType: !1894, size: 256, offset: 1344)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1825, line: 254, size: 256, elements: !1895)
!1895 = !{!1896, !1902}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1894, file: !1825, line: 255, baseType: !1897, size: 256)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1825, line: 128, size: 256, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1897, file: !1825, line: 129, baseType: !159, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1897, file: !1825, line: 130, baseType: !1901, size: 256)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !297)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1825, line: 256, baseType: !1903, size: 256)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1825, line: 256, size: 256, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1903, file: !1825, line: 258, baseType: !252, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1903, file: !1825, line: 259, baseType: !1907, size: 128, offset: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1908, line: 22, size: 128, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1913}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1907, file: !1908, line: 23, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1908, line: 23, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1907, file: !1908, line: 24, baseType: !141, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1824, file: !1825, line: 274, baseType: !1915, size: 64, offset: 1600)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1825, line: 170, size: 192, elements: !1917)
!1917 = !{!1918, !1927, !1928}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1916, file: !1825, line: 171, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1825, line: 165, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!137, !1823, !1923, !1925, !1823}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1876)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1916, file: !1825, line: 172, baseType: !1823, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1916, file: !1825, line: 173, baseType: !1875, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1797, file: !1798, line: 138, baseType: !1823, size: 64, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1797, file: !1798, line: 139, baseType: !1823, size: 64, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1797, file: !1798, line: 140, baseType: !1823, size: 64, offset: 896)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1797, file: !1798, line: 145, baseType: !1933, size: 64, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1935, line: 13, size: 896, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1934, file: !1935, line: 14, baseType: !1444, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1934, file: !1935, line: 15, baseType: !213, size: 32, offset: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1934, file: !1935, line: 16, baseType: !213, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1934, file: !1935, line: 21, baseType: !226, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1934, file: !1935, line: 27, baseType: !141, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1934, file: !1935, line: 28, baseType: !141, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1934, file: !1935, line: 29, baseType: !226, size: 64, offset: 320)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1934, file: !1935, line: 32, baseType: !872, size: 128, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1934, file: !1935, line: 33, baseType: !670, size: 32, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1934, file: !1935, line: 37, baseType: !226, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1934, file: !1935, line: 44, baseType: !1948, size: 256, offset: 640)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1949, line: 15, size: 256, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1948, file: !1949, line: 16, baseType: !1003)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1948, file: !1949, line: 18, baseType: !137, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1948, file: !1949, line: 19, baseType: !137, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1948, file: !1949, line: 20, baseType: !137, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1948, file: !1949, line: 21, baseType: !137, size: 32, offset: 96)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1948, file: !1949, line: 22, baseType: !141, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1949, line: 23, baseType: !141, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1797, file: !1798, line: 146, baseType: !1728, size: 64, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1797, file: !1798, line: 147, baseType: !1960, size: 64, offset: 1088)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1798, line: 25, size: 64, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1961, file: !1798, line: 26, baseType: !213, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1961, file: !1798, line: 27, baseType: !137, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1961, file: !1798, line: 28, baseType: !1966, offset: 64)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, elements: !1967)
!1967 = !{!1968}
!1968 = !DISubrange(count: 0)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !1798, line: 149, baseType: !1970, size: 128, offset: 1152)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !1798, line: 149, size: 128, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1970, file: !1798, line: 150, baseType: !137, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1970, file: !1798, line: 151, baseType: !605, size: 128, align: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1431, file: !1432, line: 926, baseType: !1795, size: 64, offset: 8576)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1431, file: !1432, line: 929, baseType: !1795, size: 64, offset: 8640)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1431, file: !1432, line: 933, baseType: !1823, size: 64, offset: 8704)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1431, file: !1432, line: 943, baseType: !303, size: 128, offset: 8768)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1431, file: !1432, line: 945, baseType: !1979, size: 64, offset: 8896)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1432, line: 49, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1431, file: !1432, line: 956, baseType: !1982, size: 64, offset: 8960)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1432, line: 45, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1431, file: !1432, line: 959, baseType: !1985, size: 64, offset: 9024)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1432, line: 959, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1431, file: !1432, line: 962, baseType: !1988, size: 64, offset: 9088)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1432, line: 66, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1431, file: !1432, line: 966, baseType: !1991, size: 64, offset: 9152)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1993, line: 31, size: 576, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !1996, !1999, !2002, !2005, !2006, !2009, !2012, !2013}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1992, file: !1993, line: 32, baseType: !213, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1992, file: !1993, line: 33, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1993, line: 9, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1992, file: !1993, line: 34, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1993, line: 10, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1992, file: !1993, line: 35, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1993, line: 8, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1992, file: !1993, line: 36, baseType: !1705, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1992, file: !1993, line: 37, baseType: !2007, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1825, line: 34, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1992, file: !1993, line: 38, baseType: !2010, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1993, line: 38, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1992, file: !1993, line: 39, baseType: !2010, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1992, file: !1993, line: 40, baseType: !2014, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1993, line: 12, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1431, file: !1432, line: 969, baseType: !2017, size: 64, offset: 9216)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2019, line: 82, size: 7296, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2056, !2065, !2066, !2068, !2069, !2070, !2073, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2103, !2104, !2111, !2112, !2113, !2114, !2115, !2116}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2018, file: !2019, line: 83, baseType: !1444, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2018, file: !2019, line: 84, baseType: !213, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2018, file: !2019, line: 85, baseType: !137, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2018, file: !2019, line: 86, baseType: !252, size: 128, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2018, file: !2019, line: 88, baseType: !1692, size: 128, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2018, file: !2019, line: 91, baseType: !1430, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2018, file: !2019, line: 94, baseType: !2028, size: 192, offset: 448)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2029, line: 30, size: 192, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2028, file: !2029, line: 31, baseType: !252, size: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2028, file: !2029, line: 32, baseType: !2033, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2034, line: 25, baseType: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2034, line: 23, size: 64, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2035, file: !2034, line: 24, baseType: !1582, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2018, file: !2019, line: 97, baseType: !868, size: 64, offset: 640)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2018, file: !2019, line: 100, baseType: !137, size: 32, offset: 704)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2018, file: !2019, line: 106, baseType: !137, size: 32, offset: 736)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2018, file: !2019, line: 107, baseType: !1430, size: 64, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2018, file: !2019, line: 110, baseType: !137, size: 32, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !2019, line: 111, baseType: !7, size: 32, offset: 864)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2018, file: !2019, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2018, file: !2019, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2018, file: !2019, line: 128, baseType: !137, size: 32, offset: 928)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2018, file: !2019, line: 129, baseType: !252, size: 128, offset: 960)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2018, file: !2019, line: 132, baseType: !1506, size: 512, offset: 1088)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2018, file: !2019, line: 133, baseType: !1514, size: 64, offset: 1600)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2018, file: !2019, line: 140, baseType: !2051, size: 256, offset: 1664)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2052, size: 256, elements: !320)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2019, line: 38, size: 128, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2052, file: !2019, line: 39, baseType: !657, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2052, file: !2019, line: 40, baseType: !657, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2018, file: !2019, line: 146, baseType: !2057, size: 192, offset: 1920)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2019, line: 66, size: 192, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2057, file: !2019, line: 67, baseType: !2060, size: 192)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2019, line: 47, size: 192, elements: !2061)
!2061 = !{!2062, !2063, !2064}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2060, file: !2019, line: 48, baseType: !228, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2060, file: !2019, line: 49, baseType: !228, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2060, file: !2019, line: 50, baseType: !228, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2018, file: !2019, line: 150, baseType: !1778, size: 640, offset: 2112)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2018, file: !2019, line: 153, baseType: !2067, size: 256, offset: 2752)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1682, size: 256, elements: !297)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2018, file: !2019, line: 159, baseType: !1682, size: 64, offset: 3008)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2018, file: !2019, line: 162, baseType: !137, size: 32, offset: 3072)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2018, file: !2019, line: 164, baseType: !2071, size: 64, offset: 3136)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2019, line: 164, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2018, file: !2019, line: 175, baseType: !2074, size: 32, offset: 3200)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !628, line: 805, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 798, size: 32, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2075, file: !628, line: 803, baseType: !627, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2075, file: !628, line: 804, baseType: !236, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2018, file: !2019, line: 176, baseType: !657, size: 64, offset: 3264)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2018, file: !2019, line: 176, baseType: !657, size: 64, offset: 3328)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2018, file: !2019, line: 176, baseType: !657, size: 64, offset: 3392)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2018, file: !2019, line: 176, baseType: !657, size: 64, offset: 3456)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2018, file: !2019, line: 177, baseType: !657, size: 64, offset: 3520)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2018, file: !2019, line: 178, baseType: !657, size: 64, offset: 3584)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2018, file: !2019, line: 179, baseType: !1766, size: 128, offset: 3648)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2018, file: !2019, line: 180, baseType: !141, size: 64, offset: 3776)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2018, file: !2019, line: 180, baseType: !141, size: 64, offset: 3840)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2018, file: !2019, line: 180, baseType: !141, size: 64, offset: 3904)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2018, file: !2019, line: 180, baseType: !141, size: 64, offset: 3968)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2018, file: !2019, line: 181, baseType: !141, size: 64, offset: 4032)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2018, file: !2019, line: 181, baseType: !141, size: 64, offset: 4096)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2018, file: !2019, line: 181, baseType: !141, size: 64, offset: 4160)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2018, file: !2019, line: 181, baseType: !141, size: 64, offset: 4224)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2018, file: !2019, line: 182, baseType: !141, size: 64, offset: 4288)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2018, file: !2019, line: 182, baseType: !141, size: 64, offset: 4352)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2018, file: !2019, line: 182, baseType: !141, size: 64, offset: 4416)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2018, file: !2019, line: 182, baseType: !141, size: 64, offset: 4480)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2018, file: !2019, line: 183, baseType: !141, size: 64, offset: 4544)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2018, file: !2019, line: 183, baseType: !141, size: 64, offset: 4608)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2018, file: !2019, line: 184, baseType: !2101, offset: 4672)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2102, line: 12, elements: !250)
!2102 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2018, file: !2019, line: 192, baseType: !659, size: 64, offset: 4672)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2018, file: !2019, line: 203, baseType: !2105, size: 2048, offset: 4736)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2106, size: 2048, elements: !166)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2107, line: 43, size: 128, elements: !2108)
!2107 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2106, file: !2107, line: 44, baseType: !564, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2106, file: !2107, line: 45, baseType: !564, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2018, file: !2019, line: 220, baseType: !725, size: 8, offset: 6784)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2018, file: !2019, line: 221, baseType: !1419, size: 16, offset: 6800)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2018, file: !2019, line: 222, baseType: !1419, size: 16, offset: 6816)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2018, file: !2019, line: 224, baseType: !1196, size: 64, offset: 6848)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2018, file: !2019, line: 227, baseType: !222, size: 192, offset: 6912)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2018, file: !2019, line: 233, baseType: !222, size: 192, offset: 7104)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1431, file: !1432, line: 970, baseType: !2118, size: 64, offset: 9280)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2019, line: 20, size: 16576, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2119, file: !2019, line: 21, baseType: !236)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2119, file: !2019, line: 22, baseType: !1444, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2119, file: !2019, line: 23, baseType: !1692, size: 128, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2119, file: !2019, line: 24, baseType: !2125, size: 16384, offset: 192)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2126, size: 16384, elements: !521)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2029, line: 49, size: 256, elements: !2127)
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2126, file: !2029, line: 50, baseType: !2129, size: 256)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2029, line: 35, size: 256, elements: !2130)
!2130 = !{!2131, !2138, !2139, !2143}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2129, file: !2029, line: 37, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2133, line: 19, baseType: !2134)
!2133 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2133, line: 18, baseType: !2136)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !137}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2129, file: !2029, line: 38, baseType: !141, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2129, file: !2029, line: 44, baseType: !2140, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2133, line: 22, baseType: !2141)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2133, line: 21, baseType: !182)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2129, file: !2029, line: 46, baseType: !2033, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1431, file: !1432, line: 971, baseType: !2033, size: 64, offset: 9344)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1431, file: !1432, line: 972, baseType: !2033, size: 64, offset: 9408)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1431, file: !1432, line: 974, baseType: !2033, size: 64, offset: 9472)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1431, file: !1432, line: 975, baseType: !2028, size: 192, offset: 9536)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1431, file: !1432, line: 976, baseType: !141, size: 64, offset: 9728)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1431, file: !1432, line: 977, baseType: !562, size: 64, offset: 9792)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1431, file: !1432, line: 978, baseType: !7, size: 32, offset: 9856)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1431, file: !1432, line: 980, baseType: !608, size: 64, offset: 9920)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1431, file: !1432, line: 989, baseType: !2153, size: 128, offset: 9984)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2154, line: 35, size: 128, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2153, file: !2154, line: 36, baseType: !137, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2153, file: !2154, line: 37, baseType: !213, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2153, file: !2154, line: 38, baseType: !2159, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2154, line: 23, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1431, file: !1432, line: 992, baseType: !657, size: 64, offset: 10112)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1431, file: !1432, line: 993, baseType: !657, size: 64, offset: 10176)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1431, file: !1432, line: 996, baseType: !236, offset: 10240)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1431, file: !1432, line: 999, baseType: !1003, offset: 10240)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1431, file: !1432, line: 1001, baseType: !2166, size: 64, offset: 10240)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1432, line: 636, size: 64, elements: !2167)
!2167 = !{!2168}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2166, file: !1432, line: 637, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1431, file: !1432, line: 1005, baseType: !982, size: 128, offset: 10304)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1431, file: !1432, line: 1007, baseType: !1430, size: 64, offset: 10432)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1431, file: !1432, line: 1009, baseType: !2173, size: 64, offset: 10496)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1432, line: 1009, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1431, file: !1432, line: 1043, baseType: !159, size: 64, offset: 10560)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1431, file: !1432, line: 1046, baseType: !2177, size: 64, offset: 10624)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1432, line: 41, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1431, file: !1432, line: 1050, baseType: !2180, size: 64, offset: 10688)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1432, line: 42, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1431, file: !1432, line: 1054, baseType: !2183, size: 64, offset: 10752)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1432, line: 55, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1431, file: !1432, line: 1056, baseType: !2186, size: 64, offset: 10816)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1432, line: 40, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1431, file: !1432, line: 1058, baseType: !2189, size: 64, offset: 10880)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2191, line: 99, size: 704, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2218, !2219}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2190, file: !2191, line: 100, baseType: !226, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2190, file: !2191, line: 101, baseType: !213, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2190, file: !2191, line: 102, baseType: !213, size: 32, offset: 96)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2190, file: !2191, line: 105, baseType: !236, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2190, file: !2191, line: 107, baseType: !172, size: 16, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2190, file: !2191, line: 109, baseType: !972, size: 128, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2190, file: !2191, line: 110, baseType: !2200, size: 64, offset: 320)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2191, line: 73, size: 448, elements: !2202)
!2202 = !{!2203, !2206, !2207, !2212, !2217}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2201, file: !2191, line: 74, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2191, line: 74, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2201, file: !2191, line: 75, baseType: !2189, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2191, line: 83, baseType: !2208, size: 128, offset: 128)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2191, line: 83, size: 128, elements: !2209)
!2209 = !{!2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2208, file: !2191, line: 84, baseType: !252, size: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2208, file: !2191, line: 85, baseType: !1157, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2191, line: 87, baseType: !2213, size: 128, offset: 256)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2191, line: 87, size: 128, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2213, file: !2191, line: 88, baseType: !872, size: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2213, file: !2191, line: 89, baseType: !605, size: 128, align: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2201, file: !2191, line: 92, baseType: !7, size: 32, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2190, file: !2191, line: 111, baseType: !868, size: 64, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2190, file: !2191, line: 113, baseType: !386, size: 256, offset: 448)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1431, file: !1432, line: 1061, baseType: !2221, size: 64, offset: 10944)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1432, line: 43, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1431, file: !1432, line: 1064, baseType: !141, size: 64, offset: 11008)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1431, file: !1432, line: 1065, baseType: !2225, size: 64, offset: 11072)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2029, line: 14, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2029, line: 12, size: 384, elements: !2228)
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2227, file: !2029, line: 13, baseType: !2230, size: 384)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2227, file: !2029, line: 13, size: 384, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2230, file: !2029, line: 13, baseType: !137, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2230, file: !2029, line: 13, baseType: !137, size: 32, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2230, file: !2029, line: 13, baseType: !137, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2230, file: !2029, line: 13, baseType: !2236, size: 256, offset: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2237, line: 32, size: 256, elements: !2238)
!2237 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !{!2239, !2244, !2257, !2263, !2272, !2292, !2297}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2236, file: !2237, line: 37, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2237, line: 34, size: 64, elements: !2241)
!2241 = !{!2242, !2243}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2240, file: !2237, line: 35, baseType: !1671, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2240, file: !2237, line: 36, baseType: !676, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2236, file: !2237, line: 45, baseType: !2245, size: 192)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2237, line: 40, size: 192, elements: !2246)
!2246 = !{!2247, !2249, !2250, !2256}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2245, file: !2237, line: 41, baseType: !2248, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !549, line: 95, baseType: !137)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2245, file: !2237, line: 42, baseType: !137, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2245, file: !2237, line: 43, baseType: !2251, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2237, line: 11, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2237, line: 8, size: 64, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2252, file: !2237, line: 9, baseType: !137, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2252, file: !2237, line: 10, baseType: !159, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2245, file: !2237, line: 44, baseType: !137, size: 32, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2236, file: !2237, line: 52, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2237, line: 48, size: 128, elements: !2259)
!2259 = !{!2260, !2261, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2258, file: !2237, line: 49, baseType: !1671, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2258, file: !2237, line: 50, baseType: !676, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2258, file: !2237, line: 51, baseType: !2251, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2236, file: !2237, line: 61, baseType: !2264, size: 256)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2237, line: 55, size: 256, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269, !2271}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2264, file: !2237, line: 56, baseType: !1671, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2264, file: !2237, line: 57, baseType: !676, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2264, file: !2237, line: 58, baseType: !137, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2264, file: !2237, line: 59, baseType: !2270, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !549, line: 94, baseType: !550)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2264, file: !2237, line: 60, baseType: !2270, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2236, file: !2237, line: 95, baseType: !2273, size: 256)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2237, line: 64, size: 256, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2273, file: !2237, line: 65, baseType: !159, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !2237, line: 77, baseType: !2277, size: 192, offset: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !2237, line: 77, size: 192, elements: !2278)
!2278 = !{!2279, !2280, !2287}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2277, file: !2237, line: 82, baseType: !1419, size: 16)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2277, file: !2237, line: 88, baseType: !2281, size: 192)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2277, file: !2237, line: 84, size: 192, elements: !2282)
!2282 = !{!2283, !2285, !2286}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2281, file: !2237, line: 85, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !1544)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2281, file: !2237, line: 86, baseType: !159, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2281, file: !2237, line: 87, baseType: !159, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2277, file: !2237, line: 93, baseType: !2288, size: 96)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2277, file: !2237, line: 90, size: 96, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2288, file: !2237, line: 91, baseType: !2284, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2288, file: !2237, line: 92, baseType: !164, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2236, file: !2237, line: 101, baseType: !2293, size: 128)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2237, line: 98, size: 128, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2293, file: !2237, line: 99, baseType: !551, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2293, file: !2237, line: 100, baseType: !137, size: 32, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2236, file: !2237, line: 108, baseType: !2298, size: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2236, file: !2237, line: 104, size: 128, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2298, file: !2237, line: 105, baseType: !159, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2298, file: !2237, line: 106, baseType: !137, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2298, file: !2237, line: 107, baseType: !7, size: 32, offset: 96)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1431, file: !1432, line: 1067, baseType: !2101, offset: 11136)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1431, file: !1432, line: 1099, baseType: !2305, size: 64, offset: 11136)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1432, line: 56, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1431, file: !1432, line: 1103, baseType: !252, size: 128, offset: 11200)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1431, file: !1432, line: 1104, baseType: !2309, size: 64, offset: 11328)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1432, line: 46, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1431, file: !1432, line: 1105, baseType: !222, size: 192, offset: 11392)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1431, file: !1432, line: 1106, baseType: !7, size: 32, offset: 11584)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1431, file: !1432, line: 1109, baseType: !2314, size: 128, offset: 11648)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2315, size: 128, elements: !320)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1432, line: 51, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1431, file: !1432, line: 1110, baseType: !222, size: 192, offset: 11776)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1431, file: !1432, line: 1111, baseType: !252, size: 128, offset: 11968)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1431, file: !1432, line: 1173, baseType: !2320, size: 64, offset: 12096)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2322, line: 62, size: 256, align: 256, elements: !2323)
!2322 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2323 = !{!2324, !2325, !2326, !2331}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2321, file: !2322, line: 75, baseType: !164, size: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2321, file: !2322, line: 90, baseType: !164, size: 32, offset: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2321, file: !2322, line: 124, baseType: !2327, size: 64, offset: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2321, file: !2322, line: 109, size: 64, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2327, file: !2322, line: 110, baseType: !658, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2327, file: !2322, line: 112, baseType: !658, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !2322, line: 144, baseType: !164, size: 32, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1431, file: !1432, line: 1174, baseType: !162, size: 32, offset: 12160)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1431, file: !1432, line: 1179, baseType: !141, size: 64, offset: 12224)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1431, file: !1432, line: 1182, baseType: !2335, size: 128, offset: 12288)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1373, line: 76, size: 128, elements: !2336)
!2336 = !{!2337, !2342, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2335, file: !1373, line: 85, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2339, line: 7, size: 64, elements: !2340)
!2339 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2338, file: !2339, line: 12, baseType: !1579, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2335, file: !1373, line: 88, baseType: !725, size: 8, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2335, file: !1373, line: 95, baseType: !725, size: 8, offset: 72)
!2344 = !DIDerivedType(tag: DW_TAG_member, scope: !1431, file: !1432, line: 1184, baseType: !2345, size: 128, offset: 12416)
!2345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1431, file: !1432, line: 1184, size: 128, elements: !2346)
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2345, file: !1432, line: 1185, baseType: !1444, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2345, file: !1432, line: 1186, baseType: !605, size: 128, align: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1431, file: !1432, line: 1190, baseType: !2350, size: 64, offset: 12544)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1432, line: 53, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1431, file: !1432, line: 1192, baseType: !2353, size: 128, offset: 12608)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1373, line: 64, size: 128, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2353, file: !1373, line: 65, baseType: !954, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2353, file: !1373, line: 67, baseType: !164, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2353, file: !1373, line: 68, baseType: !164, size: 32, offset: 96)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1431, file: !1432, line: 1206, baseType: !137, size: 32, offset: 12736)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1431, file: !1432, line: 1207, baseType: !137, size: 32, offset: 12768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1431, file: !1432, line: 1209, baseType: !141, size: 64, offset: 12800)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1431, file: !1432, line: 1219, baseType: !657, size: 64, offset: 12864)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1431, file: !1432, line: 1220, baseType: !657, size: 64, offset: 12928)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1431, file: !1432, line: 1317, baseType: !137, size: 32, offset: 12992)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1431, file: !1432, line: 1319, baseType: !1430, size: 64, offset: 13056)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1431, file: !1432, line: 1322, baseType: !2366, size: 64, offset: 13120)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2368, line: 56, size: 512, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2369 = !{!2370, !2371, !2372, !2373, !2374, !2375, !2376, !2378}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2367, file: !2368, line: 57, baseType: !2366, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2367, file: !2368, line: 58, baseType: !159, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2367, file: !2368, line: 59, baseType: !141, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !2368, line: 60, baseType: !141, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2367, file: !2368, line: 61, baseType: !1043, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2367, file: !2368, line: 62, baseType: !7, size: 32, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2367, file: !2368, line: 63, baseType: !2377, size: 64, offset: 384)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !214, line: 153, baseType: !657)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2367, file: !2368, line: 64, baseType: !2379, size: 64, offset: 448)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1431, file: !1432, line: 1326, baseType: !1444, size: 32, offset: 13184)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1431, file: !1432, line: 1342, baseType: !159, size: 64, offset: 13248)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1431, file: !1432, line: 1343, baseType: !658, size: 64, offset: 13312)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1431, file: !1432, line: 1344, baseType: !657, size: 64, offset: 13376)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1431, file: !1432, line: 1345, baseType: !658, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1431, file: !1432, line: 1346, baseType: !658, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1431, file: !1432, line: 1347, baseType: !658, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1431, file: !1432, line: 1348, baseType: !605, size: 128, align: 64, offset: 13504)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1431, file: !1432, line: 1358, baseType: !2390, size: 34816, offset: 13824)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2391, line: 485, size: 34816, elements: !2392)
!2391 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !{!2393, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2422, !2423, !2424, !2425, !2426, !2427, !2430, !2431, !2432}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2390, file: !2391, line: 487, baseType: !2394, size: 192)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2395, size: 192, elements: !517)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2396, line: 16, size: 64, elements: !2397)
!2396 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2397 = !{!2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2395, file: !2396, line: 17, baseType: !1082, size: 16)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2395, file: !2396, line: 18, baseType: !1082, size: 16, offset: 16)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2395, file: !2396, line: 19, baseType: !1082, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2395, file: !2396, line: 19, baseType: !1082, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2395, file: !2396, line: 19, baseType: !1082, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2395, file: !2396, line: 19, baseType: !1082, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2395, file: !2396, line: 19, baseType: !1082, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2395, file: !2396, line: 20, baseType: !1082, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2395, file: !2396, line: 20, baseType: !1082, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2395, file: !2396, line: 20, baseType: !1082, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2395, file: !2396, line: 20, baseType: !1082, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2395, file: !2396, line: 20, baseType: !1082, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2395, file: !2396, line: 20, baseType: !1082, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2390, file: !2391, line: 491, baseType: !141, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2390, file: !2391, line: 495, baseType: !172, size: 16, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2390, file: !2391, line: 496, baseType: !172, size: 16, offset: 272)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2390, file: !2391, line: 497, baseType: !172, size: 16, offset: 288)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2390, file: !2391, line: 498, baseType: !172, size: 16, offset: 304)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2390, file: !2391, line: 502, baseType: !141, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2390, file: !2391, line: 503, baseType: !141, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2390, file: !2391, line: 514, baseType: !2419, size: 256, offset: 448)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 256, elements: !297)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2391, line: 483, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2390, file: !2391, line: 516, baseType: !141, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2390, file: !2391, line: 518, baseType: !141, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2390, file: !2391, line: 520, baseType: !141, size: 64, offset: 832)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2390, file: !2391, line: 521, baseType: !141, size: 64, offset: 896)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2390, file: !2391, line: 522, baseType: !141, size: 64, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2390, file: !2391, line: 528, baseType: !2428, size: 64, offset: 1024)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2391, line: 10, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2390, file: !2391, line: 535, baseType: !141, size: 64, offset: 1088)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2390, file: !2391, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2390, file: !2391, line: 540, baseType: !2433, size: 33280, offset: 1536)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2434, line: 317, size: 33280, elements: !2435)
!2434 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2435 = !{!2436, !2437, !2438}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2433, file: !2434, line: 330, baseType: !7, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2433, file: !2434, line: 337, baseType: !141, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2433, file: !2434, line: 348, baseType: !2439, size: 32768, offset: 512)
!2439 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2434, line: 304, size: 32768, elements: !2440)
!2440 = !{!2441, !2456, !2495, !2545, !2558}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2439, file: !2434, line: 305, baseType: !2442, size: 896)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2434, line: 12, size: 896, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2455}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2442, file: !2434, line: 13, baseType: !162, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2442, file: !2434, line: 14, baseType: !162, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2442, file: !2434, line: 15, baseType: !162, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2442, file: !2434, line: 16, baseType: !162, size: 32, offset: 96)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2442, file: !2434, line: 17, baseType: !162, size: 32, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2442, file: !2434, line: 18, baseType: !162, size: 32, offset: 160)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2442, file: !2434, line: 19, baseType: !162, size: 32, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2442, file: !2434, line: 22, baseType: !2452, size: 640, offset: 224)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 640, elements: !2453)
!2453 = !{!2454}
!2454 = !DISubrange(count: 20)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2442, file: !2434, line: 25, baseType: !162, size: 32, offset: 864)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2439, file: !2434, line: 306, baseType: !2457, size: 4096, align: 128)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2434, line: 34, size: 4096, align: 128, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2478, !2479, !2480, !2484, !2486, !2490}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2457, file: !2434, line: 35, baseType: !1082, size: 16)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2457, file: !2434, line: 36, baseType: !1082, size: 16, offset: 16)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2457, file: !2434, line: 37, baseType: !1082, size: 16, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2457, file: !2434, line: 38, baseType: !1082, size: 16, offset: 48)
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2457, file: !2434, line: 39, baseType: !2464, size: 128, offset: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2457, file: !2434, line: 39, size: 128, elements: !2465)
!2465 = !{!2466, !2471}
!2466 = !DIDerivedType(tag: DW_TAG_member, scope: !2464, file: !2434, line: 40, baseType: !2467, size: 128)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2464, file: !2434, line: 40, size: 128, elements: !2468)
!2468 = !{!2469, !2470}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2467, file: !2434, line: 41, baseType: !657, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2467, file: !2434, line: 42, baseType: !657, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2464, file: !2434, line: 44, baseType: !2472, size: 128)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2464, file: !2434, line: 44, size: 128, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2472, file: !2434, line: 45, baseType: !162, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2472, file: !2434, line: 46, baseType: !162, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2472, file: !2434, line: 47, baseType: !162, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2472, file: !2434, line: 48, baseType: !162, size: 32, offset: 96)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2457, file: !2434, line: 51, baseType: !162, size: 32, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2457, file: !2434, line: 52, baseType: !162, size: 32, offset: 224)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2457, file: !2434, line: 55, baseType: !2481, size: 1024, offset: 256)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !2482)
!2482 = !{!2483}
!2483 = !DISubrange(count: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2457, file: !2434, line: 58, baseType: !2485, size: 2048, offset: 1280)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 2048, elements: !521)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2457, file: !2434, line: 60, baseType: !2487, size: 384, offset: 3328)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !2488)
!2488 = !{!2489}
!2489 = !DISubrange(count: 12)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2457, file: !2434, line: 62, baseType: !2491, size: 384, offset: 3712)
!2491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2457, file: !2434, line: 62, size: 384, elements: !2492)
!2492 = !{!2493, !2494}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2491, file: !2434, line: 63, baseType: !2487, size: 384)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2491, file: !2434, line: 64, baseType: !2487, size: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2439, file: !2434, line: 307, baseType: !2496, size: 1088)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2434, line: 79, size: 1088, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2544}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2496, file: !2434, line: 80, baseType: !162, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2496, file: !2434, line: 81, baseType: !162, size: 32, offset: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2496, file: !2434, line: 82, baseType: !162, size: 32, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2496, file: !2434, line: 83, baseType: !162, size: 32, offset: 96)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2496, file: !2434, line: 84, baseType: !162, size: 32, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2496, file: !2434, line: 85, baseType: !162, size: 32, offset: 160)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2496, file: !2434, line: 86, baseType: !162, size: 32, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2496, file: !2434, line: 88, baseType: !2452, size: 640, offset: 224)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2496, file: !2434, line: 89, baseType: !402, size: 8, offset: 864)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2496, file: !2434, line: 90, baseType: !402, size: 8, offset: 872)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2496, file: !2434, line: 91, baseType: !402, size: 8, offset: 880)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2496, file: !2434, line: 92, baseType: !402, size: 8, offset: 888)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2496, file: !2434, line: 93, baseType: !402, size: 8, offset: 896)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2496, file: !2434, line: 94, baseType: !402, size: 8, offset: 904)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2496, file: !2434, line: 95, baseType: !2513, size: 64, offset: 960)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2515, line: 11, size: 128, elements: !2516)
!2515 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2514, file: !2515, line: 12, baseType: !551, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2514, file: !2515, line: 13, baseType: !2519, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2521, line: 56, size: 1344, elements: !2522)
!2521 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2520, file: !2521, line: 61, baseType: !141, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2520, file: !2521, line: 62, baseType: !141, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2520, file: !2521, line: 63, baseType: !141, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2520, file: !2521, line: 64, baseType: !141, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2520, file: !2521, line: 65, baseType: !141, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2520, file: !2521, line: 66, baseType: !141, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2520, file: !2521, line: 68, baseType: !141, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2520, file: !2521, line: 69, baseType: !141, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2520, file: !2521, line: 70, baseType: !141, size: 64, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2520, file: !2521, line: 71, baseType: !141, size: 64, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2520, file: !2521, line: 72, baseType: !141, size: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2520, file: !2521, line: 73, baseType: !141, size: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2520, file: !2521, line: 74, baseType: !141, size: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2520, file: !2521, line: 75, baseType: !141, size: 64, offset: 832)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2520, file: !2521, line: 76, baseType: !141, size: 64, offset: 896)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2520, file: !2521, line: 81, baseType: !141, size: 64, offset: 960)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2520, file: !2521, line: 83, baseType: !141, size: 64, offset: 1024)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2520, file: !2521, line: 84, baseType: !141, size: 64, offset: 1088)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2520, file: !2521, line: 85, baseType: !141, size: 64, offset: 1152)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2520, file: !2521, line: 86, baseType: !141, size: 64, offset: 1216)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2520, file: !2521, line: 87, baseType: !141, size: 64, offset: 1280)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2496, file: !2434, line: 96, baseType: !162, size: 32, offset: 1024)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2439, file: !2434, line: 308, baseType: !2546, size: 4608, align: 512)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2434, line: 289, size: 4608, align: 512, elements: !2547)
!2547 = !{!2548, !2549, !2556}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2546, file: !2434, line: 290, baseType: !2457, size: 4096, align: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2546, file: !2434, line: 291, baseType: !2550, size: 512, offset: 4096)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2434, line: 268, size: 512, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2550, file: !2434, line: 269, baseType: !657, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2550, file: !2434, line: 270, baseType: !657, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2550, file: !2434, line: 271, baseType: !2555, size: 384, offset: 128)
!2555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 384, elements: !1871)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2546, file: !2434, line: 292, baseType: !2557, offset: 4608)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, elements: !1967)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2439, file: !2434, line: 309, baseType: !2559, size: 32768)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 32768, elements: !2560)
!2560 = !{!2561}
!2561 = !DISubrange(count: 4096)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1427, file: !956, line: 378, baseType: !2563, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1423, file: !956, line: 384, baseType: !1750, size: 192, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1200, file: !956, line: 500, baseType: !236, offset: 6656)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1200, file: !956, line: 501, baseType: !2567, size: 64, offset: 6656)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !956, line: 387, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1200, file: !956, line: 516, baseType: !1728, size: 64, offset: 6720)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1200, file: !956, line: 519, baseType: !592, size: 64, offset: 6784)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1200, file: !956, line: 521, baseType: !2572, size: 64, offset: 6848)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !956, line: 521, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1200, file: !956, line: 545, baseType: !213, size: 32, offset: 6912)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1200, file: !956, line: 548, baseType: !725, size: 8, offset: 6944)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1200, file: !956, line: 550, baseType: !2577, offset: 6952)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2578, line: 142, elements: !250)
!2578 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1200, file: !956, line: 554, baseType: !386, size: 256, offset: 6976)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1200, file: !956, line: 557, baseType: !162, size: 32, offset: 7232)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1197, file: !956, line: 565, baseType: !2582, offset: 7296)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, elements: !2583)
!2583 = !{!2584}
!2584 = !DISubrange(count: -1)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1193, file: !956, line: 151, baseType: !213, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1186, file: !956, line: 156, baseType: !236, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !956, line: 159, baseType: !2588, size: 128)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !956, line: 159, size: 128, elements: !2589)
!2589 = !{!2590, !2654}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2588, file: !956, line: 161, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 110, size: 1152, elements: !2593)
!2593 = !{!2594, !2604, !2625, !2626, !2627, !2628, !2629, !2641, !2642, !2643}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2592, file: !43, line: 111, baseType: !2595, size: 384)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 19, size: 384, elements: !2596)
!2596 = !{!2597, !2599, !2600, !2601, !2602, !2603}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2595, file: !43, line: 20, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2595, file: !43, line: 21, baseType: !2598, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2595, file: !43, line: 22, baseType: !2598, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2595, file: !43, line: 23, baseType: !141, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2595, file: !43, line: 24, baseType: !141, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2595, file: !43, line: 25, baseType: !141, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2592, file: !43, line: 112, baseType: !2605, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2607, line: 105, size: 128, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2606, file: !2607, line: 110, baseType: !141, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2606, file: !2607, line: 118, baseType: !2611, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2607, line: 95, size: 448, elements: !2613)
!2613 = !{!2614, !2615, !2620, !2621, !2622, !2623, !2624}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2612, file: !2607, line: 96, baseType: !226, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2612, file: !2607, line: 97, baseType: !2616, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2607, line: 60, baseType: !2618)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !2605}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2612, file: !2607, line: 98, baseType: !2616, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2612, file: !2607, line: 99, baseType: !725, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2612, file: !2607, line: 100, baseType: !725, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2612, file: !2607, line: 101, baseType: !605, size: 128, align: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2612, file: !2607, line: 102, baseType: !2605, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2592, file: !43, line: 113, baseType: !2606, size: 128, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2592, file: !43, line: 114, baseType: !1750, size: 192, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2592, file: !43, line: 115, baseType: !42, size: 32, offset: 768)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !43, line: 116, baseType: !7, size: 32, offset: 800)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2592, file: !43, line: 117, baseType: !2630, size: 64, offset: 832)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 67, size: 256, elements: !2633)
!2633 = !{!2634, !2635, !2639, !2640}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2632, file: !43, line: 73, baseType: !1063, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2632, file: !43, line: 78, baseType: !2636, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2591}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2632, file: !43, line: 83, baseType: !2636, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2632, file: !43, line: 89, baseType: !1249, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2592, file: !43, line: 118, baseType: !159, size: 64, offset: 896)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2592, file: !43, line: 119, baseType: !137, size: 32, offset: 960)
!2643 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !43, line: 120, baseType: !2644, size: 128, offset: 1024)
!2644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !43, line: 120, size: 128, elements: !2645)
!2645 = !{!2646, !2652}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2644, file: !43, line: 121, baseType: !2647, size: 128)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2648, line: 6, size: 128, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2647, file: !2648, line: 7, baseType: !657, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2647, file: !2648, line: 8, baseType: !657, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2644, file: !43, line: 122, baseType: !2653)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2647, elements: !1967)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2588, file: !956, line: 162, baseType: !159, size: 64, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !960, file: !956, line: 176, baseType: !605, size: 128, align: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !956, line: 179, baseType: !2657, size: 32, offset: 384)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !956, line: 179, size: 32, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2657, file: !956, line: 184, baseType: !213, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2657, file: !956, line: 192, baseType: !7, size: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2657, file: !956, line: 194, baseType: !7, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2657, file: !956, line: 195, baseType: !137, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !955, file: !956, line: 199, baseType: !213, size: 32, offset: 416)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !890, file: !56, line: 1964, baseType: !2665, size: 64, offset: 1344)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!551, !832, !2668}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2670, line: 12, size: 256, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2671 = !{!2672, !2673, !2674, !2675, !2676}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2669, file: !2670, line: 13, baseType: !977, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2669, file: !2670, line: 16, baseType: !137, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2669, file: !2670, line: 23, baseType: !141, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2669, file: !2670, line: 30, baseType: !141, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2669, file: !2670, line: 33, baseType: !2677, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !956, line: 27, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !890, file: !56, line: 1966, baseType: !2665, size: 64, offset: 1408)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !833, file: !56, line: 1424, baseType: !2681, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !50, line: 322, size: 704, elements: !2684)
!2684 = !{!2685, !2731, !2735, !2739, !2740, !2741, !2742, !2743, !2748, !2753, !2757}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2683, file: !50, line: 323, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!137, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !50, line: 294, size: 1600, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2716, !2717, !2718}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2690, file: !50, line: 295, baseType: !872, size: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2690, file: !50, line: 296, baseType: !252, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2690, file: !50, line: 297, baseType: !252, size: 128, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2690, file: !50, line: 298, baseType: !252, size: 128, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2690, file: !50, line: 299, baseType: !222, size: 192, offset: 512)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2690, file: !50, line: 300, baseType: !236, offset: 704)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2690, file: !50, line: 301, baseType: !213, size: 32, offset: 704)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2690, file: !50, line: 302, baseType: !832, size: 64, offset: 768)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2690, file: !50, line: 303, baseType: !2701, size: 64, offset: 832)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !50, line: 68, size: 64, elements: !2702)
!2702 = !{!2703, !2715}
!2703 = !DIDerivedType(tag: DW_TAG_member, scope: !2701, file: !50, line: 69, baseType: !2704, size: 32)
!2704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2701, file: !50, line: 69, size: 32, elements: !2705)
!2705 = !{!2706, !2707, !2708}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2704, file: !50, line: 70, baseType: !670, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2704, file: !50, line: 71, baseType: !678, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2704, file: !50, line: 72, baseType: !2709, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2710, line: 24, baseType: !2711)
!2710 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2710, line: 22, size: 32, elements: !2712)
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2711, file: !2710, line: 23, baseType: !2714, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2710, line: 20, baseType: !676)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2701, file: !50, line: 74, baseType: !49, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2690, file: !50, line: 304, baseType: !766, size: 64, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2690, file: !50, line: 305, baseType: !141, size: 64, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2690, file: !50, line: 306, baseType: !2719, size: 576, offset: 1024)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !50, line: 205, size: 576, elements: !2720)
!2720 = !{!2721, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2719, file: !50, line: 206, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !50, line: 66, baseType: !234)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2719, file: !50, line: 207, baseType: !2722, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2719, file: !50, line: 208, baseType: !2722, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2719, file: !50, line: 209, baseType: !2722, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2719, file: !50, line: 210, baseType: !2722, size: 64, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2719, file: !50, line: 211, baseType: !2722, size: 64, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2719, file: !50, line: 212, baseType: !2722, size: 64, offset: 384)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2719, file: !50, line: 213, baseType: !773, size: 64, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2719, file: !50, line: 214, baseType: !773, size: 64, offset: 512)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2683, file: !50, line: 324, baseType: !2732, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!2689, !832, !137}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2683, file: !50, line: 325, baseType: !2736, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{null, !2689}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2683, file: !50, line: 326, baseType: !2686, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2683, file: !50, line: 327, baseType: !2686, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2683, file: !50, line: 328, baseType: !2686, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2683, file: !50, line: 329, baseType: !918, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2683, file: !50, line: 332, baseType: !2744, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!2747, !664}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2683, file: !50, line: 333, baseType: !2749, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!137, !664, !2752}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2683, file: !50, line: 335, baseType: !2754, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!137, !664, !2747}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2683, file: !50, line: 337, baseType: !2758, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!137, !832, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !833, file: !56, line: 1425, baseType: !2763, size: 64, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !50, line: 428, size: 704, elements: !2766)
!2766 = !{!2767, !2771, !2772, !2776, !2777, !2778, !2793, !2816, !2820, !2821, !2844}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2765, file: !50, line: 429, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!137, !832, !137, !137, !782}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2765, file: !50, line: 430, baseType: !918, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2765, file: !50, line: 431, baseType: !2773, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!137, !832, !7}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2765, file: !50, line: 432, baseType: !2773, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2765, file: !50, line: 433, baseType: !918, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2765, file: !50, line: 434, baseType: !2779, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!137, !832, !137, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !50, line: 415, size: 256, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2783, file: !50, line: 416, baseType: !137, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2783, file: !50, line: 417, baseType: !7, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2783, file: !50, line: 418, baseType: !7, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2783, file: !50, line: 420, baseType: !7, size: 32, offset: 96)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2783, file: !50, line: 421, baseType: !7, size: 32, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2783, file: !50, line: 422, baseType: !7, size: 32, offset: 160)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2783, file: !50, line: 423, baseType: !7, size: 32, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2783, file: !50, line: 424, baseType: !7, size: 32, offset: 224)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2765, file: !50, line: 435, baseType: !2794, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!137, !832, !2701, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !50, line: 343, size: 960, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2798, file: !50, line: 344, baseType: !137, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2798, file: !50, line: 345, baseType: !657, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2798, file: !50, line: 346, baseType: !657, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2798, file: !50, line: 347, baseType: !657, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2798, file: !50, line: 348, baseType: !657, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2798, file: !50, line: 349, baseType: !657, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2798, file: !50, line: 350, baseType: !657, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2798, file: !50, line: 351, baseType: !232, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2798, file: !50, line: 353, baseType: !232, size: 64, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2798, file: !50, line: 354, baseType: !137, size: 32, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2798, file: !50, line: 355, baseType: !137, size: 32, offset: 608)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2798, file: !50, line: 356, baseType: !657, size: 64, offset: 640)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2798, file: !50, line: 357, baseType: !657, size: 64, offset: 704)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2798, file: !50, line: 358, baseType: !657, size: 64, offset: 768)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2798, file: !50, line: 359, baseType: !232, size: 64, offset: 832)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2798, file: !50, line: 360, baseType: !137, size: 32, offset: 896)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2765, file: !50, line: 436, baseType: !2817, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!137, !832, !2761, !2797}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2765, file: !50, line: 438, baseType: !2794, size: 64, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2765, file: !50, line: 439, baseType: !2822, size: 64, offset: 576)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!137, !832, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !50, line: 409, size: 1408, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2826, file: !50, line: 410, baseType: !7, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2826, file: !50, line: 411, baseType: !2830, size: 1344, offset: 64)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2831, size: 1344, elements: !517)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !50, line: 395, size: 448, elements: !2832)
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2843}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2831, file: !50, line: 396, baseType: !7, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2831, file: !50, line: 397, baseType: !7, size: 32, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2831, file: !50, line: 399, baseType: !7, size: 32, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2831, file: !50, line: 400, baseType: !7, size: 32, offset: 96)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2831, file: !50, line: 401, baseType: !7, size: 32, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2831, file: !50, line: 402, baseType: !7, size: 32, offset: 160)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2831, file: !50, line: 403, baseType: !7, size: 32, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2831, file: !50, line: 404, baseType: !659, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2831, file: !50, line: 405, baseType: !2842, size: 64, offset: 320)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !214, line: 126, baseType: !657)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2831, file: !50, line: 406, baseType: !2842, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2765, file: !50, line: 440, baseType: !2773, size: 64, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !833, file: !56, line: 1426, baseType: !2846, size: 64, offset: 576)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2848)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 49, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !833, file: !56, line: 1427, baseType: !141, size: 64, offset: 640)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !833, file: !56, line: 1428, baseType: !141, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !833, file: !56, line: 1429, baseType: !141, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !833, file: !56, line: 1430, baseType: !622, size: 64, offset: 832)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !833, file: !56, line: 1431, baseType: !997, size: 256, offset: 896)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !833, file: !56, line: 1432, baseType: !137, size: 32, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !833, file: !56, line: 1433, baseType: !213, size: 32, offset: 1184)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !833, file: !56, line: 1437, baseType: !2857, size: 64, offset: 1216)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2860)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1437, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !833, file: !56, line: 1449, baseType: !2862, size: 64, offset: 1280)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !638, line: 34, size: 64, elements: !2863)
!2863 = !{!2864}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2862, file: !638, line: 35, baseType: !641, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !833, file: !56, line: 1450, baseType: !252, size: 128, offset: 1344)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !833, file: !56, line: 1451, baseType: !2867, size: 64, offset: 1472)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 699, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !833, file: !56, line: 1452, baseType: !2186, size: 64, offset: 1536)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !833, file: !56, line: 1453, baseType: !2871, size: 64, offset: 1600)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1453, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !833, file: !56, line: 1454, baseType: !872, size: 128, offset: 1664)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !833, file: !56, line: 1455, baseType: !7, size: 32, offset: 1792)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !833, file: !56, line: 1456, baseType: !2876, size: 2432, offset: 1856)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !50, line: 518, size: 2432, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2882, !2914}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2876, file: !50, line: 519, baseType: !7, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2876, file: !50, line: 520, baseType: !997, size: 256, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2876, file: !50, line: 521, baseType: !2881, size: 192, offset: 320)
!2881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 192, elements: !517)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2876, file: !50, line: 522, baseType: !2883, size: 1728, offset: 512)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2884, size: 1728, elements: !517)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !50, line: 222, size: 576, elements: !2885)
!2885 = !{!2886, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2884, file: !50, line: 223, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !50, line: 443, size: 256, elements: !2889)
!2889 = !{!2890, !2891, !2904, !2905}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2888, file: !50, line: 444, baseType: !137, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2888, file: !50, line: 445, baseType: !2892, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !50, line: 310, size: 512, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2894, file: !50, line: 311, baseType: !918, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2894, file: !50, line: 312, baseType: !918, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2894, file: !50, line: 313, baseType: !918, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2894, file: !50, line: 314, baseType: !918, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2894, file: !50, line: 315, baseType: !2686, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2894, file: !50, line: 316, baseType: !2686, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2894, file: !50, line: 317, baseType: !2686, size: 64, offset: 384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2894, file: !50, line: 318, baseType: !2758, size: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2888, file: !50, line: 446, baseType: !138, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2888, file: !50, line: 447, baseType: !2887, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2884, file: !50, line: 224, baseType: !137, size: 32, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2884, file: !50, line: 226, baseType: !252, size: 128, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2884, file: !50, line: 227, baseType: !141, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2884, file: !50, line: 228, baseType: !7, size: 32, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2884, file: !50, line: 229, baseType: !7, size: 32, offset: 352)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2884, file: !50, line: 230, baseType: !2722, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2884, file: !50, line: 231, baseType: !2722, size: 64, offset: 448)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2884, file: !50, line: 232, baseType: !159, size: 64, offset: 512)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2876, file: !50, line: 523, baseType: !2915, size: 192, offset: 2240)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2892, size: 192, elements: !517)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !833, file: !56, line: 1458, baseType: !2917, size: 2112, offset: 4288)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1410, size: 2112, elements: !2918)
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2917, file: !56, line: 1411, baseType: !137, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2917, file: !56, line: 1412, baseType: !1692, size: 128, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2917, file: !56, line: 1413, baseType: !2922, size: 1920, offset: 192)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2923, size: 1920, elements: !517)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2924, line: 12, size: 640, elements: !2925)
!2924 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2925 = !{!2926, !2934, !2936, !2941, !2942}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2923, file: !2924, line: 13, baseType: !2927, size: 320)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2928, line: 17, size: 320, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2929 = !{!2930, !2931, !2932, !2933}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2927, file: !2928, line: 18, baseType: !137, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2927, file: !2928, line: 19, baseType: !137, size: 32, offset: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2927, file: !2928, line: 20, baseType: !1692, size: 128, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2927, file: !2928, line: 22, baseType: !605, size: 128, align: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2923, file: !2924, line: 14, baseType: !2935, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2923, file: !2924, line: 15, baseType: !2937, size: 64, offset: 384)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2938, line: 16, size: 64, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2939 = !{!2940}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2937, file: !2938, line: 17, baseType: !1430, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2923, file: !2924, line: 16, baseType: !1692, size: 128, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2923, file: !2924, line: 17, baseType: !213, size: 32, offset: 576)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !833, file: !56, line: 1465, baseType: !159, size: 64, offset: 6400)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !833, file: !56, line: 1468, baseType: !162, size: 32, offset: 6464)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !833, file: !56, line: 1470, baseType: !773, size: 64, offset: 6528)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !833, file: !56, line: 1471, baseType: !773, size: 64, offset: 6592)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !833, file: !56, line: 1473, baseType: !164, size: 32, offset: 6656)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !833, file: !56, line: 1474, baseType: !2949, size: 64, offset: 6720)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 603, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !833, file: !56, line: 1477, baseType: !2952, size: 256, offset: 6784)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !2482)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !833, file: !56, line: 1478, baseType: !2954, size: 128, offset: 7040)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2955, line: 18, baseType: !2956)
!2955 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2955, line: 16, size: 128, elements: !2957)
!2957 = !{!2958}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2956, file: !2955, line: 17, baseType: !2959, size: 128)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 128, elements: !166)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !833, file: !56, line: 1480, baseType: !7, size: 32, offset: 7168)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !833, file: !56, line: 1481, baseType: !2962, size: 32, offset: 7200)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !214, line: 150, baseType: !7)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !833, file: !56, line: 1487, baseType: !222, size: 192, offset: 7232)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !833, file: !56, line: 1493, baseType: !341, size: 64, offset: 7424)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !833, file: !56, line: 1495, baseType: !2966, size: 64, offset: 7488)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !620, line: 135, size: 1024, align: 512, elements: !2969)
!2969 = !{!2970, !2974, !2975, !2982, !2988, !2992, !2996, !3000, !3001, !3005, !3009, !3014, !3018}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2968, file: !620, line: 136, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!137, !622, !7}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2968, file: !620, line: 137, baseType: !2971, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2968, file: !620, line: 138, baseType: !2976, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!137, !2979, !2981}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2968, file: !620, line: 139, baseType: !2983, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!137, !2979, !7, !341, !2986}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2968, file: !620, line: 141, baseType: !2989, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!137, !2979}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2968, file: !620, line: 142, baseType: !2993, size: 64, offset: 320)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!137, !622}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2968, file: !620, line: 143, baseType: !2997, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !622}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2968, file: !620, line: 144, baseType: !2997, size: 64, offset: 448)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2968, file: !620, line: 145, baseType: !3002, size: 64, offset: 512)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !622, !664}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2968, file: !620, line: 146, baseType: !3006, size: 64, offset: 576)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!516, !622, !516, !137}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2968, file: !620, line: 147, baseType: !3010, size: 64, offset: 640)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!618, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2968, file: !620, line: 148, baseType: !3015, size: 64, offset: 704)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!137, !782, !725}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2968, file: !620, line: 149, baseType: !3019, size: 64, offset: 768)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!622, !622, !3022}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !833, file: !56, line: 1500, baseType: !137, size: 32, offset: 7552)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !833, file: !56, line: 1502, baseType: !3026, size: 448, offset: 7616)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2670, line: 60, size: 448, elements: !3027)
!3027 = !{!3028, !3033, !3034, !3035, !3036, !3037, !3038}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3026, file: !2670, line: 61, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!141, !3032, !2668}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3026, file: !2670, line: 63, baseType: !3029, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3026, file: !2670, line: 66, baseType: !551, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3026, file: !2670, line: 67, baseType: !137, size: 32, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3026, file: !2670, line: 68, baseType: !7, size: 32, offset: 224)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3026, file: !2670, line: 71, baseType: !252, size: 128, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3026, file: !2670, line: 77, baseType: !3039, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !833, file: !56, line: 1505, baseType: !226, size: 64, offset: 8064)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !833, file: !56, line: 1508, baseType: !226, size: 64, offset: 8128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !833, file: !56, line: 1511, baseType: !137, size: 32, offset: 8192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !833, file: !56, line: 1514, baseType: !1131, size: 32, offset: 8224)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !833, file: !56, line: 1517, baseType: !3045, size: 64, offset: 8256)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !387, line: 18, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !833, file: !56, line: 1518, baseType: !868, size: 64, offset: 8320)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !833, file: !56, line: 1525, baseType: !1728, size: 64, offset: 8384)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !833, file: !56, line: 1532, baseType: !3050, size: 64, offset: 8448)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3051, line: 52, size: 64, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3052 = !{!3053}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3050, file: !3051, line: 53, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3051, line: 40, size: 256, elements: !3056)
!3056 = !{!3057, !3058, !3063}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !3051, line: 42, baseType: !236)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3055, file: !3051, line: 44, baseType: !3059, size: 192)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3051, line: 28, size: 192, elements: !3060)
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3059, file: !3051, line: 29, baseType: !252, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3059, file: !3051, line: 31, baseType: !551, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3055, file: !3051, line: 49, baseType: !551, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !833, file: !56, line: 1533, baseType: !3050, size: 64, offset: 8512)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !833, file: !56, line: 1534, baseType: !605, size: 128, align: 64, offset: 8576)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !833, file: !56, line: 1535, baseType: !386, size: 256, offset: 8704)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !833, file: !56, line: 1537, baseType: !222, size: 192, offset: 8960)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !833, file: !56, line: 1542, baseType: !137, size: 32, offset: 9152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !833, file: !56, line: 1545, baseType: !236, offset: 9184)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !833, file: !56, line: 1546, baseType: !252, size: 128, offset: 9216)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !833, file: !56, line: 1548, baseType: !236, offset: 9344)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !833, file: !56, line: 1549, baseType: !252, size: 128, offset: 9344)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !665, file: !56, line: 624, baseType: !967, size: 64, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !665, file: !56, line: 631, baseType: !141, size: 64, offset: 320)
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !56, line: 639, baseType: !3076, size: 32, offset: 384)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !56, line: 639, size: 32, elements: !3077)
!3077 = !{!3078, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3076, file: !56, line: 640, baseType: !3079, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3076, file: !56, line: 641, baseType: !7, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !665, file: !56, line: 643, baseType: !748, size: 32, offset: 416)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !665, file: !56, line: 644, baseType: !766, size: 64, offset: 448)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !665, file: !56, line: 645, baseType: !769, size: 128, offset: 512)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !665, file: !56, line: 646, baseType: !769, size: 128, offset: 640)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !665, file: !56, line: 647, baseType: !769, size: 128, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !665, file: !56, line: 648, baseType: !236, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !665, file: !56, line: 649, baseType: !172, size: 16, offset: 896)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !665, file: !56, line: 650, baseType: !402, size: 8, offset: 912)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !665, file: !56, line: 651, baseType: !402, size: 8, offset: 920)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !665, file: !56, line: 652, baseType: !2842, size: 64, offset: 960)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !665, file: !56, line: 659, baseType: !141, size: 64, offset: 1024)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !665, file: !56, line: 660, baseType: !997, size: 256, offset: 1088)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !665, file: !56, line: 662, baseType: !141, size: 64, offset: 1344)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !665, file: !56, line: 663, baseType: !141, size: 64, offset: 1408)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !665, file: !56, line: 665, baseType: !872, size: 128, offset: 1472)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !665, file: !56, line: 666, baseType: !252, size: 128, offset: 1600)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !665, file: !56, line: 675, baseType: !252, size: 128, offset: 1728)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !665, file: !56, line: 676, baseType: !252, size: 128, offset: 1856)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !665, file: !56, line: 677, baseType: !252, size: 128, offset: 1984)
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !56, line: 678, baseType: !3101, size: 128, offset: 2112)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !56, line: 678, size: 128, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3101, file: !56, line: 679, baseType: !868, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3101, file: !56, line: 680, baseType: !605, size: 128, align: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !665, file: !56, line: 682, baseType: !228, size: 64, offset: 2240)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !665, file: !56, line: 683, baseType: !228, size: 64, offset: 2304)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !665, file: !56, line: 684, baseType: !213, size: 32, offset: 2368)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !665, file: !56, line: 685, baseType: !213, size: 32, offset: 2400)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !665, file: !56, line: 686, baseType: !213, size: 32, offset: 2432)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !665, file: !56, line: 688, baseType: !213, size: 32, offset: 2464)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !56, line: 690, baseType: !3112, size: 64, offset: 2496)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !56, line: 690, size: 64, elements: !3113)
!3113 = !{!3114, !3337}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3112, file: !56, line: 691, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1822, size: 2048, elements: !3118)
!3118 = !{!3119, !3120, !3124, !3129, !3133, !3134, !3135, !3139, !3152, !3153, !3161, !3165, !3166, !3170, !3171, !3175, !3180, !3181, !3185, !3189, !3297, !3301, !3302, !3306, !3307, !3311, !3315, !3320, !3324, !3328, !3332, !3336}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3117, file: !56, line: 1823, baseType: !138, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3117, file: !56, line: 1824, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!766, !592, !766, !137}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3117, file: !56, line: 1825, baseType: !3125, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!547, !592, !516, !562, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3117, file: !56, line: 1826, baseType: !3130, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!547, !592, !341, !562, !3128}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3117, file: !56, line: 1827, baseType: !1067, size: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3117, file: !56, line: 1828, baseType: !1067, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3117, file: !56, line: 1829, baseType: !3136, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!137, !1070, !725}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3117, file: !56, line: 1830, baseType: !3140, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!137, !592, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1776, size: 128, elements: !3145)
!3145 = !{!3146, !3151}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3144, file: !56, line: 1777, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1773, baseType: !3148)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!137, !3143, !341, !137, !766, !657, !7}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3144, file: !56, line: 1778, baseType: !766, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3117, file: !56, line: 1831, baseType: !3140, size: 64, offset: 512)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3117, file: !56, line: 1832, baseType: !3154, size: 64, offset: 576)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!3157, !592, !3159}
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3158, line: 52, baseType: !7)
!3158 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !852, line: 27, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3117, file: !56, line: 1833, baseType: !3162, size: 64, offset: 640)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!551, !592, !7, !141}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3117, file: !56, line: 1834, baseType: !3162, size: 64, offset: 704)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3117, file: !56, line: 1835, baseType: !3167, size: 64, offset: 768)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!137, !592, !1203}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3117, file: !56, line: 1836, baseType: !141, size: 64, offset: 832)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3117, file: !56, line: 1837, baseType: !3172, size: 64, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!137, !664, !592}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3117, file: !56, line: 1838, baseType: !3176, size: 64, offset: 960)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!137, !592, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1007, baseType: !159)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3117, file: !56, line: 1839, baseType: !3172, size: 64, offset: 1024)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3117, file: !56, line: 1840, baseType: !3182, size: 64, offset: 1088)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!137, !592, !766, !766, !137}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3117, file: !56, line: 1841, baseType: !3186, size: 64, offset: 1152)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!137, !137, !592, !137}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3117, file: !56, line: 1842, baseType: !3190, size: 64, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!137, !592, !137, !3193}
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1062, size: 1664, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3227, !3228, !3229, !3242, !3273}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3194, file: !56, line: 1063, baseType: !3193, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3194, file: !56, line: 1064, baseType: !252, size: 128, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3194, file: !56, line: 1065, baseType: !872, size: 128, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3194, file: !56, line: 1066, baseType: !252, size: 128, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3194, file: !56, line: 1069, baseType: !252, size: 128, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3194, file: !56, line: 1072, baseType: !3179, size: 64, offset: 576)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3194, file: !56, line: 1073, baseType: !7, size: 32, offset: 640)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3194, file: !56, line: 1074, baseType: !155, size: 8, offset: 672)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3194, file: !56, line: 1075, baseType: !7, size: 32, offset: 704)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3194, file: !56, line: 1076, baseType: !137, size: 32, offset: 736)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3194, file: !56, line: 1077, baseType: !1692, size: 128, offset: 768)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3194, file: !56, line: 1078, baseType: !592, size: 64, offset: 896)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3194, file: !56, line: 1079, baseType: !766, size: 64, offset: 960)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3194, file: !56, line: 1080, baseType: !766, size: 64, offset: 1024)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3194, file: !56, line: 1082, baseType: !3211, size: 64, offset: 1088)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !56, line: 1314, size: 320, elements: !3213)
!3213 = !{!3214, !3222, !3223, !3224, !3225, !3226}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3212, file: !56, line: 1315, baseType: !3215)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3216, line: 20, baseType: !3217)
!3216 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3216, line: 11, elements: !3218)
!3218 = !{!3219}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3217, file: !3216, line: 12, baseType: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !248, line: 33, baseType: !3221)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 31, elements: !250)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3212, file: !56, line: 1316, baseType: !137, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3212, file: !56, line: 1317, baseType: !137, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3212, file: !56, line: 1318, baseType: !3211, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3212, file: !56, line: 1319, baseType: !592, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3212, file: !56, line: 1320, baseType: !605, size: 128, align: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3194, file: !56, line: 1084, baseType: !141, size: 64, offset: 1152)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3194, file: !56, line: 1085, baseType: !141, size: 64, offset: 1216)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3194, file: !56, line: 1087, baseType: !3230, size: 64, offset: 1280)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3232)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !56, line: 1011, size: 128, elements: !3233)
!3233 = !{!3234, !3238}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3232, file: !56, line: 1012, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !3193, !3193}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3232, file: !56, line: 1013, baseType: !3239, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !3193}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3194, file: !56, line: 1088, baseType: !3243, size: 64, offset: 1344)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !56, line: 1016, size: 512, elements: !3246)
!3246 = !{!3247, !3251, !3255, !3256, !3260, !3264, !3268, !3272}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3245, file: !56, line: 1017, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!3179, !3179}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3245, file: !56, line: 1018, baseType: !3252, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !3179}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3245, file: !56, line: 1019, baseType: !3239, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3245, file: !56, line: 1020, baseType: !3257, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!137, !3193, !137}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3245, file: !56, line: 1021, baseType: !3261, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!725, !3193}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3245, file: !56, line: 1022, baseType: !3265, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!137, !3193, !137, !255}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3245, file: !56, line: 1023, baseType: !3269, size: 64, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{null, !3193, !1044}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3245, file: !56, line: 1024, baseType: !3261, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3194, file: !56, line: 1097, baseType: !3274, size: 256, offset: 1408)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !56, line: 1089, size: 256, elements: !3275)
!3275 = !{!3276, !3285, !3291}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3274, file: !56, line: 1090, baseType: !3277, size: 256)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3278, line: 10, size: 256, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3279 = !{!3280, !3281, !3284}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3277, file: !3278, line: 11, baseType: !162, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3277, file: !3278, line: 12, baseType: !3282, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3278, line: 5, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3277, file: !3278, line: 13, baseType: !252, size: 128, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3274, file: !56, line: 1091, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3278, line: 17, size: 64, elements: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3286, file: !3278, line: 18, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3278, line: 16, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3274, file: !56, line: 1096, baseType: !3292, size: 192)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !56, line: 1092, size: 192, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3292, file: !56, line: 1093, baseType: !252, size: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3292, file: !56, line: 1094, baseType: !137, size: 32, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3292, file: !56, line: 1095, baseType: !7, size: 32, offset: 160)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3117, file: !56, line: 1843, baseType: !3298, size: 64, offset: 1280)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!547, !592, !954, !137, !562, !3128, !137}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3117, file: !56, line: 1844, baseType: !1323, size: 64, offset: 1344)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3117, file: !56, line: 1845, baseType: !3303, size: 64, offset: 1408)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!137, !137}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3117, file: !56, line: 1846, baseType: !3190, size: 64, offset: 1472)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3117, file: !56, line: 1847, baseType: !3308, size: 64, offset: 1536)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!547, !2350, !592, !3128, !562, !7}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3117, file: !56, line: 1848, baseType: !3312, size: 64, offset: 1600)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!547, !592, !3128, !2350, !562, !7}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3117, file: !56, line: 1849, baseType: !3316, size: 64, offset: 1664)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!137, !592, !551, !3319, !1044}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3117, file: !56, line: 1850, baseType: !3321, size: 64, offset: 1728)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!551, !592, !137, !766, !766}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3117, file: !56, line: 1852, baseType: !3325, size: 64, offset: 1792)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !944, !592}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3117, file: !56, line: 1856, baseType: !3329, size: 64, offset: 1856)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!547, !592, !766, !592, !766, !562, !7}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3117, file: !56, line: 1858, baseType: !3333, size: 64, offset: 1920)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!766, !592, !766, !592, !766, !766, !7}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3117, file: !56, line: 1861, baseType: !3182, size: 64, offset: 1984)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3112, file: !56, line: 692, baseType: !897, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !665, file: !56, line: 694, baseType: !3339, size: 64, offset: 2560)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 1100, size: 384, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3340, file: !56, line: 1101, baseType: !236)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3340, file: !56, line: 1102, baseType: !252, size: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3340, file: !56, line: 1103, baseType: !252, size: 128, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3340, file: !56, line: 1104, baseType: !252, size: 128, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !665, file: !56, line: 695, baseType: !968, size: 1216, align: 64, offset: 2624)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !665, file: !56, line: 696, baseType: !252, size: 128, offset: 3840)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !56, line: 697, baseType: !3349, size: 64, offset: 3968)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !56, line: 697, size: 64, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3356, !3357}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3349, file: !56, line: 698, baseType: !2350, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3349, file: !56, line: 699, baseType: !2867, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3349, file: !56, line: 700, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !56, line: 700, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3349, file: !56, line: 701, baseType: !516, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3349, file: !56, line: 702, baseType: !7, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !665, file: !56, line: 705, baseType: !164, size: 32, offset: 4032)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !665, file: !56, line: 708, baseType: !164, size: 32, offset: 4064)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !665, file: !56, line: 709, baseType: !2949, size: 64, offset: 4096)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !665, file: !56, line: 720, baseType: !159, size: 64, offset: 4160)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !623, file: !620, line: 98, baseType: !3363, size: 256, offset: 448)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !2482)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !623, file: !620, line: 101, baseType: !3365, size: 32, offset: 704)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3366, line: 25, size: 32, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368}
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !3366, line: 26, baseType: !3369, size: 32)
!3369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3365, file: !3366, line: 26, size: 32, elements: !3370)
!3370 = !{!3371}
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !3366, line: 30, baseType: !3372, size: 32)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3369, file: !3366, line: 30, size: 32, elements: !3373)
!3373 = !{!3374, !3375}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3372, file: !3366, line: 31, baseType: !236)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3372, file: !3366, line: 32, baseType: !137, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !623, file: !620, line: 102, baseType: !2966, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !623, file: !620, line: 103, baseType: !832, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !623, file: !620, line: 104, baseType: !141, size: 64, offset: 896)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !623, file: !620, line: 105, baseType: !159, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !620, line: 107, baseType: !3381, size: 128, offset: 1024)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !620, line: 107, size: 128, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3381, file: !620, line: 108, baseType: !252, size: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3381, file: !620, line: 109, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !623, file: !620, line: 111, baseType: !252, size: 128, offset: 1152)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !623, file: !620, line: 112, baseType: !252, size: 128, offset: 1280)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !623, file: !620, line: 120, baseType: !3389, size: 128, offset: 1408)
!3389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !620, line: 116, size: 128, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3389, file: !620, line: 117, baseType: !872, size: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3389, file: !620, line: 118, baseType: !637, size: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3389, file: !620, line: 119, baseType: !605, size: 128, align: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !593, file: !56, line: 922, baseType: !664, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !593, file: !56, line: 923, baseType: !3115, size: 64, offset: 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !593, file: !56, line: 929, baseType: !236, offset: 384)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !593, file: !56, line: 930, baseType: !55, size: 32, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !593, file: !56, line: 931, baseType: !226, size: 64, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !593, file: !56, line: 932, baseType: !7, size: 32, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !593, file: !56, line: 933, baseType: !2962, size: 32, offset: 544)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !593, file: !56, line: 934, baseType: !222, size: 192, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !593, file: !56, line: 935, baseType: !766, size: 64, offset: 768)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !593, file: !56, line: 936, baseType: !3404, size: 192, offset: 832)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 885, size: 192, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3404, file: !56, line: 886, baseType: !3215)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3404, file: !56, line: 887, baseType: !1682, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3404, file: !56, line: 888, baseType: !64, size: 32, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3404, file: !56, line: 889, baseType: !670, size: 32, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3404, file: !56, line: 889, baseType: !670, size: 32, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3404, file: !56, line: 890, baseType: !137, size: 32, offset: 160)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !593, file: !56, line: 937, baseType: !1795, size: 64, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !593, file: !56, line: 938, baseType: !3414, size: 256, offset: 1088)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 896, size: 256, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3414, file: !56, line: 897, baseType: !141, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3414, file: !56, line: 898, baseType: !7, size: 32, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3414, file: !56, line: 899, baseType: !7, size: 32, offset: 96)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3414, file: !56, line: 902, baseType: !7, size: 32, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3414, file: !56, line: 903, baseType: !7, size: 32, offset: 160)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3414, file: !56, line: 904, baseType: !766, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !593, file: !56, line: 940, baseType: !657, size: 64, offset: 1344)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !593, file: !56, line: 945, baseType: !159, size: 64, offset: 1408)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !593, file: !56, line: 949, baseType: !252, size: 128, offset: 1472)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !593, file: !56, line: 950, baseType: !252, size: 128, offset: 1600)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !593, file: !56, line: 952, baseType: !967, size: 64, offset: 1728)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !593, file: !56, line: 953, baseType: !1131, size: 32, offset: 1792)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !593, file: !56, line: 954, baseType: !1131, size: 32, offset: 1824)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !583, file: !541, line: 174, baseType: !589, size: 64, offset: 320)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !583, file: !541, line: 176, baseType: !3431, size: 64, offset: 384)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!137, !592, !483, !582, !1203}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !571, file: !541, line: 90, baseType: !566, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !571, file: !541, line: 91, baseType: !3436, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !531, file: !478, line: 143, baseType: !3438, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!3441, !483}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !3444)
!3444 = !{!3445, !3446, !3450, !3454, !3460, !3464}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3443, file: !73, line: 40, baseType: !72, size: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3443, file: !73, line: 41, baseType: !3447, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!725}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3443, file: !73, line: 42, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!159}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3443, file: !73, line: 43, baseType: !3455, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!2379, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3443, file: !73, line: 44, baseType: !3461, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!2379}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3443, file: !73, line: 45, baseType: !703, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !531, file: !478, line: 144, baseType: !3466, size: 64, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!2379, !483}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !531, file: !478, line: 145, baseType: !3470, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !483, !3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !477, file: !478, line: 70, baseType: !3476, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !852, line: 123, size: 1024, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3601, !3602, !3603, !3604, !3605}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3477, file: !852, line: 124, baseType: !213, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3477, file: !852, line: 125, baseType: !213, size: 32, offset: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3477, file: !852, line: 135, baseType: !3476, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3477, file: !852, line: 136, baseType: !341, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3477, file: !852, line: 138, baseType: !990, size: 192, align: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3477, file: !852, line: 140, baseType: !2379, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3477, file: !852, line: 141, baseType: !7, size: 32, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !852, line: 142, baseType: !3487, size: 256, offset: 512)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3477, file: !852, line: 142, size: 256, elements: !3488)
!3488 = !{!3489, !3529, !3533}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3487, file: !852, line: 143, baseType: !3490, size: 192)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !852, line: 91, size: 192, elements: !3491)
!3491 = !{!3492, !3493, !3494}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3490, file: !852, line: 92, baseType: !141, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3490, file: !852, line: 94, baseType: !986, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3490, file: !852, line: 100, baseType: !3495, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !852, line: 180, size: 704, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3527, !3528}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3496, file: !852, line: 182, baseType: !3476, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3496, file: !852, line: 183, baseType: !7, size: 32, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3496, file: !852, line: 186, baseType: !1715, size: 192, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3496, file: !852, line: 187, baseType: !162, size: 32, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3496, file: !852, line: 188, baseType: !162, size: 32, offset: 352)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3496, file: !852, line: 189, baseType: !3504, size: 64, offset: 384)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !852, line: 168, size: 320, elements: !3506)
!3506 = !{!3507, !3511, !3515, !3519, !3523}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3505, file: !852, line: 169, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!137, !944, !3495}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3505, file: !852, line: 171, baseType: !3512, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!137, !3476, !341, !557}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3505, file: !852, line: 173, baseType: !3516, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!137, !3476}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3505, file: !852, line: 174, baseType: !3520, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!137, !3476, !3476, !341}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3505, file: !852, line: 176, baseType: !3524, size: 64, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!137, !944, !3476, !3495}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3496, file: !852, line: 192, baseType: !252, size: 128, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3496, file: !852, line: 194, baseType: !1692, size: 128, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3487, file: !852, line: 144, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !852, line: 103, size: 64, elements: !3531)
!3531 = !{!3532}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3530, file: !852, line: 104, baseType: !3476, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3487, file: !852, line: 145, baseType: !3534, size: 256)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !852, line: 107, size: 256, elements: !3535)
!3535 = !{!3536, !3596, !3599, !3600}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3534, file: !852, line: 108, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !852, line: 217, size: 768, elements: !3540)
!3540 = !{!3541, !3561, !3565, !3569, !3573, !3577, !3581, !3585, !3586, !3587, !3588, !3592}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3539, file: !852, line: 222, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!137, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !852, line: 197, size: 1088, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3546, file: !852, line: 199, baseType: !3476, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3546, file: !852, line: 200, baseType: !592, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3546, file: !852, line: 201, baseType: !944, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3546, file: !852, line: 202, baseType: !159, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3546, file: !852, line: 205, baseType: !222, size: 192, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3546, file: !852, line: 206, baseType: !222, size: 192, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3546, file: !852, line: 207, baseType: !137, size: 32, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3546, file: !852, line: 208, baseType: !252, size: 128, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3546, file: !852, line: 209, baseType: !516, size: 64, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3546, file: !852, line: 211, baseType: !562, size: 64, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3546, file: !852, line: 212, baseType: !725, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3546, file: !852, line: 213, baseType: !725, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3546, file: !852, line: 214, baseType: !1231, size: 64, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3539, file: !852, line: 223, baseType: !3562, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{null, !3545}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3539, file: !852, line: 236, baseType: !3566, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!137, !944, !159}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3539, file: !852, line: 238, baseType: !3570, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!159, !944, !3128}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3539, file: !852, line: 239, baseType: !3574, size: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!159, !944, !159, !3128}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3539, file: !852, line: 240, baseType: !3578, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !944, !159}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3539, file: !852, line: 242, baseType: !3582, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!547, !3545, !516, !562, !766}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3539, file: !852, line: 252, baseType: !562, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3539, file: !852, line: 259, baseType: !725, size: 8, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3539, file: !852, line: 260, baseType: !3582, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3539, file: !852, line: 263, baseType: !3589, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!3157, !3545, !3159}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3539, file: !852, line: 266, baseType: !3593, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!137, !3545, !1203}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3534, file: !852, line: 109, baseType: !3597, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !852, line: 31, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3534, file: !852, line: 110, baseType: !766, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3534, file: !852, line: 111, baseType: !3476, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3477, file: !852, line: 148, baseType: !159, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3477, file: !852, line: 154, baseType: !657, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3477, file: !852, line: 156, baseType: !172, size: 16, offset: 896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3477, file: !852, line: 157, baseType: !557, size: 16, offset: 912)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3477, file: !852, line: 158, baseType: !3606, size: 64, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !852, line: 32, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !477, file: !478, line: 71, baseType: !1710, size: 32, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !477, file: !478, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !477, file: !478, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !477, file: !478, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !477, file: !478, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !477, file: !478, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !474, file: !85, line: 463, baseType: !3615, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !474, file: !85, line: 465, baseType: !3617, size: 64, offset: 576)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !85, line: 36, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !474, file: !85, line: 467, baseType: !341, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !85, line: 468, baseType: !3621, size: 64, offset: 704)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !85, line: 87, size: 384, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3631, !3636, !3640}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3623, file: !85, line: 88, baseType: !341, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3623, file: !85, line: 89, baseType: !568, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3623, file: !85, line: 90, baseType: !3628, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!137, !3615, !511}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3623, file: !85, line: 91, baseType: !3632, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!516, !3615, !3635, !3473, !3474}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3623, file: !85, line: 93, baseType: !3637, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !3615}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3623, file: !85, line: 95, baseType: !3641, size: 64, offset: 320)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !92, line: 278, size: 1472, elements: !3644)
!3644 = !{!3645, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3643, file: !92, line: 279, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!137, !3615}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3643, file: !92, line: 280, baseType: !3637, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3643, file: !92, line: 281, baseType: !3646, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3643, file: !92, line: 282, baseType: !3646, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3643, file: !92, line: 283, baseType: !3646, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3643, file: !92, line: 284, baseType: !3646, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3643, file: !92, line: 285, baseType: !3646, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3643, file: !92, line: 286, baseType: !3646, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3643, file: !92, line: 287, baseType: !3646, size: 64, offset: 512)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3643, file: !92, line: 288, baseType: !3646, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3643, file: !92, line: 289, baseType: !3646, size: 64, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3643, file: !92, line: 290, baseType: !3646, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3643, file: !92, line: 291, baseType: !3646, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3643, file: !92, line: 292, baseType: !3646, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3643, file: !92, line: 293, baseType: !3646, size: 64, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3643, file: !92, line: 294, baseType: !3646, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3643, file: !92, line: 295, baseType: !3646, size: 64, offset: 1024)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3643, file: !92, line: 296, baseType: !3646, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3643, file: !92, line: 297, baseType: !3646, size: 64, offset: 1152)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3643, file: !92, line: 298, baseType: !3646, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3643, file: !92, line: 299, baseType: !3646, size: 64, offset: 1280)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3643, file: !92, line: 300, baseType: !3646, size: 64, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3643, file: !92, line: 301, baseType: !3646, size: 64, offset: 1408)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !474, file: !85, line: 470, baseType: !3672, size: 64, offset: 768)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3674, line: 82, size: 1408, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3757, !3760, !3761}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !3674, line: 83, baseType: !341, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3673, file: !3674, line: 84, baseType: !341, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3673, file: !3674, line: 85, baseType: !3615, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3673, file: !3674, line: 86, baseType: !568, size: 64, offset: 192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3673, file: !3674, line: 87, baseType: !568, size: 64, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3673, file: !3674, line: 88, baseType: !568, size: 64, offset: 320)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3673, file: !3674, line: 90, baseType: !3683, size: 64, offset: 384)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!137, !3615, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 95, size: 1152, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3694, !3695, !3708, !3721, !3722, !3723, !3724, !3725, !3733, !3734, !3735, !3736, !3737, !3738}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3687, file: !79, line: 96, baseType: !341, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3687, file: !79, line: 97, baseType: !3672, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3687, file: !79, line: 99, baseType: !138, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3687, file: !79, line: 100, baseType: !341, size: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3687, file: !79, line: 102, baseType: !725, size: 8, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3687, file: !79, line: 103, baseType: !78, size: 32, offset: 288)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3687, file: !79, line: 105, baseType: !3696, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3698)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3699, line: 262, size: 1600, elements: !3700)
!3699 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3700 = !{!3701, !3702, !3703, !3707}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3698, file: !3699, line: 263, baseType: !2952, size: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3698, file: !3699, line: 264, baseType: !2952, size: 256, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3698, file: !3699, line: 265, baseType: !3704, size: 1024, offset: 512)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1024, elements: !3705)
!3705 = !{!3706}
!3706 = !DISubrange(count: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3698, file: !3699, line: 266, baseType: !2379, size: 64, offset: 1536)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3687, file: !79, line: 106, baseType: !3709, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3699, line: 210, size: 256, elements: !3712)
!3712 = !{!3713, !3717, !3719, !3720}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3711, file: !3699, line: 211, baseType: !3714, size: 72)
!3714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 72, elements: !3715)
!3715 = !{!3716}
!3716 = !DISubrange(count: 9)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3711, file: !3699, line: 212, baseType: !3718, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3699, line: 14, baseType: !141)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3711, file: !3699, line: 213, baseType: !164, size: 32, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3711, file: !3699, line: 214, baseType: !164, size: 32, offset: 224)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3687, file: !79, line: 108, baseType: !3646, size: 64, offset: 448)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3687, file: !79, line: 109, baseType: !3637, size: 64, offset: 512)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3687, file: !79, line: 110, baseType: !3646, size: 64, offset: 576)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3687, file: !79, line: 111, baseType: !3637, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3687, file: !79, line: 112, baseType: !3726, size: 64, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!137, !3615, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !92, line: 52, baseType: !3730)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !92, line: 50, size: 32, elements: !3731)
!3731 = !{!3732}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3730, file: !92, line: 51, baseType: !137, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3687, file: !79, line: 113, baseType: !3646, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3687, file: !79, line: 114, baseType: !568, size: 64, offset: 832)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3687, file: !79, line: 115, baseType: !568, size: 64, offset: 896)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3687, file: !79, line: 117, baseType: !3641, size: 64, offset: 960)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3687, file: !79, line: 118, baseType: !3637, size: 64, offset: 1024)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3687, file: !79, line: 120, baseType: !3739, size: 64, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 120, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3673, file: !3674, line: 91, baseType: !3628, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3673, file: !3674, line: 92, baseType: !3646, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3673, file: !3674, line: 93, baseType: !3637, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3673, file: !3674, line: 94, baseType: !3646, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3673, file: !3674, line: 95, baseType: !3637, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3673, file: !3674, line: 97, baseType: !3646, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3673, file: !3674, line: 98, baseType: !3646, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3673, file: !3674, line: 100, baseType: !3726, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3673, file: !3674, line: 101, baseType: !3646, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3673, file: !3674, line: 103, baseType: !3646, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3673, file: !3674, line: 105, baseType: !3646, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3673, file: !3674, line: 107, baseType: !3641, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3673, file: !3674, line: 109, baseType: !3754, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3756)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3674, line: 109, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3673, file: !3674, line: 111, baseType: !3758, size: 64, offset: 1280)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3674, line: 111, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3673, file: !3674, line: 112, baseType: !878, offset: 1344)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3673, file: !3674, line: 114, baseType: !725, size: 8, offset: 1344)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !474, file: !85, line: 471, baseType: !3686, size: 64, offset: 832)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !474, file: !85, line: 473, baseType: !159, size: 64, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !474, file: !85, line: 475, baseType: !159, size: 64, offset: 960)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !474, file: !85, line: 480, baseType: !222, size: 192, offset: 1024)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !474, file: !85, line: 484, baseType: !3767, size: 576, offset: 1216)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !85, line: 361, size: 576, elements: !3768)
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3767, file: !85, line: 362, baseType: !252, size: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3767, file: !85, line: 363, baseType: !252, size: 128, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3767, file: !85, line: 364, baseType: !252, size: 128, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3767, file: !85, line: 365, baseType: !252, size: 128, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3767, file: !85, line: 366, baseType: !725, size: 8, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3767, file: !85, line: 367, baseType: !84, size: 32, offset: 544)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !474, file: !85, line: 485, baseType: !3776, size: 2304, offset: 1792)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !92, line: 565, size: 2304, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3873, !3877}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3776, file: !92, line: 566, baseType: !3729, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3776, file: !92, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3776, file: !92, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3776, file: !92, line: 569, baseType: !725, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3776, file: !92, line: 570, baseType: !725, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3776, file: !92, line: 571, baseType: !725, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3776, file: !92, line: 572, baseType: !725, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3776, file: !92, line: 573, baseType: !725, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3776, file: !92, line: 574, baseType: !725, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3776, file: !92, line: 575, baseType: !725, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3776, file: !92, line: 576, baseType: !725, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3776, file: !92, line: 577, baseType: !162, size: 32, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3776, file: !92, line: 578, baseType: !236, offset: 96)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3776, file: !92, line: 580, baseType: !252, size: 128, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3776, file: !92, line: 581, baseType: !1750, size: 192, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3776, file: !92, line: 582, baseType: !3794, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3796, line: 43, size: 1472, elements: !3797)
!3796 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3805, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3795, file: !3796, line: 44, baseType: !341, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3795, file: !3796, line: 45, baseType: !137, size: 32, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3795, file: !3796, line: 46, baseType: !252, size: 128, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3795, file: !3796, line: 47, baseType: !236, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3795, file: !3796, line: 48, baseType: !3803, size: 64, offset: 256)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !92, line: 533, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3795, file: !3796, line: 49, baseType: !3806, size: 320, offset: 320)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3807, line: 11, size: 320, elements: !3808)
!3807 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3808 = !{!3809, !3810, !3811, !3816}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3806, file: !3807, line: 16, baseType: !872, size: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3806, file: !3807, line: 17, baseType: !141, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3806, file: !3807, line: 18, baseType: !3812, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3806, file: !3807, line: 19, baseType: !162, size: 32, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3795, file: !3796, line: 50, baseType: !141, size: 64, offset: 640)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3795, file: !3796, line: 51, baseType: !1514, size: 64, offset: 704)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3795, file: !3796, line: 52, baseType: !1514, size: 64, offset: 768)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3795, file: !3796, line: 53, baseType: !1514, size: 64, offset: 832)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3795, file: !3796, line: 54, baseType: !1514, size: 64, offset: 896)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3795, file: !3796, line: 55, baseType: !1514, size: 64, offset: 960)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3795, file: !3796, line: 56, baseType: !141, size: 64, offset: 1024)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3795, file: !3796, line: 57, baseType: !141, size: 64, offset: 1088)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3795, file: !3796, line: 58, baseType: !141, size: 64, offset: 1152)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3795, file: !3796, line: 59, baseType: !141, size: 64, offset: 1216)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3795, file: !3796, line: 60, baseType: !141, size: 64, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3795, file: !3796, line: 61, baseType: !3615, size: 64, offset: 1344)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3795, file: !3796, line: 62, baseType: !725, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3795, file: !3796, line: 63, baseType: !725, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3776, file: !92, line: 583, baseType: !725, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3776, file: !92, line: 584, baseType: !725, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3776, file: !92, line: 585, baseType: !725, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3776, file: !92, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3776, file: !92, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3776, file: !92, line: 592, baseType: !1506, size: 512, offset: 576)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3776, file: !92, line: 593, baseType: !657, size: 64, offset: 1088)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3776, file: !92, line: 594, baseType: !386, size: 256, offset: 1152)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3776, file: !92, line: 595, baseType: !1692, size: 128, offset: 1408)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3776, file: !92, line: 596, baseType: !3803, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3776, file: !92, line: 597, baseType: !213, size: 32, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3776, file: !92, line: 598, baseType: !213, size: 32, offset: 1632)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3776, file: !92, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3776, file: !92, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3776, file: !92, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3776, file: !92, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3776, file: !92, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3776, file: !92, line: 604, baseType: !725, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3776, file: !92, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3776, file: !92, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3776, file: !92, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3776, file: !92, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3776, file: !92, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3776, file: !92, line: 610, baseType: !7, size: 32, offset: 1696)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3776, file: !92, line: 611, baseType: !91, size: 32, offset: 1728)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3776, file: !92, line: 612, baseType: !99, size: 32, offset: 1760)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3776, file: !92, line: 613, baseType: !137, size: 32, offset: 1792)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3776, file: !92, line: 614, baseType: !137, size: 32, offset: 1824)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3776, file: !92, line: 615, baseType: !657, size: 64, offset: 1856)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3776, file: !92, line: 616, baseType: !657, size: 64, offset: 1920)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3776, file: !92, line: 617, baseType: !657, size: 64, offset: 1984)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3776, file: !92, line: 618, baseType: !657, size: 64, offset: 2048)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3776, file: !92, line: 620, baseType: !3864, size: 64, offset: 2112)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !92, line: 536, size: 256, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3865, file: !92, line: 537, baseType: !236)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3865, file: !92, line: 538, baseType: !7, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3865, file: !92, line: 540, baseType: !252, size: 128, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3865, file: !92, line: 543, baseType: !3871, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !92, line: 534, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3776, file: !92, line: 621, baseType: !3874, size: 64, offset: 2176)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3615, !1655}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3776, file: !92, line: 622, baseType: !3878, size: 64, offset: 2240)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !92, line: 622, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !474, file: !85, line: 486, baseType: !3881, size: 64, offset: 4096)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !92, line: 642, size: 1792, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3890, !3891, !3892}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3882, file: !92, line: 643, baseType: !3643, size: 1472)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3882, file: !92, line: 644, baseType: !3646, size: 64, offset: 1472)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3882, file: !92, line: 645, baseType: !3887, size: 64, offset: 1536)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3615, !725}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3882, file: !92, line: 646, baseType: !3646, size: 64, offset: 1600)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3882, file: !92, line: 647, baseType: !3637, size: 64, offset: 1664)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3882, file: !92, line: 648, baseType: !3637, size: 64, offset: 1728)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !474, file: !85, line: 493, baseType: !3894, size: 64, offset: 4160)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !106, line: 162, size: 1088, elements: !3896)
!3896 = !{!3897, !3898, !3899, !4071, !4072, !4073, !4074, !4075, !4076, !4079, !4080, !4081, !4082, !4083, !4084, !4085}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3895, file: !106, line: 163, baseType: !252, size: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3895, file: !106, line: 164, baseType: !341, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3895, file: !106, line: 165, baseType: !3900, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !106, line: 105, size: 640, elements: !3903)
!3903 = !{!3904, !4022, !4032, !4037, !4041, !4048, !4052, !4056, !4063, !4067}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3902, file: !106, line: 106, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!137, !3894, !3908, !105}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3910, line: 51, size: 1344, elements: !3911)
!3910 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3911 = !{!3912, !3913, !3915, !3916, !4006, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3909, file: !3910, line: 52, baseType: !341, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3909, file: !3910, line: 53, baseType: !3914, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3910, line: 28, baseType: !162)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3909, file: !3910, line: 54, baseType: !341, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3909, file: !3910, line: 55, baseType: !3917, size: 192, offset: 192)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3918, line: 17, size: 192, elements: !3919)
!3918 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3919 = !{!3920, !3922, !4005}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3917, file: !3918, line: 18, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3917, file: !3918, line: 19, baseType: !3923, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3925)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3918, line: 110, size: 1152, elements: !3926)
!3926 = !{!3927, !3931, !3935, !3941, !3947, !3951, !3955, !3960, !3964, !3965, !3969, !3973, !3977, !3988, !3989, !3990, !3991, !4001}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3925, file: !3918, line: 111, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!3921, !3921}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3925, file: !3918, line: 112, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3921}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3925, file: !3918, line: 113, baseType: !3936, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!725, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3917)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3925, file: !3918, line: 114, baseType: !3942, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!2379, !3939, !3945}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3925, file: !3918, line: 116, baseType: !3948, size: 64, offset: 256)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!725, !3939, !341}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3925, file: !3918, line: 118, baseType: !3952, size: 64, offset: 320)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!137, !3939, !341, !7, !159, !562}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3925, file: !3918, line: 123, baseType: !3956, size: 64, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!137, !3939, !341, !3959, !562}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3925, file: !3918, line: 126, baseType: !3961, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!341, !3939}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3925, file: !3918, line: 127, baseType: !3961, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3925, file: !3918, line: 128, baseType: !3966, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!3921, !3939}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3925, file: !3918, line: 130, baseType: !3970, size: 64, offset: 640)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!3921, !3939, !3921}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3925, file: !3918, line: 133, baseType: !3974, size: 64, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!3921, !3939, !341}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3925, file: !3918, line: 135, baseType: !3978, size: 64, offset: 768)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!137, !3939, !341, !341, !7, !7, !3981}
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3918, line: 43, size: 640, elements: !3983)
!3983 = !{!3984, !3985, !3986}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3982, file: !3918, line: 44, baseType: !3921, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3982, file: !3918, line: 45, baseType: !7, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3982, file: !3918, line: 46, baseType: !3987, size: 512, offset: 128)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 512, elements: !1544)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3925, file: !3918, line: 140, baseType: !3970, size: 64, offset: 832)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3925, file: !3918, line: 143, baseType: !3966, size: 64, offset: 896)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3925, file: !3918, line: 145, baseType: !3928, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3925, file: !3918, line: 146, baseType: !3992, size: 64, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!137, !3939, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3918, line: 29, size: 128, elements: !3997)
!3997 = !{!3998, !3999, !4000}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3996, file: !3918, line: 30, baseType: !7, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3996, file: !3918, line: 31, baseType: !7, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3996, file: !3918, line: 32, baseType: !3939, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3925, file: !3918, line: 148, baseType: !4002, size: 64, offset: 1088)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!137, !3939, !3615}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3917, file: !3918, line: 20, baseType: !3615, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3909, file: !3910, line: 57, baseType: !4007, size: 64, offset: 384)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3910, line: 31, size: 704, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4008, file: !3910, line: 32, baseType: !516, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4008, file: !3910, line: 33, baseType: !137, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4008, file: !3910, line: 34, baseType: !159, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4008, file: !3910, line: 35, baseType: !4007, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4008, file: !3910, line: 43, baseType: !583, size: 448, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3909, file: !3910, line: 58, baseType: !4007, size: 64, offset: 448)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3909, file: !3910, line: 59, baseType: !3908, size: 64, offset: 512)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3909, file: !3910, line: 60, baseType: !3908, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3909, file: !3910, line: 61, baseType: !3908, size: 64, offset: 640)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3909, file: !3910, line: 63, baseType: !477, size: 512, offset: 704)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3909, file: !3910, line: 65, baseType: !141, size: 64, offset: 1216)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3909, file: !3910, line: 66, baseType: !159, size: 64, offset: 1280)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3902, file: !106, line: 108, baseType: !4023, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!137, !3894, !4026, !105}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !106, line: 63, size: 640, elements: !4028)
!4028 = !{!4029, !4030, !4031}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4027, file: !106, line: 64, baseType: !3921, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4027, file: !106, line: 65, baseType: !137, size: 32, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4027, file: !106, line: 66, baseType: !161, size: 512, offset: 96)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3902, file: !106, line: 110, baseType: !4033, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!137, !3894, !7, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !214, line: 164, baseType: !141)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3902, file: !106, line: 111, baseType: !4038, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !3894, !7}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3902, file: !106, line: 112, baseType: !4042, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!137, !3894, !3908, !4045, !7, !4047, !2935}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3902, file: !106, line: 117, baseType: !4049, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!137, !3894, !7, !7, !159}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3902, file: !106, line: 119, baseType: !4053, size: 64, offset: 384)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !3894, !7, !7}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3902, file: !106, line: 121, baseType: !4057, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!137, !3894, !4060, !725}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4062, line: 11, flags: DIFlagFwdDecl)
!4062 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3902, file: !106, line: 122, baseType: !4064, size: 64, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !3894, !4060}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3902, file: !106, line: 123, baseType: !4068, size: 64, offset: 576)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!137, !3894, !4026, !4047, !2935}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3895, file: !106, line: 166, baseType: !159, size: 64, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !106, line: 167, baseType: !7, size: 32, offset: 320)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3895, file: !106, line: 168, baseType: !7, size: 32, offset: 352)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3895, file: !106, line: 171, baseType: !3921, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3895, file: !106, line: 172, baseType: !105, size: 32, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3895, file: !106, line: 173, baseType: !4077, size: 64, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !106, line: 134, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3895, file: !106, line: 175, baseType: !3894, size: 64, offset: 576)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3895, file: !106, line: 182, baseType: !4036, size: 64, offset: 640)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3895, file: !106, line: 183, baseType: !7, size: 32, offset: 704)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3895, file: !106, line: 184, baseType: !7, size: 32, offset: 736)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3895, file: !106, line: 185, baseType: !972, size: 128, offset: 768)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3895, file: !106, line: 186, baseType: !222, size: 192, offset: 896)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3895, file: !106, line: 187, baseType: !4086, offset: 1088)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2583)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !474, file: !85, line: 499, baseType: !252, size: 128, offset: 4224)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !474, file: !85, line: 502, baseType: !4089, size: 64, offset: 4352)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !85, line: 502, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !474, file: !85, line: 504, baseType: !4093, size: 64, offset: 4416)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !474, file: !85, line: 505, baseType: !657, size: 64, offset: 4480)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !474, file: !85, line: 510, baseType: !657, size: 64, offset: 4544)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !474, file: !85, line: 511, baseType: !4097, size: 64, offset: 4608)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !85, line: 511, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !474, file: !85, line: 513, baseType: !4101, size: 64, offset: 4672)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !85, line: 288, size: 128, elements: !4103)
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4102, file: !85, line: 293, baseType: !7, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4102, file: !85, line: 294, baseType: !141, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !474, file: !85, line: 515, baseType: !252, size: 128, offset: 4736)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !474, file: !85, line: 526, baseType: !4108, offset: 4864)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4109, line: 5, elements: !250)
!4109 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !474, file: !85, line: 528, baseType: !3908, size: 64, offset: 4864)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !474, file: !85, line: 529, baseType: !3921, size: 64, offset: 4928)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !474, file: !85, line: 534, baseType: !748, size: 32, offset: 4992)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !474, file: !85, line: 535, baseType: !162, size: 32, offset: 5024)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !474, file: !85, line: 537, baseType: !236, offset: 5056)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !474, file: !85, line: 538, baseType: !252, size: 128, offset: 5056)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !474, file: !85, line: 540, baseType: !4117, size: 64, offset: 5184)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4119, line: 54, size: 960, elements: !4120)
!4119 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4131, !4135, !4136, !4137, !4138, !4142, !4146, !4147}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4118, file: !4119, line: 55, baseType: !341, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4118, file: !4119, line: 56, baseType: !138, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4118, file: !4119, line: 58, baseType: !568, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4118, file: !4119, line: 59, baseType: !568, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4118, file: !4119, line: 60, baseType: !483, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4118, file: !4119, line: 62, baseType: !3628, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4118, file: !4119, line: 63, baseType: !4128, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!516, !3615, !3635}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4118, file: !4119, line: 65, baseType: !4132, size: 64, offset: 448)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !4117}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4118, file: !4119, line: 66, baseType: !3637, size: 64, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4118, file: !4119, line: 68, baseType: !3646, size: 64, offset: 576)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4118, file: !4119, line: 70, baseType: !3441, size: 64, offset: 640)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4118, file: !4119, line: 71, baseType: !4139, size: 64, offset: 704)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!2379, !3615}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4118, file: !4119, line: 73, baseType: !4143, size: 64, offset: 768)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !3615, !3473, !3474}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4118, file: !4119, line: 75, baseType: !3641, size: 64, offset: 832)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4118, file: !4119, line: 77, baseType: !3758, size: 64, offset: 896)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !474, file: !85, line: 541, baseType: !568, size: 64, offset: 5248)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !474, file: !85, line: 543, baseType: !3637, size: 64, offset: 5312)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !474, file: !85, line: 544, baseType: !4151, size: 64, offset: 5376)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !85, line: 45, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !474, file: !85, line: 545, baseType: !4154, size: 64, offset: 5440)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !85, line: 47, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !474, file: !85, line: 547, baseType: !725, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !474, file: !85, line: 548, baseType: !725, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !474, file: !85, line: 549, baseType: !725, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !474, file: !85, line: 550, baseType: !725, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !431, file: !6, line: 335, baseType: !4161, size: 256, offset: 6592)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 256, elements: !2482)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !431, file: !6, line: 340, baseType: !137, size: 32, offset: 6848)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !209, file: !210, line: 465, baseType: !222, size: 192, offset: 5312)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !209, file: !210, line: 466, baseType: !4165, size: 1024, offset: 5504)
!4165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1024, elements: !3705)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !209, file: !210, line: 469, baseType: !4167, size: 704, offset: 6528)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !387, line: 115, size: 704, elements: !4168)
!4168 = !{!4169, !4170, !4171, !4172}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4167, file: !387, line: 116, baseType: !386, size: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4167, file: !387, line: 117, baseType: !3806, size: 320, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4167, file: !387, line: 120, baseType: !3045, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4167, file: !387, line: 121, baseType: !137, size: 32, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !209, file: !210, line: 470, baseType: !4174, size: 64, offset: 7232)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !210, line: 203, size: 512, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4180, !4184}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4175, file: !210, line: 205, baseType: !141, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4175, file: !210, line: 206, baseType: !222, size: 192, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4175, file: !210, line: 207, baseType: !252, size: 128, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4175, file: !210, line: 209, baseType: !4181, size: 64, offset: 384)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !208}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4175, file: !210, line: 210, baseType: !4185, size: 64, offset: 448)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !208, !255}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !209, file: !210, line: 473, baseType: !4189, size: 64, offset: 7296)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4191)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !210, line: 228, size: 1472, elements: !4192)
!4192 = !{!4193, !4194, !4198, !4199, !4203, !4207, !4212, !4216, !4220, !4225, !4229, !4230, !4244, !4258, !4275, !4292, !4293, !4297, !4298, !4302, !4313, !4314, !4315}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4191, file: !210, line: 230, baseType: !138, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4191, file: !210, line: 231, baseType: !4195, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!137, !208, !137}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4191, file: !210, line: 232, baseType: !4195, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4191, file: !210, line: 237, baseType: !4200, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!547, !208, !516, !562, !3128}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4191, file: !210, line: 239, baseType: !4204, size: 64, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!547, !208, !341, !562, !3128}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4191, file: !210, line: 244, baseType: !4208, size: 64, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!137, !4211, !208}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4191, file: !210, line: 247, baseType: !4213, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!137, !208}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4191, file: !210, line: 250, baseType: !4217, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!137, !7, !7, !7, !7, !7, !208}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4191, file: !210, line: 254, baseType: !4221, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!137, !4224, !208}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4191, file: !210, line: 257, baseType: !4226, size: 64, offset: 576)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!137, !137, !208}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4191, file: !210, line: 260, baseType: !4208, size: 64, offset: 640)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4191, file: !210, line: 263, baseType: !4231, size: 64, offset: 704)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{null, !208, !4234}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4236)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !260, line: 351, size: 192, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4236, file: !260, line: 352, baseType: !164, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4236, file: !260, line: 353, baseType: !164, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4236, file: !260, line: 354, baseType: !164, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4236, file: !260, line: 355, baseType: !164, size: 32, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4236, file: !260, line: 356, baseType: !164, size: 32, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4236, file: !260, line: 357, baseType: !164, size: 32, offset: 160)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4191, file: !210, line: 265, baseType: !4245, size: 64, offset: 768)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{null, !208, !4248}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4250)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !260, line: 342, size: 192, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4250, file: !260, line: 343, baseType: !164, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4250, file: !260, line: 344, baseType: !164, size: 32, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4250, file: !260, line: 345, baseType: !164, size: 32, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4250, file: !260, line: 346, baseType: !164, size: 32, offset: 96)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4250, file: !260, line: 347, baseType: !164, size: 32, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4250, file: !260, line: 348, baseType: !164, size: 32, offset: 160)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4191, file: !210, line: 267, baseType: !4259, size: 64, offset: 832)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !208, !4262}
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !260, line: 360, size: 640, elements: !4265)
!4265 = !{!4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4264, file: !260, line: 361, baseType: !164, size: 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4264, file: !260, line: 362, baseType: !164, size: 32, offset: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4264, file: !260, line: 363, baseType: !164, size: 32, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4264, file: !260, line: 364, baseType: !164, size: 32, offset: 96)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4264, file: !260, line: 365, baseType: !164, size: 32, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4264, file: !260, line: 366, baseType: !164, size: 32, offset: 160)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4264, file: !260, line: 367, baseType: !357, size: 8, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4264, file: !260, line: 368, baseType: !341, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4264, file: !260, line: 369, baseType: !418, size: 320, offset: 320)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4191, file: !210, line: 270, baseType: !4276, size: 64, offset: 896)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!137, !208, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !260, line: 388, size: 832, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4291}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4280, file: !260, line: 389, baseType: !310, size: 16)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4280, file: !260, line: 390, baseType: !310, size: 16, offset: 16)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4280, file: !260, line: 391, baseType: !310, size: 16, offset: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4280, file: !260, line: 392, baseType: !341, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4280, file: !260, line: 393, baseType: !4287, size: 32, offset: 128)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !260, line: 384, size: 32, elements: !4288)
!4288 = !{!4289, !4290}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4287, file: !260, line: 385, baseType: !310, size: 16)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4287, file: !260, line: 385, baseType: !310, size: 16, offset: 16)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4280, file: !260, line: 394, baseType: !4264, size: 640, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4191, file: !210, line: 273, baseType: !4213, size: 64, offset: 960)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4191, file: !210, line: 276, baseType: !4294, size: 64, offset: 1024)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!137, !208, !7, !141}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4191, file: !210, line: 280, baseType: !4294, size: 64, offset: 1088)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4191, file: !210, line: 284, baseType: !4299, size: 64, offset: 1152)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!137, !208, !1203}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4191, file: !210, line: 287, baseType: !4303, size: 64, offset: 1216)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !208, !4306, !4211}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !210, line: 144, size: 128, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4307, file: !210, line: 145, baseType: !162, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4307, file: !210, line: 146, baseType: !162, size: 32, offset: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4307, file: !210, line: 147, baseType: !162, size: 32, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4307, file: !210, line: 148, baseType: !162, size: 32, offset: 96)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4191, file: !210, line: 291, baseType: !4181, size: 64, offset: 1280)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4191, file: !210, line: 294, baseType: !4213, size: 64, offset: 1344)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4191, file: !210, line: 295, baseType: !4213, size: 64, offset: 1408)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !209, file: !210, line: 474, baseType: !3615, size: 64, offset: 7360)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !209, file: !210, line: 475, baseType: !3615, size: 64, offset: 7424)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !209, file: !210, line: 476, baseType: !137, size: 32, offset: 7488)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !209, file: !210, line: 478, baseType: !4320, size: 64, offset: 7552)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !210, line: 355, size: 384, elements: !4322)
!4322 = !{!4323, !4337, !4350, !4365, !4381, !4394}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4321, file: !210, line: 357, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !208, !4327}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !210, line: 306, size: 192, elements: !4329)
!4329 = !{!4330, !4331, !4332, !4333, !4334}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4328, file: !210, line: 307, baseType: !164, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4328, file: !210, line: 308, baseType: !164, size: 32, offset: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4328, file: !210, line: 309, baseType: !164, size: 32, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4328, file: !210, line: 310, baseType: !164, size: 32, offset: 96)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4328, file: !210, line: 311, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4321, file: !210, line: 362, baseType: !4338, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{null, !208, !4341}
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !210, line: 326, size: 192, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4342, file: !210, line: 327, baseType: !164, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4342, file: !210, line: 328, baseType: !164, size: 32, offset: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4342, file: !210, line: 329, baseType: !164, size: 32, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4342, file: !210, line: 330, baseType: !164, size: 32, offset: 96)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4342, file: !210, line: 331, baseType: !164, size: 32, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4342, file: !210, line: 332, baseType: !164, size: 32, offset: 160)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4321, file: !210, line: 364, baseType: !4351, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !208, !4354}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !210, line: 315, size: 256, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4355, file: !210, line: 316, baseType: !164, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4355, file: !210, line: 317, baseType: !164, size: 32, offset: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4355, file: !210, line: 318, baseType: !164, size: 32, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4355, file: !210, line: 319, baseType: !164, size: 32, offset: 96)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4355, file: !210, line: 320, baseType: !164, size: 32, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4355, file: !210, line: 321, baseType: !164, size: 32, offset: 160)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4355, file: !210, line: 322, baseType: !164, size: 32, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4355, file: !210, line: 323, baseType: !164, size: 32, offset: 224)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4321, file: !210, line: 366, baseType: !4366, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !208, !4369}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !210, line: 335, size: 320, elements: !4371)
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4370, file: !210, line: 336, baseType: !164, size: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4370, file: !210, line: 337, baseType: !164, size: 32, offset: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4370, file: !210, line: 338, baseType: !164, size: 32, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4370, file: !210, line: 339, baseType: !164, size: 32, offset: 96)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4370, file: !210, line: 340, baseType: !164, size: 32, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4370, file: !210, line: 341, baseType: !164, size: 32, offset: 160)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4370, file: !210, line: 342, baseType: !164, size: 32, offset: 192)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4370, file: !210, line: 343, baseType: !4380, size: 64, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4321, file: !210, line: 368, baseType: !4382, size: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !208, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !210, line: 346, size: 192, elements: !4387)
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4393}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4386, file: !210, line: 347, baseType: !164, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4386, file: !210, line: 348, baseType: !164, size: 32, offset: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4386, file: !210, line: 349, baseType: !164, size: 32, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4386, file: !210, line: 350, baseType: !164, size: 32, offset: 96)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4386, file: !210, line: 351, baseType: !164, size: 32, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4386, file: !210, line: 352, baseType: !164, size: 32, offset: 160)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4321, file: !210, line: 371, baseType: !4213, size: 64, offset: 320)
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !210, line: 480, baseType: !4396, size: 64, offset: 7616)
!4396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !210, line: 480, size: 64, elements: !4397)
!4397 = !{!4398, !4399}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4396, file: !210, line: 481, baseType: !516, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4396, file: !210, line: 482, baseType: !516, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !209, file: !210, line: 484, baseType: !141, size: 64, offset: 7680)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !209, file: !210, line: 485, baseType: !159, size: 64, offset: 7744)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !209, file: !210, line: 488, baseType: !162, size: 32, offset: 7808)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !209, file: !210, line: 489, baseType: !159, size: 64, offset: 7872)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !209, file: !210, line: 491, baseType: !159, size: 64, offset: 7936)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !209, file: !210, line: 501, baseType: !4406, size: 64, offset: 8000)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !210, line: 495, size: 64, elements: !4408)
!4408 = !{!4409, !4410}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4407, file: !210, line: 496, baseType: !7, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4407, file: !210, line: 500, baseType: !4411, offset: 64)
!4411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4412, elements: !1967)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !210, line: 497, size: 128, elements: !4413)
!4413 = !{!4414, !4416}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4412, file: !210, line: 498, baseType: !4415, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !214, line: 158, baseType: !2377)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4412, file: !210, line: 499, baseType: !4415, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !209, file: !210, line: 503, baseType: !725, size: 8, offset: 8064)
!4418 = !DIGlobalVariableExpression(var: !4419, expr: !DIExpression())
!4419 = distinct !DIGlobalVariable(name: "pvr2fb_pci_driver", scope: !2, file: !3, line: 993, type: !4420, isLocal: true, isDefinition: true)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4421, line: 858, size: 2048, elements: !4422)
!4421 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4422 = !{!4423, !4424, !4425, !4437, !4654, !4658, !4662, !4666, !4667, !4671, !4689, !4690, !4691}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4420, file: !4421, line: 859, baseType: !252, size: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4420, file: !4421, line: 860, baseType: !341, size: 64, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4420, file: !4421, line: 861, baseType: !4426, size: 64, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4428)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3699, line: 38, size: 256, elements: !4429)
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4428, file: !3699, line: 39, baseType: !164, size: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4428, file: !3699, line: 39, baseType: !164, size: 32, offset: 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4428, file: !3699, line: 40, baseType: !164, size: 32, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4428, file: !3699, line: 40, baseType: !164, size: 32, offset: 96)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4428, file: !3699, line: 41, baseType: !164, size: 32, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4428, file: !3699, line: 41, baseType: !164, size: 32, offset: 160)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4428, file: !3699, line: 42, baseType: !3718, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4420, file: !4421, line: 862, baseType: !4438, size: 64, offset: 256)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!137, !4441, !4426}
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4421, line: 309, size: 19264, elements: !4443)
!4443 = !{!4444, !4445, !4519, !4520, !4521, !4522, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4551, !4552, !4553, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4577, !4578, !4579, !4580, !4582, !4583, !4584, !4585, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4628, !4629, !4630, !4631, !4632, !4633, !4635, !4636, !4637, !4640, !4647, !4648, !4649, !4650, !4651, !4652, !4653}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4442, file: !4421, line: 310, baseType: !252, size: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4442, file: !4421, line: 311, baseType: !4446, size: 64, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4421, line: 605, size: 8064, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454, !4455, !4469, !4470, !4471, !4495, !4498, !4499, !4503, !4504, !4505, !4506, !4507, !4511, !4512, !4514, !4515, !4516, !4517, !4518}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4447, file: !4421, line: 606, baseType: !252, size: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4447, file: !4421, line: 607, baseType: !4446, size: 64, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4447, file: !4421, line: 608, baseType: !252, size: 128, offset: 192)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4447, file: !4421, line: 609, baseType: !252, size: 128, offset: 320)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4447, file: !4421, line: 610, baseType: !4441, size: 64, offset: 448)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4447, file: !4421, line: 611, baseType: !252, size: 128, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4447, file: !4421, line: 613, baseType: !4456, size: 256, offset: 640)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4457, size: 256, elements: !297)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4459, line: 20, size: 512, elements: !4460)
!4459 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4460 = !{!4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4458, file: !4459, line: 21, baseType: !4415, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4458, file: !4459, line: 22, baseType: !4415, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4458, file: !4459, line: 23, baseType: !341, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4458, file: !4459, line: 24, baseType: !141, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4458, file: !4459, line: 25, baseType: !141, size: 64, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4458, file: !4459, line: 26, baseType: !4457, size: 64, offset: 320)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4458, file: !4459, line: 26, baseType: !4457, size: 64, offset: 384)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4458, file: !4459, line: 26, baseType: !4457, size: 64, offset: 448)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4447, file: !4421, line: 614, baseType: !252, size: 128, offset: 896)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4447, file: !4421, line: 615, baseType: !4458, size: 512, offset: 1024)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4447, file: !4421, line: 617, baseType: !4472, size: 64, offset: 1536)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4421, line: 731, size: 320, elements: !4474)
!4474 = !{!4475, !4479, !4483, !4487, !4491}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4473, file: !4421, line: 732, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!137, !4446}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4473, file: !4421, line: 733, baseType: !4480, size: 64, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !4446}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4473, file: !4421, line: 734, baseType: !4484, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!159, !4446, !7, !137}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4473, file: !4421, line: 735, baseType: !4488, size: 64, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!137, !4446, !7, !137, !137, !173}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4473, file: !4421, line: 736, baseType: !4492, size: 64, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!137, !4446, !7, !137, !137, !162}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4447, file: !4421, line: 618, baseType: !4496, size: 64, offset: 1600)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4421, line: 537, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4447, file: !4421, line: 619, baseType: !159, size: 64, offset: 1664)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4447, file: !4421, line: 620, baseType: !4500, size: 64, offset: 1728)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4502, line: 123, flags: DIFlagFwdDecl)
!4502 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4447, file: !4421, line: 622, baseType: !155, size: 8, offset: 1792)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4447, file: !4421, line: 623, baseType: !155, size: 8, offset: 1800)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4447, file: !4421, line: 624, baseType: !155, size: 8, offset: 1808)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4447, file: !4421, line: 625, baseType: !155, size: 8, offset: 1816)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4447, file: !4421, line: 630, baseType: !4508, size: 384, offset: 1824)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 384, elements: !4509)
!4509 = !{!4510}
!4510 = !DISubrange(count: 48)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4447, file: !4421, line: 632, baseType: !172, size: 16, offset: 2208)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4447, file: !4421, line: 633, baseType: !4513, size: 16, offset: 2224)
!4513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4421, line: 237, baseType: !172)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4447, file: !4421, line: 634, baseType: !3615, size: 64, offset: 2240)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4447, file: !4421, line: 635, baseType: !474, size: 5568, offset: 2304)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4447, file: !4421, line: 636, baseType: !582, size: 64, offset: 7872)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4447, file: !4421, line: 637, baseType: !582, size: 64, offset: 7936)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4447, file: !4421, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4442, file: !4421, line: 312, baseType: !4446, size: 64, offset: 192)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4442, file: !4421, line: 314, baseType: !159, size: 64, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4442, file: !4421, line: 315, baseType: !4500, size: 64, offset: 320)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4442, file: !4421, line: 316, baseType: !4523, size: 64, offset: 384)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4421, line: 69, size: 832, elements: !4525)
!4525 = !{!4526, !4527, !4528, !4531, !4532}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4524, file: !4421, line: 70, baseType: !4446, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4524, file: !4421, line: 71, baseType: !252, size: 128, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4524, file: !4421, line: 72, baseType: !4529, size: 64, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4421, line: 72, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4524, file: !4421, line: 73, baseType: !155, size: 8, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4524, file: !4421, line: 74, baseType: !477, size: 512, offset: 320)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4442, file: !4421, line: 318, baseType: !7, size: 32, offset: 448)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4442, file: !4421, line: 319, baseType: !172, size: 16, offset: 480)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4442, file: !4421, line: 320, baseType: !172, size: 16, offset: 496)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4442, file: !4421, line: 321, baseType: !172, size: 16, offset: 512)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4442, file: !4421, line: 322, baseType: !172, size: 16, offset: 528)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4442, file: !4421, line: 323, baseType: !7, size: 32, offset: 544)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4442, file: !4421, line: 324, baseType: !402, size: 8, offset: 576)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4442, file: !4421, line: 325, baseType: !402, size: 8, offset: 584)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4442, file: !4421, line: 330, baseType: !402, size: 8, offset: 592)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4442, file: !4421, line: 331, baseType: !402, size: 8, offset: 600)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4442, file: !4421, line: 332, baseType: !402, size: 8, offset: 608)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4442, file: !4421, line: 333, baseType: !402, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4442, file: !4421, line: 334, baseType: !402, size: 8, offset: 624)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4442, file: !4421, line: 335, baseType: !402, size: 8, offset: 632)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4442, file: !4421, line: 336, baseType: !1082, size: 16, offset: 640)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4442, file: !4421, line: 337, baseType: !4047, size: 64, offset: 704)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4442, file: !4421, line: 339, baseType: !4550, size: 64, offset: 768)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4442, file: !4421, line: 340, baseType: !657, size: 64, offset: 832)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4442, file: !4421, line: 346, baseType: !4102, size: 128, offset: 896)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4442, file: !4421, line: 348, baseType: !4554, size: 32, offset: 1024)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4421, line: 155, baseType: !137)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4442, file: !4421, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4442, file: !4421, line: 352, baseType: !402, size: 8, offset: 1064)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4442, file: !4421, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4442, file: !4421, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4442, file: !4421, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4442, file: !4421, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4442, file: !4421, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4442, file: !4421, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4442, file: !4421, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4442, file: !4421, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4442, file: !4421, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4442, file: !4421, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4442, file: !4421, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4442, file: !4421, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4442, file: !4421, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4442, file: !4421, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4442, file: !4421, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4442, file: !4421, line: 376, baseType: !7, size: 32, offset: 1120)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4442, file: !4421, line: 377, baseType: !7, size: 32, offset: 1152)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4442, file: !4421, line: 380, baseType: !4575, size: 64, offset: 1216)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4421, line: 303, flags: DIFlagFwdDecl)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4442, file: !4421, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4442, file: !4421, line: 383, baseType: !137, size: 32, offset: 1312)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4442, file: !4421, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4442, file: !4421, line: 387, baseType: !4581, size: 32, offset: 1376)
!4581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4421, line: 180, baseType: !7)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4442, file: !4421, line: 388, baseType: !474, size: 5568, offset: 1408)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4442, file: !4421, line: 390, baseType: !137, size: 32, offset: 6976)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4442, file: !4421, line: 396, baseType: !7, size: 32, offset: 7008)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4442, file: !4421, line: 397, baseType: !4586, size: 8704, offset: 7040)
!4586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4458, size: 8704, elements: !4587)
!4587 = !{!4588}
!4588 = !DISubrange(count: 17)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4442, file: !4421, line: 399, baseType: !725, size: 8, offset: 15744)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4442, file: !4421, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4442, file: !4421, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4442, file: !4421, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4442, file: !4421, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4442, file: !4421, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4442, file: !4421, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4442, file: !4421, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4442, file: !4421, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4442, file: !4421, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4442, file: !4421, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4442, file: !4421, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4442, file: !4421, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4442, file: !4421, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4442, file: !4421, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4442, file: !4421, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4442, file: !4421, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4442, file: !4421, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4442, file: !4421, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4442, file: !4421, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4442, file: !4421, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4442, file: !4421, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4442, file: !4421, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4442, file: !4421, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4442, file: !4421, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4442, file: !4421, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4442, file: !4421, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4442, file: !4421, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4442, file: !4421, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4442, file: !4421, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4442, file: !4421, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4442, file: !4421, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4442, file: !4421, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4442, file: !4421, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4442, file: !4421, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4442, file: !4421, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4442, file: !4421, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4442, file: !4421, line: 450, baseType: !4627, size: 16, offset: 15792)
!4627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4421, line: 206, baseType: !172)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4442, file: !4421, line: 451, baseType: !213, size: 32, offset: 15808)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4442, file: !4421, line: 453, baseType: !161, size: 512, offset: 15840)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4442, file: !4421, line: 454, baseType: !868, size: 64, offset: 16384)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4442, file: !4421, line: 455, baseType: !582, size: 64, offset: 16448)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4442, file: !4421, line: 456, baseType: !137, size: 32, offset: 16512)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4442, file: !4421, line: 457, baseType: !4634, size: 1088, offset: 16576)
!4634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 1088, elements: !4587)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4442, file: !4421, line: 458, baseType: !4634, size: 1088, offset: 17664)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4442, file: !4421, line: 469, baseType: !568, size: 64, offset: 18752)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4442, file: !4421, line: 471, baseType: !4638, size: 64, offset: 18816)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4421, line: 304, flags: DIFlagFwdDecl)
!4640 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !4421, line: 478, baseType: !4641, size: 64, offset: 18880)
!4641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4442, file: !4421, line: 478, size: 64, elements: !4642)
!4642 = !{!4643, !4646}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4641, file: !4421, line: 479, baseType: !4644, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4421, line: 305, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4641, file: !4421, line: 480, baseType: !4441, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4442, file: !4421, line: 482, baseType: !1082, size: 16, offset: 18944)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4442, file: !4421, line: 483, baseType: !402, size: 8, offset: 18960)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4442, file: !4421, line: 497, baseType: !1082, size: 16, offset: 18976)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4442, file: !4421, line: 498, baseType: !2377, size: 64, offset: 19008)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4442, file: !4421, line: 499, baseType: !562, size: 64, offset: 19072)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4442, file: !4421, line: 500, baseType: !516, size: 64, offset: 19136)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4442, file: !4421, line: 502, baseType: !141, size: 64, offset: 19200)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4420, file: !4421, line: 863, baseType: !4655, size: 64, offset: 320)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !4441}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4420, file: !4421, line: 864, baseType: !4659, size: 64, offset: 384)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!137, !4441, !3729}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4420, file: !4421, line: 865, baseType: !4663, size: 64, offset: 448)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!137, !4441}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4420, file: !4421, line: 866, baseType: !4655, size: 64, offset: 512)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4420, file: !4421, line: 867, baseType: !4668, size: 64, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!137, !4441, !137}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4420, file: !4421, line: 868, baseType: !4672, size: 64, offset: 640)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4421, line: 795, size: 384, elements: !4675)
!4675 = !{!4676, !4681, !4685, !4686, !4687, !4688}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4674, file: !4421, line: 797, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!4680, !4441, !4581}
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4421, line: 772, baseType: !7)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4674, file: !4421, line: 801, baseType: !4682, size: 64, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!4680, !4441}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4674, file: !4421, line: 804, baseType: !4682, size: 64, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4674, file: !4421, line: 807, baseType: !4655, size: 64, offset: 192)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4674, file: !4421, line: 808, baseType: !4655, size: 64, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4674, file: !4421, line: 811, baseType: !4655, size: 64, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4420, file: !4421, line: 869, baseType: !568, size: 64, offset: 704)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4420, file: !4421, line: 870, baseType: !3687, size: 1152, offset: 768)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4420, file: !4421, line: 871, baseType: !4692, size: 128, offset: 1920)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4421, line: 759, size: 128, elements: !4693)
!4693 = !{!4694, !4695}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4692, file: !4421, line: 760, baseType: !236)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4692, file: !4421, line: 761, baseType: !252, size: 128)
!4696 = !DIGlobalVariableExpression(var: !4697, expr: !DIExpression())
!4697 = distinct !DIGlobalVariable(name: "pvr2fb_pci_tbl", scope: !2, file: !3, line: 985, type: !4698, isLocal: true, isDefinition: true)
!4698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4427, size: 512, elements: !320)
!4699 = !DIGlobalVariableExpression(var: !4700, expr: !DIExpression())
!4700 = distinct !DIGlobalVariable(name: "pvr2_fix", scope: !2, file: !3, line: 149, type: !300, isLocal: true, isDefinition: true)
!4701 = !DIGlobalVariableExpression(var: !4702, expr: !DIExpression())
!4702 = distinct !DIGlobalVariable(name: "currentpar", scope: !2, file: !3, line: 145, type: !142, isLocal: true, isDefinition: true)
!4703 = !DIGlobalVariableExpression(var: !4704, expr: !DIExpression())
!4704 = distinct !DIGlobalVariable(name: "nopan", scope: !2, file: !3, line: 176, type: !137, isLocal: true, isDefinition: true)
!4705 = !DIGlobalVariableExpression(var: !4706, expr: !DIExpression())
!4706 = distinct !DIGlobalVariable(name: "nowrap", scope: !2, file: !3, line: 177, type: !137, isLocal: true, isDefinition: true)
!4707 = !DIGlobalVariableExpression(var: !4708, expr: !DIExpression())
!4708 = distinct !DIGlobalVariable(name: "pvr2fb_ops", scope: !2, file: !3, line: 722, type: !4190, isLocal: true, isDefinition: true)
!4709 = !DIGlobalVariableExpression(var: !4710, expr: !DIExpression())
!4710 = distinct !DIGlobalVariable(name: "do_blank", scope: !2, file: !3, line: 184, type: !1419, isLocal: true, isDefinition: true)
!4711 = !DIGlobalVariableExpression(var: !4712, expr: !DIExpression())
!4712 = distinct !DIGlobalVariable(name: "video_output", scope: !2, file: !3, line: 174, type: !137, isLocal: true, isDefinition: true)
!4713 = !DIGlobalVariableExpression(var: !4714, expr: !DIExpression())
!4714 = distinct !DIGlobalVariable(name: "defmode", scope: !2, file: !3, line: 226, type: !137, isLocal: true, isDefinition: true)
!4715 = !DIGlobalVariableExpression(var: !4716, expr: !DIExpression())
!4716 = distinct !DIGlobalVariable(name: "mode_option", scope: !2, file: !3, line: 227, type: !516, isLocal: true, isDefinition: true)
!4717 = !DIGlobalVariableExpression(var: !4718, expr: !DIExpression())
!4718 = distinct !DIGlobalVariable(name: "pvr2_modedb", scope: !2, file: !3, line: 197, type: !4719, isLocal: true, isDefinition: true)
!4719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1536, elements: !517)
!4720 = !DIGlobalVariableExpression(var: !4721, expr: !DIExpression())
!4721 = distinct !DIGlobalVariable(name: "pvr2_var", scope: !2, file: !3, line: 158, type: !4722, isLocal: true, isDefinition: true)
!4722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!4723 = !DIGlobalVariableExpression(var: !4724, expr: !DIExpression())
!4724 = distinct !DIGlobalVariable(name: "cables", scope: !2, file: !3, line: 116, type: !4725, isLocal: true, isDefinition: true)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4726, size: 384, elements: !517)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvr2_params", file: !3, line: 115, size: 128, elements: !4727)
!4727 = !{!4728, !4729}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4726, file: !3, line: 115, baseType: !7, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4726, file: !3, line: 115, baseType: !516, size: 64, offset: 64)
!4730 = !DIGlobalVariableExpression(var: !4731, expr: !DIExpression())
!4731 = distinct !DIGlobalVariable(name: "cable_type", scope: !2, file: !3, line: 173, type: !137, isLocal: true, isDefinition: true)
!4732 = !DIGlobalVariableExpression(var: !4733, expr: !DIExpression())
!4733 = distinct !DIGlobalVariable(name: "outputs", scope: !2, file: !3, line: 120, type: !4725, isLocal: true, isDefinition: true)
!4734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4735, size: 512, elements: !320)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvr2_board", file: !3, line: 1060, size: 256, elements: !4736)
!4736 = !{!4737, !4741, !4742}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4735, file: !3, line: 1061, baseType: !4738, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!137}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4735, file: !3, line: 1062, baseType: !181, size: 64, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4735, file: !3, line: 1063, baseType: !303, size: 128, offset: 128)
!4743 = !{i32 7, !"Dwarf Version", i32 4}
!4744 = !{i32 2, !"Debug Info Version", i32 3}
!4745 = !{i32 1, !"wchar_size", i32 2}
!4746 = !{i32 1, !"Code Model", i32 2}
!4747 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4748 = distinct !DISubprogram(name: "pvr2fb_exit", scope: !3, file: !3, line: 1111, type: !182, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!4749 = !DILocalVariable(name: "i", scope: !4748, file: !3, line: 1113, type: !137)
!4750 = !DILocation(line: 1113, column: 6, scope: !4748)
!4751 = !DILocation(line: 1115, column: 9, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1115, column: 2)
!4753 = !DILocation(line: 1115, column: 7, scope: !4752)
!4754 = !DILocation(line: 1115, column: 14, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 1115, column: 2)
!4756 = !DILocation(line: 1115, column: 16, scope: !4755)
!4757 = !DILocation(line: 1115, column: 2, scope: !4752)
!4758 = !DILocalVariable(name: "pvr_board", scope: !4759, file: !3, line: 1116, type: !4760)
!4759 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 1115, column: 49)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4761 = !DILocation(line: 1116, column: 22, scope: !4759)
!4762 = !DILocation(line: 1116, column: 49, scope: !4759)
!4763 = !DILocation(line: 1116, column: 47, scope: !4759)
!4764 = !DILocation(line: 1118, column: 7, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 1118, column: 7)
!4766 = !DILocation(line: 1118, column: 18, scope: !4765)
!4767 = !DILocation(line: 1118, column: 7, scope: !4759)
!4768 = !DILocation(line: 1119, column: 4, scope: !4765)
!4769 = !DILocation(line: 1119, column: 15, scope: !4765)
!4770 = !DILocation(line: 1120, column: 2, scope: !4759)
!4771 = !DILocation(line: 1115, column: 45, scope: !4755)
!4772 = !DILocation(line: 1115, column: 2, scope: !4755)
!4773 = distinct !{!4773, !4757, !4774}
!4774 = !DILocation(line: 1120, column: 2, scope: !4752)
!4775 = !DILocation(line: 1126, column: 25, scope: !4748)
!4776 = !DILocation(line: 1126, column: 2, scope: !4748)
!4777 = !DILocation(line: 1127, column: 22, scope: !4748)
!4778 = !DILocation(line: 1127, column: 2, scope: !4748)
!4779 = !DILocation(line: 1128, column: 1, scope: !4748)
!4780 = distinct !DISubprogram(name: "pvr2fb_init", scope: !3, file: !3, line: 1074, type: !4739, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!4781 = !DILocalVariable(name: "i", scope: !4780, file: !3, line: 1076, type: !137)
!4782 = !DILocation(line: 1076, column: 6, scope: !4780)
!4783 = !DILocalVariable(name: "ret", scope: !4780, file: !3, line: 1076, type: !137)
!4784 = !DILocation(line: 1076, column: 9, scope: !4780)
!4785 = !DILocalVariable(name: "option", scope: !4780, file: !3, line: 1079, type: !516)
!4786 = !DILocation(line: 1079, column: 8, scope: !4780)
!4787 = !DILocation(line: 1081, column: 6, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 1081, column: 6)
!4789 = !DILocation(line: 1081, column: 6, scope: !4780)
!4790 = !DILocation(line: 1082, column: 3, scope: !4788)
!4791 = !DILocation(line: 1083, column: 15, scope: !4780)
!4792 = !DILocation(line: 1083, column: 2, scope: !4780)
!4793 = !DILocation(line: 1086, column: 12, scope: !4780)
!4794 = !DILocation(line: 1086, column: 10, scope: !4780)
!4795 = !DILocation(line: 1087, column: 7, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 1087, column: 6)
!4797 = !DILocation(line: 1087, column: 6, scope: !4780)
!4798 = !DILocation(line: 1088, column: 3, scope: !4796)
!4799 = !DILocation(line: 1090, column: 15, scope: !4780)
!4800 = !DILocation(line: 1090, column: 24, scope: !4780)
!4801 = !DILocation(line: 1090, column: 13, scope: !4780)
!4802 = !DILocation(line: 1092, column: 9, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 1092, column: 2)
!4804 = !DILocation(line: 1092, column: 7, scope: !4803)
!4805 = !DILocation(line: 1092, column: 14, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 1092, column: 2)
!4807 = !DILocation(line: 1092, column: 16, scope: !4806)
!4808 = !DILocation(line: 1092, column: 2, scope: !4803)
!4809 = !DILocalVariable(name: "pvr_board", scope: !4810, file: !3, line: 1093, type: !4760)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 1092, column: 49)
!4811 = !DILocation(line: 1093, column: 22, scope: !4810)
!4812 = !DILocation(line: 1093, column: 49, scope: !4810)
!4813 = !DILocation(line: 1093, column: 47, scope: !4810)
!4814 = !DILocation(line: 1095, column: 8, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 1095, column: 7)
!4816 = !DILocation(line: 1095, column: 19, scope: !4815)
!4817 = !DILocation(line: 1095, column: 7, scope: !4810)
!4818 = !DILocation(line: 1096, column: 4, scope: !4815)
!4819 = !DILocation(line: 1098, column: 9, scope: !4810)
!4820 = !DILocation(line: 1098, column: 20, scope: !4810)
!4821 = !DILocation(line: 1098, column: 7, scope: !4810)
!4822 = !DILocation(line: 1100, column: 7, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 1100, column: 7)
!4824 = !DILocation(line: 1100, column: 11, scope: !4823)
!4825 = !DILocation(line: 1100, column: 7, scope: !4810)
!4826 = !DILocation(line: 1102, column: 5, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 1100, column: 17)
!4828 = !DILocation(line: 1102, column: 16, scope: !4827)
!4829 = !DILocation(line: 1101, column: 4, scope: !4827)
!4830 = !DILocation(line: 1103, column: 24, scope: !4827)
!4831 = !DILocation(line: 1103, column: 4, scope: !4827)
!4832 = !DILocation(line: 1104, column: 4, scope: !4827)
!4833 = !DILocation(line: 1106, column: 2, scope: !4810)
!4834 = !DILocation(line: 1092, column: 45, scope: !4806)
!4835 = !DILocation(line: 1092, column: 2, scope: !4806)
!4836 = distinct !{!4836, !4808, !4837}
!4837 = !DILocation(line: 1106, column: 2, scope: !4803)
!4838 = !DILocation(line: 1108, column: 9, scope: !4780)
!4839 = !DILocation(line: 1108, column: 2, scope: !4780)
!4840 = !DILocation(line: 1109, column: 1, scope: !4780)
!4841 = distinct !DISubprogram(name: "pvr2fb_pci_init", scope: !3, file: !3, line: 1000, type: !4739, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!4842 = !DILocation(line: 1002, column: 9, scope: !4841)
!4843 = !DILocation(line: 1002, column: 2, scope: !4841)
!4844 = distinct !DISubprogram(name: "pvr2fb_pci_exit", scope: !3, file: !3, line: 1005, type: !182, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!4845 = !DILocation(line: 1007, column: 2, scope: !4844)
!4846 = !DILocation(line: 1008, column: 1, scope: !4844)
!4847 = distinct !DISubprogram(name: "pvr2fb_pci_probe", scope: !3, file: !3, line: 940, type: !4439, scopeLine: 942, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!4848 = !DILocalVariable(name: "pdev", arg: 1, scope: !4847, file: !3, line: 940, type: !4441)
!4849 = !DILocation(line: 940, column: 45, scope: !4847)
!4850 = !DILocalVariable(name: "ent", arg: 2, scope: !4847, file: !3, line: 941, type: !4426)
!4851 = !DILocation(line: 941, column: 36, scope: !4847)
!4852 = !DILocalVariable(name: "ret", scope: !4847, file: !3, line: 943, type: !137)
!4853 = !DILocation(line: 943, column: 6, scope: !4847)
!4854 = !DILocation(line: 945, column: 26, scope: !4847)
!4855 = !DILocation(line: 945, column: 8, scope: !4847)
!4856 = !DILocation(line: 945, column: 6, scope: !4847)
!4857 = !DILocation(line: 946, column: 6, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 946, column: 6)
!4859 = !DILocation(line: 946, column: 6, scope: !4847)
!4860 = !DILocation(line: 947, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 946, column: 11)
!4862 = !DILocation(line: 948, column: 10, scope: !4861)
!4863 = !DILocation(line: 948, column: 3, scope: !4861)
!4864 = !DILocation(line: 951, column: 28, scope: !4847)
!4865 = !DILocation(line: 951, column: 8, scope: !4847)
!4866 = !DILocation(line: 951, column: 6, scope: !4847)
!4867 = !DILocation(line: 952, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 952, column: 6)
!4869 = !DILocation(line: 952, column: 6, scope: !4847)
!4870 = !DILocation(line: 953, column: 3, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 952, column: 11)
!4872 = !DILocation(line: 954, column: 10, scope: !4871)
!4873 = !DILocation(line: 954, column: 3, scope: !4871)
!4874 = !DILocation(line: 960, column: 24, scope: !4847)
!4875 = !DILocation(line: 960, column: 22, scope: !4847)
!4876 = !DILocation(line: 961, column: 22, scope: !4847)
!4877 = !DILocation(line: 961, column: 20, scope: !4847)
!4878 = !DILocation(line: 963, column: 24, scope: !4847)
!4879 = !DILocation(line: 963, column: 22, scope: !4847)
!4880 = !DILocation(line: 964, column: 22, scope: !4847)
!4881 = !DILocation(line: 964, column: 20, scope: !4847)
!4882 = !DILocation(line: 966, column: 22, scope: !4847)
!4883 = !DILocation(line: 966, column: 28, scope: !4847)
!4884 = !DILocation(line: 966, column: 2, scope: !4847)
!4885 = !DILocation(line: 966, column: 11, scope: !4847)
!4886 = !DILocation(line: 966, column: 19, scope: !4847)
!4887 = !DILocation(line: 968, column: 9, scope: !4847)
!4888 = !DILocation(line: 968, column: 2, scope: !4847)
!4889 = !DILocation(line: 969, column: 1, scope: !4847)
!4890 = distinct !DISubprogram(name: "pvr2fb_pci_remove", scope: !3, file: !3, line: 971, type: !4656, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!4891 = !DILocalVariable(name: "pdev", arg: 1, scope: !4890, file: !3, line: 971, type: !4441)
!4892 = !DILocation(line: 971, column: 47, scope: !4890)
!4893 = !DILocation(line: 973, column: 6, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 973, column: 6)
!4895 = !DILocation(line: 973, column: 15, scope: !4894)
!4896 = !DILocation(line: 973, column: 6, scope: !4890)
!4897 = !DILocation(line: 974, column: 11, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 973, column: 28)
!4899 = !DILocation(line: 974, column: 20, scope: !4898)
!4900 = !DILocation(line: 974, column: 3, scope: !4898)
!4901 = !DILocation(line: 975, column: 3, scope: !4898)
!4902 = !DILocation(line: 975, column: 12, scope: !4898)
!4903 = !DILocation(line: 975, column: 24, scope: !4898)
!4904 = !DILocation(line: 976, column: 2, scope: !4898)
!4905 = !DILocation(line: 977, column: 6, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 977, column: 6)
!4907 = !DILocation(line: 977, column: 18, scope: !4906)
!4908 = !DILocation(line: 977, column: 6, scope: !4890)
!4909 = !DILocation(line: 978, column: 11, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 977, column: 29)
!4911 = !DILocation(line: 978, column: 23, scope: !4910)
!4912 = !DILocation(line: 978, column: 3, scope: !4910)
!4913 = !DILocation(line: 979, column: 3, scope: !4910)
!4914 = !DILocation(line: 979, column: 15, scope: !4910)
!4915 = !DILocation(line: 979, column: 25, scope: !4910)
!4916 = !DILocation(line: 980, column: 2, scope: !4910)
!4917 = !DILocation(line: 982, column: 22, scope: !4890)
!4918 = !DILocation(line: 982, column: 2, scope: !4890)
!4919 = !DILocation(line: 983, column: 1, scope: !4890)
!4920 = distinct !DISubprogram(name: "pvr2fb_common_init", scope: !3, file: !3, line: 780, type: !4739, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!4921 = !DILocalVariable(name: "par", scope: !4920, file: !3, line: 782, type: !142)
!4922 = !DILocation(line: 782, column: 21, scope: !4920)
!4923 = !DILocation(line: 782, column: 27, scope: !4920)
!4924 = !DILocalVariable(name: "modememused", scope: !4920, file: !3, line: 783, type: !141)
!4925 = !DILocation(line: 783, column: 16, scope: !4920)
!4926 = !DILocalVariable(name: "rev", scope: !4920, file: !3, line: 783, type: !141)
!4927 = !DILocation(line: 783, column: 29, scope: !4920)
!4928 = !DILocation(line: 785, column: 42, scope: !4920)
!4929 = !DILocation(line: 786, column: 22, scope: !4920)
!4930 = !DILocation(line: 786, column: 13, scope: !4920)
!4931 = !DILocation(line: 785, column: 25, scope: !4920)
!4932 = !DILocation(line: 785, column: 2, scope: !4920)
!4933 = !DILocation(line: 785, column: 11, scope: !4920)
!4934 = !DILocation(line: 785, column: 23, scope: !4920)
!4935 = !DILocation(line: 788, column: 7, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 788, column: 6)
!4937 = !DILocation(line: 788, column: 16, scope: !4936)
!4938 = !DILocation(line: 788, column: 6, scope: !4920)
!4939 = !DILocation(line: 789, column: 3, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 788, column: 29)
!4941 = !DILocation(line: 790, column: 3, scope: !4940)
!4942 = !DILocation(line: 793, column: 36, scope: !4920)
!4943 = !DILocation(line: 794, column: 16, scope: !4920)
!4944 = !DILocation(line: 794, column: 7, scope: !4920)
!4945 = !DILocation(line: 793, column: 19, scope: !4920)
!4946 = !DILocation(line: 793, column: 2, scope: !4920)
!4947 = !DILocation(line: 793, column: 7, scope: !4920)
!4948 = !DILocation(line: 793, column: 17, scope: !4920)
!4949 = !DILocation(line: 795, column: 7, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 795, column: 6)
!4951 = !DILocation(line: 795, column: 12, scope: !4950)
!4952 = !DILocation(line: 795, column: 6, scope: !4920)
!4953 = !DILocation(line: 796, column: 3, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 795, column: 23)
!4955 = !DILocation(line: 797, column: 3, scope: !4954)
!4956 = !DILocation(line: 800, column: 12, scope: !4920)
!4957 = !DILocation(line: 800, column: 21, scope: !4920)
!4958 = !DILocation(line: 800, column: 46, scope: !4920)
!4959 = !DILocation(line: 800, column: 37, scope: !4920)
!4960 = !DILocation(line: 800, column: 2, scope: !4920)
!4961 = !DILocation(line: 802, column: 22, scope: !4920)
!4962 = !DILocation(line: 802, column: 20, scope: !4920)
!4963 = !DILocation(line: 803, column: 23, scope: !4920)
!4964 = !DILocation(line: 803, column: 21, scope: !4920)
!4965 = !DILocation(line: 805, column: 2, scope: !4920)
!4966 = !DILocation(line: 805, column: 11, scope: !4920)
!4967 = !DILocation(line: 805, column: 18, scope: !4920)
!4968 = !DILocation(line: 806, column: 2, scope: !4920)
!4969 = !DILocation(line: 806, column: 11, scope: !4920)
!4970 = !DILocation(line: 806, column: 18, scope: !4920)
!4971 = !DILocation(line: 807, column: 18, scope: !4920)
!4972 = !DILocation(line: 807, column: 2, scope: !4920)
!4973 = !DILocation(line: 807, column: 11, scope: !4920)
!4974 = !DILocation(line: 807, column: 16, scope: !4920)
!4975 = !DILocation(line: 808, column: 28, scope: !4920)
!4976 = !DILocation(line: 808, column: 40, scope: !4920)
!4977 = !DILocation(line: 808, column: 2, scope: !4920)
!4978 = !DILocation(line: 808, column: 11, scope: !4920)
!4979 = !DILocation(line: 808, column: 26, scope: !4920)
!4980 = !DILocation(line: 809, column: 2, scope: !4920)
!4981 = !DILocation(line: 809, column: 11, scope: !4920)
!4982 = !DILocation(line: 809, column: 18, scope: !4920)
!4983 = !DILocation(line: 811, column: 6, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 811, column: 6)
!4985 = !DILocation(line: 811, column: 19, scope: !4984)
!4986 = !DILocation(line: 811, column: 6, scope: !4920)
!4987 = !DILocation(line: 812, column: 11, scope: !4984)
!4988 = !DILocation(line: 812, column: 3, scope: !4984)
!4989 = !DILocation(line: 814, column: 7, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 814, column: 6)
!4991 = !DILocation(line: 814, column: 6, scope: !4920)
!4992 = !DILocation(line: 815, column: 15, scope: !4990)
!4993 = !DILocation(line: 815, column: 3, scope: !4990)
!4994 = !DILocation(line: 817, column: 21, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 817, column: 6)
!4996 = !DILocation(line: 817, column: 30, scope: !4995)
!4997 = !DILocation(line: 817, column: 35, scope: !4995)
!4998 = !DILocation(line: 817, column: 44, scope: !4995)
!4999 = !DILocation(line: 818, column: 50, scope: !4995)
!5000 = !DILocation(line: 818, column: 38, scope: !4995)
!5001 = !DILocation(line: 817, column: 7, scope: !4995)
!5002 = !DILocation(line: 817, column: 6, scope: !4920)
!5003 = !DILocation(line: 819, column: 3, scope: !4995)
!5004 = !DILocation(line: 819, column: 12, scope: !4995)
!5005 = !DILocation(line: 819, column: 18, scope: !4995)
!5006 = !DILocation(line: 821, column: 17, scope: !4920)
!5007 = !DILocation(line: 821, column: 26, scope: !4920)
!5008 = !DILocation(line: 821, column: 2, scope: !4920)
!5009 = !DILocation(line: 823, column: 27, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 823, column: 6)
!5011 = !DILocation(line: 823, column: 6, scope: !5010)
!5012 = !DILocation(line: 823, column: 36, scope: !5010)
!5013 = !DILocation(line: 823, column: 6, scope: !4920)
!5014 = !DILocation(line: 824, column: 3, scope: !5010)
!5015 = !DILocation(line: 826, column: 20, scope: !4920)
!5016 = !DILocation(line: 826, column: 2, scope: !4920)
!5017 = !DILocation(line: 828, column: 32, scope: !4920)
!5018 = !DILocation(line: 828, column: 41, scope: !4920)
!5019 = !DILocation(line: 828, column: 45, scope: !4920)
!5020 = !DILocation(line: 829, column: 11, scope: !4920)
!5021 = !DILocation(line: 829, column: 20, scope: !4920)
!5022 = !DILocation(line: 829, column: 24, scope: !4920)
!5023 = !DILocation(line: 828, column: 16, scope: !4920)
!5024 = !DILocation(line: 828, column: 14, scope: !4920)
!5025 = !DILocation(line: 830, column: 17, scope: !4920)
!5026 = !DILocation(line: 830, column: 26, scope: !4920)
!5027 = !DILocation(line: 830, column: 30, scope: !4920)
!5028 = !DILocation(line: 830, column: 14, scope: !4920)
!5029 = !DILocation(line: 832, column: 17, scope: !4920)
!5030 = !DILocation(line: 832, column: 22, scope: !4920)
!5031 = !DILocation(line: 832, column: 32, scope: !4920)
!5032 = !DILocation(line: 832, column: 8, scope: !4920)
!5033 = !DILocation(line: 832, column: 6, scope: !4920)
!5034 = !DILocation(line: 834, column: 2, scope: !4920)
!5035 = !DILocation(line: 838, column: 2, scope: !4920)
!5036 = !DILocation(line: 855, column: 2, scope: !4920)
!5037 = !DILabel(scope: !4920, name: "out_err", file: !3, line: 857)
!5038 = !DILocation(line: 857, column: 1, scope: !4920)
!5039 = !DILocation(line: 858, column: 6, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 858, column: 6)
!5041 = !DILocation(line: 858, column: 15, scope: !5040)
!5042 = !DILocation(line: 858, column: 6, scope: !4920)
!5043 = !DILocation(line: 859, column: 11, scope: !5040)
!5044 = !DILocation(line: 859, column: 20, scope: !5040)
!5045 = !DILocation(line: 859, column: 3, scope: !5040)
!5046 = !DILocation(line: 860, column: 6, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 860, column: 6)
!5048 = !DILocation(line: 860, column: 11, scope: !5047)
!5049 = !DILocation(line: 860, column: 6, scope: !4920)
!5050 = !DILocation(line: 861, column: 11, scope: !5047)
!5051 = !DILocation(line: 861, column: 16, scope: !5047)
!5052 = !DILocation(line: 861, column: 3, scope: !5047)
!5053 = !DILocation(line: 863, column: 2, scope: !4920)
!5054 = !DILocation(line: 864, column: 1, scope: !4920)
!5055 = distinct !DISubprogram(name: "pvr2_init_display", scope: !3, file: !3, line: 552, type: !4182, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5056 = !DILocalVariable(name: "info", arg: 1, scope: !5055, file: !3, line: 552, type: !208)
!5057 = !DILocation(line: 552, column: 47, scope: !5055)
!5058 = !DILocalVariable(name: "par", scope: !5055, file: !3, line: 554, type: !142)
!5059 = !DILocation(line: 554, column: 21, scope: !5055)
!5060 = !DILocation(line: 554, column: 49, scope: !5055)
!5061 = !DILocation(line: 554, column: 55, scope: !5055)
!5062 = !DILocation(line: 554, column: 27, scope: !5055)
!5063 = !DILocalVariable(name: "var", scope: !5055, file: !3, line: 555, type: !4211)
!5064 = !DILocation(line: 555, column: 28, scope: !5055)
!5065 = !DILocation(line: 555, column: 35, scope: !5055)
!5066 = !DILocation(line: 555, column: 41, scope: !5055)
!5067 = !DILocalVariable(name: "diw_height", scope: !5055, file: !3, line: 556, type: !7)
!5068 = !DILocation(line: 556, column: 15, scope: !5055)
!5069 = !DILocalVariable(name: "diw_width", scope: !5055, file: !3, line: 556, type: !7)
!5070 = !DILocation(line: 556, column: 27, scope: !5055)
!5071 = !DILocalVariable(name: "diw_modulo", scope: !5055, file: !3, line: 556, type: !7)
!5072 = !DILocation(line: 556, column: 38, scope: !5055)
!5073 = !DILocalVariable(name: "bytesperpixel", scope: !5055, file: !3, line: 557, type: !7)
!5074 = !DILocation(line: 557, column: 15, scope: !5055)
!5075 = !DILocation(line: 557, column: 31, scope: !5055)
!5076 = !DILocation(line: 557, column: 36, scope: !5055)
!5077 = !DILocation(line: 557, column: 51, scope: !5055)
!5078 = !DILocation(line: 560, column: 13, scope: !5055)
!5079 = !DILocation(line: 560, column: 18, scope: !5055)
!5080 = !DILocation(line: 560, column: 30, scope: !5055)
!5081 = !DILocation(line: 560, column: 39, scope: !5055)
!5082 = !DILocation(line: 560, column: 44, scope: !5055)
!5083 = !DILocation(line: 560, column: 37, scope: !5055)
!5084 = !DILocation(line: 560, column: 57, scope: !5055)
!5085 = !DILocation(line: 560, column: 2, scope: !5055)
!5086 = !DILocation(line: 565, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 565, column: 6)
!5088 = !DILocation(line: 565, column: 19, scope: !5087)
!5089 = !DILocation(line: 565, column: 29, scope: !5087)
!5090 = !DILocation(line: 565, column: 32, scope: !5087)
!5091 = !DILocation(line: 565, column: 37, scope: !5087)
!5092 = !DILocation(line: 565, column: 6, scope: !5055)
!5093 = !DILocation(line: 566, column: 17, scope: !5087)
!5094 = !DILocation(line: 566, column: 23, scope: !5087)
!5095 = !DILocation(line: 566, column: 27, scope: !5087)
!5096 = !DILocation(line: 566, column: 39, scope: !5087)
!5097 = !DILocation(line: 566, column: 14, scope: !5087)
!5098 = !DILocation(line: 566, column: 3, scope: !5087)
!5099 = !DILocation(line: 567, column: 16, scope: !5055)
!5100 = !DILocation(line: 567, column: 21, scope: !5055)
!5101 = !DILocation(line: 567, column: 37, scope: !5055)
!5102 = !DILocation(line: 567, column: 42, scope: !5055)
!5103 = !DILocation(line: 567, column: 47, scope: !5055)
!5104 = !DILocation(line: 567, column: 53, scope: !5055)
!5105 = !DILocation(line: 567, column: 58, scope: !5055)
!5106 = !DILocation(line: 567, column: 13, scope: !5055)
!5107 = !DILocation(line: 568, column: 30, scope: !5055)
!5108 = !DILocation(line: 568, column: 35, scope: !5055)
!5109 = !DILocation(line: 568, column: 41, scope: !5055)
!5110 = !DILocation(line: 568, column: 46, scope: !5055)
!5111 = !DILocation(line: 568, column: 14, scope: !5055)
!5112 = !DILocation(line: 568, column: 62, scope: !5055)
!5113 = !DILocation(line: 568, column: 12, scope: !5055)
!5114 = !DILocation(line: 569, column: 13, scope: !5055)
!5115 = !DILocation(line: 569, column: 24, scope: !5055)
!5116 = !DILocation(line: 569, column: 34, scope: !5055)
!5117 = !DILocation(line: 569, column: 47, scope: !5055)
!5118 = !DILocation(line: 569, column: 31, scope: !5055)
!5119 = !DILocation(line: 569, column: 56, scope: !5055)
!5120 = !DILocation(line: 569, column: 54, scope: !5055)
!5121 = !DILocation(line: 570, column: 12, scope: !5055)
!5122 = !DILocation(line: 569, column: 2, scope: !5055)
!5123 = !DILocation(line: 573, column: 12, scope: !5055)
!5124 = !DILocation(line: 573, column: 17, scope: !5055)
!5125 = !DILocation(line: 573, column: 29, scope: !5055)
!5126 = !DILocation(line: 573, column: 2, scope: !5055)
!5127 = !DILocation(line: 574, column: 12, scope: !5055)
!5128 = !DILocation(line: 574, column: 17, scope: !5055)
!5129 = !DILocation(line: 575, column: 28, scope: !5055)
!5130 = !DILocation(line: 575, column: 33, scope: !5055)
!5131 = !DILocation(line: 575, column: 41, scope: !5055)
!5132 = !DILocation(line: 575, column: 46, scope: !5055)
!5133 = !DILocation(line: 575, column: 40, scope: !5055)
!5134 = !DILocation(line: 575, column: 52, scope: !5055)
!5135 = !DILocation(line: 575, column: 57, scope: !5055)
!5136 = !DILocation(line: 575, column: 12, scope: !5055)
!5137 = !DILocation(line: 574, column: 28, scope: !5055)
!5138 = !DILocation(line: 576, column: 12, scope: !5055)
!5139 = !DILocation(line: 574, column: 2, scope: !5055)
!5140 = !DILocation(line: 579, column: 13, scope: !5055)
!5141 = !DILocation(line: 579, column: 18, scope: !5055)
!5142 = !DILocation(line: 579, column: 32, scope: !5055)
!5143 = !DILocation(line: 579, column: 41, scope: !5055)
!5144 = !DILocation(line: 579, column: 46, scope: !5055)
!5145 = !DILocation(line: 579, column: 39, scope: !5055)
!5146 = !DILocation(line: 579, column: 60, scope: !5055)
!5147 = !DILocation(line: 579, column: 2, scope: !5055)
!5148 = !DILocation(line: 580, column: 13, scope: !5055)
!5149 = !DILocation(line: 580, column: 18, scope: !5055)
!5150 = !DILocation(line: 580, column: 32, scope: !5055)
!5151 = !DILocation(line: 580, column: 41, scope: !5055)
!5152 = !DILocation(line: 580, column: 46, scope: !5055)
!5153 = !DILocation(line: 580, column: 39, scope: !5055)
!5154 = !DILocation(line: 580, column: 60, scope: !5055)
!5155 = !DILocation(line: 580, column: 2, scope: !5055)
!5156 = !DILocation(line: 581, column: 15, scope: !5055)
!5157 = !DILocation(line: 581, column: 2, scope: !5055)
!5158 = !DILocation(line: 584, column: 12, scope: !5055)
!5159 = !DILocation(line: 584, column: 17, scope: !5055)
!5160 = !DILocation(line: 584, column: 29, scope: !5055)
!5161 = !DILocation(line: 584, column: 2, scope: !5055)
!5162 = !DILocation(line: 585, column: 13, scope: !5055)
!5163 = !DILocation(line: 585, column: 18, scope: !5055)
!5164 = !DILocation(line: 585, column: 29, scope: !5055)
!5165 = !DILocation(line: 585, column: 38, scope: !5055)
!5166 = !DILocation(line: 585, column: 43, scope: !5055)
!5167 = !DILocation(line: 585, column: 36, scope: !5055)
!5168 = !DILocation(line: 585, column: 55, scope: !5055)
!5169 = !DILocation(line: 585, column: 2, scope: !5055)
!5170 = !DILocation(line: 588, column: 27, scope: !5055)
!5171 = !DILocation(line: 588, column: 32, scope: !5055)
!5172 = !DILocation(line: 588, column: 25, scope: !5055)
!5173 = !DILocation(line: 588, column: 43, scope: !5055)
!5174 = !DILocation(line: 588, column: 2, scope: !5055)
!5175 = !DILocation(line: 591, column: 14, scope: !5055)
!5176 = !DILocation(line: 591, column: 27, scope: !5055)
!5177 = !DILocation(line: 591, column: 38, scope: !5055)
!5178 = !DILocation(line: 592, column: 13, scope: !5055)
!5179 = !DILocation(line: 592, column: 18, scope: !5055)
!5180 = !DILocation(line: 592, column: 32, scope: !5055)
!5181 = !DILocation(line: 591, column: 45, scope: !5055)
!5182 = !DILocation(line: 592, column: 38, scope: !5055)
!5183 = !DILocation(line: 592, column: 43, scope: !5055)
!5184 = !DILocation(line: 591, column: 2, scope: !5055)
!5185 = !DILocation(line: 595, column: 21, scope: !5055)
!5186 = !DILocation(line: 595, column: 12, scope: !5055)
!5187 = !DILocation(line: 595, column: 38, scope: !5055)
!5188 = !DILocation(line: 595, column: 54, scope: !5055)
!5189 = !DILocation(line: 595, column: 35, scope: !5055)
!5190 = !DILocation(line: 595, column: 61, scope: !5055)
!5191 = !DILocation(line: 595, column: 2, scope: !5055)
!5192 = !DILocation(line: 596, column: 12, scope: !5055)
!5193 = !DILocation(line: 596, column: 26, scope: !5055)
!5194 = !DILocation(line: 596, column: 32, scope: !5055)
!5195 = !DILocation(line: 596, column: 2, scope: !5055)
!5196 = !DILocation(line: 600, column: 22, scope: !5055)
!5197 = !DILocation(line: 600, column: 27, scope: !5055)
!5198 = !DILocation(line: 600, column: 21, scope: !5055)
!5199 = !DILocation(line: 600, column: 49, scope: !5055)
!5200 = !DILocation(line: 600, column: 18, scope: !5055)
!5201 = !DILocation(line: 600, column: 56, scope: !5055)
!5202 = !DILocation(line: 600, column: 2, scope: !5055)
!5203 = !DILocation(line: 601, column: 1, scope: !5055)
!5204 = distinct !DISubprogram(name: "get_line_length", scope: !3, file: !3, line: 249, type: !5205, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!141, !137, !137}
!5207 = !DILocalVariable(name: "xres_virtual", arg: 1, scope: !5204, file: !3, line: 249, type: !137)
!5208 = !DILocation(line: 249, column: 49, scope: !5204)
!5209 = !DILocalVariable(name: "bpp", arg: 2, scope: !5204, file: !3, line: 249, type: !137)
!5210 = !DILocation(line: 249, column: 67, scope: !5204)
!5211 = !DILocation(line: 251, column: 28, scope: !5204)
!5212 = !DILocation(line: 251, column: 41, scope: !5204)
!5213 = !DILocation(line: 251, column: 40, scope: !5204)
!5214 = !DILocation(line: 251, column: 45, scope: !5204)
!5215 = !DILocation(line: 251, column: 49, scope: !5204)
!5216 = !DILocation(line: 251, column: 55, scope: !5204)
!5217 = !DILocation(line: 251, column: 9, scope: !5204)
!5218 = !DILocation(line: 251, column: 2, scope: !5204)
!5219 = distinct !DISubprogram(name: "__readl", scope: !5220, file: !5220, line: 63, type: !5221, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5220 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!7, !5223}
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5225)
!5225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5226 = !DILocalVariable(name: "addr", arg: 1, scope: !5219, file: !5220, line: 63, type: !5223)
!5227 = !DILocation(line: 63, column: 1, scope: !5219)
!5228 = !DILocalVariable(name: "ret", scope: !5219, file: !5220, line: 63, type: !7)
!5229 = !{i32 -2141393116}
!5230 = distinct !DISubprogram(name: "pvr2_get_param_name", scope: !3, file: !3, line: 750, type: !5231, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!516, !5233, !137, !137}
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4726)
!5235 = !DILocalVariable(name: "p", arg: 1, scope: !5230, file: !3, line: 750, type: !5233)
!5236 = !DILocation(line: 750, column: 60, scope: !5230)
!5237 = !DILocalVariable(name: "val", arg: 2, scope: !5230, file: !3, line: 750, type: !137)
!5238 = !DILocation(line: 750, column: 67, scope: !5230)
!5239 = !DILocalVariable(name: "size", arg: 3, scope: !5230, file: !3, line: 751, type: !137)
!5240 = !DILocation(line: 751, column: 10, scope: !5230)
!5241 = !DILocalVariable(name: "i", scope: !5230, file: !3, line: 753, type: !137)
!5242 = !DILocation(line: 753, column: 6, scope: !5230)
!5243 = !DILocation(line: 755, column: 9, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 755, column: 2)
!5245 = !DILocation(line: 755, column: 7, scope: !5244)
!5246 = !DILocation(line: 755, column: 14, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 755, column: 2)
!5248 = !DILocation(line: 755, column: 18, scope: !5247)
!5249 = !DILocation(line: 755, column: 16, scope: !5247)
!5250 = !DILocation(line: 755, column: 2, scope: !5244)
!5251 = !DILocation(line: 756, column: 7, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 756, column: 7)
!5253 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 755, column: 29)
!5254 = !DILocation(line: 756, column: 9, scope: !5252)
!5255 = !DILocation(line: 756, column: 12, scope: !5252)
!5256 = !DILocation(line: 756, column: 19, scope: !5252)
!5257 = !DILocation(line: 756, column: 16, scope: !5252)
!5258 = !DILocation(line: 756, column: 7, scope: !5253)
!5259 = !DILocation(line: 757, column: 11, scope: !5252)
!5260 = !DILocation(line: 757, column: 13, scope: !5252)
!5261 = !DILocation(line: 757, column: 16, scope: !5252)
!5262 = !DILocation(line: 757, column: 4, scope: !5252)
!5263 = !DILocation(line: 758, column: 2, scope: !5253)
!5264 = !DILocation(line: 755, column: 25, scope: !5247)
!5265 = !DILocation(line: 755, column: 2, scope: !5247)
!5266 = distinct !{!5266, !5250, !5267}
!5267 = !DILocation(line: 758, column: 2, scope: !5244)
!5268 = !DILocation(line: 759, column: 2, scope: !5230)
!5269 = !DILocation(line: 760, column: 1, scope: !5230)
!5270 = distinct !DISubprogram(name: "pvr2fb_check_var", scope: !3, file: !3, line: 431, type: !4209, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5271 = !DILocalVariable(name: "var", arg: 1, scope: !5270, file: !3, line: 431, type: !4211)
!5272 = !DILocation(line: 431, column: 55, scope: !5270)
!5273 = !DILocalVariable(name: "info", arg: 2, scope: !5270, file: !3, line: 431, type: !208)
!5274 = !DILocation(line: 431, column: 76, scope: !5270)
!5275 = !DILocalVariable(name: "par", scope: !5270, file: !3, line: 433, type: !142)
!5276 = !DILocation(line: 433, column: 21, scope: !5270)
!5277 = !DILocation(line: 433, column: 48, scope: !5270)
!5278 = !DILocation(line: 433, column: 54, scope: !5270)
!5279 = !DILocation(line: 433, column: 27, scope: !5270)
!5280 = !DILocalVariable(name: "vtotal", scope: !5270, file: !3, line: 434, type: !7)
!5281 = !DILocation(line: 434, column: 15, scope: !5270)
!5282 = !DILocalVariable(name: "hsync_total", scope: !5270, file: !3, line: 434, type: !7)
!5283 = !DILocation(line: 434, column: 23, scope: !5270)
!5284 = !DILocalVariable(name: "line_length", scope: !5270, file: !3, line: 435, type: !141)
!5285 = !DILocation(line: 435, column: 16, scope: !5270)
!5286 = !DILocation(line: 437, column: 6, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 437, column: 6)
!5288 = !DILocation(line: 437, column: 11, scope: !5287)
!5289 = !DILocation(line: 437, column: 20, scope: !5287)
!5290 = !DILocation(line: 437, column: 30, scope: !5287)
!5291 = !DILocation(line: 437, column: 33, scope: !5287)
!5292 = !DILocation(line: 437, column: 38, scope: !5287)
!5293 = !DILocation(line: 437, column: 47, scope: !5287)
!5294 = !DILocation(line: 437, column: 6, scope: !5270)
!5295 = !DILocation(line: 438, column: 3, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 438, column: 3)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 438, column: 3)
!5298 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 437, column: 59)
!5299 = !DILocation(line: 438, column: 3, scope: !5297)
!5300 = !DILocation(line: 439, column: 3, scope: !5298)
!5301 = !DILocation(line: 442, column: 6, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 442, column: 6)
!5303 = !DILocation(line: 442, column: 11, scope: !5302)
!5304 = !DILocation(line: 442, column: 16, scope: !5302)
!5305 = !DILocation(line: 442, column: 6, scope: !5270)
!5306 = !DILocation(line: 443, column: 3, scope: !5302)
!5307 = !DILocation(line: 443, column: 8, scope: !5302)
!5308 = !DILocation(line: 443, column: 13, scope: !5302)
!5309 = !DILocation(line: 444, column: 6, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 444, column: 6)
!5311 = !DILocation(line: 444, column: 11, scope: !5310)
!5312 = !DILocation(line: 444, column: 16, scope: !5310)
!5313 = !DILocation(line: 444, column: 6, scope: !5270)
!5314 = !DILocation(line: 445, column: 3, scope: !5310)
!5315 = !DILocation(line: 445, column: 8, scope: !5310)
!5316 = !DILocation(line: 445, column: 13, scope: !5310)
!5317 = !DILocation(line: 446, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 446, column: 6)
!5319 = !DILocation(line: 446, column: 11, scope: !5318)
!5320 = !DILocation(line: 446, column: 26, scope: !5318)
!5321 = !DILocation(line: 446, column: 31, scope: !5318)
!5322 = !DILocation(line: 446, column: 24, scope: !5318)
!5323 = !DILocation(line: 446, column: 6, scope: !5270)
!5324 = !DILocation(line: 447, column: 23, scope: !5318)
!5325 = !DILocation(line: 447, column: 28, scope: !5318)
!5326 = !DILocation(line: 447, column: 3, scope: !5318)
!5327 = !DILocation(line: 447, column: 8, scope: !5318)
!5328 = !DILocation(line: 447, column: 21, scope: !5318)
!5329 = !DILocation(line: 448, column: 6, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 448, column: 6)
!5331 = !DILocation(line: 448, column: 11, scope: !5330)
!5332 = !DILocation(line: 448, column: 26, scope: !5330)
!5333 = !DILocation(line: 448, column: 31, scope: !5330)
!5334 = !DILocation(line: 448, column: 24, scope: !5330)
!5335 = !DILocation(line: 448, column: 6, scope: !5270)
!5336 = !DILocation(line: 449, column: 23, scope: !5330)
!5337 = !DILocation(line: 449, column: 28, scope: !5330)
!5338 = !DILocation(line: 449, column: 3, scope: !5330)
!5339 = !DILocation(line: 449, column: 8, scope: !5330)
!5340 = !DILocation(line: 449, column: 21, scope: !5330)
!5341 = !DILocation(line: 451, column: 6, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 451, column: 6)
!5343 = !DILocation(line: 451, column: 11, scope: !5342)
!5344 = !DILocation(line: 451, column: 26, scope: !5342)
!5345 = !DILocation(line: 451, column: 6, scope: !5270)
!5346 = !DILocation(line: 452, column: 3, scope: !5342)
!5347 = !DILocation(line: 452, column: 8, scope: !5342)
!5348 = !DILocation(line: 452, column: 23, scope: !5342)
!5349 = !DILocation(line: 453, column: 11, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 453, column: 11)
!5351 = !DILocation(line: 453, column: 16, scope: !5350)
!5352 = !DILocation(line: 453, column: 31, scope: !5350)
!5353 = !DILocation(line: 453, column: 11, scope: !5342)
!5354 = !DILocation(line: 454, column: 3, scope: !5350)
!5355 = !DILocation(line: 454, column: 8, scope: !5350)
!5356 = !DILocation(line: 454, column: 23, scope: !5350)
!5357 = !DILocation(line: 455, column: 11, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 455, column: 11)
!5359 = !DILocation(line: 455, column: 16, scope: !5358)
!5360 = !DILocation(line: 455, column: 31, scope: !5358)
!5361 = !DILocation(line: 455, column: 11, scope: !5350)
!5362 = !DILocation(line: 456, column: 3, scope: !5358)
!5363 = !DILocation(line: 456, column: 8, scope: !5358)
!5364 = !DILocation(line: 456, column: 23, scope: !5358)
!5365 = !DILocation(line: 458, column: 22, scope: !5270)
!5366 = !DILocation(line: 458, column: 2, scope: !5270)
!5367 = !DILocation(line: 460, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 460, column: 6)
!5369 = !DILocation(line: 460, column: 11, scope: !5368)
!5370 = !DILocation(line: 460, column: 17, scope: !5368)
!5371 = !DILocation(line: 460, column: 6, scope: !5270)
!5372 = !DILocation(line: 461, column: 7, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 461, column: 7)
!5374 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 460, column: 35)
!5375 = !DILocation(line: 461, column: 12, scope: !5373)
!5376 = !DILocation(line: 461, column: 20, scope: !5373)
!5377 = !DILocation(line: 461, column: 23, scope: !5373)
!5378 = !DILocation(line: 461, column: 28, scope: !5373)
!5379 = !DILocation(line: 461, column: 39, scope: !5373)
!5380 = !DILocation(line: 461, column: 44, scope: !5373)
!5381 = !DILocation(line: 461, column: 36, scope: !5373)
!5382 = !DILocation(line: 461, column: 7, scope: !5374)
!5383 = !DILocation(line: 462, column: 19, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 461, column: 58)
!5385 = !DILocation(line: 462, column: 24, scope: !5384)
!5386 = !DILocation(line: 462, column: 32, scope: !5384)
!5387 = !DILocation(line: 462, column: 4, scope: !5384)
!5388 = !DILocation(line: 462, column: 9, scope: !5384)
!5389 = !DILocation(line: 462, column: 17, scope: !5384)
!5390 = !DILocation(line: 463, column: 3, scope: !5384)
!5391 = !DILocation(line: 464, column: 8, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 464, column: 8)
!5393 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 463, column: 10)
!5394 = !DILocation(line: 464, column: 13, scope: !5392)
!5395 = !DILocation(line: 464, column: 23, scope: !5392)
!5396 = !DILocation(line: 464, column: 28, scope: !5392)
!5397 = !DILocation(line: 464, column: 43, scope: !5392)
!5398 = !DILocation(line: 464, column: 48, scope: !5392)
!5399 = !DILocation(line: 464, column: 41, scope: !5392)
!5400 = !DILocation(line: 464, column: 21, scope: !5392)
!5401 = !DILocation(line: 464, column: 53, scope: !5392)
!5402 = !DILocation(line: 465, column: 8, scope: !5392)
!5403 = !DILocation(line: 465, column: 13, scope: !5392)
!5404 = !DILocation(line: 465, column: 23, scope: !5392)
!5405 = !DILocation(line: 465, column: 28, scope: !5392)
!5406 = !DILocation(line: 465, column: 43, scope: !5392)
!5407 = !DILocation(line: 465, column: 48, scope: !5392)
!5408 = !DILocation(line: 465, column: 41, scope: !5392)
!5409 = !DILocation(line: 465, column: 21, scope: !5392)
!5410 = !DILocation(line: 464, column: 8, scope: !5393)
!5411 = !DILocation(line: 466, column: 20, scope: !5392)
!5412 = !DILocation(line: 466, column: 25, scope: !5392)
!5413 = !DILocation(line: 466, column: 33, scope: !5392)
!5414 = !DILocation(line: 466, column: 5, scope: !5392)
!5415 = !DILocation(line: 466, column: 10, scope: !5392)
!5416 = !DILocation(line: 466, column: 18, scope: !5392)
!5417 = !DILocation(line: 468, column: 2, scope: !5374)
!5418 = !DILocation(line: 469, column: 18, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 468, column: 9)
!5420 = !DILocation(line: 469, column: 23, scope: !5419)
!5421 = !DILocation(line: 469, column: 31, scope: !5419)
!5422 = !DILocation(line: 469, column: 3, scope: !5419)
!5423 = !DILocation(line: 469, column: 8, scope: !5419)
!5424 = !DILocation(line: 469, column: 16, scope: !5419)
!5425 = !DILocation(line: 476, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 476, column: 6)
!5427 = !DILocation(line: 476, column: 11, scope: !5426)
!5428 = !DILocation(line: 476, column: 16, scope: !5426)
!5429 = !DILocation(line: 476, column: 22, scope: !5426)
!5430 = !DILocation(line: 476, column: 25, scope: !5426)
!5431 = !DILocation(line: 476, column: 38, scope: !5426)
!5432 = !DILocation(line: 476, column: 6, scope: !5270)
!5433 = !DILocation(line: 477, column: 3, scope: !5426)
!5434 = !DILocation(line: 477, column: 8, scope: !5426)
!5435 = !DILocation(line: 477, column: 14, scope: !5426)
!5436 = !DILocation(line: 479, column: 6, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 479, column: 6)
!5438 = !DILocation(line: 479, column: 19, scope: !5437)
!5439 = !DILocation(line: 479, column: 6, scope: !5270)
!5440 = !DILocation(line: 480, column: 3, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 479, column: 30)
!5442 = !DILocation(line: 480, column: 8, scope: !5441)
!5443 = !DILocation(line: 480, column: 13, scope: !5441)
!5444 = !DILocation(line: 481, column: 3, scope: !5441)
!5445 = !DILocation(line: 481, column: 8, scope: !5441)
!5446 = !DILocation(line: 481, column: 14, scope: !5441)
!5447 = !DILocation(line: 482, column: 2, scope: !5441)
!5448 = !DILocation(line: 483, column: 3, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 482, column: 9)
!5450 = !DILocation(line: 483, column: 8, scope: !5449)
!5451 = !DILocation(line: 483, column: 13, scope: !5449)
!5452 = !DILocation(line: 484, column: 3, scope: !5449)
!5453 = !DILocation(line: 484, column: 8, scope: !5449)
!5454 = !DILocation(line: 484, column: 14, scope: !5449)
!5455 = !DILocation(line: 485, column: 3, scope: !5449)
!5456 = !DILocation(line: 485, column: 8, scope: !5449)
!5457 = !DILocation(line: 485, column: 14, scope: !5449)
!5458 = !DILocation(line: 488, column: 7, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 488, column: 6)
!5460 = !DILocation(line: 488, column: 12, scope: !5459)
!5461 = !DILocation(line: 488, column: 21, scope: !5459)
!5462 = !DILocation(line: 488, column: 41, scope: !5459)
!5463 = !DILocation(line: 488, column: 6, scope: !5270)
!5464 = !DILocation(line: 489, column: 23, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 488, column: 62)
!5466 = !DILocation(line: 489, column: 28, scope: !5465)
!5467 = !DILocation(line: 490, column: 9, scope: !5465)
!5468 = !DILocation(line: 490, column: 14, scope: !5465)
!5469 = !DILocation(line: 490, column: 27, scope: !5465)
!5470 = !DILocation(line: 490, column: 32, scope: !5465)
!5471 = !DILocation(line: 490, column: 25, scope: !5465)
!5472 = !DILocation(line: 489, column: 41, scope: !5465)
!5473 = !DILocation(line: 489, column: 3, scope: !5465)
!5474 = !DILocation(line: 489, column: 8, scope: !5465)
!5475 = !DILocation(line: 489, column: 21, scope: !5465)
!5476 = !DILocation(line: 491, column: 23, scope: !5465)
!5477 = !DILocation(line: 491, column: 28, scope: !5465)
!5478 = !DILocation(line: 491, column: 41, scope: !5465)
!5479 = !DILocation(line: 491, column: 46, scope: !5465)
!5480 = !DILocation(line: 491, column: 39, scope: !5465)
!5481 = !DILocation(line: 491, column: 3, scope: !5465)
!5482 = !DILocation(line: 491, column: 8, scope: !5465)
!5483 = !DILocation(line: 491, column: 21, scope: !5465)
!5484 = !DILocation(line: 492, column: 23, scope: !5465)
!5485 = !DILocation(line: 492, column: 28, scope: !5465)
!5486 = !DILocation(line: 493, column: 23, scope: !5465)
!5487 = !DILocation(line: 493, column: 28, scope: !5465)
!5488 = !DILocation(line: 493, column: 42, scope: !5465)
!5489 = !DILocation(line: 493, column: 47, scope: !5465)
!5490 = !DILocation(line: 493, column: 40, scope: !5465)
!5491 = !DILocation(line: 492, column: 42, scope: !5465)
!5492 = !DILocation(line: 492, column: 3, scope: !5465)
!5493 = !DILocation(line: 492, column: 8, scope: !5465)
!5494 = !DILocation(line: 492, column: 21, scope: !5465)
!5495 = !DILocation(line: 495, column: 23, scope: !5465)
!5496 = !DILocation(line: 495, column: 28, scope: !5465)
!5497 = !DILocation(line: 495, column: 41, scope: !5465)
!5498 = !DILocation(line: 495, column: 46, scope: !5465)
!5499 = !DILocation(line: 495, column: 39, scope: !5465)
!5500 = !DILocation(line: 495, column: 3, scope: !5465)
!5501 = !DILocation(line: 495, column: 8, scope: !5465)
!5502 = !DILocation(line: 495, column: 21, scope: !5465)
!5503 = !DILocation(line: 496, column: 23, scope: !5465)
!5504 = !DILocation(line: 496, column: 28, scope: !5465)
!5505 = !DILocation(line: 497, column: 9, scope: !5465)
!5506 = !DILocation(line: 497, column: 14, scope: !5465)
!5507 = !DILocation(line: 497, column: 27, scope: !5465)
!5508 = !DILocation(line: 497, column: 32, scope: !5465)
!5509 = !DILocation(line: 497, column: 25, scope: !5465)
!5510 = !DILocation(line: 496, column: 41, scope: !5465)
!5511 = !DILocation(line: 496, column: 3, scope: !5465)
!5512 = !DILocation(line: 496, column: 8, scope: !5465)
!5513 = !DILocation(line: 496, column: 21, scope: !5465)
!5514 = !DILocation(line: 498, column: 23, scope: !5465)
!5515 = !DILocation(line: 498, column: 28, scope: !5465)
!5516 = !DILocation(line: 499, column: 9, scope: !5465)
!5517 = !DILocation(line: 499, column: 14, scope: !5465)
!5518 = !DILocation(line: 499, column: 28, scope: !5465)
!5519 = !DILocation(line: 499, column: 33, scope: !5465)
!5520 = !DILocation(line: 499, column: 26, scope: !5465)
!5521 = !DILocation(line: 498, column: 41, scope: !5465)
!5522 = !DILocation(line: 498, column: 3, scope: !5465)
!5523 = !DILocation(line: 498, column: 8, scope: !5465)
!5524 = !DILocation(line: 498, column: 21, scope: !5465)
!5525 = !DILocation(line: 500, column: 2, scope: !5465)
!5526 = !DILocation(line: 502, column: 16, scope: !5270)
!5527 = !DILocation(line: 502, column: 21, scope: !5270)
!5528 = !DILocation(line: 502, column: 35, scope: !5270)
!5529 = !DILocation(line: 502, column: 40, scope: !5270)
!5530 = !DILocation(line: 502, column: 33, scope: !5270)
!5531 = !DILocation(line: 502, column: 47, scope: !5270)
!5532 = !DILocation(line: 502, column: 52, scope: !5270)
!5533 = !DILocation(line: 502, column: 45, scope: !5270)
!5534 = !DILocation(line: 503, column: 9, scope: !5270)
!5535 = !DILocation(line: 503, column: 14, scope: !5270)
!5536 = !DILocation(line: 502, column: 65, scope: !5270)
!5537 = !DILocation(line: 502, column: 14, scope: !5270)
!5538 = !DILocation(line: 504, column: 11, scope: !5270)
!5539 = !DILocation(line: 504, column: 16, scope: !5270)
!5540 = !DILocation(line: 504, column: 31, scope: !5270)
!5541 = !DILocation(line: 504, column: 36, scope: !5270)
!5542 = !DILocation(line: 504, column: 29, scope: !5270)
!5543 = !DILocation(line: 504, column: 43, scope: !5270)
!5544 = !DILocation(line: 504, column: 48, scope: !5270)
!5545 = !DILocation(line: 504, column: 41, scope: !5270)
!5546 = !DILocation(line: 505, column: 4, scope: !5270)
!5547 = !DILocation(line: 505, column: 9, scope: !5270)
!5548 = !DILocation(line: 504, column: 61, scope: !5270)
!5549 = !DILocation(line: 504, column: 9, scope: !5270)
!5550 = !DILocation(line: 507, column: 6, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 507, column: 6)
!5552 = !DILocation(line: 507, column: 11, scope: !5551)
!5553 = !DILocation(line: 507, column: 16, scope: !5551)
!5554 = !DILocation(line: 507, column: 6, scope: !5270)
!5555 = !DILocation(line: 508, column: 7, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 508, column: 7)
!5557 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 507, column: 37)
!5558 = !DILocation(line: 508, column: 12, scope: !5556)
!5559 = !DILocation(line: 508, column: 18, scope: !5556)
!5560 = !DILocation(line: 508, column: 7, scope: !5557)
!5561 = !DILocation(line: 509, column: 11, scope: !5556)
!5562 = !DILocation(line: 509, column: 4, scope: !5556)
!5563 = !DILocation(line: 510, column: 7, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 510, column: 7)
!5565 = !DILocation(line: 510, column: 14, scope: !5564)
!5566 = !DILocation(line: 510, column: 7, scope: !5557)
!5567 = !DILocation(line: 513, column: 8, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 513, column: 8)
!5569 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 510, column: 46)
!5570 = !DILocation(line: 513, column: 20, scope: !5568)
!5571 = !DILocation(line: 513, column: 8, scope: !5569)
!5572 = !DILocation(line: 514, column: 5, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 514, column: 5)
!5574 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 514, column: 5)
!5575 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 513, column: 35)
!5576 = !DILocation(line: 514, column: 5, scope: !5574)
!5577 = !DILocation(line: 515, column: 5, scope: !5575)
!5578 = !DILocation(line: 517, column: 3, scope: !5569)
!5579 = !DILocation(line: 519, column: 8, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 519, column: 8)
!5581 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 517, column: 10)
!5582 = !DILocation(line: 519, column: 20, scope: !5580)
!5583 = !DILocation(line: 519, column: 8, scope: !5581)
!5584 = !DILocation(line: 520, column: 5, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 520, column: 5)
!5586 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 520, column: 5)
!5587 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 519, column: 36)
!5588 = !DILocation(line: 520, column: 5, scope: !5586)
!5589 = !DILocation(line: 521, column: 5, scope: !5587)
!5590 = !DILocation(line: 524, column: 2, scope: !5557)
!5591 = !DILocation(line: 527, column: 32, scope: !5270)
!5592 = !DILocation(line: 527, column: 37, scope: !5270)
!5593 = !DILocation(line: 527, column: 51, scope: !5270)
!5594 = !DILocation(line: 527, column: 56, scope: !5270)
!5595 = !DILocation(line: 527, column: 16, scope: !5270)
!5596 = !DILocation(line: 527, column: 14, scope: !5270)
!5597 = !DILocation(line: 528, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 528, column: 6)
!5599 = !DILocation(line: 528, column: 20, scope: !5598)
!5600 = !DILocation(line: 528, column: 25, scope: !5598)
!5601 = !DILocation(line: 528, column: 18, scope: !5598)
!5602 = !DILocation(line: 528, column: 40, scope: !5598)
!5603 = !DILocation(line: 528, column: 46, scope: !5598)
!5604 = !DILocation(line: 528, column: 50, scope: !5598)
!5605 = !DILocation(line: 528, column: 38, scope: !5598)
!5606 = !DILocation(line: 528, column: 6, scope: !5270)
!5607 = !DILocation(line: 529, column: 3, scope: !5598)
!5608 = !DILocation(line: 531, column: 2, scope: !5270)
!5609 = !DILocation(line: 532, column: 1, scope: !5270)
!5610 = distinct !DISubprogram(name: "pvr2fb_set_par", scope: !3, file: !3, line: 354, type: !4214, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5611 = !DILocalVariable(name: "info", arg: 1, scope: !5610, file: !3, line: 354, type: !208)
!5612 = !DILocation(line: 354, column: 43, scope: !5610)
!5613 = !DILocalVariable(name: "par", scope: !5610, file: !3, line: 356, type: !142)
!5614 = !DILocation(line: 356, column: 21, scope: !5610)
!5615 = !DILocation(line: 356, column: 48, scope: !5610)
!5616 = !DILocation(line: 356, column: 54, scope: !5610)
!5617 = !DILocation(line: 356, column: 27, scope: !5610)
!5618 = !DILocalVariable(name: "var", scope: !5610, file: !3, line: 357, type: !4211)
!5619 = !DILocation(line: 357, column: 28, scope: !5610)
!5620 = !DILocation(line: 357, column: 35, scope: !5610)
!5621 = !DILocation(line: 357, column: 41, scope: !5610)
!5622 = !DILocalVariable(name: "line_length", scope: !5610, file: !3, line: 358, type: !141)
!5623 = !DILocation(line: 358, column: 16, scope: !5610)
!5624 = !DILocalVariable(name: "vtotal", scope: !5610, file: !3, line: 359, type: !7)
!5625 = !DILocation(line: 359, column: 15, scope: !5610)
!5626 = !DILocation(line: 368, column: 15, scope: !5610)
!5627 = !DILocation(line: 368, column: 13, scope: !5610)
!5628 = !DILocation(line: 369, column: 6, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 369, column: 6)
!5630 = !DILocation(line: 369, column: 17, scope: !5629)
!5631 = !DILocation(line: 369, column: 27, scope: !5629)
!5632 = !DILocation(line: 369, column: 30, scope: !5629)
!5633 = !DILocation(line: 369, column: 43, scope: !5629)
!5634 = !DILocation(line: 369, column: 6, scope: !5610)
!5635 = !DILocation(line: 370, column: 16, scope: !5629)
!5636 = !DILocation(line: 370, column: 3, scope: !5629)
!5637 = !DILocation(line: 372, column: 2, scope: !5610)
!5638 = !DILocation(line: 372, column: 7, scope: !5610)
!5639 = !DILocation(line: 372, column: 13, scope: !5610)
!5640 = !DILocation(line: 373, column: 6, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 373, column: 6)
!5642 = !DILocation(line: 373, column: 11, scope: !5641)
!5643 = !DILocation(line: 373, column: 17, scope: !5641)
!5644 = !DILocation(line: 373, column: 39, scope: !5641)
!5645 = !DILocation(line: 373, column: 42, scope: !5641)
!5646 = !DILocation(line: 373, column: 55, scope: !5641)
!5647 = !DILocation(line: 373, column: 6, scope: !5610)
!5648 = !DILocation(line: 374, column: 3, scope: !5641)
!5649 = !DILocation(line: 374, column: 8, scope: !5641)
!5650 = !DILocation(line: 374, column: 22, scope: !5641)
!5651 = !DILocation(line: 379, column: 6, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 379, column: 6)
!5653 = !DILocation(line: 379, column: 11, scope: !5652)
!5654 = !DILocation(line: 379, column: 17, scope: !5652)
!5655 = !DILocation(line: 379, column: 35, scope: !5652)
!5656 = !DILocation(line: 379, column: 38, scope: !5652)
!5657 = !DILocation(line: 379, column: 51, scope: !5652)
!5658 = !DILocation(line: 379, column: 6, scope: !5610)
!5659 = !DILocation(line: 380, column: 3, scope: !5652)
!5660 = !DILocation(line: 380, column: 8, scope: !5652)
!5661 = !DILocation(line: 380, column: 22, scope: !5652)
!5662 = !DILocation(line: 382, column: 21, scope: !5610)
!5663 = !DILocation(line: 382, column: 26, scope: !5610)
!5664 = !DILocation(line: 382, column: 40, scope: !5610)
!5665 = !DILocation(line: 382, column: 45, scope: !5610)
!5666 = !DILocation(line: 382, column: 38, scope: !5610)
!5667 = !DILocation(line: 382, column: 52, scope: !5610)
!5668 = !DILocation(line: 382, column: 57, scope: !5610)
!5669 = !DILocation(line: 382, column: 50, scope: !5610)
!5670 = !DILocation(line: 383, column: 21, scope: !5610)
!5671 = !DILocation(line: 383, column: 26, scope: !5610)
!5672 = !DILocation(line: 382, column: 70, scope: !5610)
!5673 = !DILocation(line: 382, column: 2, scope: !5610)
!5674 = !DILocation(line: 382, column: 7, scope: !5610)
!5675 = !DILocation(line: 382, column: 19, scope: !5610)
!5676 = !DILocation(line: 384, column: 21, scope: !5610)
!5677 = !DILocation(line: 384, column: 26, scope: !5610)
!5678 = !DILocation(line: 384, column: 41, scope: !5610)
!5679 = !DILocation(line: 384, column: 46, scope: !5610)
!5680 = !DILocation(line: 384, column: 39, scope: !5610)
!5681 = !DILocation(line: 384, column: 53, scope: !5610)
!5682 = !DILocation(line: 384, column: 58, scope: !5610)
!5683 = !DILocation(line: 384, column: 51, scope: !5610)
!5684 = !DILocation(line: 385, column: 21, scope: !5610)
!5685 = !DILocation(line: 385, column: 26, scope: !5610)
!5686 = !DILocation(line: 384, column: 71, scope: !5610)
!5687 = !DILocation(line: 384, column: 2, scope: !5610)
!5688 = !DILocation(line: 384, column: 7, scope: !5610)
!5689 = !DILocation(line: 384, column: 19, scope: !5610)
!5690 = !DILocation(line: 387, column: 6, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 387, column: 6)
!5692 = !DILocation(line: 387, column: 11, scope: !5691)
!5693 = !DILocation(line: 387, column: 16, scope: !5691)
!5694 = !DILocation(line: 387, column: 6, scope: !5610)
!5695 = !DILocation(line: 388, column: 12, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 387, column: 37)
!5697 = !DILocation(line: 388, column: 17, scope: !5696)
!5698 = !DILocation(line: 388, column: 10, scope: !5696)
!5699 = !DILocation(line: 389, column: 7, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 389, column: 7)
!5701 = !DILocation(line: 389, column: 12, scope: !5700)
!5702 = !DILocation(line: 389, column: 7, scope: !5696)
!5703 = !DILocation(line: 390, column: 11, scope: !5700)
!5704 = !DILocation(line: 390, column: 4, scope: !5700)
!5705 = !DILocation(line: 391, column: 7, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 391, column: 7)
!5707 = !DILocation(line: 391, column: 14, scope: !5706)
!5708 = !DILocation(line: 391, column: 7, scope: !5696)
!5709 = !DILocation(line: 394, column: 4, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 391, column: 46)
!5711 = !DILocation(line: 394, column: 9, scope: !5710)
!5712 = !DILocation(line: 394, column: 23, scope: !5710)
!5713 = !DILocation(line: 395, column: 4, scope: !5710)
!5714 = !DILocation(line: 395, column: 9, scope: !5710)
!5715 = !DILocation(line: 395, column: 23, scope: !5710)
!5716 = !DILocation(line: 396, column: 3, scope: !5710)
!5717 = !DILocation(line: 398, column: 4, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 396, column: 10)
!5719 = !DILocation(line: 398, column: 9, scope: !5718)
!5720 = !DILocation(line: 398, column: 23, scope: !5718)
!5721 = !DILocation(line: 399, column: 4, scope: !5718)
!5722 = !DILocation(line: 399, column: 9, scope: !5718)
!5723 = !DILocation(line: 399, column: 23, scope: !5718)
!5724 = !DILocation(line: 401, column: 2, scope: !5696)
!5725 = !DILocation(line: 408, column: 3, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 401, column: 9)
!5727 = !DILocation(line: 408, column: 8, scope: !5726)
!5728 = !DILocation(line: 408, column: 22, scope: !5726)
!5729 = !DILocation(line: 409, column: 3, scope: !5726)
!5730 = !DILocation(line: 409, column: 8, scope: !5726)
!5731 = !DILocation(line: 409, column: 22, scope: !5726)
!5732 = !DILocation(line: 413, column: 20, scope: !5610)
!5733 = !DILocation(line: 413, column: 25, scope: !5610)
!5734 = !DILocation(line: 413, column: 41, scope: !5610)
!5735 = !DILocation(line: 413, column: 46, scope: !5610)
!5736 = !DILocation(line: 413, column: 39, scope: !5610)
!5737 = !DILocation(line: 413, column: 2, scope: !5610)
!5738 = !DILocation(line: 413, column: 7, scope: !5610)
!5739 = !DILocation(line: 413, column: 18, scope: !5610)
!5740 = !DILocation(line: 414, column: 20, scope: !5610)
!5741 = !DILocation(line: 414, column: 25, scope: !5610)
!5742 = !DILocation(line: 414, column: 41, scope: !5610)
!5743 = !DILocation(line: 414, column: 46, scope: !5610)
!5744 = !DILocation(line: 414, column: 39, scope: !5610)
!5745 = !DILocation(line: 414, column: 2, scope: !5610)
!5746 = !DILocation(line: 414, column: 7, scope: !5610)
!5747 = !DILocation(line: 414, column: 18, scope: !5610)
!5748 = !DILocation(line: 415, column: 22, scope: !5610)
!5749 = !DILocation(line: 415, column: 27, scope: !5610)
!5750 = !DILocation(line: 415, column: 40, scope: !5610)
!5751 = !DILocation(line: 415, column: 45, scope: !5610)
!5752 = !DILocation(line: 415, column: 38, scope: !5610)
!5753 = !DILocation(line: 416, column: 8, scope: !5610)
!5754 = !DILocation(line: 416, column: 13, scope: !5610)
!5755 = !DILocation(line: 415, column: 50, scope: !5610)
!5756 = !DILocation(line: 415, column: 2, scope: !5610)
!5757 = !DILocation(line: 415, column: 7, scope: !5610)
!5758 = !DILocation(line: 415, column: 20, scope: !5610)
!5759 = !DILocation(line: 417, column: 22, scope: !5610)
!5760 = !DILocation(line: 417, column: 27, scope: !5610)
!5761 = !DILocation(line: 417, column: 40, scope: !5610)
!5762 = !DILocation(line: 417, column: 45, scope: !5610)
!5763 = !DILocation(line: 417, column: 38, scope: !5610)
!5764 = !DILocation(line: 418, column: 8, scope: !5610)
!5765 = !DILocation(line: 418, column: 13, scope: !5610)
!5766 = !DILocation(line: 417, column: 50, scope: !5610)
!5767 = !DILocation(line: 417, column: 2, scope: !5610)
!5768 = !DILocation(line: 417, column: 7, scope: !5610)
!5769 = !DILocation(line: 417, column: 20, scope: !5610)
!5770 = !DILocation(line: 420, column: 7, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 420, column: 6)
!5772 = !DILocation(line: 420, column: 12, scope: !5771)
!5773 = !DILocation(line: 420, column: 6, scope: !5610)
!5774 = !DILocation(line: 421, column: 3, scope: !5771)
!5775 = !DILocation(line: 421, column: 8, scope: !5771)
!5776 = !DILocation(line: 421, column: 21, scope: !5771)
!5777 = !DILocation(line: 422, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 422, column: 6)
!5779 = !DILocation(line: 422, column: 12, scope: !5778)
!5780 = !DILocation(line: 422, column: 16, scope: !5778)
!5781 = !DILocation(line: 422, column: 21, scope: !5778)
!5782 = !DILocation(line: 422, column: 6, scope: !5610)
!5783 = !DILocation(line: 423, column: 3, scope: !5778)
!5784 = !DILocation(line: 423, column: 8, scope: !5778)
!5785 = !DILocation(line: 423, column: 18, scope: !5778)
!5786 = !DILocation(line: 425, column: 32, scope: !5610)
!5787 = !DILocation(line: 425, column: 37, scope: !5610)
!5788 = !DILocation(line: 425, column: 51, scope: !5610)
!5789 = !DILocation(line: 425, column: 56, scope: !5610)
!5790 = !DILocation(line: 425, column: 16, scope: !5610)
!5791 = !DILocation(line: 425, column: 14, scope: !5610)
!5792 = !DILocation(line: 426, column: 20, scope: !5610)
!5793 = !DILocation(line: 426, column: 26, scope: !5610)
!5794 = !DILocation(line: 426, column: 30, scope: !5610)
!5795 = !DILocation(line: 426, column: 44, scope: !5610)
!5796 = !DILocation(line: 426, column: 58, scope: !5610)
!5797 = !DILocation(line: 426, column: 63, scope: !5610)
!5798 = !DILocation(line: 426, column: 56, scope: !5610)
!5799 = !DILocation(line: 426, column: 74, scope: !5610)
!5800 = !DILocation(line: 426, column: 72, scope: !5610)
!5801 = !DILocation(line: 426, column: 41, scope: !5610)
!5802 = !DILocation(line: 426, column: 2, scope: !5610)
!5803 = !DILocation(line: 426, column: 7, scope: !5610)
!5804 = !DILocation(line: 426, column: 18, scope: !5610)
!5805 = !DILocation(line: 427, column: 26, scope: !5610)
!5806 = !DILocation(line: 427, column: 2, scope: !5610)
!5807 = !DILocation(line: 427, column: 8, scope: !5610)
!5808 = !DILocation(line: 427, column: 12, scope: !5610)
!5809 = !DILocation(line: 427, column: 24, scope: !5610)
!5810 = !DILocation(line: 428, column: 2, scope: !5610)
!5811 = distinct !DISubprogram(name: "pvr2fb_setcolreg", scope: !3, file: !3, line: 280, type: !4218, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5812 = !DILocalVariable(name: "regno", arg: 1, scope: !5811, file: !3, line: 280, type: !7)
!5813 = !DILocation(line: 280, column: 42, scope: !5811)
!5814 = !DILocalVariable(name: "red", arg: 2, scope: !5811, file: !3, line: 280, type: !7)
!5815 = !DILocation(line: 280, column: 62, scope: !5811)
!5816 = !DILocalVariable(name: "green", arg: 3, scope: !5811, file: !3, line: 281, type: !7)
!5817 = !DILocation(line: 281, column: 21, scope: !5811)
!5818 = !DILocalVariable(name: "blue", arg: 4, scope: !5811, file: !3, line: 281, type: !7)
!5819 = !DILocation(line: 281, column: 41, scope: !5811)
!5820 = !DILocalVariable(name: "transp", arg: 5, scope: !5811, file: !3, line: 282, type: !7)
!5821 = !DILocation(line: 282, column: 42, scope: !5811)
!5822 = !DILocalVariable(name: "info", arg: 6, scope: !5811, file: !3, line: 282, type: !208)
!5823 = !DILocation(line: 282, column: 66, scope: !5811)
!5824 = !DILocalVariable(name: "par", scope: !5811, file: !3, line: 284, type: !142)
!5825 = !DILocation(line: 284, column: 21, scope: !5811)
!5826 = !DILocation(line: 284, column: 48, scope: !5811)
!5827 = !DILocation(line: 284, column: 54, scope: !5811)
!5828 = !DILocation(line: 284, column: 27, scope: !5811)
!5829 = !DILocalVariable(name: "tmp", scope: !5811, file: !3, line: 285, type: !7)
!5830 = !DILocation(line: 285, column: 15, scope: !5811)
!5831 = !DILocation(line: 287, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 287, column: 6)
!5833 = !DILocation(line: 287, column: 14, scope: !5832)
!5834 = !DILocation(line: 287, column: 20, scope: !5832)
!5835 = !DILocation(line: 287, column: 25, scope: !5832)
!5836 = !DILocation(line: 287, column: 12, scope: !5832)
!5837 = !DILocation(line: 287, column: 6, scope: !5811)
!5838 = !DILocation(line: 288, column: 3, scope: !5832)
!5839 = !DILocation(line: 295, column: 10, scope: !5811)
!5840 = !DILocation(line: 295, column: 16, scope: !5811)
!5841 = !DILocation(line: 295, column: 20, scope: !5811)
!5842 = !DILocation(line: 295, column: 2, scope: !5811)
!5843 = !DILocation(line: 297, column: 11, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 295, column: 36)
!5845 = !DILocation(line: 297, column: 17, scope: !5844)
!5846 = !DILocation(line: 298, column: 11, scope: !5844)
!5847 = !DILocation(line: 298, column: 17, scope: !5844)
!5848 = !DILocation(line: 298, column: 27, scope: !5844)
!5849 = !DILocation(line: 297, column: 33, scope: !5844)
!5850 = !DILocation(line: 299, column: 11, scope: !5844)
!5851 = !DILocation(line: 299, column: 17, scope: !5844)
!5852 = !DILocation(line: 299, column: 27, scope: !5844)
!5853 = !DILocation(line: 298, column: 33, scope: !5844)
!5854 = !DILocation(line: 297, column: 7, scope: !5844)
!5855 = !DILocation(line: 301, column: 24, scope: !5844)
!5856 = !DILocation(line: 301, column: 29, scope: !5844)
!5857 = !DILocation(line: 301, column: 36, scope: !5844)
!5858 = !DILocation(line: 301, column: 3, scope: !5844)
!5859 = !DILocation(line: 302, column: 3, scope: !5844)
!5860 = !DILocation(line: 304, column: 7, scope: !5844)
!5861 = !DILocation(line: 304, column: 20, scope: !5844)
!5862 = !DILocation(line: 304, column: 32, scope: !5844)
!5863 = !DILocation(line: 305, column: 10, scope: !5844)
!5864 = !DILocation(line: 305, column: 14, scope: !5844)
!5865 = !DILocation(line: 305, column: 24, scope: !5844)
!5866 = !DILocation(line: 305, column: 30, scope: !5844)
!5867 = !DILocation(line: 305, column: 21, scope: !5844)
!5868 = !DILocation(line: 305, column: 38, scope: !5844)
!5869 = !DILocation(line: 305, column: 36, scope: !5844)
!5870 = !DILocation(line: 305, column: 7, scope: !5844)
!5871 = !DILocation(line: 306, column: 3, scope: !5844)
!5872 = !DILocation(line: 308, column: 7, scope: !5844)
!5873 = !DILocation(line: 308, column: 20, scope: !5844)
!5874 = !DILocation(line: 308, column: 32, scope: !5844)
!5875 = !DILocation(line: 309, column: 10, scope: !5844)
!5876 = !DILocation(line: 309, column: 17, scope: !5844)
!5877 = !DILocation(line: 309, column: 27, scope: !5844)
!5878 = !DILocation(line: 309, column: 31, scope: !5844)
!5879 = !DILocation(line: 309, column: 24, scope: !5844)
!5880 = !DILocation(line: 309, column: 41, scope: !5844)
!5881 = !DILocation(line: 309, column: 47, scope: !5844)
!5882 = !DILocation(line: 309, column: 38, scope: !5844)
!5883 = !DILocation(line: 309, column: 55, scope: !5844)
!5884 = !DILocation(line: 309, column: 53, scope: !5844)
!5885 = !DILocation(line: 309, column: 7, scope: !5844)
!5886 = !DILocation(line: 311, column: 24, scope: !5844)
!5887 = !DILocation(line: 311, column: 29, scope: !5844)
!5888 = !DILocation(line: 311, column: 36, scope: !5844)
!5889 = !DILocation(line: 311, column: 3, scope: !5844)
!5890 = !DILocation(line: 312, column: 3, scope: !5844)
!5891 = !DILocation(line: 314, column: 3, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 314, column: 3)
!5893 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 314, column: 3)
!5894 = !DILocation(line: 314, column: 3, scope: !5893)
!5895 = !DILocation(line: 315, column: 3, scope: !5844)
!5896 = !DILocation(line: 318, column: 6, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 318, column: 6)
!5898 = !DILocation(line: 318, column: 12, scope: !5897)
!5899 = !DILocation(line: 318, column: 6, scope: !5811)
!5900 = !DILocation(line: 319, column: 43, scope: !5897)
!5901 = !DILocation(line: 319, column: 11, scope: !5897)
!5902 = !DILocation(line: 319, column: 17, scope: !5897)
!5903 = !DILocation(line: 319, column: 4, scope: !5897)
!5904 = !DILocation(line: 319, column: 34, scope: !5897)
!5905 = !DILocation(line: 319, column: 3, scope: !5897)
!5906 = !DILocation(line: 319, column: 41, scope: !5897)
!5907 = !DILocation(line: 321, column: 2, scope: !5811)
!5908 = !DILocation(line: 322, column: 1, scope: !5811)
!5909 = distinct !DISubprogram(name: "pvr2fb_blank", scope: !3, file: !3, line: 243, type: !4227, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5910 = !DILocalVariable(name: "blank", arg: 1, scope: !5909, file: !3, line: 243, type: !137)
!5911 = !DILocation(line: 243, column: 29, scope: !5909)
!5912 = !DILocalVariable(name: "info", arg: 2, scope: !5909, file: !3, line: 243, type: !208)
!5913 = !DILocation(line: 243, column: 52, scope: !5909)
!5914 = !DILocation(line: 245, column: 13, scope: !5909)
!5915 = !DILocation(line: 245, column: 21, scope: !5909)
!5916 = !DILocation(line: 245, column: 11, scope: !5909)
!5917 = !DILocation(line: 246, column: 2, scope: !5909)
!5918 = distinct !DISubprogram(name: "set_color_bitfields", scope: !3, file: !3, line: 254, type: !5919, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{null, !4211}
!5921 = !DILocalVariable(name: "var", arg: 1, scope: !5918, file: !3, line: 254, type: !4211)
!5922 = !DILocation(line: 254, column: 59, scope: !5918)
!5923 = !DILocation(line: 256, column: 10, scope: !5918)
!5924 = !DILocation(line: 256, column: 15, scope: !5918)
!5925 = !DILocation(line: 256, column: 2, scope: !5918)
!5926 = !DILocation(line: 258, column: 3, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 256, column: 31)
!5928 = !DILocation(line: 259, column: 3, scope: !5927)
!5929 = !DILocation(line: 259, column: 8, scope: !5927)
!5930 = !DILocation(line: 259, column: 12, scope: !5927)
!5931 = !DILocation(line: 259, column: 19, scope: !5927)
!5932 = !DILocation(line: 259, column: 28, scope: !5927)
!5933 = !DILocation(line: 259, column: 33, scope: !5927)
!5934 = !DILocation(line: 259, column: 37, scope: !5927)
!5935 = !DILocation(line: 259, column: 44, scope: !5927)
!5936 = !DILocation(line: 260, column: 3, scope: !5927)
!5937 = !DILocation(line: 260, column: 8, scope: !5927)
!5938 = !DILocation(line: 260, column: 14, scope: !5927)
!5939 = !DILocation(line: 260, column: 21, scope: !5927)
!5940 = !DILocation(line: 260, column: 28, scope: !5927)
!5941 = !DILocation(line: 260, column: 33, scope: !5927)
!5942 = !DILocation(line: 260, column: 39, scope: !5927)
!5943 = !DILocation(line: 260, column: 46, scope: !5927)
!5944 = !DILocation(line: 261, column: 3, scope: !5927)
!5945 = !DILocation(line: 261, column: 8, scope: !5927)
!5946 = !DILocation(line: 261, column: 13, scope: !5927)
!5947 = !DILocation(line: 261, column: 20, scope: !5927)
!5948 = !DILocation(line: 261, column: 28, scope: !5927)
!5949 = !DILocation(line: 261, column: 33, scope: !5927)
!5950 = !DILocation(line: 261, column: 38, scope: !5927)
!5951 = !DILocation(line: 261, column: 45, scope: !5927)
!5952 = !DILocation(line: 262, column: 3, scope: !5927)
!5953 = !DILocation(line: 262, column: 8, scope: !5927)
!5954 = !DILocation(line: 262, column: 15, scope: !5927)
!5955 = !DILocation(line: 262, column: 22, scope: !5927)
!5956 = !DILocation(line: 262, column: 28, scope: !5927)
!5957 = !DILocation(line: 262, column: 33, scope: !5927)
!5958 = !DILocation(line: 262, column: 40, scope: !5927)
!5959 = !DILocation(line: 262, column: 47, scope: !5927)
!5960 = !DILocation(line: 263, column: 3, scope: !5927)
!5961 = !DILocation(line: 265, column: 3, scope: !5927)
!5962 = !DILocation(line: 265, column: 8, scope: !5927)
!5963 = !DILocation(line: 265, column: 12, scope: !5927)
!5964 = !DILocation(line: 265, column: 19, scope: !5927)
!5965 = !DILocation(line: 265, column: 28, scope: !5927)
!5966 = !DILocation(line: 265, column: 33, scope: !5927)
!5967 = !DILocation(line: 265, column: 37, scope: !5927)
!5968 = !DILocation(line: 265, column: 44, scope: !5927)
!5969 = !DILocation(line: 266, column: 3, scope: !5927)
!5970 = !DILocation(line: 266, column: 8, scope: !5927)
!5971 = !DILocation(line: 266, column: 14, scope: !5927)
!5972 = !DILocation(line: 266, column: 21, scope: !5927)
!5973 = !DILocation(line: 266, column: 28, scope: !5927)
!5974 = !DILocation(line: 266, column: 33, scope: !5927)
!5975 = !DILocation(line: 266, column: 39, scope: !5927)
!5976 = !DILocation(line: 266, column: 46, scope: !5927)
!5977 = !DILocation(line: 267, column: 3, scope: !5927)
!5978 = !DILocation(line: 267, column: 8, scope: !5927)
!5979 = !DILocation(line: 267, column: 13, scope: !5927)
!5980 = !DILocation(line: 267, column: 20, scope: !5927)
!5981 = !DILocation(line: 267, column: 28, scope: !5927)
!5982 = !DILocation(line: 267, column: 33, scope: !5927)
!5983 = !DILocation(line: 267, column: 38, scope: !5927)
!5984 = !DILocation(line: 267, column: 45, scope: !5927)
!5985 = !DILocation(line: 268, column: 3, scope: !5927)
!5986 = !DILocation(line: 268, column: 8, scope: !5927)
!5987 = !DILocation(line: 268, column: 15, scope: !5927)
!5988 = !DILocation(line: 268, column: 22, scope: !5927)
!5989 = !DILocation(line: 268, column: 28, scope: !5927)
!5990 = !DILocation(line: 268, column: 33, scope: !5927)
!5991 = !DILocation(line: 268, column: 40, scope: !5927)
!5992 = !DILocation(line: 268, column: 47, scope: !5927)
!5993 = !DILocation(line: 269, column: 3, scope: !5927)
!5994 = !DILocation(line: 271, column: 3, scope: !5927)
!5995 = !DILocation(line: 272, column: 3, scope: !5927)
!5996 = !DILocation(line: 272, column: 8, scope: !5927)
!5997 = !DILocation(line: 272, column: 12, scope: !5927)
!5998 = !DILocation(line: 272, column: 19, scope: !5927)
!5999 = !DILocation(line: 272, column: 28, scope: !5927)
!6000 = !DILocation(line: 272, column: 33, scope: !5927)
!6001 = !DILocation(line: 272, column: 37, scope: !5927)
!6002 = !DILocation(line: 272, column: 44, scope: !5927)
!6003 = !DILocation(line: 273, column: 3, scope: !5927)
!6004 = !DILocation(line: 273, column: 8, scope: !5927)
!6005 = !DILocation(line: 273, column: 14, scope: !5927)
!6006 = !DILocation(line: 273, column: 21, scope: !5927)
!6007 = !DILocation(line: 273, column: 28, scope: !5927)
!6008 = !DILocation(line: 273, column: 33, scope: !5927)
!6009 = !DILocation(line: 273, column: 39, scope: !5927)
!6010 = !DILocation(line: 273, column: 46, scope: !5927)
!6011 = !DILocation(line: 274, column: 3, scope: !5927)
!6012 = !DILocation(line: 274, column: 8, scope: !5927)
!6013 = !DILocation(line: 274, column: 13, scope: !5927)
!6014 = !DILocation(line: 274, column: 20, scope: !5927)
!6015 = !DILocation(line: 274, column: 28, scope: !5927)
!6016 = !DILocation(line: 274, column: 33, scope: !5927)
!6017 = !DILocation(line: 274, column: 38, scope: !5927)
!6018 = !DILocation(line: 274, column: 45, scope: !5927)
!6019 = !DILocation(line: 275, column: 3, scope: !5927)
!6020 = !DILocation(line: 275, column: 8, scope: !5927)
!6021 = !DILocation(line: 275, column: 15, scope: !5927)
!6022 = !DILocation(line: 275, column: 22, scope: !5927)
!6023 = !DILocation(line: 275, column: 28, scope: !5927)
!6024 = !DILocation(line: 275, column: 33, scope: !5927)
!6025 = !DILocation(line: 275, column: 40, scope: !5927)
!6026 = !DILocation(line: 275, column: 47, scope: !5927)
!6027 = !DILocation(line: 276, column: 3, scope: !5927)
!6028 = !DILocation(line: 278, column: 1, scope: !5918)
!6029 = distinct !DISubprogram(name: "pvr2fb_set_pal_type", scope: !3, file: !3, line: 229, type: !6030, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{null, !7}
!6032 = !DILocalVariable(name: "type", arg: 1, scope: !6029, file: !3, line: 229, type: !7)
!6033 = !DILocation(line: 229, column: 53, scope: !6029)
!6034 = !DILocalVariable(name: "par", scope: !6029, file: !3, line: 231, type: !142)
!6035 = !DILocation(line: 231, column: 21, scope: !6029)
!6036 = !DILocation(line: 231, column: 48, scope: !6029)
!6037 = !DILocation(line: 231, column: 57, scope: !6029)
!6038 = !DILocation(line: 231, column: 27, scope: !6029)
!6039 = !DILocation(line: 233, column: 12, scope: !6029)
!6040 = !DILocation(line: 233, column: 18, scope: !6029)
!6041 = !DILocation(line: 233, column: 23, scope: !6029)
!6042 = !DILocation(line: 233, column: 33, scope: !6029)
!6043 = !DILocation(line: 233, column: 2, scope: !6029)
!6044 = !DILocation(line: 234, column: 1, scope: !6029)
!6045 = distinct !DISubprogram(name: "__writel", scope: !5220, file: !5220, line: 71, type: !6046, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !7, !6048}
!6048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!6049 = !DILocalVariable(name: "val", arg: 1, scope: !6045, file: !5220, line: 71, type: !7)
!6050 = !DILocation(line: 71, column: 1, scope: !6045)
!6051 = !DILocalVariable(name: "addr", arg: 2, scope: !6045, file: !5220, line: 71, type: !6048)
!6052 = !{i32 -2141390813}
!6053 = distinct !DISubprogram(name: "pvr2_init_cable", scope: !3, file: !3, line: 333, type: !4739, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!6054 = !DILocation(line: 335, column: 6, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 335, column: 6)
!6056 = !DILocation(line: 335, column: 17, scope: !6055)
!6057 = !DILocation(line: 335, column: 6, scope: !6053)
!6058 = !DILocation(line: 336, column: 14, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6055, file: !3, line: 335, column: 22)
!6060 = !DILocation(line: 336, column: 30, scope: !6059)
!6061 = !DILocation(line: 336, column: 44, scope: !6059)
!6062 = !DILocation(line: 336, column: 3, scope: !6059)
!6063 = !DILocation(line: 338, column: 17, scope: !6059)
!6064 = !DILocation(line: 338, column: 33, scope: !6059)
!6065 = !DILocation(line: 338, column: 39, scope: !6059)
!6066 = !DILocation(line: 338, column: 14, scope: !6059)
!6067 = !DILocation(line: 339, column: 2, scope: !6059)
!6068 = !DILocation(line: 344, column: 6, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 344, column: 6)
!6070 = !DILocation(line: 344, column: 17, scope: !6069)
!6071 = !DILocation(line: 344, column: 6, scope: !6053)
!6072 = !DILocation(line: 345, column: 3, scope: !6069)
!6073 = !DILocation(line: 346, column: 11, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6069, file: !3, line: 346, column: 11)
!6075 = !DILocation(line: 346, column: 22, scope: !6074)
!6076 = !DILocation(line: 346, column: 11, scope: !6069)
!6077 = !DILocation(line: 347, column: 3, scope: !6074)
!6078 = !DILocation(line: 349, column: 3, scope: !6074)
!6079 = !DILocation(line: 351, column: 9, scope: !6053)
!6080 = !DILocation(line: 351, column: 2, scope: !6053)
!6081 = distinct !DISubprogram(name: "__readw", scope: !5220, file: !5220, line: 62, type: !6082, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!172, !5223}
!6084 = !DILocalVariable(name: "addr", arg: 1, scope: !6081, file: !5220, line: 62, type: !5223)
!6085 = !DILocation(line: 62, column: 1, scope: !6081)
!6086 = !DILocalVariable(name: "ret", scope: !6081, file: !5220, line: 62, type: !172)
!6087 = !{i32 -2141393525}
!6088 = distinct !DISubprogram(name: "pvr2fb_set_pal_entry", scope: !3, file: !3, line: 236, type: !6089, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{null, !142, !7, !7}
!6091 = !DILocalVariable(name: "par", arg: 1, scope: !6088, file: !3, line: 236, type: !142)
!6092 = !DILocation(line: 236, column: 60, scope: !6088)
!6093 = !DILocalVariable(name: "regno", arg: 2, scope: !6088, file: !3, line: 237, type: !7)
!6094 = !DILocation(line: 237, column: 19, scope: !6088)
!6095 = !DILocalVariable(name: "val", arg: 3, scope: !6088, file: !3, line: 238, type: !7)
!6096 = !DILocation(line: 238, column: 19, scope: !6088)
!6097 = !DILocation(line: 240, column: 12, scope: !6088)
!6098 = !DILocation(line: 240, column: 17, scope: !6088)
!6099 = !DILocation(line: 240, column: 22, scope: !6088)
!6100 = !DILocation(line: 240, column: 32, scope: !6088)
!6101 = !DILocation(line: 240, column: 48, scope: !6088)
!6102 = !DILocation(line: 240, column: 46, scope: !6088)
!6103 = !DILocation(line: 240, column: 41, scope: !6088)
!6104 = !DILocation(line: 240, column: 2, scope: !6088)
!6105 = !DILocation(line: 241, column: 1, scope: !6088)
!6106 = distinct !DISubprogram(name: "pvr2fb_setup", scope: !3, file: !3, line: 1022, type: !6107, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!6107 = !DISubroutineType(types: !6108)
!6108 = !{!137, !516}
!6109 = !DILocalVariable(name: "options", arg: 1, scope: !6106, file: !3, line: 1022, type: !516)
!6110 = !DILocation(line: 1022, column: 38, scope: !6106)
!6111 = !DILocalVariable(name: "this_opt", scope: !6106, file: !3, line: 1024, type: !516)
!6112 = !DILocation(line: 1024, column: 8, scope: !6106)
!6113 = !DILocalVariable(name: "cable_arg", scope: !6106, file: !3, line: 1025, type: !6114)
!6114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 640, elements: !6115)
!6115 = !{!6116}
!6116 = !DISubrange(count: 80)
!6117 = !DILocation(line: 1025, column: 7, scope: !6106)
!6118 = !DILocalVariable(name: "output_arg", scope: !6106, file: !3, line: 1026, type: !6114)
!6119 = !DILocation(line: 1026, column: 7, scope: !6106)
!6120 = !DILocation(line: 1028, column: 7, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 1028, column: 6)
!6122 = !DILocation(line: 1028, column: 15, scope: !6121)
!6123 = !DILocation(line: 1028, column: 20, scope: !6121)
!6124 = !DILocation(line: 1028, column: 19, scope: !6121)
!6125 = !DILocation(line: 1028, column: 6, scope: !6106)
!6126 = !DILocation(line: 1029, column: 3, scope: !6121)
!6127 = !DILocation(line: 1031, column: 17, scope: !6106)
!6128 = !DILocation(line: 1031, column: 31, scope: !6106)
!6129 = !DILocation(line: 1031, column: 2, scope: !6106)
!6130 = !DILocation(line: 1031, column: 15, scope: !6106)
!6131 = !DILocation(line: 1033, column: 2, scope: !6106)
!6132 = !DILocation(line: 1033, column: 21, scope: !6106)
!6133 = !DILocation(line: 1033, column: 19, scope: !6106)
!6134 = !DILocation(line: 1034, column: 9, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6136, file: !3, line: 1034, column: 7)
!6136 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 1033, column: 45)
!6137 = !DILocation(line: 1034, column: 8, scope: !6135)
!6138 = !DILocation(line: 1034, column: 7, scope: !6136)
!6139 = !DILocation(line: 1035, column: 4, scope: !6135)
!6140 = distinct !{!6140, !6131, !6141}
!6141 = !DILocation(line: 1049, column: 2, scope: !6106)
!6142 = !DILocation(line: 1036, column: 15, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6136, file: !3, line: 1036, column: 7)
!6144 = !DILocation(line: 1036, column: 8, scope: !6143)
!6145 = !DILocation(line: 1036, column: 7, scope: !6136)
!6146 = !DILocation(line: 1037, column: 4, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 1036, column: 37)
!6148 = !DILocation(line: 1038, column: 3, scope: !6147)
!6149 = !DILocation(line: 1038, column: 23, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 1038, column: 14)
!6151 = !DILocation(line: 1038, column: 15, scope: !6150)
!6152 = !DILocation(line: 1038, column: 14, scope: !6143)
!6153 = !DILocation(line: 1039, column: 11, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 1038, column: 47)
!6155 = !DILocation(line: 1039, column: 22, scope: !6154)
!6156 = !DILocation(line: 1039, column: 31, scope: !6154)
!6157 = !DILocation(line: 1039, column: 4, scope: !6154)
!6158 = !DILocation(line: 1040, column: 3, scope: !6154)
!6159 = !DILocation(line: 1040, column: 23, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 1040, column: 14)
!6161 = !DILocation(line: 1040, column: 15, scope: !6160)
!6162 = !DILocation(line: 1040, column: 14, scope: !6150)
!6163 = !DILocation(line: 1041, column: 11, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 1040, column: 48)
!6165 = !DILocation(line: 1041, column: 23, scope: !6164)
!6166 = !DILocation(line: 1041, column: 32, scope: !6164)
!6167 = !DILocation(line: 1041, column: 4, scope: !6164)
!6168 = !DILocation(line: 1042, column: 3, scope: !6164)
!6169 = !DILocation(line: 1042, column: 23, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 1042, column: 14)
!6171 = !DILocation(line: 1042, column: 15, scope: !6170)
!6172 = !DILocation(line: 1042, column: 14, scope: !6160)
!6173 = !DILocation(line: 1043, column: 10, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 1042, column: 46)
!6175 = !DILocation(line: 1044, column: 3, scope: !6174)
!6176 = !DILocation(line: 1044, column: 23, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 1044, column: 14)
!6178 = !DILocation(line: 1044, column: 15, scope: !6177)
!6179 = !DILocation(line: 1044, column: 14, scope: !6170)
!6180 = !DILocation(line: 1045, column: 11, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 1044, column: 47)
!6182 = !DILocation(line: 1046, column: 3, scope: !6181)
!6183 = !DILocation(line: 1047, column: 18, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 1046, column: 10)
!6185 = !DILocation(line: 1047, column: 16, scope: !6184)
!6186 = !DILocation(line: 1051, column: 6, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 1051, column: 6)
!6188 = !DILocation(line: 1051, column: 6, scope: !6106)
!6189 = !DILocation(line: 1052, column: 43, scope: !6187)
!6190 = !DILocation(line: 1052, column: 16, scope: !6187)
!6191 = !DILocation(line: 1052, column: 14, scope: !6187)
!6192 = !DILocation(line: 1052, column: 3, scope: !6187)
!6193 = !DILocation(line: 1053, column: 6, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 1053, column: 6)
!6195 = !DILocation(line: 1053, column: 6, scope: !6106)
!6196 = !DILocation(line: 1054, column: 46, scope: !6194)
!6197 = !DILocation(line: 1054, column: 18, scope: !6194)
!6198 = !DILocation(line: 1054, column: 16, scope: !6194)
!6199 = !DILocation(line: 1054, column: 3, scope: !6194)
!6200 = !DILocation(line: 1056, column: 2, scope: !6106)
!6201 = !DILocation(line: 1057, column: 1, scope: !6106)
!6202 = distinct !DISubprogram(name: "pvr2_get_param_val", scope: !3, file: !3, line: 737, type: !6203, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !250)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!137, !5233, !341, !137}
!6205 = !DILocalVariable(name: "p", arg: 1, scope: !6202, file: !3, line: 737, type: !5233)
!6206 = !DILocation(line: 737, column: 57, scope: !6202)
!6207 = !DILocalVariable(name: "s", arg: 2, scope: !6202, file: !3, line: 737, type: !341)
!6208 = !DILocation(line: 737, column: 72, scope: !6202)
!6209 = !DILocalVariable(name: "size", arg: 3, scope: !6202, file: !3, line: 738, type: !137)
!6210 = !DILocation(line: 738, column: 14, scope: !6202)
!6211 = !DILocalVariable(name: "i", scope: !6202, file: !3, line: 740, type: !137)
!6212 = !DILocation(line: 740, column: 6, scope: !6202)
!6213 = !DILocation(line: 742, column: 9, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6202, file: !3, line: 742, column: 2)
!6215 = !DILocation(line: 742, column: 7, scope: !6214)
!6216 = !DILocation(line: 742, column: 14, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 742, column: 2)
!6218 = !DILocation(line: 742, column: 18, scope: !6217)
!6219 = !DILocation(line: 742, column: 16, scope: !6217)
!6220 = !DILocation(line: 742, column: 2, scope: !6214)
!6221 = !DILocation(line: 743, column: 20, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 743, column: 7)
!6223 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 742, column: 29)
!6224 = !DILocation(line: 743, column: 22, scope: !6222)
!6225 = !DILocation(line: 743, column: 25, scope: !6222)
!6226 = !DILocation(line: 743, column: 31, scope: !6222)
!6227 = !DILocation(line: 743, column: 41, scope: !6222)
!6228 = !DILocation(line: 743, column: 34, scope: !6222)
!6229 = !DILocation(line: 743, column: 8, scope: !6222)
!6230 = !DILocation(line: 743, column: 7, scope: !6223)
!6231 = !DILocation(line: 744, column: 11, scope: !6222)
!6232 = !DILocation(line: 744, column: 13, scope: !6222)
!6233 = !DILocation(line: 744, column: 16, scope: !6222)
!6234 = !DILocation(line: 744, column: 4, scope: !6222)
!6235 = !DILocation(line: 745, column: 2, scope: !6223)
!6236 = !DILocation(line: 742, column: 25, scope: !6217)
!6237 = !DILocation(line: 742, column: 2, scope: !6217)
!6238 = distinct !{!6238, !6220, !6239}
!6239 = !DILocation(line: 745, column: 2, scope: !6214)
!6240 = !DILocation(line: 746, column: 2, scope: !6202)
!6241 = !DILocation(line: 747, column: 1, scope: !6202)
