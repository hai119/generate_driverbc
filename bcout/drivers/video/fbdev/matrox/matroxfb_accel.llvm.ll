; ModuleID = '../bcout/drivers/video/fbdev/matrox/matroxfb_accel.llvm.bc'
source_filename = "drivers/video/fbdev/matrox/matroxfb_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.matrox_fb_info = type { %struct.fb_info, %struct.list_head, i32, i32, i32, i32, i64, %struct.matroxfb_par, %struct.matrox_hw_state, %struct.matrox_accel_data, %struct.pci_dev*, %struct.anon.68, %struct.anon.69, %struct.anon.70, [3 x %struct.anon.72], [5 x %struct.matroxfb_driver*], [5 x i8*], i32, %struct.anon.73, %struct.anon.74, i32, i32, %struct.matrox_switch*, %struct.anon.75, %struct.anon.76, i32, i32, i32, i32, %struct.anon.77, i32, %struct.anon.78, %struct.fb_ops, %struct.matrox_bios, %struct.anon.81, %struct.anon.82, %struct.anon.84, [16 x i32] }
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
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_tile_ops = type { void (%struct.fb_info*, %struct.fb_tilemap*)*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.65 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.matroxfb_par = type { i32, i32, %struct.anon.66 }
%struct.anon.66 = type { i32, i32, i32 }
%struct.matrox_hw_state = type { i32, [6 x i8], [80 x i8], i8, [768 x i8], [25 x i8], [9 x i8], [5 x i8], [9 x i8], [21 x i8], %struct.mavenregs, %struct.matrox_crtc2 }
%struct.mavenregs = type { [256 x i8], i32, i32, i32, i32, i16, i16 }
%struct.matrox_crtc2 = type { i32 }
%struct.matrox_accel_data = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.67, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.67 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.anon.68 = type { %struct.matrox_vsync, i32, i32, i32 }
%struct.matrox_vsync = type { %struct.wait_queue_head, i32 }
%struct.anon.69 = type { %struct.matrox_vsync, i32, i32, %struct.matroxfb_dh_fb_info*, %struct.rw_semaphore }
%struct.matroxfb_dh_fb_info = type opaque
%struct.anon.70 = type { %struct.rw_semaphore, %struct.anon.71 }
%struct.anon.71 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.72 = type { i32, %struct.matrox_altout*, i8*, i32, i32 }
%struct.matrox_altout = type { i8*, i32 (i8*, %struct.my_timming*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i32)*, i32 (i8*, %struct.v4l2_queryctrl*)*, i32 (i8*, %struct.v4l2_control*)*, i32 (i8*, %struct.v4l2_control*)* }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_queryctrl = type opaque
%struct.v4l2_control = type opaque
%struct.matroxfb_driver = type { %struct.list_head, i8*, i8* (%struct.matrox_fb_info*)*, void (%struct.matrox_fb_info*, i8*)* }
%struct.anon.73 = type { i64, %struct.vaddr_t, i32, i32, i32 }
%struct.vaddr_t = type { i8* }
%struct.anon.74 = type { i64, %struct.vaddr_t, i32 }
%struct.matrox_switch = type { i32 (%struct.matrox_fb_info*)*, {}*, i32 (%struct.matrox_fb_info*, %struct.my_timming*)*, {}* }
%struct.anon.75 = type { %struct.matrox_pll_features, %struct.matrox_DAC1064_features }
%struct.matrox_pll_features = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_DAC1064_features = type { i8, i8 }
%struct.anon.76 = type { %struct.spinlock, %struct.spinlock }
%struct.anon.77 = type { i32, i32*, i32, i32, i32, i32 }
%struct.anon.78 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.matrox_bios = type { i8, i32, [128 x i8], %struct.anon.79, %struct.anon.80 }
%struct.anon.79 = type { i8, i8, i8 }
%struct.anon.80 = type { i8, i8 }
%struct.anon.81 = type { %struct.matrox_pll_limits, %struct.matrox_pll_limits, %struct.matrox_pll_limits }
%struct.matrox_pll_limits = type { i32, i32 }
%struct.anon.82 = type { %struct.matrox_pll_cache, %struct.matrox_pll_cache, %struct.matrox_pll_cache }
%struct.matrox_pll_cache = type { i32, [4 x %struct.anon.83] }
%struct.anon.83 = type { i32, i32 }
%struct.anon.84 = type { %struct.anon.85, %struct.anon.86, %struct.anon.87 }
%struct.anon.85 = type { i32, i32 }
%struct.anon.86 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.87 = type { i8, [3 x i8] }

@__UNIQUE_ID_file249 = internal constant [62 x i8] c"matroxfb_accel.file=drivers/video/fbdev/matrox/matroxfb_accel\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license250 = internal constant [27 x i8] c"matroxfb_accel.license=GPL\00", section ".modinfo", align 1, !dbg !5010
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_file249, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license250, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @matrox_cfbX_init(%struct.matrox_fb_info* %minfo) #0 !dbg !5023 {
entry:
  %minfo.addr = alloca %struct.matrox_fb_info*, align 8
  %maccess = alloca i32, align 4
  %mpitch = alloca i32, align 4
  %mopmode = alloca i32, align 4
  %accel = alloca i32, align 4
  store %struct.matrox_fb_info* %minfo, %struct.matrox_fb_info** %minfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata i32* %maccess, metadata !5026, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.declare(metadata i32* %mpitch, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata i32* %mopmode, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata i32* %accel, metadata !5032, metadata !DIExpression()), !dbg !5033
  %0 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5034
  %fbcon = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %0, i32 0, i32 0, !dbg !5035
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon, i32 0, i32 6, !dbg !5036
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5037
  %1 = load i32, i32* %xres_virtual, align 8, !dbg !5037
  store i32 %1, i32* %mpitch, align 4, !dbg !5038
  %2 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5039
  %fbops = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %2, i32 0, i32 32, !dbg !5040
  %fb_copyarea = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops, i32 0, i32 12, !dbg !5041
  store void (%struct.fb_info*, %struct.fb_copyarea*)* @cfb_copyarea, void (%struct.fb_info*, %struct.fb_copyarea*)** %fb_copyarea, align 8, !dbg !5042
  %3 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5043
  %fbops1 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %3, i32 0, i32 32, !dbg !5044
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops1, i32 0, i32 11, !dbg !5045
  store void (%struct.fb_info*, %struct.fb_fillrect*)* @cfb_fillrect, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect, align 8, !dbg !5046
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5047
  %fbops2 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %4, i32 0, i32 32, !dbg !5048
  %fb_imageblit = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops2, i32 0, i32 13, !dbg !5049
  store void (%struct.fb_info*, %struct.fb_image*)* @cfb_imageblit, void (%struct.fb_info*, %struct.fb_image*)** %fb_imageblit, align 8, !dbg !5050
  %5 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5051
  %fbops3 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %5, i32 0, i32 32, !dbg !5052
  %fb_cursor = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops3, i32 0, i32 14, !dbg !5053
  store i32 (%struct.fb_info*, %struct.fb_cursor*)* null, i32 (%struct.fb_info*, %struct.fb_cursor*)** %fb_cursor, align 8, !dbg !5054
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5055
  %fbcon4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 0, !dbg !5056
  %var5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon4, i32 0, i32 6, !dbg !5057
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var5, i32 0, i32 16, !dbg !5058
  %7 = load i32, i32* %accel_flags, align 8, !dbg !5058
  %and = and i32 %7, 1, !dbg !5059
  %cmp = icmp eq i32 %and, 1, !dbg !5060
  %conv = zext i1 %cmp to i32, !dbg !5060
  store i32 %conv, i32* %accel, align 4, !dbg !5061
  %8 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5062
  %fbcon6 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %8, i32 0, i32 0, !dbg !5063
  %var7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon6, i32 0, i32 6, !dbg !5064
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var7, i32 0, i32 6, !dbg !5065
  %9 = load i32, i32* %bits_per_pixel, align 8, !dbg !5065
  switch i32 %9, label %sw.default [
    i32 4, label %sw.bb
    i32 8, label %sw.bb14
    i32 16, label %sw.bb26
    i32 24, label %sw.bb42
    i32 32, label %sw.bb52
  ], !dbg !5066

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %maccess, align 4, !dbg !5067
  %10 = load i32, i32* %mpitch, align 4, !dbg !5069
  %shr = lshr i32 %10, 1, !dbg !5070
  %or = or i32 %shr, 32768, !dbg !5071
  store i32 %or, i32* %mpitch, align 4, !dbg !5072
  store i32 4, i32* %mopmode, align 4, !dbg !5073
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5074
  %cmap = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %11, i32 0, i32 37, !dbg !5075
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %cmap, i64 0, i64 0, !dbg !5074
  call void @matrox_cfb4_pal(i32* %arraydecay) #4, !dbg !5076
  %12 = load i32, i32* %accel, align 4, !dbg !5077
  %tobool = icmp ne i32 %12, 0, !dbg !5077
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5079

land.lhs.true:                                    ; preds = %sw.bb
  %13 = load i32, i32* %mpitch, align 4, !dbg !5080
  %and8 = and i32 %13, 1, !dbg !5081
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5081
  br i1 %tobool9, label %if.end, label %if.then, !dbg !5082

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5083
  %fbops10 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %14, i32 0, i32 32, !dbg !5085
  %fb_copyarea11 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops10, i32 0, i32 12, !dbg !5086
  store void (%struct.fb_info*, %struct.fb_copyarea*)* @matroxfb_cfb4_copyarea, void (%struct.fb_info*, %struct.fb_copyarea*)** %fb_copyarea11, align 8, !dbg !5087
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5088
  %fbops12 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 32, !dbg !5089
  %fb_fillrect13 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops12, i32 0, i32 11, !dbg !5090
  store void (%struct.fb_info*, %struct.fb_fillrect*)* @matroxfb_cfb4_fillrect, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect13, align 8, !dbg !5091
  br label %if.end, !dbg !5092

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !5093

sw.bb14:                                          ; preds = %entry
  store i32 0, i32* %maccess, align 4, !dbg !5094
  store i32 4, i32* %mopmode, align 4, !dbg !5095
  %16 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5096
  %cmap15 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %16, i32 0, i32 37, !dbg !5097
  %arraydecay16 = getelementptr inbounds [16 x i32], [16 x i32]* %cmap15, i64 0, i64 0, !dbg !5096
  call void @matrox_cfb8_pal(i32* %arraydecay16) #4, !dbg !5098
  %17 = load i32, i32* %accel, align 4, !dbg !5099
  %tobool17 = icmp ne i32 %17, 0, !dbg !5099
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !5101

if.then18:                                        ; preds = %sw.bb14
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5102
  %fbops19 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %18, i32 0, i32 32, !dbg !5104
  %fb_copyarea20 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops19, i32 0, i32 12, !dbg !5105
  store void (%struct.fb_info*, %struct.fb_copyarea*)* @matroxfb_copyarea, void (%struct.fb_info*, %struct.fb_copyarea*)** %fb_copyarea20, align 8, !dbg !5106
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5107
  %fbops21 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %19, i32 0, i32 32, !dbg !5108
  %fb_fillrect22 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops21, i32 0, i32 11, !dbg !5109
  store void (%struct.fb_info*, %struct.fb_fillrect*)* @matroxfb_fillrect, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect22, align 8, !dbg !5110
  %20 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5111
  %fbops23 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %20, i32 0, i32 32, !dbg !5112
  %fb_imageblit24 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops23, i32 0, i32 13, !dbg !5113
  store void (%struct.fb_info*, %struct.fb_image*)* @matroxfb_imageblit, void (%struct.fb_info*, %struct.fb_image*)** %fb_imageblit24, align 8, !dbg !5114
  br label %if.end25, !dbg !5115

if.end25:                                         ; preds = %if.then18, %sw.bb14
  br label %sw.epilog, !dbg !5116

sw.bb26:                                          ; preds = %entry
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5117
  %fbcon27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %21, i32 0, i32 0, !dbg !5119
  %var28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon27, i32 0, i32 6, !dbg !5120
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var28, i32 0, i32 9, !dbg !5121
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green, i32 0, i32 1, !dbg !5122
  %22 = load i32, i32* %length, align 4, !dbg !5122
  %cmp29 = icmp eq i32 %22, 5, !dbg !5123
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !5124

if.then31:                                        ; preds = %sw.bb26
  store i32 -1073741823, i32* %maccess, align 4, !dbg !5125
  br label %if.end32, !dbg !5126

if.else:                                          ; preds = %sw.bb26
  store i32 1073741825, i32* %maccess, align 4, !dbg !5127
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then31
  store i32 4, i32* %mopmode, align 4, !dbg !5128
  %23 = load i32, i32* %accel, align 4, !dbg !5129
  %tobool33 = icmp ne i32 %23, 0, !dbg !5129
  br i1 %tobool33, label %if.then34, label %if.end41, !dbg !5131

if.then34:                                        ; preds = %if.end32
  %24 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5132
  %fbops35 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %24, i32 0, i32 32, !dbg !5134
  %fb_copyarea36 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops35, i32 0, i32 12, !dbg !5135
  store void (%struct.fb_info*, %struct.fb_copyarea*)* @matroxfb_copyarea, void (%struct.fb_info*, %struct.fb_copyarea*)** %fb_copyarea36, align 8, !dbg !5136
  %25 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5137
  %fbops37 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %25, i32 0, i32 32, !dbg !5138
  %fb_fillrect38 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops37, i32 0, i32 11, !dbg !5139
  store void (%struct.fb_info*, %struct.fb_fillrect*)* @matroxfb_fillrect, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect38, align 8, !dbg !5140
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5141
  %fbops39 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %26, i32 0, i32 32, !dbg !5142
  %fb_imageblit40 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops39, i32 0, i32 13, !dbg !5143
  store void (%struct.fb_info*, %struct.fb_image*)* @matroxfb_imageblit, void (%struct.fb_info*, %struct.fb_image*)** %fb_imageblit40, align 8, !dbg !5144
  br label %if.end41, !dbg !5145

if.end41:                                         ; preds = %if.then34, %if.end32
  br label %sw.epilog, !dbg !5146

sw.bb42:                                          ; preds = %entry
  store i32 3, i32* %maccess, align 4, !dbg !5147
  store i32 4, i32* %mopmode, align 4, !dbg !5148
  %27 = load i32, i32* %accel, align 4, !dbg !5149
  %tobool43 = icmp ne i32 %27, 0, !dbg !5149
  br i1 %tobool43, label %if.then44, label %if.end51, !dbg !5151

if.then44:                                        ; preds = %sw.bb42
  %28 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5152
  %fbops45 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %28, i32 0, i32 32, !dbg !5154
  %fb_copyarea46 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops45, i32 0, i32 12, !dbg !5155
  store void (%struct.fb_info*, %struct.fb_copyarea*)* @matroxfb_copyarea, void (%struct.fb_info*, %struct.fb_copyarea*)** %fb_copyarea46, align 8, !dbg !5156
  %29 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5157
  %fbops47 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %29, i32 0, i32 32, !dbg !5158
  %fb_fillrect48 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops47, i32 0, i32 11, !dbg !5159
  store void (%struct.fb_info*, %struct.fb_fillrect*)* @matroxfb_fillrect, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect48, align 8, !dbg !5160
  %30 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5161
  %fbops49 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %30, i32 0, i32 32, !dbg !5162
  %fb_imageblit50 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops49, i32 0, i32 13, !dbg !5163
  store void (%struct.fb_info*, %struct.fb_image*)* @matroxfb_imageblit, void (%struct.fb_info*, %struct.fb_image*)** %fb_imageblit50, align 8, !dbg !5164
  br label %if.end51, !dbg !5165

if.end51:                                         ; preds = %if.then44, %sw.bb42
  br label %sw.epilog, !dbg !5166

sw.bb52:                                          ; preds = %entry
  store i32 2, i32* %maccess, align 4, !dbg !5167
  store i32 4, i32* %mopmode, align 4, !dbg !5168
  %31 = load i32, i32* %accel, align 4, !dbg !5169
  %tobool53 = icmp ne i32 %31, 0, !dbg !5169
  br i1 %tobool53, label %if.then54, label %if.end61, !dbg !5171

if.then54:                                        ; preds = %sw.bb52
  %32 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5172
  %fbops55 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %32, i32 0, i32 32, !dbg !5174
  %fb_copyarea56 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops55, i32 0, i32 12, !dbg !5175
  store void (%struct.fb_info*, %struct.fb_copyarea*)* @matroxfb_copyarea, void (%struct.fb_info*, %struct.fb_copyarea*)** %fb_copyarea56, align 8, !dbg !5176
  %33 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5177
  %fbops57 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %33, i32 0, i32 32, !dbg !5178
  %fb_fillrect58 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops57, i32 0, i32 11, !dbg !5179
  store void (%struct.fb_info*, %struct.fb_fillrect*)* @matroxfb_fillrect, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect58, align 8, !dbg !5180
  %34 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5181
  %fbops59 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %34, i32 0, i32 32, !dbg !5182
  %fb_imageblit60 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %fbops59, i32 0, i32 13, !dbg !5183
  store void (%struct.fb_info*, %struct.fb_image*)* @matroxfb_imageblit, void (%struct.fb_info*, %struct.fb_image*)** %fb_imageblit60, align 8, !dbg !5184
  br label %if.end61, !dbg !5185

if.end61:                                         ; preds = %if.then54, %sw.bb52
  br label %sw.epilog, !dbg !5186

sw.default:                                       ; preds = %entry
  store i32 0, i32* %maccess, align 4, !dbg !5187
  store i32 0, i32* %mopmode, align 4, !dbg !5188
  br label %sw.epilog, !dbg !5189

sw.epilog:                                        ; preds = %sw.default, %if.end61, %if.end51, %if.end41, %if.end25, %if.end
  br label %do.body, !dbg !5190

do.body:                                          ; preds = %do.cond, %sw.epilog
  br label %do.cond, !dbg !5191

do.cond:                                          ; preds = %do.body
  %35 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5190
  %mmio = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %35, i32 0, i32 19, !dbg !5190
  %vbase = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio, i32 0, i32 1, !dbg !5190
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase, i32 0, i32 0, !dbg !5190
  %36 = load i8*, i8** %coerce.dive, align 8, !dbg !5190
  %call = call i32 @mga_readl(i8* %36, i32 7696) #4, !dbg !5190
  %and62 = and i32 %call, 255, !dbg !5190
  %cmp63 = icmp ult i32 %and62, 8, !dbg !5190
  br i1 %cmp63, label %do.body, label %do.end, !dbg !5191, !llvm.loop !5193

do.end:                                           ; preds = %do.cond
  %37 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5194
  %mmio65 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %37, i32 0, i32 19, !dbg !5194
  %vbase66 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio65, i32 0, i32 1, !dbg !5194
  %38 = load i32, i32* %mpitch, align 4, !dbg !5194
  %coerce.dive67 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase66, i32 0, i32 0, !dbg !5194
  %39 = load i8*, i8** %coerce.dive67, align 8, !dbg !5194
  call void @mga_writel(i8* %39, i32 7308, i32 %38) #4, !dbg !5194
  %40 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5195
  %mmio68 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %40, i32 0, i32 19, !dbg !5195
  %vbase69 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio68, i32 0, i32 1, !dbg !5195
  %41 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5195
  %curr = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %41, i32 0, i32 7, !dbg !5195
  %ydstorg = getelementptr inbounds %struct.matroxfb_par, %struct.matroxfb_par* %curr, i32 0, i32 2, !dbg !5195
  %pixels = getelementptr inbounds %struct.anon.66, %struct.anon.66* %ydstorg, i32 0, i32 1, !dbg !5195
  %42 = load i32, i32* %pixels, align 4, !dbg !5195
  %coerce.dive70 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase69, i32 0, i32 0, !dbg !5195
  %43 = load i8*, i8** %coerce.dive70, align 8, !dbg !5195
  call void @mga_writel(i8* %43, i32 7316, i32 %42) #4, !dbg !5195
  %44 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5196
  %capable = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %44, i32 0, i32 29, !dbg !5198
  %plnwt = getelementptr inbounds %struct.anon.77, %struct.anon.77* %capable, i32 0, i32 4, !dbg !5199
  %45 = load i32, i32* %plnwt, align 8, !dbg !5199
  %tobool71 = icmp ne i32 %45, 0, !dbg !5196
  br i1 %tobool71, label %if.then72, label %if.end76, !dbg !5200

if.then72:                                        ; preds = %do.end
  %46 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5201
  %mmio73 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %46, i32 0, i32 19, !dbg !5201
  %vbase74 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio73, i32 0, i32 1, !dbg !5201
  %coerce.dive75 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase74, i32 0, i32 0, !dbg !5201
  %47 = load i8*, i8** %coerce.dive75, align 8, !dbg !5201
  call void @mga_writel(i8* %47, i32 7196, i32 -1) #4, !dbg !5201
  br label %if.end76, !dbg !5201

if.end76:                                         ; preds = %if.then72, %do.end
  %48 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5202
  %capable77 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %48, i32 0, i32 29, !dbg !5204
  %srcorg = getelementptr inbounds %struct.anon.77, %struct.anon.77* %capable77, i32 0, i32 5, !dbg !5205
  %49 = load i32, i32* %srcorg, align 4, !dbg !5205
  %tobool78 = icmp ne i32 %49, 0, !dbg !5202
  br i1 %tobool78, label %if.then79, label %if.end86, !dbg !5206

if.then79:                                        ; preds = %if.end76
  %50 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5207
  %mmio80 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %50, i32 0, i32 19, !dbg !5207
  %vbase81 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio80, i32 0, i32 1, !dbg !5207
  %coerce.dive82 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase81, i32 0, i32 0, !dbg !5207
  %51 = load i8*, i8** %coerce.dive82, align 8, !dbg !5207
  call void @mga_writel(i8* %51, i32 11444, i32 0) #4, !dbg !5207
  %52 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5209
  %mmio83 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %52, i32 0, i32 19, !dbg !5209
  %vbase84 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio83, i32 0, i32 1, !dbg !5209
  %coerce.dive85 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase84, i32 0, i32 0, !dbg !5209
  %53 = load i8*, i8** %coerce.dive85, align 8, !dbg !5209
  call void @mga_writel(i8* %53, i32 11448, i32 0) #4, !dbg !5209
  br label %if.end86, !dbg !5210

if.end86:                                         ; preds = %if.then79, %if.end76
  %54 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5211
  %mmio87 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %54, i32 0, i32 19, !dbg !5211
  %vbase88 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio87, i32 0, i32 1, !dbg !5211
  %55 = load i32, i32* %mopmode, align 4, !dbg !5211
  %coerce.dive89 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase88, i32 0, i32 0, !dbg !5211
  %56 = load i8*, i8** %coerce.dive89, align 8, !dbg !5211
  call void @mga_writel(i8* %56, i32 7764, i32 %55) #4, !dbg !5211
  %57 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5212
  %mmio90 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %57, i32 0, i32 19, !dbg !5212
  %vbase91 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio90, i32 0, i32 1, !dbg !5212
  %coerce.dive92 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase91, i32 0, i32 0, !dbg !5212
  %58 = load i8*, i8** %coerce.dive92, align 8, !dbg !5212
  call void @mga_writel(i8* %58, i32 7296, i32 -65536) #4, !dbg !5212
  %59 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5213
  %mmio93 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %59, i32 0, i32 19, !dbg !5213
  %vbase94 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio93, i32 0, i32 1, !dbg !5213
  %coerce.dive95 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase94, i32 0, i32 0, !dbg !5213
  %60 = load i8*, i8** %coerce.dive95, align 8, !dbg !5213
  call void @mga_writel(i8* %60, i32 7320, i32 0) #4, !dbg !5213
  %61 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5214
  %mmio96 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %61, i32 0, i32 19, !dbg !5214
  %vbase97 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio96, i32 0, i32 1, !dbg !5214
  %coerce.dive98 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase97, i32 0, i32 0, !dbg !5214
  %62 = load i8*, i8** %coerce.dive98, align 8, !dbg !5214
  call void @mga_writel(i8* %62, i32 7324, i32 33554431) #4, !dbg !5214
  %63 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5215
  %mmio99 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %63, i32 0, i32 19, !dbg !5215
  %vbase100 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio99, i32 0, i32 1, !dbg !5215
  %64 = load i32, i32* %maccess, align 4, !dbg !5215
  %coerce.dive101 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase100, i32 0, i32 0, !dbg !5215
  %65 = load i8*, i8** %coerce.dive101, align 8, !dbg !5215
  call void @mga_writel(i8* %65, i32 7172, i32 %64) #4, !dbg !5215
  %66 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5216
  %accel102 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %66, i32 0, i32 9, !dbg !5217
  %m_dwg_rect = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel102, i32 0, i32 0, !dbg !5218
  store i32 30724, i32* %m_dwg_rect, align 4, !dbg !5219
  %67 = load i32, i32* %mopmode, align 4, !dbg !5220
  %68 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5221
  %accel103 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %68, i32 0, i32 9, !dbg !5222
  %m_opmode = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel103, i32 0, i32 1, !dbg !5223
  store i32 %67, i32* %m_opmode, align 4, !dbg !5224
  %69 = load i32, i32* %maccess, align 4, !dbg !5225
  %70 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5226
  %accel104 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %70, i32 0, i32 9, !dbg !5227
  %m_access = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel104, i32 0, i32 2, !dbg !5228
  store i32 %69, i32* %m_access, align 4, !dbg !5229
  %71 = load i32, i32* %mpitch, align 4, !dbg !5230
  %72 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5231
  %accel105 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %72, i32 0, i32 9, !dbg !5232
  %m_pitch = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel105, i32 0, i32 3, !dbg !5233
  store i32 %71, i32* %m_pitch, align 4, !dbg !5234
  ret void, !dbg !5235
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #2

; Function Attrs: noredzone
declare dso_local void @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #2

; Function Attrs: noredzone
declare dso_local void @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matrox_cfb4_pal(i32* %pal) #0 !dbg !5236 {
entry:
  %pal.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %pal, i32** %pal.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pal.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5241, metadata !DIExpression()), !dbg !5242
  store i32 0, i32* %i, align 4, !dbg !5243
  br label %for.cond, !dbg !5245

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5246
  %cmp = icmp ult i32 %0, 16, !dbg !5248
  br i1 %cmp, label %for.body, label %for.end, !dbg !5249

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5250
  %mul = mul i32 %1, 286331153, !dbg !5252
  %2 = load i32*, i32** %pal.addr, align 8, !dbg !5253
  %3 = load i32, i32* %i, align 4, !dbg !5254
  %idxprom = zext i32 %3 to i64, !dbg !5253
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !5253
  store i32 %mul, i32* %arrayidx, align 4, !dbg !5255
  br label %for.inc, !dbg !5256

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !5257
  %inc = add i32 %4, 1, !dbg !5257
  store i32 %inc, i32* %i, align 4, !dbg !5257
  br label %for.cond, !dbg !5258, !llvm.loop !5259

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_cfb4_copyarea(%struct.fb_info* %info, %struct.fb_copyarea* %area) #0 !dbg !5262 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %area.addr = alloca %struct.fb_copyarea*, align 8
  %minfo = alloca %struct.matrox_fb_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  store %struct.fb_copyarea* %area, %struct.fb_copyarea** %area.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_copyarea** %area.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo, metadata !5267, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5269, metadata !DIExpression()), !dbg !5271
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5271
  %1 = bitcast %struct.fb_info* %0 to i8*, !dbg !5271
  store i8* %1, i8** %__mptr, align 8, !dbg !5271
  br label %do.body, !dbg !5271

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5272

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5271
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5271
  %3 = bitcast i8* %add.ptr to %struct.matrox_fb_info*, !dbg !5271
  store %struct.matrox_fb_info* %3, %struct.matrox_fb_info** %tmp, align 8, !dbg !5272
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %tmp, align 8, !dbg !5271
  store %struct.matrox_fb_info* %4, %struct.matrox_fb_info** %minfo, align 8, !dbg !5268
  %5 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5274
  %sx = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %5, i32 0, i32 4, !dbg !5276
  %6 = load i32, i32* %sx, align 4, !dbg !5276
  %7 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5277
  %dx = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %7, i32 0, i32 0, !dbg !5278
  %8 = load i32, i32* %dx, align 4, !dbg !5278
  %or = or i32 %6, %8, !dbg !5279
  %9 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5280
  %width = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %9, i32 0, i32 2, !dbg !5281
  %10 = load i32, i32* %width, align 4, !dbg !5281
  %or1 = or i32 %or, %10, !dbg !5282
  %and = and i32 %or1, 1, !dbg !5283
  %tobool = icmp ne i32 %and, 0, !dbg !5283
  br i1 %tobool, label %if.then, label %if.else, !dbg !5284

if.then:                                          ; preds = %do.end
  %11 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5285
  %12 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5286
  call void @cfb_copyarea(%struct.fb_info* %11, %struct.fb_copyarea* %12) #4, !dbg !5287
  br label %if.end, !dbg !5287

if.else:                                          ; preds = %do.end
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo, align 8, !dbg !5288
  %14 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo, align 8, !dbg !5289
  %fbcon = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %14, i32 0, i32 0, !dbg !5290
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon, i32 0, i32 6, !dbg !5291
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5292
  %15 = load i32, i32* %xres_virtual, align 8, !dbg !5292
  %shr = lshr i32 %15, 1, !dbg !5293
  %16 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5294
  %sy = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %16, i32 0, i32 5, !dbg !5295
  %17 = load i32, i32* %sy, align 4, !dbg !5295
  %18 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5296
  %sx2 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 4, !dbg !5297
  %19 = load i32, i32* %sx2, align 4, !dbg !5297
  %shr3 = lshr i32 %19, 1, !dbg !5298
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5299
  %dy = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 1, !dbg !5300
  %21 = load i32, i32* %dy, align 4, !dbg !5300
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5301
  %dx4 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %22, i32 0, i32 0, !dbg !5302
  %23 = load i32, i32* %dx4, align 4, !dbg !5302
  %shr5 = lshr i32 %23, 1, !dbg !5303
  %24 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5304
  %height = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %24, i32 0, i32 3, !dbg !5305
  %25 = load i32, i32* %height, align 4, !dbg !5305
  %26 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5306
  %width6 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %26, i32 0, i32 2, !dbg !5307
  %27 = load i32, i32* %width6, align 4, !dbg !5307
  %shr7 = lshr i32 %27, 1, !dbg !5308
  call void @matrox_accel_bmove_lin(%struct.matrox_fb_info* %13, i32 %shr, i32 %17, i32 %shr3, i32 %21, i32 %shr5, i32 %25, i32 %shr7) #4, !dbg !5309
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_cfb4_fillrect(%struct.fb_info* %info, %struct.fb_fillrect* %rect) #0 !dbg !5311 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %rect.addr = alloca %struct.fb_fillrect*, align 8
  %minfo = alloca %struct.matrox_fb_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  store %struct.fb_fillrect* %rect, %struct.fb_fillrect** %rect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_fillrect** %rect.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo, metadata !5316, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5318, metadata !DIExpression()), !dbg !5320
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5320
  %1 = bitcast %struct.fb_info* %0 to i8*, !dbg !5320
  store i8* %1, i8** %__mptr, align 8, !dbg !5320
  br label %do.body, !dbg !5320

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5321

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5320
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5320
  %3 = bitcast i8* %add.ptr to %struct.matrox_fb_info*, !dbg !5320
  store %struct.matrox_fb_info* %3, %struct.matrox_fb_info** %tmp, align 8, !dbg !5321
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %tmp, align 8, !dbg !5320
  store %struct.matrox_fb_info* %4, %struct.matrox_fb_info** %minfo, align 8, !dbg !5317
  %5 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5323
  %rop = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 5, !dbg !5324
  %6 = load i32, i32* %rop, align 4, !dbg !5324
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
  ], !dbg !5325

sw.bb:                                            ; preds = %do.end
  %7 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo, align 8, !dbg !5326
  %8 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5328
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 27, !dbg !5329
  %9 = load i8*, i8** %pseudo_palette, align 8, !dbg !5329
  %10 = bitcast i8* %9 to i32*, !dbg !5330
  %11 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5331
  %color = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 4, !dbg !5332
  %12 = load i32, i32* %color, align 4, !dbg !5332
  %idxprom = zext i32 %12 to i64, !dbg !5333
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom, !dbg !5333
  %13 = load i32, i32* %arrayidx, align 4, !dbg !5333
  %14 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5334
  %dy = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1, !dbg !5335
  %15 = load i32, i32* %dy, align 4, !dbg !5335
  %16 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5336
  %dx = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %16, i32 0, i32 0, !dbg !5337
  %17 = load i32, i32* %dx, align 4, !dbg !5337
  %18 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5338
  %height = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %18, i32 0, i32 3, !dbg !5339
  %19 = load i32, i32* %height, align 4, !dbg !5339
  %20 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5340
  %width = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %20, i32 0, i32 2, !dbg !5341
  %21 = load i32, i32* %width, align 4, !dbg !5341
  call void @matroxfb_cfb4_clear(%struct.matrox_fb_info* %7, i32 %13, i32 %15, i32 %17, i32 %19, i32 %21) #4, !dbg !5342
  br label %sw.epilog, !dbg !5343

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void, !dbg !5344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matrox_cfb8_pal(i32* %pal) #0 !dbg !5345 {
entry:
  %pal.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %pal, i32** %pal.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pal.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5348, metadata !DIExpression()), !dbg !5349
  store i32 0, i32* %i, align 4, !dbg !5350
  br label %for.cond, !dbg !5352

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5353
  %cmp = icmp ult i32 %0, 16, !dbg !5355
  br i1 %cmp, label %for.body, label %for.end, !dbg !5356

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5357
  %mul = mul i32 %1, 16843009, !dbg !5359
  %2 = load i32*, i32** %pal.addr, align 8, !dbg !5360
  %3 = load i32, i32* %i, align 4, !dbg !5361
  %idxprom = zext i32 %3 to i64, !dbg !5360
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !5360
  store i32 %mul, i32* %arrayidx, align 4, !dbg !5362
  br label %for.inc, !dbg !5363

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !5364
  %inc = add i32 %4, 1, !dbg !5364
  store i32 %inc, i32* %i, align 4, !dbg !5364
  br label %for.cond, !dbg !5365, !llvm.loop !5366

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_copyarea(%struct.fb_info* %info, %struct.fb_copyarea* %area) #0 !dbg !5369 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %area.addr = alloca %struct.fb_copyarea*, align 8
  %minfo = alloca %struct.matrox_fb_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  store %struct.fb_copyarea* %area, %struct.fb_copyarea** %area.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_copyarea** %area.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo, metadata !5374, metadata !DIExpression()), !dbg !5375
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5376, metadata !DIExpression()), !dbg !5378
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5378
  %1 = bitcast %struct.fb_info* %0 to i8*, !dbg !5378
  store i8* %1, i8** %__mptr, align 8, !dbg !5378
  br label %do.body, !dbg !5378

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5379

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5378
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5378
  %3 = bitcast i8* %add.ptr to %struct.matrox_fb_info*, !dbg !5378
  store %struct.matrox_fb_info* %3, %struct.matrox_fb_info** %tmp, align 8, !dbg !5379
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %tmp, align 8, !dbg !5378
  store %struct.matrox_fb_info* %4, %struct.matrox_fb_info** %minfo, align 8, !dbg !5375
  %5 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo, align 8, !dbg !5381
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo, align 8, !dbg !5382
  %fbcon = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 0, !dbg !5383
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon, i32 0, i32 6, !dbg !5384
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5385
  %7 = load i32, i32* %xres_virtual, align 8, !dbg !5385
  %8 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5386
  %sy = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %8, i32 0, i32 5, !dbg !5387
  %9 = load i32, i32* %sy, align 4, !dbg !5387
  %10 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5388
  %sx = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %10, i32 0, i32 4, !dbg !5389
  %11 = load i32, i32* %sx, align 4, !dbg !5389
  %12 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5390
  %dy = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %12, i32 0, i32 1, !dbg !5391
  %13 = load i32, i32* %dy, align 4, !dbg !5391
  %14 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5392
  %dx = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %14, i32 0, i32 0, !dbg !5393
  %15 = load i32, i32* %dx, align 4, !dbg !5393
  %16 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5394
  %height = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %16, i32 0, i32 3, !dbg !5395
  %17 = load i32, i32* %height, align 4, !dbg !5395
  %18 = load %struct.fb_copyarea*, %struct.fb_copyarea** %area.addr, align 8, !dbg !5396
  %width = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 2, !dbg !5397
  %19 = load i32, i32* %width, align 4, !dbg !5397
  call void @matrox_accel_bmove(%struct.matrox_fb_info* %5, i32 %7, i32 %9, i32 %11, i32 %13, i32 %15, i32 %17, i32 %19) #4, !dbg !5398
  ret void, !dbg !5399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_fillrect(%struct.fb_info* %info, %struct.fb_fillrect* %rect) #0 !dbg !5400 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %rect.addr = alloca %struct.fb_fillrect*, align 8
  %minfo = alloca %struct.matrox_fb_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.matrox_fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store %struct.fb_fillrect* %rect, %struct.fb_fillrect** %rect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_fillrect** %rect.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo, metadata !5405, metadata !DIExpression()), !dbg !5406
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5407, metadata !DIExpression()), !dbg !5409
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5409
  %1 = bitcast %struct.fb_info* %0 to i8*, !dbg !5409
  store i8* %1, i8** %__mptr, align 8, !dbg !5409
  br label %do.body, !dbg !5409

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5410

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5409
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5409
  %3 = bitcast i8* %add.ptr to %struct.matrox_fb_info*, !dbg !5409
  store %struct.matrox_fb_info* %3, %struct.matrox_fb_info** %tmp, align 8, !dbg !5410
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %tmp, align 8, !dbg !5409
  store %struct.matrox_fb_info* %4, %struct.matrox_fb_info** %minfo, align 8, !dbg !5406
  %5 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5412
  %rop = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 5, !dbg !5413
  %6 = load i32, i32* %rop, align 4, !dbg !5413
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
  ], !dbg !5414

sw.bb:                                            ; preds = %do.end
  %7 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo, align 8, !dbg !5415
  %8 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5417
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 27, !dbg !5418
  %9 = load i8*, i8** %pseudo_palette, align 8, !dbg !5418
  %10 = bitcast i8* %9 to i32*, !dbg !5419
  %11 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5420
  %color = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 4, !dbg !5421
  %12 = load i32, i32* %color, align 4, !dbg !5421
  %idxprom = zext i32 %12 to i64, !dbg !5422
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom, !dbg !5422
  %13 = load i32, i32* %arrayidx, align 4, !dbg !5422
  %14 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5423
  %dy = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1, !dbg !5424
  %15 = load i32, i32* %dy, align 4, !dbg !5424
  %16 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5425
  %dx = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %16, i32 0, i32 0, !dbg !5426
  %17 = load i32, i32* %dx, align 4, !dbg !5426
  %18 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5427
  %height = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %18, i32 0, i32 3, !dbg !5428
  %19 = load i32, i32* %height, align 4, !dbg !5428
  %20 = load %struct.fb_fillrect*, %struct.fb_fillrect** %rect.addr, align 8, !dbg !5429
  %width = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %20, i32 0, i32 2, !dbg !5430
  %21 = load i32, i32* %width, align 4, !dbg !5430
  call void @matroxfb_accel_clear(%struct.matrox_fb_info* %7, i32 %13, i32 %15, i32 %17, i32 %19, i32 %21) #4, !dbg !5431
  br label %sw.epilog, !dbg !5432

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void, !dbg !5433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_imageblit(%struct.fb_info* %info, %struct.fb_image* %image) #0 !dbg !5434 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %image.addr = alloca %struct.fb_image*, align 8
  %minfo = alloca %struct.matrox_fb_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.matrox_fb_info*, align 8
  %fgx = alloca i32, align 4
  %bgx = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  store %struct.fb_image* %image, %struct.fb_image** %image.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_image** %image.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5441, metadata !DIExpression()), !dbg !5443
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5443
  %1 = bitcast %struct.fb_info* %0 to i8*, !dbg !5443
  store i8* %1, i8** %__mptr, align 8, !dbg !5443
  br label %do.body, !dbg !5443

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5444

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5443
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5443
  %3 = bitcast i8* %add.ptr to %struct.matrox_fb_info*, !dbg !5443
  store %struct.matrox_fb_info* %3, %struct.matrox_fb_info** %tmp, align 8, !dbg !5444
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %tmp, align 8, !dbg !5443
  store %struct.matrox_fb_info* %4, %struct.matrox_fb_info** %minfo, align 8, !dbg !5440
  %5 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5446
  %depth = getelementptr inbounds %struct.fb_image, %struct.fb_image* %5, i32 0, i32 6, !dbg !5448
  %6 = load i8, i8* %depth, align 8, !dbg !5448
  %conv = zext i8 %6 to i32, !dbg !5446
  %cmp = icmp eq i32 %conv, 1, !dbg !5449
  br i1 %cmp, label %if.then, label %if.else, !dbg !5450

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %fgx, metadata !5451, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata i32* %bgx, metadata !5454, metadata !DIExpression()), !dbg !5455
  %7 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5456
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 27, !dbg !5457
  %8 = load i8*, i8** %pseudo_palette, align 8, !dbg !5457
  %9 = bitcast i8* %8 to i32*, !dbg !5458
  %10 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5459
  %fg_color = getelementptr inbounds %struct.fb_image, %struct.fb_image* %10, i32 0, i32 4, !dbg !5460
  %11 = load i32, i32* %fg_color, align 8, !dbg !5460
  %idxprom = zext i32 %11 to i64, !dbg !5461
  %arrayidx = getelementptr i32, i32* %9, i64 %idxprom, !dbg !5461
  %12 = load i32, i32* %arrayidx, align 4, !dbg !5461
  store i32 %12, i32* %fgx, align 4, !dbg !5462
  %13 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5463
  %pseudo_palette2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 27, !dbg !5464
  %14 = load i8*, i8** %pseudo_palette2, align 8, !dbg !5464
  %15 = bitcast i8* %14 to i32*, !dbg !5465
  %16 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5466
  %bg_color = getelementptr inbounds %struct.fb_image, %struct.fb_image* %16, i32 0, i32 5, !dbg !5467
  %17 = load i32, i32* %bg_color, align 4, !dbg !5467
  %idxprom3 = zext i32 %17 to i64, !dbg !5468
  %arrayidx4 = getelementptr i32, i32* %15, i64 %idxprom3, !dbg !5468
  %18 = load i32, i32* %arrayidx4, align 4, !dbg !5468
  store i32 %18, i32* %bgx, align 4, !dbg !5469
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo, align 8, !dbg !5470
  %20 = load i32, i32* %fgx, align 4, !dbg !5471
  %21 = load i32, i32* %bgx, align 4, !dbg !5472
  %22 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5473
  %data = getelementptr inbounds %struct.fb_image, %struct.fb_image* %22, i32 0, i32 7, !dbg !5474
  %23 = load i8*, i8** %data, align 8, !dbg !5474
  %24 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5475
  %width = getelementptr inbounds %struct.fb_image, %struct.fb_image* %24, i32 0, i32 2, !dbg !5476
  %25 = load i32, i32* %width, align 8, !dbg !5476
  %26 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5477
  %height = getelementptr inbounds %struct.fb_image, %struct.fb_image* %26, i32 0, i32 3, !dbg !5478
  %27 = load i32, i32* %height, align 4, !dbg !5478
  %28 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5479
  %dy = getelementptr inbounds %struct.fb_image, %struct.fb_image* %28, i32 0, i32 1, !dbg !5480
  %29 = load i32, i32* %dy, align 4, !dbg !5480
  %30 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5481
  %dx = getelementptr inbounds %struct.fb_image, %struct.fb_image* %30, i32 0, i32 0, !dbg !5482
  %31 = load i32, i32* %dx, align 8, !dbg !5482
  call void @matroxfb_1bpp_imageblit(%struct.matrox_fb_info* %19, i32 %20, i32 %21, i8* %23, i32 %25, i32 %27, i32 %29, i32 %31) #4, !dbg !5483
  br label %if.end, !dbg !5484

if.else:                                          ; preds = %do.end
  %32 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5485
  %33 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !5487
  call void @cfb_imageblit(%struct.fb_info* %32, %struct.fb_image* %33) #4, !dbg !5488
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mga_readl(i8* %va.coerce, i32 %offs) #0 !dbg !5490 {
entry:
  %va = alloca %struct.vaddr_t, align 8
  %offs.addr = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0
  store i8* %va.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.vaddr_t* %va, metadata !5493, metadata !DIExpression()), !dbg !5494
  store i32 %offs, i32* %offs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offs.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  %vaddr = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0, !dbg !5497
  %0 = load i8*, i8** %vaddr, align 8, !dbg !5497
  %1 = load i32, i32* %offs.addr, align 4, !dbg !5498
  %idx.ext = zext i32 %1 to i64, !dbg !5499
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !5499
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !5500
  ret i32 %call, !dbg !5501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mga_writel(i8* %va.coerce, i32 %offs, i32 %value) #0 !dbg !5502 {
entry:
  %va = alloca %struct.vaddr_t, align 8
  %offs.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0
  store i8* %va.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.vaddr_t* %va, metadata !5505, metadata !DIExpression()), !dbg !5506
  store i32 %offs, i32* %offs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offs.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load i32, i32* %value.addr, align 4, !dbg !5511
  %vaddr = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0, !dbg !5512
  %1 = load i8*, i8** %vaddr, align 8, !dbg !5512
  %2 = load i32, i32* %offs.addr, align 4, !dbg !5513
  %idx.ext = zext i32 %2 to i64, !dbg !5514
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !5514
  call void @writel(i32 %0, i8* %add.ptr) #4, !dbg !5515
  ret void, !dbg !5516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !5517 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5526, metadata !DIExpression()), !dbg !5525
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5525
  %1 = bitcast i8* %0 to i32*, !dbg !5525
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !5525, !srcloc !5527
  store i32 %2, i32* %ret, align 4, !dbg !5525
  %3 = load i32, i32* %ret, align 4, !dbg !5525
  ret i32 %3, !dbg !5525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !5528 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5534, metadata !DIExpression()), !dbg !5533
  %0 = load i32, i32* %val.addr, align 4, !dbg !5533
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5533
  %2 = bitcast i8* %1 to i32*, !dbg !5533
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !5533, !srcloc !5535
  ret void, !dbg !5533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matrox_accel_bmove_lin(%struct.matrox_fb_info* %minfo, i32 %vxres, i32 %sy, i32 %sx, i32 %dy, i32 %dx, i32 %height, i32 %width) #0 !dbg !5536 {
entry:
  %minfo.addr = alloca %struct.matrox_fb_info*, align 8
  %vxres.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.matrox_fb_info* %minfo, %struct.matrox_fb_info** %minfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  store i32 %vxres, i32* %vxres.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vxres.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  store i32 %sy, i32* %sy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sy.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i32 %sx, i32* %sx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sx.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  store i32 %dy, i32* %dy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dy.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  store i32 %dx, i32* %dx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dx.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !5551, metadata !DIExpression()), !dbg !5552
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !5553, metadata !DIExpression()), !dbg !5554
  call void @llvm.dbg.declare(metadata i32* %start, metadata !5555, metadata !DIExpression()), !dbg !5556
  call void @llvm.dbg.declare(metadata i32* %end, metadata !5557, metadata !DIExpression()), !dbg !5558
  %0 = load i32, i32* %dy.addr, align 4, !dbg !5559
  %1 = load i32, i32* %sy.addr, align 4, !dbg !5561
  %cmp = icmp slt i32 %0, %1, !dbg !5562
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5563

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %dy.addr, align 4, !dbg !5564
  %3 = load i32, i32* %sy.addr, align 4, !dbg !5565
  %cmp1 = icmp eq i32 %2, %3, !dbg !5566
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !5567

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, i32* %dx.addr, align 4, !dbg !5568
  %5 = load i32, i32* %sx.addr, align 4, !dbg !5569
  %cmp2 = icmp sle i32 %4, %5, !dbg !5570
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5571

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %do.body, !dbg !5572

do.body:                                          ; preds = %do.cond, %if.then
  br label %do.cond, !dbg !5574

do.cond:                                          ; preds = %do.body
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5572
  %mmio = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 19, !dbg !5572
  %vbase = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio, i32 0, i32 1, !dbg !5572
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase, i32 0, i32 0, !dbg !5572
  %7 = load i8*, i8** %coerce.dive, align 8, !dbg !5572
  %call = call i32 @mga_readl(i8* %7, i32 7696) #4, !dbg !5572
  %and = and i32 %call, 255, !dbg !5572
  %cmp3 = icmp ult i32 %and, 4, !dbg !5572
  br i1 %cmp3, label %do.body, label %do.end, !dbg !5574, !llvm.loop !5576

do.end:                                           ; preds = %do.cond
  %8 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5577
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %8) #4, !dbg !5578
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5579
  %mmio4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %9, i32 0, i32 19, !dbg !5579
  %vbase5 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio4, i32 0, i32 1, !dbg !5579
  %coerce.dive6 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase5, i32 0, i32 0, !dbg !5579
  %10 = load i8*, i8** %coerce.dive6, align 8, !dbg !5579
  call void @mga_writel(i8* %10, i32 7168, i32 67919880) #4, !dbg !5579
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5580
  %mmio7 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %11, i32 0, i32 19, !dbg !5580
  %vbase8 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio7, i32 0, i32 1, !dbg !5580
  %12 = load i32, i32* %vxres.addr, align 4, !dbg !5580
  %coerce.dive9 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase8, i32 0, i32 0, !dbg !5580
  %13 = load i8*, i8** %coerce.dive9, align 8, !dbg !5580
  call void @mga_writel(i8* %13, i32 7284, i32 %12) #4, !dbg !5580
  %14 = load i32, i32* %width.addr, align 4, !dbg !5581
  %dec = add i32 %14, -1, !dbg !5581
  store i32 %dec, i32* %width.addr, align 4, !dbg !5581
  %15 = load i32, i32* %sy.addr, align 4, !dbg !5582
  %16 = load i32, i32* %vxres.addr, align 4, !dbg !5583
  %mul = mul i32 %15, %16, !dbg !5584
  %17 = load i32, i32* %sx.addr, align 4, !dbg !5585
  %add = add i32 %mul, %17, !dbg !5586
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5587
  %curr = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %18, i32 0, i32 7, !dbg !5587
  %ydstorg = getelementptr inbounds %struct.matroxfb_par, %struct.matroxfb_par* %curr, i32 0, i32 2, !dbg !5587
  %pixels = getelementptr inbounds %struct.anon.66, %struct.anon.66* %ydstorg, i32 0, i32 1, !dbg !5587
  %19 = load i32, i32* %pixels, align 4, !dbg !5587
  %add10 = add i32 %add, %19, !dbg !5588
  store i32 %add10, i32* %start, align 4, !dbg !5589
  %20 = load i32, i32* %start, align 4, !dbg !5590
  %21 = load i32, i32* %width.addr, align 4, !dbg !5591
  %add11 = add i32 %20, %21, !dbg !5592
  store i32 %add11, i32* %end, align 4, !dbg !5593
  br label %if.end, !dbg !5594

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  br label %do.body12, !dbg !5595

do.body12:                                        ; preds = %do.cond13, %if.else
  br label %do.cond13, !dbg !5597

do.cond13:                                        ; preds = %do.body12
  %22 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5595
  %mmio14 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %22, i32 0, i32 19, !dbg !5595
  %vbase15 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio14, i32 0, i32 1, !dbg !5595
  %coerce.dive16 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase15, i32 0, i32 0, !dbg !5595
  %23 = load i8*, i8** %coerce.dive16, align 8, !dbg !5595
  %call17 = call i32 @mga_readl(i8* %23, i32 7696) #4, !dbg !5595
  %and18 = and i32 %call17, 255, !dbg !5595
  %cmp19 = icmp ult i32 %and18, 5, !dbg !5595
  br i1 %cmp19, label %do.body12, label %do.end20, !dbg !5597, !llvm.loop !5599

do.end20:                                         ; preds = %do.cond13
  %24 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5600
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %24) #4, !dbg !5601
  %25 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5602
  %mmio21 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %25, i32 0, i32 19, !dbg !5602
  %vbase22 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio21, i32 0, i32 1, !dbg !5602
  %coerce.dive23 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase22, i32 0, i32 0, !dbg !5602
  %26 = load i8*, i8** %coerce.dive23, align 8, !dbg !5602
  call void @mga_writel(i8* %26, i32 7168, i32 67911688) #4, !dbg !5602
  %27 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5603
  %mmio24 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %27, i32 0, i32 19, !dbg !5603
  %vbase25 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio24, i32 0, i32 1, !dbg !5603
  %coerce.dive26 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase25, i32 0, i32 0, !dbg !5603
  %28 = load i8*, i8** %coerce.dive26, align 8, !dbg !5603
  call void @mga_writel(i8* %28, i32 7256, i32 5) #4, !dbg !5603
  %29 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5604
  %mmio27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %29, i32 0, i32 19, !dbg !5604
  %vbase28 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio27, i32 0, i32 1, !dbg !5604
  %30 = load i32, i32* %vxres.addr, align 4, !dbg !5604
  %sub = sub i32 0, %30, !dbg !5604
  %coerce.dive29 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase28, i32 0, i32 0, !dbg !5604
  %31 = load i8*, i8** %coerce.dive29, align 8, !dbg !5604
  call void @mga_writel(i8* %31, i32 7284, i32 %sub) #4, !dbg !5604
  %32 = load i32, i32* %width.addr, align 4, !dbg !5605
  %dec30 = add i32 %32, -1, !dbg !5605
  store i32 %dec30, i32* %width.addr, align 4, !dbg !5605
  %33 = load i32, i32* %sy.addr, align 4, !dbg !5606
  %34 = load i32, i32* %height.addr, align 4, !dbg !5607
  %add31 = add i32 %33, %34, !dbg !5608
  %sub32 = sub i32 %add31, 1, !dbg !5609
  %35 = load i32, i32* %vxres.addr, align 4, !dbg !5610
  %mul33 = mul i32 %sub32, %35, !dbg !5611
  %36 = load i32, i32* %sx.addr, align 4, !dbg !5612
  %add34 = add i32 %mul33, %36, !dbg !5613
  %37 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5614
  %curr35 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %37, i32 0, i32 7, !dbg !5614
  %ydstorg36 = getelementptr inbounds %struct.matroxfb_par, %struct.matroxfb_par* %curr35, i32 0, i32 2, !dbg !5614
  %pixels37 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %ydstorg36, i32 0, i32 1, !dbg !5614
  %38 = load i32, i32* %pixels37, align 4, !dbg !5614
  %add38 = add i32 %add34, %38, !dbg !5615
  store i32 %add38, i32* %end, align 4, !dbg !5616
  %39 = load i32, i32* %end, align 4, !dbg !5617
  %40 = load i32, i32* %width.addr, align 4, !dbg !5618
  %add39 = add i32 %39, %40, !dbg !5619
  store i32 %add39, i32* %start, align 4, !dbg !5620
  %41 = load i32, i32* %height.addr, align 4, !dbg !5621
  %sub40 = sub i32 %41, 1, !dbg !5622
  %42 = load i32, i32* %dy.addr, align 4, !dbg !5623
  %add41 = add i32 %42, %sub40, !dbg !5623
  store i32 %add41, i32* %dy.addr, align 4, !dbg !5623
  br label %if.end

if.end:                                           ; preds = %do.end20, %do.end
  br label %do.body42, !dbg !5624

do.body42:                                        ; preds = %do.cond43, %if.end
  br label %do.cond43, !dbg !5625

do.cond43:                                        ; preds = %do.body42
  %43 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5624
  %mmio44 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %43, i32 0, i32 19, !dbg !5624
  %vbase45 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio44, i32 0, i32 1, !dbg !5624
  %coerce.dive46 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase45, i32 0, i32 0, !dbg !5624
  %44 = load i8*, i8** %coerce.dive46, align 8, !dbg !5624
  %call47 = call i32 @mga_readl(i8* %44, i32 7696) #4, !dbg !5624
  %and48 = and i32 %call47, 255, !dbg !5624
  %cmp49 = icmp ult i32 %and48, 7, !dbg !5624
  br i1 %cmp49, label %do.body42, label %do.end50, !dbg !5625, !llvm.loop !5627

do.end50:                                         ; preds = %do.cond43
  %45 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5628
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %45) #4, !dbg !5629
  %46 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5630
  %mmio51 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %46, i32 0, i32 19, !dbg !5630
  %vbase52 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio51, i32 0, i32 1, !dbg !5630
  %47 = load i32, i32* %end, align 4, !dbg !5630
  %coerce.dive53 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase52, i32 0, i32 0, !dbg !5630
  %48 = load i8*, i8** %coerce.dive53, align 8, !dbg !5630
  call void @mga_writel(i8* %48, i32 7264, i32 %47) #4, !dbg !5630
  %49 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5631
  %mmio54 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %49, i32 0, i32 19, !dbg !5631
  %vbase55 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio54, i32 0, i32 1, !dbg !5631
  %50 = load i32, i32* %start, align 4, !dbg !5631
  %coerce.dive56 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase55, i32 0, i32 0, !dbg !5631
  %51 = load i8*, i8** %coerce.dive56, align 8, !dbg !5631
  call void @mga_writel(i8* %51, i32 7276, i32 %50) #4, !dbg !5631
  %52 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5632
  %mmio57 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %52, i32 0, i32 19, !dbg !5632
  %vbase58 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio57, i32 0, i32 1, !dbg !5632
  %53 = load i32, i32* %dx.addr, align 4, !dbg !5632
  %54 = load i32, i32* %width.addr, align 4, !dbg !5632
  %add59 = add i32 %53, %54, !dbg !5632
  %shl = shl i32 %add59, 16, !dbg !5632
  %55 = load i32, i32* %dx.addr, align 4, !dbg !5632
  %or = or i32 %shl, %55, !dbg !5632
  %coerce.dive60 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase58, i32 0, i32 0, !dbg !5632
  %56 = load i8*, i8** %coerce.dive60, align 8, !dbg !5632
  call void @mga_writel(i8* %56, i32 7300, i32 %or) #4, !dbg !5632
  %57 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5633
  %mmio61 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %57, i32 0, i32 19, !dbg !5633
  %vbase62 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio61, i32 0, i32 1, !dbg !5633
  %58 = load i32, i32* %dy.addr, align 4, !dbg !5633
  %59 = load i32, i32* %vxres.addr, align 4, !dbg !5633
  %mul63 = mul i32 %58, %59, !dbg !5633
  %shr = ashr i32 %mul63, 5, !dbg !5633
  %coerce.dive64 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase62, i32 0, i32 0, !dbg !5633
  %60 = load i8*, i8** %coerce.dive64, align 8, !dbg !5633
  call void @mga_writel(i8* %60, i32 7312, i32 %shr) #4, !dbg !5633
  %61 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5634
  %mmio65 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %61, i32 0, i32 19, !dbg !5634
  %vbase66 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio65, i32 0, i32 1, !dbg !5634
  %62 = load i32, i32* %height.addr, align 4, !dbg !5634
  %coerce.dive67 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase66, i32 0, i32 0, !dbg !5634
  %63 = load i8*, i8** %coerce.dive67, align 8, !dbg !5634
  call void @mga_writel(i8* %63, i32 7516, i32 %62) #4, !dbg !5634
  br label %do.body68, !dbg !5635

do.body68:                                        ; preds = %do.end50
  %64 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5636
  %mmio69 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %64, i32 0, i32 19, !dbg !5636
  %vbase70 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio69, i32 0, i32 1, !dbg !5636
  %coerce.dive71 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase70, i32 0, i32 0, !dbg !5636
  %65 = load i8*, i8** %coerce.dive71, align 8, !dbg !5636
  %call72 = call i32 @mga_readl(i8* %65, i32 7700) #4, !dbg !5636
  br label %do.body73, !dbg !5636

do.body73:                                        ; preds = %do.cond74, %do.body68
  br label %do.cond74, !dbg !5638

do.cond74:                                        ; preds = %do.body73
  %66 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5636
  %mmio75 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %66, i32 0, i32 19, !dbg !5636
  %vbase76 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio75, i32 0, i32 1, !dbg !5636
  %coerce.dive77 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase76, i32 0, i32 0, !dbg !5636
  %67 = load i8*, i8** %coerce.dive77, align 8, !dbg !5636
  %call78 = call i32 @mga_readl(i8* %67, i32 7700) #4, !dbg !5636
  %and79 = and i32 %call78, 65536, !dbg !5636
  %tobool = icmp ne i32 %and79, 0, !dbg !5638
  br i1 %tobool, label %do.body73, label %do.end80, !dbg !5638, !llvm.loop !5640

do.end80:                                         ; preds = %do.cond74
  br label %do.end82, !dbg !5636

do.end82:                                         ; preds = %do.end80
  ret void, !dbg !5641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %minfo) #0 !dbg !5642 {
entry:
  %minfo.addr = alloca %struct.matrox_fb_info*, align 8
  store %struct.matrox_fb_info* %minfo, %struct.matrox_fb_info** %minfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  %0 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5645
  %mmio = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %0, i32 0, i32 19, !dbg !5645
  %vbase = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio, i32 0, i32 1, !dbg !5645
  %1 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5645
  %accel = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %1, i32 0, i32 9, !dbg !5645
  %m_access = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel, i32 0, i32 2, !dbg !5645
  %2 = load i32, i32* %m_access, align 4, !dbg !5645
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase, i32 0, i32 0, !dbg !5645
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !5645
  call void @mga_writel(i8* %3, i32 7172, i32 %2) #4, !dbg !5645
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5646
  %mmio1 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %4, i32 0, i32 19, !dbg !5646
  %vbase2 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio1, i32 0, i32 1, !dbg !5646
  %5 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5646
  %accel3 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %5, i32 0, i32 9, !dbg !5646
  %m_pitch = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel3, i32 0, i32 3, !dbg !5646
  %6 = load i32, i32* %m_pitch, align 4, !dbg !5646
  %coerce.dive4 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase2, i32 0, i32 0, !dbg !5646
  %7 = load i8*, i8** %coerce.dive4, align 8, !dbg !5646
  call void @mga_writel(i8* %7, i32 7308, i32 %6) #4, !dbg !5646
  ret void, !dbg !5647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matrox_accel_bmove(%struct.matrox_fb_info* %minfo, i32 %vxres, i32 %sy, i32 %sx, i32 %dy, i32 %dx, i32 %height, i32 %width) #0 !dbg !5648 {
entry:
  %minfo.addr = alloca %struct.matrox_fb_info*, align 8
  %vxres.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.matrox_fb_info* %minfo, %struct.matrox_fb_info** %minfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  store i32 %vxres, i32* %vxres.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vxres.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  store i32 %sy, i32* %sy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sy.addr, metadata !5653, metadata !DIExpression()), !dbg !5654
  store i32 %sx, i32* %sx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sx.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  store i32 %dy, i32* %dy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dy.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i32 %dx, i32* %dx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dx.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.declare(metadata i32* %start, metadata !5665, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.declare(metadata i32* %end, metadata !5667, metadata !DIExpression()), !dbg !5668
  %0 = load i32, i32* %dy.addr, align 4, !dbg !5669
  %1 = load i32, i32* %sy.addr, align 4, !dbg !5671
  %cmp = icmp slt i32 %0, %1, !dbg !5672
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5673

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %dy.addr, align 4, !dbg !5674
  %3 = load i32, i32* %sy.addr, align 4, !dbg !5675
  %cmp1 = icmp eq i32 %2, %3, !dbg !5676
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !5677

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, i32* %dx.addr, align 4, !dbg !5678
  %5 = load i32, i32* %sx.addr, align 4, !dbg !5679
  %cmp2 = icmp sle i32 %4, %5, !dbg !5680
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5681

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %do.body, !dbg !5682

do.body:                                          ; preds = %do.cond, %if.then
  br label %do.cond, !dbg !5684

do.cond:                                          ; preds = %do.body
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5682
  %mmio = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 19, !dbg !5682
  %vbase = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio, i32 0, i32 1, !dbg !5682
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase, i32 0, i32 0, !dbg !5682
  %7 = load i8*, i8** %coerce.dive, align 8, !dbg !5682
  %call = call i32 @mga_readl(i8* %7, i32 7696) #4, !dbg !5682
  %and = and i32 %call, 255, !dbg !5682
  %cmp3 = icmp ult i32 %and, 4, !dbg !5682
  br i1 %cmp3, label %do.body, label %do.end, !dbg !5684, !llvm.loop !5686

do.end:                                           ; preds = %do.cond
  %8 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5687
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %8) #4, !dbg !5688
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5689
  %mmio4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %9, i32 0, i32 19, !dbg !5689
  %vbase5 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio4, i32 0, i32 1, !dbg !5689
  %coerce.dive6 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase5, i32 0, i32 0, !dbg !5689
  %10 = load i8*, i8** %coerce.dive6, align 8, !dbg !5689
  call void @mga_writel(i8* %10, i32 7168, i32 67919880) #4, !dbg !5689
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5690
  %mmio7 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %11, i32 0, i32 19, !dbg !5690
  %vbase8 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio7, i32 0, i32 1, !dbg !5690
  %12 = load i32, i32* %vxres.addr, align 4, !dbg !5690
  %coerce.dive9 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase8, i32 0, i32 0, !dbg !5690
  %13 = load i8*, i8** %coerce.dive9, align 8, !dbg !5690
  call void @mga_writel(i8* %13, i32 7284, i32 %12) #4, !dbg !5690
  %14 = load i32, i32* %width.addr, align 4, !dbg !5691
  %dec = add i32 %14, -1, !dbg !5691
  store i32 %dec, i32* %width.addr, align 4, !dbg !5691
  %15 = load i32, i32* %sy.addr, align 4, !dbg !5692
  %16 = load i32, i32* %vxres.addr, align 4, !dbg !5693
  %mul = mul i32 %15, %16, !dbg !5694
  %17 = load i32, i32* %sx.addr, align 4, !dbg !5695
  %add = add i32 %mul, %17, !dbg !5696
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5697
  %curr = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %18, i32 0, i32 7, !dbg !5697
  %ydstorg = getelementptr inbounds %struct.matroxfb_par, %struct.matroxfb_par* %curr, i32 0, i32 2, !dbg !5697
  %pixels = getelementptr inbounds %struct.anon.66, %struct.anon.66* %ydstorg, i32 0, i32 1, !dbg !5697
  %19 = load i32, i32* %pixels, align 4, !dbg !5697
  %add10 = add i32 %add, %19, !dbg !5698
  store i32 %add10, i32* %start, align 4, !dbg !5699
  %20 = load i32, i32* %start, align 4, !dbg !5700
  %21 = load i32, i32* %width.addr, align 4, !dbg !5701
  %add11 = add i32 %20, %21, !dbg !5702
  store i32 %add11, i32* %end, align 4, !dbg !5703
  br label %if.end, !dbg !5704

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  br label %do.body12, !dbg !5705

do.body12:                                        ; preds = %do.cond13, %if.else
  br label %do.cond13, !dbg !5707

do.cond13:                                        ; preds = %do.body12
  %22 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5705
  %mmio14 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %22, i32 0, i32 19, !dbg !5705
  %vbase15 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio14, i32 0, i32 1, !dbg !5705
  %coerce.dive16 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase15, i32 0, i32 0, !dbg !5705
  %23 = load i8*, i8** %coerce.dive16, align 8, !dbg !5705
  %call17 = call i32 @mga_readl(i8* %23, i32 7696) #4, !dbg !5705
  %and18 = and i32 %call17, 255, !dbg !5705
  %cmp19 = icmp ult i32 %and18, 5, !dbg !5705
  br i1 %cmp19, label %do.body12, label %do.end20, !dbg !5707, !llvm.loop !5709

do.end20:                                         ; preds = %do.cond13
  %24 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5710
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %24) #4, !dbg !5711
  %25 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5712
  %mmio21 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %25, i32 0, i32 19, !dbg !5712
  %vbase22 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio21, i32 0, i32 1, !dbg !5712
  %coerce.dive23 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase22, i32 0, i32 0, !dbg !5712
  %26 = load i8*, i8** %coerce.dive23, align 8, !dbg !5712
  call void @mga_writel(i8* %26, i32 7168, i32 67911688) #4, !dbg !5712
  %27 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5713
  %mmio24 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %27, i32 0, i32 19, !dbg !5713
  %vbase25 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio24, i32 0, i32 1, !dbg !5713
  %coerce.dive26 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase25, i32 0, i32 0, !dbg !5713
  %28 = load i8*, i8** %coerce.dive26, align 8, !dbg !5713
  call void @mga_writel(i8* %28, i32 7256, i32 5) #4, !dbg !5713
  %29 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5714
  %mmio27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %29, i32 0, i32 19, !dbg !5714
  %vbase28 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio27, i32 0, i32 1, !dbg !5714
  %30 = load i32, i32* %vxres.addr, align 4, !dbg !5714
  %sub = sub i32 0, %30, !dbg !5714
  %coerce.dive29 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase28, i32 0, i32 0, !dbg !5714
  %31 = load i8*, i8** %coerce.dive29, align 8, !dbg !5714
  call void @mga_writel(i8* %31, i32 7284, i32 %sub) #4, !dbg !5714
  %32 = load i32, i32* %width.addr, align 4, !dbg !5715
  %dec30 = add i32 %32, -1, !dbg !5715
  store i32 %dec30, i32* %width.addr, align 4, !dbg !5715
  %33 = load i32, i32* %sy.addr, align 4, !dbg !5716
  %34 = load i32, i32* %height.addr, align 4, !dbg !5717
  %add31 = add i32 %33, %34, !dbg !5718
  %sub32 = sub i32 %add31, 1, !dbg !5719
  %35 = load i32, i32* %vxres.addr, align 4, !dbg !5720
  %mul33 = mul i32 %sub32, %35, !dbg !5721
  %36 = load i32, i32* %sx.addr, align 4, !dbg !5722
  %add34 = add i32 %mul33, %36, !dbg !5723
  %37 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5724
  %curr35 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %37, i32 0, i32 7, !dbg !5724
  %ydstorg36 = getelementptr inbounds %struct.matroxfb_par, %struct.matroxfb_par* %curr35, i32 0, i32 2, !dbg !5724
  %pixels37 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %ydstorg36, i32 0, i32 1, !dbg !5724
  %38 = load i32, i32* %pixels37, align 4, !dbg !5724
  %add38 = add i32 %add34, %38, !dbg !5725
  store i32 %add38, i32* %end, align 4, !dbg !5726
  %39 = load i32, i32* %end, align 4, !dbg !5727
  %40 = load i32, i32* %width.addr, align 4, !dbg !5728
  %add39 = add i32 %39, %40, !dbg !5729
  store i32 %add39, i32* %start, align 4, !dbg !5730
  %41 = load i32, i32* %height.addr, align 4, !dbg !5731
  %sub40 = sub i32 %41, 1, !dbg !5732
  %42 = load i32, i32* %dy.addr, align 4, !dbg !5733
  %add41 = add i32 %42, %sub40, !dbg !5733
  store i32 %add41, i32* %dy.addr, align 4, !dbg !5733
  br label %if.end

if.end:                                           ; preds = %do.end20, %do.end
  br label %do.body42, !dbg !5734

do.body42:                                        ; preds = %do.cond43, %if.end
  br label %do.cond43, !dbg !5735

do.cond43:                                        ; preds = %do.body42
  %43 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5734
  %mmio44 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %43, i32 0, i32 19, !dbg !5734
  %vbase45 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio44, i32 0, i32 1, !dbg !5734
  %coerce.dive46 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase45, i32 0, i32 0, !dbg !5734
  %44 = load i8*, i8** %coerce.dive46, align 8, !dbg !5734
  %call47 = call i32 @mga_readl(i8* %44, i32 7696) #4, !dbg !5734
  %and48 = and i32 %call47, 255, !dbg !5734
  %cmp49 = icmp ult i32 %and48, 6, !dbg !5734
  br i1 %cmp49, label %do.body42, label %do.end50, !dbg !5735, !llvm.loop !5737

do.end50:                                         ; preds = %do.cond43
  %45 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5738
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %45) #4, !dbg !5739
  %46 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5740
  %mmio51 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %46, i32 0, i32 19, !dbg !5740
  %vbase52 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio51, i32 0, i32 1, !dbg !5740
  %47 = load i32, i32* %end, align 4, !dbg !5740
  %coerce.dive53 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase52, i32 0, i32 0, !dbg !5740
  %48 = load i8*, i8** %coerce.dive53, align 8, !dbg !5740
  call void @mga_writel(i8* %48, i32 7264, i32 %47) #4, !dbg !5740
  %49 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5741
  %mmio54 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %49, i32 0, i32 19, !dbg !5741
  %vbase55 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio54, i32 0, i32 1, !dbg !5741
  %50 = load i32, i32* %start, align 4, !dbg !5741
  %coerce.dive56 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase55, i32 0, i32 0, !dbg !5741
  %51 = load i8*, i8** %coerce.dive56, align 8, !dbg !5741
  call void @mga_writel(i8* %51, i32 7276, i32 %50) #4, !dbg !5741
  %52 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5742
  %mmio57 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %52, i32 0, i32 19, !dbg !5742
  %vbase58 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio57, i32 0, i32 1, !dbg !5742
  %53 = load i32, i32* %dx.addr, align 4, !dbg !5742
  %54 = load i32, i32* %width.addr, align 4, !dbg !5742
  %add59 = add i32 %53, %54, !dbg !5742
  %shl = shl i32 %add59, 16, !dbg !5742
  %55 = load i32, i32* %dx.addr, align 4, !dbg !5742
  %or = or i32 %shl, %55, !dbg !5742
  %coerce.dive60 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase58, i32 0, i32 0, !dbg !5742
  %56 = load i8*, i8** %coerce.dive60, align 8, !dbg !5742
  call void @mga_writel(i8* %56, i32 7300, i32 %or) #4, !dbg !5742
  %57 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5743
  %mmio61 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %57, i32 0, i32 19, !dbg !5743
  %vbase62 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio61, i32 0, i32 1, !dbg !5743
  %58 = load i32, i32* %dy.addr, align 4, !dbg !5743
  %shl63 = shl i32 %58, 16, !dbg !5743
  %59 = load i32, i32* %height.addr, align 4, !dbg !5743
  %or64 = or i32 %shl63, %59, !dbg !5743
  %coerce.dive65 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase62, i32 0, i32 0, !dbg !5743
  %60 = load i8*, i8** %coerce.dive65, align 8, !dbg !5743
  call void @mga_writel(i8* %60, i32 7560, i32 %or64) #4, !dbg !5743
  br label %do.body66, !dbg !5744

do.body66:                                        ; preds = %do.end50
  %61 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5745
  %mmio67 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %61, i32 0, i32 19, !dbg !5745
  %vbase68 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio67, i32 0, i32 1, !dbg !5745
  %coerce.dive69 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase68, i32 0, i32 0, !dbg !5745
  %62 = load i8*, i8** %coerce.dive69, align 8, !dbg !5745
  %call70 = call i32 @mga_readl(i8* %62, i32 7700) #4, !dbg !5745
  br label %do.body71, !dbg !5745

do.body71:                                        ; preds = %do.cond72, %do.body66
  br label %do.cond72, !dbg !5747

do.cond72:                                        ; preds = %do.body71
  %63 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5745
  %mmio73 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %63, i32 0, i32 19, !dbg !5745
  %vbase74 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio73, i32 0, i32 1, !dbg !5745
  %coerce.dive75 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase74, i32 0, i32 0, !dbg !5745
  %64 = load i8*, i8** %coerce.dive75, align 8, !dbg !5745
  %call76 = call i32 @mga_readl(i8* %64, i32 7700) #4, !dbg !5745
  %and77 = and i32 %call76, 65536, !dbg !5745
  %tobool = icmp ne i32 %and77, 0, !dbg !5747
  br i1 %tobool, label %do.body71, label %do.end78, !dbg !5747, !llvm.loop !5749

do.end78:                                         ; preds = %do.cond72
  br label %do.end80, !dbg !5745

do.end80:                                         ; preds = %do.end78
  ret void, !dbg !5750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_accel_clear(%struct.matrox_fb_info* %minfo, i32 %color, i32 %sy, i32 %sx, i32 %height, i32 %width) #0 !dbg !5751 {
entry:
  %minfo.addr = alloca %struct.matrox_fb_info*, align 8
  %color.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  store %struct.matrox_fb_info* %minfo, %struct.matrox_fb_info** %minfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !5756, metadata !DIExpression()), !dbg !5757
  store i32 %sy, i32* %sy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sy.addr, metadata !5758, metadata !DIExpression()), !dbg !5759
  store i32 %sx, i32* %sx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sx.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  br label %do.body, !dbg !5766

do.body:                                          ; preds = %do.cond, %entry
  br label %do.cond, !dbg !5767

do.cond:                                          ; preds = %do.body
  %0 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5766
  %mmio = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %0, i32 0, i32 19, !dbg !5766
  %vbase = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio, i32 0, i32 1, !dbg !5766
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase, i32 0, i32 0, !dbg !5766
  %1 = load i8*, i8** %coerce.dive, align 8, !dbg !5766
  %call = call i32 @mga_readl(i8* %1, i32 7696) #4, !dbg !5766
  %and = and i32 %call, 255, !dbg !5766
  %cmp = icmp ult i32 %and, 7, !dbg !5766
  br i1 %cmp, label %do.body, label %do.end, !dbg !5767, !llvm.loop !5769

do.end:                                           ; preds = %do.cond
  %2 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5770
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %2) #4, !dbg !5771
  %3 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5772
  %mmio1 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %3, i32 0, i32 19, !dbg !5772
  %vbase2 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio1, i32 0, i32 1, !dbg !5772
  %4 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5772
  %accel = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %4, i32 0, i32 9, !dbg !5772
  %m_dwg_rect = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel, i32 0, i32 0, !dbg !5772
  %5 = load i32, i32* %m_dwg_rect, align 4, !dbg !5772
  %or = or i32 %5, 786432, !dbg !5772
  %coerce.dive3 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase2, i32 0, i32 0, !dbg !5772
  %6 = load i8*, i8** %coerce.dive3, align 8, !dbg !5772
  call void @mga_writel(i8* %6, i32 7168, i32 %or) #4, !dbg !5772
  %7 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5773
  %mmio4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %7, i32 0, i32 19, !dbg !5773
  %vbase5 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio4, i32 0, i32 1, !dbg !5773
  %8 = load i32, i32* %color.addr, align 4, !dbg !5773
  %coerce.dive6 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase5, i32 0, i32 0, !dbg !5773
  %9 = load i8*, i8** %coerce.dive6, align 8, !dbg !5773
  call void @mga_writel(i8* %9, i32 7204, i32 %8) #4, !dbg !5773
  %10 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5774
  %mmio7 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %10, i32 0, i32 19, !dbg !5774
  %vbase8 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio7, i32 0, i32 1, !dbg !5774
  %11 = load i32, i32* %sx.addr, align 4, !dbg !5774
  %12 = load i32, i32* %width.addr, align 4, !dbg !5774
  %add = add i32 %11, %12, !dbg !5774
  %shl = shl i32 %add, 16, !dbg !5774
  %13 = load i32, i32* %sx.addr, align 4, !dbg !5774
  %or9 = or i32 %shl, %13, !dbg !5774
  %coerce.dive10 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase8, i32 0, i32 0, !dbg !5774
  %14 = load i8*, i8** %coerce.dive10, align 8, !dbg !5774
  call void @mga_writel(i8* %14, i32 7300, i32 %or9) #4, !dbg !5774
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5775
  %mmio11 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 19, !dbg !5775
  %vbase12 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio11, i32 0, i32 1, !dbg !5775
  %16 = load i32, i32* %sy.addr, align 4, !dbg !5775
  %shl13 = shl i32 %16, 16, !dbg !5775
  %17 = load i32, i32* %height.addr, align 4, !dbg !5775
  %or14 = or i32 %shl13, %17, !dbg !5775
  %coerce.dive15 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase12, i32 0, i32 0, !dbg !5775
  %18 = load i8*, i8** %coerce.dive15, align 8, !dbg !5775
  call void @mga_writel(i8* %18, i32 7560, i32 %or14) #4, !dbg !5775
  br label %do.body16, !dbg !5776

do.body16:                                        ; preds = %do.end
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5777
  %mmio17 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %19, i32 0, i32 19, !dbg !5777
  %vbase18 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio17, i32 0, i32 1, !dbg !5777
  %coerce.dive19 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase18, i32 0, i32 0, !dbg !5777
  %20 = load i8*, i8** %coerce.dive19, align 8, !dbg !5777
  %call20 = call i32 @mga_readl(i8* %20, i32 7700) #4, !dbg !5777
  br label %do.body21, !dbg !5777

do.body21:                                        ; preds = %do.cond22, %do.body16
  br label %do.cond22, !dbg !5779

do.cond22:                                        ; preds = %do.body21
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5777
  %mmio23 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %21, i32 0, i32 19, !dbg !5777
  %vbase24 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio23, i32 0, i32 1, !dbg !5777
  %coerce.dive25 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase24, i32 0, i32 0, !dbg !5777
  %22 = load i8*, i8** %coerce.dive25, align 8, !dbg !5777
  %call26 = call i32 @mga_readl(i8* %22, i32 7700) #4, !dbg !5777
  %and27 = and i32 %call26, 65536, !dbg !5777
  %tobool = icmp ne i32 %and27, 0, !dbg !5779
  br i1 %tobool, label %do.body21, label %do.end28, !dbg !5779, !llvm.loop !5781

do.end28:                                         ; preds = %do.cond22
  br label %do.end30, !dbg !5777

do.end30:                                         ; preds = %do.end28
  ret void, !dbg !5782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_cfb4_clear(%struct.matrox_fb_info* %minfo, i32 %bgx, i32 %sy, i32 %sx, i32 %height, i32 %width) #0 !dbg !5783 {
entry:
  %minfo.addr = alloca %struct.matrox_fb_info*, align 8
  %bgx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %whattodo = alloca i32, align 4
  %step = alloca i32, align 4
  %vbase53 = alloca %struct.vaddr_t, align 8
  %uaddr = alloca i32, align 4
  %loop = alloca i32, align 4
  %bgx2 = alloca i8, align 1
  %uaddr76 = alloca i32, align 4
  %loop80 = alloca i32, align 4
  %bgx281 = alloca i8, align 1
  store %struct.matrox_fb_info* %minfo, %struct.matrox_fb_info** %minfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  store i32 %bgx, i32* %bgx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bgx.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store i32 %sy, i32* %sy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sy.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  store i32 %sx, i32* %sx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sx.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  call void @llvm.dbg.declare(metadata i32* %whattodo, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i32 0, i32* %whattodo, align 4, !dbg !5798
  %0 = load i32, i32* %sx.addr, align 4, !dbg !5799
  %and = and i32 %0, 1, !dbg !5801
  %tobool = icmp ne i32 %and, 0, !dbg !5801
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5802

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %sx.addr, align 4, !dbg !5803
  %inc = add i32 %1, 1, !dbg !5803
  store i32 %inc, i32* %sx.addr, align 4, !dbg !5803
  %2 = load i32, i32* %width.addr, align 4, !dbg !5805
  %tobool1 = icmp ne i32 %2, 0, !dbg !5805
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5807

if.then2:                                         ; preds = %if.then
  br label %if.end100, !dbg !5808

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* %width.addr, align 4, !dbg !5809
  %dec = add i32 %3, -1, !dbg !5809
  store i32 %dec, i32* %width.addr, align 4, !dbg !5809
  store i32 1, i32* %whattodo, align 4, !dbg !5810
  br label %if.end3, !dbg !5811

if.end3:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* %width.addr, align 4, !dbg !5812
  %and4 = and i32 %4, 1, !dbg !5814
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5814
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5815

if.then6:                                         ; preds = %if.end3
  %5 = load i32, i32* %whattodo, align 4, !dbg !5816
  %or = or i32 %5, 2, !dbg !5816
  store i32 %or, i32* %whattodo, align 4, !dbg !5816
  br label %if.end7, !dbg !5818

if.end7:                                          ; preds = %if.then6, %if.end3
  %6 = load i32, i32* %width.addr, align 4, !dbg !5819
  %shr = ashr i32 %6, 1, !dbg !5819
  store i32 %shr, i32* %width.addr, align 4, !dbg !5819
  %7 = load i32, i32* %sx.addr, align 4, !dbg !5820
  %shr8 = ashr i32 %7, 1, !dbg !5820
  store i32 %shr8, i32* %sx.addr, align 4, !dbg !5820
  %8 = load i32, i32* %width.addr, align 4, !dbg !5821
  %tobool9 = icmp ne i32 %8, 0, !dbg !5821
  br i1 %tobool9, label %if.then10, label %if.end46, !dbg !5823

if.then10:                                        ; preds = %if.end7
  br label %do.body, !dbg !5824

do.body:                                          ; preds = %do.cond, %if.then10
  br label %do.cond, !dbg !5826

do.cond:                                          ; preds = %do.body
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5824
  %mmio = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %9, i32 0, i32 19, !dbg !5824
  %vbase = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio, i32 0, i32 1, !dbg !5824
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase, i32 0, i32 0, !dbg !5824
  %10 = load i8*, i8** %coerce.dive, align 8, !dbg !5824
  %call = call i32 @mga_readl(i8* %10, i32 7696) #4, !dbg !5824
  %and11 = and i32 %call, 255, !dbg !5824
  %cmp = icmp ult i32 %and11, 7, !dbg !5824
  br i1 %cmp, label %do.body, label %do.end, !dbg !5826, !llvm.loop !5828

do.end:                                           ; preds = %do.cond
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5829
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %11) #4, !dbg !5830
  %12 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5831
  %mmio12 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %12, i32 0, i32 19, !dbg !5831
  %vbase13 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio12, i32 0, i32 1, !dbg !5831
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5831
  %accel = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %13, i32 0, i32 9, !dbg !5831
  %m_dwg_rect = getelementptr inbounds %struct.matrox_accel_data, %struct.matrox_accel_data* %accel, i32 0, i32 0, !dbg !5831
  %14 = load i32, i32* %m_dwg_rect, align 4, !dbg !5831
  %or14 = or i32 %14, 786496, !dbg !5831
  %coerce.dive15 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase13, i32 0, i32 0, !dbg !5831
  %15 = load i8*, i8** %coerce.dive15, align 8, !dbg !5831
  call void @mga_writel(i8* %15, i32 7168, i32 %or14) #4, !dbg !5831
  %16 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5832
  %mmio16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %16, i32 0, i32 19, !dbg !5832
  %vbase17 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio16, i32 0, i32 1, !dbg !5832
  %17 = load i32, i32* %bgx.addr, align 4, !dbg !5832
  %coerce.dive18 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase17, i32 0, i32 0, !dbg !5832
  %18 = load i8*, i8** %coerce.dive18, align 8, !dbg !5832
  call void @mga_writel(i8* %18, i32 7204, i32 %17) #4, !dbg !5832
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5833
  %mmio19 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %19, i32 0, i32 19, !dbg !5833
  %vbase20 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio19, i32 0, i32 1, !dbg !5833
  %20 = load i32, i32* %sx.addr, align 4, !dbg !5833
  %21 = load i32, i32* %width.addr, align 4, !dbg !5833
  %add = add i32 %20, %21, !dbg !5833
  %shl = shl i32 %add, 16, !dbg !5833
  %22 = load i32, i32* %sx.addr, align 4, !dbg !5833
  %or21 = or i32 %shl, %22, !dbg !5833
  %coerce.dive22 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase20, i32 0, i32 0, !dbg !5833
  %23 = load i8*, i8** %coerce.dive22, align 8, !dbg !5833
  call void @mga_writel(i8* %23, i32 7300, i32 %or21) #4, !dbg !5833
  %24 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5834
  %mmio23 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %24, i32 0, i32 19, !dbg !5834
  %vbase24 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio23, i32 0, i32 1, !dbg !5834
  %25 = load i32, i32* %sy.addr, align 4, !dbg !5834
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5834
  %fbcon = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %26, i32 0, i32 0, !dbg !5834
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon, i32 0, i32 6, !dbg !5834
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 2, !dbg !5834
  %27 = load i32, i32* %xres_virtual, align 8, !dbg !5834
  %mul = mul i32 %25, %27, !dbg !5834
  %shr25 = lshr i32 %mul, 6, !dbg !5834
  %coerce.dive26 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase24, i32 0, i32 0, !dbg !5834
  %28 = load i8*, i8** %coerce.dive26, align 8, !dbg !5834
  call void @mga_writel(i8* %28, i32 7312, i32 %shr25) #4, !dbg !5834
  %29 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5835
  %mmio27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %29, i32 0, i32 19, !dbg !5835
  %vbase28 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio27, i32 0, i32 1, !dbg !5835
  %30 = load i32, i32* %height.addr, align 4, !dbg !5835
  %coerce.dive29 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase28, i32 0, i32 0, !dbg !5835
  %31 = load i8*, i8** %coerce.dive29, align 8, !dbg !5835
  call void @mga_writel(i8* %31, i32 7516, i32 %30) #4, !dbg !5835
  br label %do.body30, !dbg !5836

do.body30:                                        ; preds = %do.end
  %32 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5837
  %mmio31 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %32, i32 0, i32 19, !dbg !5837
  %vbase32 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio31, i32 0, i32 1, !dbg !5837
  %coerce.dive33 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase32, i32 0, i32 0, !dbg !5837
  %33 = load i8*, i8** %coerce.dive33, align 8, !dbg !5837
  %call34 = call i32 @mga_readl(i8* %33, i32 7700) #4, !dbg !5837
  br label %do.body35, !dbg !5837

do.body35:                                        ; preds = %do.cond36, %do.body30
  br label %do.cond36, !dbg !5839

do.cond36:                                        ; preds = %do.body35
  %34 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5837
  %mmio37 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %34, i32 0, i32 19, !dbg !5837
  %vbase38 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio37, i32 0, i32 1, !dbg !5837
  %coerce.dive39 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase38, i32 0, i32 0, !dbg !5837
  %35 = load i8*, i8** %coerce.dive39, align 8, !dbg !5837
  %call40 = call i32 @mga_readl(i8* %35, i32 7700) #4, !dbg !5837
  %and41 = and i32 %call40, 65536, !dbg !5837
  %tobool42 = icmp ne i32 %and41, 0, !dbg !5839
  br i1 %tobool42, label %do.body35, label %do.end43, !dbg !5839, !llvm.loop !5841

do.end43:                                         ; preds = %do.cond36
  br label %do.end45, !dbg !5837

do.end45:                                         ; preds = %do.end43
  br label %if.end46, !dbg !5842

if.end46:                                         ; preds = %do.end45, %if.end7
  %36 = load i32, i32* %whattodo, align 4, !dbg !5843
  %tobool47 = icmp ne i32 %36, 0, !dbg !5843
  br i1 %tobool47, label %if.then48, label %if.end100, !dbg !5845

if.then48:                                        ; preds = %if.end46
  call void @llvm.dbg.declare(metadata i32* %step, metadata !5846, metadata !DIExpression()), !dbg !5848
  %37 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5849
  %fbcon49 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %37, i32 0, i32 0, !dbg !5850
  %var50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %fbcon49, i32 0, i32 6, !dbg !5851
  %xres_virtual51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var50, i32 0, i32 2, !dbg !5852
  %38 = load i32, i32* %xres_virtual51, align 8, !dbg !5852
  %shr52 = lshr i32 %38, 1, !dbg !5853
  store i32 %shr52, i32* %step, align 4, !dbg !5848
  call void @llvm.dbg.declare(metadata %struct.vaddr_t* %vbase53, metadata !5854, metadata !DIExpression()), !dbg !5855
  %39 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !5856
  %video = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %39, i32 0, i32 18, !dbg !5857
  %vbase54 = getelementptr inbounds %struct.anon.73, %struct.anon.73* %video, i32 0, i32 1, !dbg !5858
  %40 = bitcast %struct.vaddr_t* %vbase53 to i8*, !dbg !5858
  %41 = bitcast %struct.vaddr_t* %vbase54 to i8*, !dbg !5858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false), !dbg !5858
  %42 = load i32, i32* %whattodo, align 4, !dbg !5859
  %and55 = and i32 %42, 1, !dbg !5861
  %tobool56 = icmp ne i32 %and55, 0, !dbg !5861
  br i1 %tobool56, label %if.then57, label %if.end72, !dbg !5862

if.then57:                                        ; preds = %if.then48
  call void @llvm.dbg.declare(metadata i32* %uaddr, metadata !5863, metadata !DIExpression()), !dbg !5865
  %43 = load i32, i32* %sy.addr, align 4, !dbg !5866
  %44 = load i32, i32* %step, align 4, !dbg !5867
  %mul58 = mul i32 %43, %44, !dbg !5868
  %45 = load i32, i32* %sx.addr, align 4, !dbg !5869
  %add59 = add i32 %mul58, %45, !dbg !5870
  %sub = sub i32 %add59, 1, !dbg !5871
  store i32 %sub, i32* %uaddr, align 4, !dbg !5865
  call void @llvm.dbg.declare(metadata i32* %loop, metadata !5872, metadata !DIExpression()), !dbg !5873
  call void @llvm.dbg.declare(metadata i8* %bgx2, metadata !5874, metadata !DIExpression()), !dbg !5875
  %46 = load i32, i32* %bgx.addr, align 4, !dbg !5876
  %and60 = and i32 %46, 240, !dbg !5877
  %conv = trunc i32 %and60 to i8, !dbg !5876
  store i8 %conv, i8* %bgx2, align 1, !dbg !5875
  %47 = load i32, i32* %height.addr, align 4, !dbg !5878
  store i32 %47, i32* %loop, align 4, !dbg !5880
  br label %for.cond, !dbg !5881

for.cond:                                         ; preds = %for.inc, %if.then57
  %48 = load i32, i32* %loop, align 4, !dbg !5882
  %cmp61 = icmp ugt i32 %48, 0, !dbg !5884
  br i1 %cmp61, label %for.body, label %for.end, !dbg !5885

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %uaddr, align 4, !dbg !5886
  %50 = load i32, i32* %uaddr, align 4, !dbg !5888
  %coerce.dive63 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase53, i32 0, i32 0, !dbg !5889
  %51 = load i8*, i8** %coerce.dive63, align 8, !dbg !5889
  %call64 = call i32 @mga_readb(i8* %51, i32 %50) #4, !dbg !5889
  %and65 = and i32 %call64, 15, !dbg !5890
  %52 = load i8, i8* %bgx2, align 1, !dbg !5891
  %conv66 = zext i8 %52 to i32, !dbg !5891
  %or67 = or i32 %and65, %conv66, !dbg !5892
  %conv68 = trunc i32 %or67 to i8, !dbg !5893
  %coerce.dive69 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase53, i32 0, i32 0, !dbg !5894
  %53 = load i8*, i8** %coerce.dive69, align 8, !dbg !5894
  call void @mga_writeb(i8* %53, i32 %49, i8 zeroext %conv68) #4, !dbg !5894
  %54 = load i32, i32* %step, align 4, !dbg !5895
  %55 = load i32, i32* %uaddr, align 4, !dbg !5896
  %add70 = add i32 %55, %54, !dbg !5896
  store i32 %add70, i32* %uaddr, align 4, !dbg !5896
  br label %for.inc, !dbg !5897

for.inc:                                          ; preds = %for.body
  %56 = load i32, i32* %loop, align 4, !dbg !5898
  %dec71 = add i32 %56, -1, !dbg !5898
  store i32 %dec71, i32* %loop, align 4, !dbg !5898
  br label %for.cond, !dbg !5899, !llvm.loop !5900

for.end:                                          ; preds = %for.cond
  br label %if.end72, !dbg !5902

if.end72:                                         ; preds = %for.end, %if.then48
  %57 = load i32, i32* %whattodo, align 4, !dbg !5903
  %and73 = and i32 %57, 2, !dbg !5905
  %tobool74 = icmp ne i32 %and73, 0, !dbg !5905
  br i1 %tobool74, label %if.then75, label %if.end99, !dbg !5906

if.then75:                                        ; preds = %if.end72
  call void @llvm.dbg.declare(metadata i32* %uaddr76, metadata !5907, metadata !DIExpression()), !dbg !5909
  %58 = load i32, i32* %sy.addr, align 4, !dbg !5910
  %59 = load i32, i32* %step, align 4, !dbg !5911
  %mul77 = mul i32 %58, %59, !dbg !5912
  %60 = load i32, i32* %sx.addr, align 4, !dbg !5913
  %add78 = add i32 %mul77, %60, !dbg !5914
  %61 = load i32, i32* %width.addr, align 4, !dbg !5915
  %add79 = add i32 %add78, %61, !dbg !5916
  store i32 %add79, i32* %uaddr76, align 4, !dbg !5909
  call void @llvm.dbg.declare(metadata i32* %loop80, metadata !5917, metadata !DIExpression()), !dbg !5918
  call void @llvm.dbg.declare(metadata i8* %bgx281, metadata !5919, metadata !DIExpression()), !dbg !5920
  %62 = load i32, i32* %bgx.addr, align 4, !dbg !5921
  %and82 = and i32 %62, 15, !dbg !5922
  %conv83 = trunc i32 %and82 to i8, !dbg !5921
  store i8 %conv83, i8* %bgx281, align 1, !dbg !5920
  %63 = load i32, i32* %height.addr, align 4, !dbg !5923
  store i32 %63, i32* %loop80, align 4, !dbg !5925
  br label %for.cond84, !dbg !5926

for.cond84:                                       ; preds = %for.inc96, %if.then75
  %64 = load i32, i32* %loop80, align 4, !dbg !5927
  %cmp85 = icmp ugt i32 %64, 0, !dbg !5929
  br i1 %cmp85, label %for.body87, label %for.end98, !dbg !5930

for.body87:                                       ; preds = %for.cond84
  %65 = load i32, i32* %uaddr76, align 4, !dbg !5931
  %66 = load i32, i32* %uaddr76, align 4, !dbg !5933
  %coerce.dive88 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase53, i32 0, i32 0, !dbg !5934
  %67 = load i8*, i8** %coerce.dive88, align 8, !dbg !5934
  %call89 = call i32 @mga_readb(i8* %67, i32 %66) #4, !dbg !5934
  %and90 = and i32 %call89, 240, !dbg !5935
  %68 = load i8, i8* %bgx281, align 1, !dbg !5936
  %conv91 = zext i8 %68 to i32, !dbg !5936
  %or92 = or i32 %and90, %conv91, !dbg !5937
  %conv93 = trunc i32 %or92 to i8, !dbg !5938
  %coerce.dive94 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase53, i32 0, i32 0, !dbg !5939
  %69 = load i8*, i8** %coerce.dive94, align 8, !dbg !5939
  call void @mga_writeb(i8* %69, i32 %65, i8 zeroext %conv93) #4, !dbg !5939
  %70 = load i32, i32* %step, align 4, !dbg !5940
  %71 = load i32, i32* %uaddr76, align 4, !dbg !5941
  %add95 = add i32 %71, %70, !dbg !5941
  store i32 %add95, i32* %uaddr76, align 4, !dbg !5941
  br label %for.inc96, !dbg !5942

for.inc96:                                        ; preds = %for.body87
  %72 = load i32, i32* %loop80, align 4, !dbg !5943
  %dec97 = add i32 %72, -1, !dbg !5943
  store i32 %dec97, i32* %loop80, align 4, !dbg !5943
  br label %for.cond84, !dbg !5944, !llvm.loop !5945

for.end98:                                        ; preds = %for.cond84
  br label %if.end99, !dbg !5947

if.end99:                                         ; preds = %for.end98, %if.end72
  br label %if.end100, !dbg !5948

if.end100:                                        ; preds = %if.then2, %if.end99, %if.end46
  ret void, !dbg !5949
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mga_writeb(i8* %va.coerce, i32 %offs, i8 zeroext %value) #0 !dbg !5950 {
entry:
  %va = alloca %struct.vaddr_t, align 8
  %offs.addr = alloca i32, align 4
  %value.addr = alloca i8, align 1
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0
  store i8* %va.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.vaddr_t* %va, metadata !5953, metadata !DIExpression()), !dbg !5954
  store i32 %offs, i32* %offs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offs.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  %0 = load i8, i8* %value.addr, align 1, !dbg !5959
  %vaddr = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0, !dbg !5960
  %1 = load i8*, i8** %vaddr, align 8, !dbg !5960
  %2 = load i32, i32* %offs.addr, align 4, !dbg !5961
  %idx.ext = zext i32 %2 to i64, !dbg !5962
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !5962
  call void @writeb(i8 zeroext %0, i8* %add.ptr) #4, !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mga_readb(i8* %va.coerce, i32 %offs) #0 !dbg !5965 {
entry:
  %va = alloca %struct.vaddr_t, align 8
  %offs.addr = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0
  store i8* %va.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.vaddr_t* %va, metadata !5968, metadata !DIExpression()), !dbg !5969
  store i32 %offs, i32* %offs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offs.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  %vaddr = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0, !dbg !5972
  %0 = load i8*, i8** %vaddr, align 8, !dbg !5972
  %1 = load i32, i32* %offs.addr, align 4, !dbg !5973
  %idx.ext = zext i32 %1 to i64, !dbg !5974
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !5974
  %call = call zeroext i8 @readb(i8* %add.ptr) #4, !dbg !5975
  %conv = zext i8 %call to i32, !dbg !5975
  ret i32 %conv, !dbg !5976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !5977 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5982, metadata !DIExpression()), !dbg !5981
  %0 = load i8, i8* %val.addr, align 1, !dbg !5981
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5981
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #5, !dbg !5981, !srcloc !5983
  ret void, !dbg !5981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !5984 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5989, metadata !DIExpression()), !dbg !5988
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5988
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #5, !dbg !5988, !srcloc !5990
  store i8 %1, i8* %ret, align 1, !dbg !5988
  %2 = load i8, i8* %ret, align 1, !dbg !5988
  ret i8 %2, !dbg !5988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @matroxfb_1bpp_imageblit(%struct.matrox_fb_info* %minfo, i32 %fgx, i32 %bgx, i8* %chardata, i32 %width, i32 %height, i32 %yy, i32 %xx) #0 !dbg !5991 {
entry:
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !5996, metadata !DIExpression()), !dbg !6003
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !6021, metadata !DIExpression()), !dbg !6022
  %minfo.addr = alloca %struct.matrox_fb_info*, align 8
  %fgx.addr = alloca i32, align 4
  %bgx.addr = alloca i32, align 4
  %chardata.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %yy.addr = alloca i32, align 4
  %xx.addr = alloca i32, align 4
  %step = alloca i32, align 4
  %ydstlen = alloca i32, align 4
  %xlen = alloca i32, align 4
  %ar0 = alloca i32, align 4
  %charcell = alloca i32, align 4
  %fxbndry = alloca i32, align 4
  %mmio = alloca %struct.vaddr_t, align 8
  %easy = alloca i32, align 4
  %i = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.matrox_fb_info* %minfo, %struct.matrox_fb_info** %minfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.matrox_fb_info** %minfo.addr, metadata !6023, metadata !DIExpression()), !dbg !6024
  store i32 %fgx, i32* %fgx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fgx.addr, metadata !6025, metadata !DIExpression()), !dbg !6026
  store i32 %bgx, i32* %bgx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bgx.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  store i8* %chardata, i8** %chardata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %chardata.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !6033, metadata !DIExpression()), !dbg !6034
  store i32 %yy, i32* %yy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %yy.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  store i32 %xx, i32* %xx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %xx.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  call void @llvm.dbg.declare(metadata i32* %step, metadata !6039, metadata !DIExpression()), !dbg !6040
  call void @llvm.dbg.declare(metadata i32* %ydstlen, metadata !6041, metadata !DIExpression()), !dbg !6042
  call void @llvm.dbg.declare(metadata i32* %xlen, metadata !6043, metadata !DIExpression()), !dbg !6044
  call void @llvm.dbg.declare(metadata i32* %ar0, metadata !6045, metadata !DIExpression()), !dbg !6046
  call void @llvm.dbg.declare(metadata i32* %charcell, metadata !6047, metadata !DIExpression()), !dbg !6048
  call void @llvm.dbg.declare(metadata i32* %fxbndry, metadata !6049, metadata !DIExpression()), !dbg !6050
  call void @llvm.dbg.declare(metadata %struct.vaddr_t* %mmio, metadata !6051, metadata !DIExpression()), !dbg !6052
  call void @llvm.dbg.declare(metadata i32* %easy, metadata !6053, metadata !DIExpression()), !dbg !6054
  %0 = load i32, i32* %width.addr, align 4, !dbg !6055
  %add = add i32 %0, 7, !dbg !6056
  %shr = ashr i32 %add, 3, !dbg !6057
  store i32 %shr, i32* %step, align 4, !dbg !6058
  %1 = load i32, i32* %height.addr, align 4, !dbg !6059
  %2 = load i32, i32* %step, align 4, !dbg !6060
  %mul = mul i32 %1, %2, !dbg !6061
  store i32 %mul, i32* %charcell, align 4, !dbg !6062
  %3 = load i32, i32* %charcell, align 4, !dbg !6063
  %add1 = add i32 %3, 3, !dbg !6064
  %and = and i32 %add1, -4, !dbg !6065
  store i32 %and, i32* %xlen, align 4, !dbg !6066
  %4 = load i32, i32* %yy.addr, align 4, !dbg !6067
  %shl = shl i32 %4, 16, !dbg !6068
  %5 = load i32, i32* %height.addr, align 4, !dbg !6069
  %or = or i32 %shl, %5, !dbg !6070
  store i32 %or, i32* %ydstlen, align 4, !dbg !6071
  %6 = load i32, i32* %width.addr, align 4, !dbg !6072
  %7 = load i32, i32* %step, align 4, !dbg !6074
  %shl2 = shl i32 %7, 3, !dbg !6075
  %cmp = icmp eq i32 %6, %shl2, !dbg !6076
  br i1 %cmp, label %if.then, label %if.else, !dbg !6077

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %height.addr, align 4, !dbg !6078
  %9 = load i32, i32* %width.addr, align 4, !dbg !6080
  %mul3 = mul i32 %8, %9, !dbg !6081
  %sub = sub i32 %mul3, 1, !dbg !6082
  store i32 %sub, i32* %ar0, align 4, !dbg !6083
  store i32 1, i32* %easy, align 4, !dbg !6084
  br label %if.end, !dbg !6085

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %width.addr, align 4, !dbg !6086
  %sub4 = sub i32 %10, 1, !dbg !6088
  store i32 %sub4, i32* %ar0, align 4, !dbg !6089
  store i32 0, i32* %easy, align 4, !dbg !6090
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body, !dbg !6091

do.body:                                          ; preds = %do.cond, %if.end
  br label %do.cond, !dbg !6092

do.cond:                                          ; preds = %do.body
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6091
  %mmio5 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %11, i32 0, i32 19, !dbg !6091
  %vbase = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio5, i32 0, i32 1, !dbg !6091
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase, i32 0, i32 0, !dbg !6091
  %12 = load i8*, i8** %coerce.dive, align 8, !dbg !6091
  %call = call i32 @mga_readl(i8* %12, i32 7696) #4, !dbg !6091
  %and6 = and i32 %call, 255, !dbg !6091
  %cmp7 = icmp ult i32 %and6, 5, !dbg !6091
  br i1 %cmp7, label %do.body, label %do.end, !dbg !6092, !llvm.loop !6094

do.end:                                           ; preds = %do.cond
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6095
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %13) #4, !dbg !6096
  %14 = load i32, i32* %easy, align 4, !dbg !6097
  %tobool = icmp ne i32 %14, 0, !dbg !6097
  br i1 %tobool, label %if.then8, label %if.else12, !dbg !6099

if.then8:                                         ; preds = %do.end
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6100
  %mmio9 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 19, !dbg !6100
  %vbase10 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio9, i32 0, i32 1, !dbg !6100
  %coerce.dive11 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase10, i32 0, i32 0, !dbg !6100
  %16 = load i8*, i8** %coerce.dive11, align 8, !dbg !6100
  call void @mga_writel(i8* %16, i32 7168, i32 135028873) #4, !dbg !6100
  br label %if.end16, !dbg !6100

if.else12:                                        ; preds = %do.end
  %17 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6101
  %mmio13 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %17, i32 0, i32 19, !dbg !6101
  %vbase14 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio13, i32 0, i32 1, !dbg !6101
  %coerce.dive15 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase14, i32 0, i32 0, !dbg !6101
  %18 = load i8*, i8** %coerce.dive15, align 8, !dbg !6101
  call void @mga_writel(i8* %18, i32 7168, i32 135028745) #4, !dbg !6101
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then8
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6102
  %mmio17 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %19, i32 0, i32 19, !dbg !6102
  %vbase18 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio17, i32 0, i32 1, !dbg !6102
  %20 = load i32, i32* %fgx.addr, align 4, !dbg !6102
  %coerce.dive19 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase18, i32 0, i32 0, !dbg !6102
  %21 = load i8*, i8** %coerce.dive19, align 8, !dbg !6102
  call void @mga_writel(i8* %21, i32 7204, i32 %20) #4, !dbg !6102
  %22 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6103
  %mmio20 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %22, i32 0, i32 19, !dbg !6103
  %vbase21 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio20, i32 0, i32 1, !dbg !6103
  %23 = load i32, i32* %bgx.addr, align 4, !dbg !6103
  %coerce.dive22 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase21, i32 0, i32 0, !dbg !6103
  %24 = load i8*, i8** %coerce.dive22, align 8, !dbg !6103
  call void @mga_writel(i8* %24, i32 7200, i32 %23) #4, !dbg !6103
  %25 = load i32, i32* %xx.addr, align 4, !dbg !6104
  %26 = load i32, i32* %width.addr, align 4, !dbg !6105
  %add23 = add i32 %25, %26, !dbg !6106
  %sub24 = sub i32 %add23, 1, !dbg !6107
  %shl25 = shl i32 %sub24, 16, !dbg !6108
  %27 = load i32, i32* %xx.addr, align 4, !dbg !6109
  %or26 = or i32 %shl25, %27, !dbg !6110
  store i32 %or26, i32* %fxbndry, align 4, !dbg !6111
  %28 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6112
  %mmio27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %28, i32 0, i32 19, !dbg !6113
  %vbase28 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio27, i32 0, i32 1, !dbg !6114
  %29 = bitcast %struct.vaddr_t* %mmio to i8*, !dbg !6114
  %30 = bitcast %struct.vaddr_t* %vbase28 to i8*, !dbg !6114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false), !dbg !6114
  br label %do.body29, !dbg !6115

do.body29:                                        ; preds = %do.cond30, %if.end16
  br label %do.cond30, !dbg !6116

do.cond30:                                        ; preds = %do.body29
  %31 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6115
  %mmio31 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %31, i32 0, i32 19, !dbg !6115
  %vbase32 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio31, i32 0, i32 1, !dbg !6115
  %coerce.dive33 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase32, i32 0, i32 0, !dbg !6115
  %32 = load i8*, i8** %coerce.dive33, align 8, !dbg !6115
  %call34 = call i32 @mga_readl(i8* %32, i32 7696) #4, !dbg !6115
  %and35 = and i32 %call34, 255, !dbg !6115
  %cmp36 = icmp ult i32 %and35, 8, !dbg !6115
  br i1 %cmp36, label %do.body29, label %do.end37, !dbg !6116, !llvm.loop !6118

do.end37:                                         ; preds = %do.cond30
  %33 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6119
  call void @matrox_accel_restore_maccess(%struct.matrox_fb_info* %33) #4, !dbg !6120
  %34 = load i32, i32* %fxbndry, align 4, !dbg !6121
  %coerce.dive38 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6122
  %35 = load i8*, i8** %coerce.dive38, align 8, !dbg !6122
  call void @mga_writel(i8* %35, i32 7300, i32 %34) #4, !dbg !6122
  %36 = load i32, i32* %ar0, align 4, !dbg !6123
  %coerce.dive39 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6124
  %37 = load i8*, i8** %coerce.dive39, align 8, !dbg !6124
  call void @mga_writel(i8* %37, i32 7264, i32 %36) #4, !dbg !6124
  %coerce.dive40 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6125
  %38 = load i8*, i8** %coerce.dive40, align 8, !dbg !6125
  call void @mga_writel(i8* %38, i32 7276, i32 0) #4, !dbg !6125
  %39 = load i32, i32* %easy, align 4, !dbg !6126
  %tobool41 = icmp ne i32 %39, 0, !dbg !6126
  br i1 %tobool41, label %if.then42, label %if.else45, !dbg !6127

if.then42:                                        ; preds = %do.end37
  %40 = load i32, i32* %ydstlen, align 4, !dbg !6128
  %coerce.dive43 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6130
  %41 = load i8*, i8** %coerce.dive43, align 8, !dbg !6130
  call void @mga_writel(i8* %41, i32 7560, i32 %40) #4, !dbg !6130
  %42 = load i8*, i8** %chardata.addr, align 8, !dbg !6131
  %43 = load i32, i32* %xlen, align 4, !dbg !6132
  %coerce.dive44 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6133
  %44 = load i8*, i8** %coerce.dive44, align 8, !dbg !6133
  call void @mga_memcpy_toio(i8* %44, i8* %42, i32 %43) #4, !dbg !6133
  br label %if.end84, !dbg !6134

if.else45:                                        ; preds = %do.end37
  %coerce.dive46 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6135
  %45 = load i8*, i8** %coerce.dive46, align 8, !dbg !6135
  call void @mga_writel(i8* %45, i32 7284, i32 0) #4, !dbg !6135
  %46 = load i32, i32* %ydstlen, align 4, !dbg !6136
  %coerce.dive47 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6137
  %47 = load i8*, i8** %coerce.dive47, align 8, !dbg !6137
  call void @mga_writel(i8* %47, i32 7560, i32 %46) #4, !dbg !6137
  %48 = load i32, i32* %step, align 4, !dbg !6138
  %and48 = and i32 %48, 3, !dbg !6139
  %cmp49 = icmp eq i32 %and48, 0, !dbg !6140
  br i1 %cmp49, label %if.then50, label %if.else52, !dbg !6141

if.then50:                                        ; preds = %if.else45
  %49 = load i8*, i8** %chardata.addr, align 8, !dbg !6142
  %50 = load i32, i32* %charcell, align 4, !dbg !6144
  %coerce.dive51 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6145
  %51 = load i8*, i8** %coerce.dive51, align 8, !dbg !6145
  call void @mga_memcpy_toio(i8* %51, i8* %49, i32 %50) #4, !dbg !6145
  br label %if.end83, !dbg !6146

if.else52:                                        ; preds = %if.else45
  %52 = load i32, i32* %step, align 4, !dbg !6147
  %cmp53 = icmp eq i32 %52, 1, !dbg !6148
  br i1 %cmp53, label %if.then54, label %if.else56, !dbg !6149

if.then54:                                        ; preds = %if.else52
  br label %while.cond, !dbg !6150

while.cond:                                       ; preds = %while.body, %if.then54
  %53 = load i32, i32* %height.addr, align 4, !dbg !6152
  %dec = add i32 %53, -1, !dbg !6152
  store i32 %dec, i32* %height.addr, align 4, !dbg !6152
  %tobool55 = icmp ne i32 %53, 0, !dbg !6150
  br i1 %tobool55, label %while.body, label %while.end, !dbg !6150

while.body:                                       ; preds = %while.cond
  %54 = load i8*, i8** %chardata.addr, align 8, !dbg !6153
  %55 = load i8, i8* %54, align 1, !dbg !6155
  %conv = zext i8 %55 to i32, !dbg !6155
  %vaddr = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6156
  %56 = load i8*, i8** %vaddr, align 8, !dbg !6156
  call void @__writel(i32 %conv, i8* %56) #4, !dbg !6157
  %57 = load i8*, i8** %chardata.addr, align 8, !dbg !6158
  %incdec.ptr = getelementptr i8, i8* %57, i32 1, !dbg !6158
  store i8* %incdec.ptr, i8** %chardata.addr, align 8, !dbg !6158
  br label %while.cond, !dbg !6150, !llvm.loop !6159

while.end:                                        ; preds = %while.cond
  br label %if.end82, !dbg !6161

if.else56:                                        ; preds = %if.else52
  %58 = load i32, i32* %step, align 4, !dbg !6162
  %cmp57 = icmp eq i32 %58, 2, !dbg !6163
  br i1 %cmp57, label %if.then59, label %if.else67, !dbg !6164

if.then59:                                        ; preds = %if.else56
  br label %while.cond60, !dbg !6165

while.cond60:                                     ; preds = %while.body63, %if.then59
  %59 = load i32, i32* %height.addr, align 4, !dbg !6167
  %dec61 = add i32 %59, -1, !dbg !6167
  store i32 %dec61, i32* %height.addr, align 4, !dbg !6167
  %tobool62 = icmp ne i32 %59, 0, !dbg !6165
  br i1 %tobool62, label %while.body63, label %while.end66, !dbg !6165

while.body63:                                     ; preds = %while.cond60
  %60 = load i8*, i8** %chardata.addr, align 8, !dbg !6168
  %61 = bitcast i8* %60 to i16*, !dbg !6170
  %62 = load i16, i16* %61, align 2, !dbg !6170
  %conv64 = zext i16 %62 to i32, !dbg !6170
  %vaddr65 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6171
  %63 = load i8*, i8** %vaddr65, align 8, !dbg !6171
  call void @__writel(i32 %conv64, i8* %63) #4, !dbg !6172
  %64 = load i8*, i8** %chardata.addr, align 8, !dbg !6173
  %add.ptr = getelementptr i8, i8* %64, i64 2, !dbg !6173
  store i8* %add.ptr, i8** %chardata.addr, align 8, !dbg !6173
  br label %while.cond60, !dbg !6165, !llvm.loop !6174

while.end66:                                      ; preds = %while.cond60
  br label %if.end81, !dbg !6176

if.else67:                                        ; preds = %if.else56
  br label %while.cond68, !dbg !6177

while.cond68:                                     ; preds = %for.end, %if.else67
  %65 = load i32, i32* %height.addr, align 4, !dbg !6178
  %dec69 = add i32 %65, -1, !dbg !6178
  store i32 %dec69, i32* %height.addr, align 4, !dbg !6178
  %tobool70 = icmp ne i32 %65, 0, !dbg !6177
  br i1 %tobool70, label %while.body71, label %while.end80, !dbg !6177

while.body71:                                     ; preds = %while.cond68
  call void @llvm.dbg.declare(metadata i64* %i, metadata !6179, metadata !DIExpression()), !dbg !6180
  store i64 0, i64* %i, align 8, !dbg !6181
  br label %for.cond, !dbg !6182

for.cond:                                         ; preds = %for.inc, %while.body71
  %66 = load i64, i64* %i, align 8, !dbg !6183
  %67 = load i32, i32* %step, align 4, !dbg !6184
  %conv72 = zext i32 %67 to i64, !dbg !6184
  %cmp73 = icmp ult i64 %66, %conv72, !dbg !6185
  br i1 %cmp73, label %for.body, label %for.end, !dbg !6186

for.body:                                         ; preds = %for.cond
  %68 = load i8*, i8** %chardata.addr, align 8, !dbg !6187
  %69 = load i64, i64* %i, align 8, !dbg !6187
  %add.ptr75 = getelementptr i8, i8* %68, i64 %69, !dbg !6187
  %70 = bitcast i8* %add.ptr75 to i32*, !dbg !6187
  %71 = bitcast i32* %70 to i8*, !dbg !6187
  store i8* %71, i8** %p.addr.i, align 8
  %72 = load i8*, i8** %p.addr.i, align 8, !dbg !6188
  %73 = bitcast i8* %72 to i32*, !dbg !6189
  store i32* %73, i32** %p.addr.i.i, align 8
  %74 = load i32*, i32** %p.addr.i.i, align 8, !dbg !6190
  %75 = load i32, i32* %74, align 4, !dbg !6191
  store i32 %75, i32* %tmp, align 4, !dbg !6192
  %76 = load i32, i32* %tmp, align 4, !dbg !6187
  %vaddr77 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %mmio, i32 0, i32 0, !dbg !6193
  %77 = load i8*, i8** %vaddr77, align 8, !dbg !6193
  call void @__writel(i32 %76, i8* %77) #4, !dbg !6194
  br label %for.inc, !dbg !6195

for.inc:                                          ; preds = %for.body
  %78 = load i64, i64* %i, align 8, !dbg !6196
  %add78 = add i64 %78, 4, !dbg !6196
  store i64 %add78, i64* %i, align 8, !dbg !6196
  br label %for.cond, !dbg !6197, !llvm.loop !6198

for.end:                                          ; preds = %for.cond
  %79 = load i32, i32* %step, align 4, !dbg !6200
  %80 = load i8*, i8** %chardata.addr, align 8, !dbg !6201
  %idx.ext = zext i32 %79 to i64, !dbg !6201
  %add.ptr79 = getelementptr i8, i8* %80, i64 %idx.ext, !dbg !6201
  store i8* %add.ptr79, i8** %chardata.addr, align 8, !dbg !6201
  br label %while.cond68, !dbg !6177, !llvm.loop !6202

while.end80:                                      ; preds = %while.cond68
  br label %if.end81

if.end81:                                         ; preds = %while.end80, %while.end66
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %while.end
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then50
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then42
  br label %do.body85, !dbg !6204

do.body85:                                        ; preds = %if.end84
  %81 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6205
  %mmio86 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %81, i32 0, i32 19, !dbg !6205
  %vbase87 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio86, i32 0, i32 1, !dbg !6205
  %coerce.dive88 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase87, i32 0, i32 0, !dbg !6205
  %82 = load i8*, i8** %coerce.dive88, align 8, !dbg !6205
  %call89 = call i32 @mga_readl(i8* %82, i32 7700) #4, !dbg !6205
  br label %do.body90, !dbg !6205

do.body90:                                        ; preds = %do.cond91, %do.body85
  br label %do.cond91, !dbg !6207

do.cond91:                                        ; preds = %do.body90
  %83 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %minfo.addr, align 8, !dbg !6205
  %mmio92 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %83, i32 0, i32 19, !dbg !6205
  %vbase93 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %mmio92, i32 0, i32 1, !dbg !6205
  %coerce.dive94 = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %vbase93, i32 0, i32 0, !dbg !6205
  %84 = load i8*, i8** %coerce.dive94, align 8, !dbg !6205
  %call95 = call i32 @mga_readl(i8* %84, i32 7700) #4, !dbg !6205
  %and96 = and i32 %call95, 65536, !dbg !6205
  %tobool97 = icmp ne i32 %and96, 0, !dbg !6207
  br i1 %tobool97, label %do.body90, label %do.end98, !dbg !6207, !llvm.loop !6209

do.end98:                                         ; preds = %do.cond91
  br label %do.end100, !dbg !6205

do.end100:                                        ; preds = %do.end98
  ret void, !dbg !6210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mga_memcpy_toio(i8* %va.coerce, i8* %src, i32 %len) #0 !dbg !6211 {
entry:
  %va = alloca %struct.vaddr_t, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0
  store i8* %va.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.vaddr_t* %va, metadata !6214, metadata !DIExpression()), !dbg !6215
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  %vaddr = getelementptr inbounds %struct.vaddr_t, %struct.vaddr_t* %va, i32 0, i32 0, !dbg !6220
  %0 = load i8*, i8** %vaddr, align 8, !dbg !6220
  %1 = load i8*, i8** %src.addr, align 8, !dbg !6221
  %2 = load i32, i32* %len.addr, align 4, !dbg !6222
  %shr = ashr i32 %2, 2, !dbg !6223
  %conv = sext i32 %shr to i64, !dbg !6222
  call void @iowrite32_rep(i8* %0, i8* %1, i64 %conv) #4, !dbg !6224
  ret void, !dbg !6225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #0 !dbg !6226 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6227, metadata !DIExpression()), !dbg !6228
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6229, metadata !DIExpression()), !dbg !6228
  %0 = load i32, i32* %val.addr, align 4, !dbg !6228
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6228
  %2 = bitcast i8* %1 to i32*, !dbg !6228
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !6228, !srcloc !6230
  ret void, !dbg !6228
}

; Function Attrs: noredzone
declare dso_local void @iowrite32_rep(i8*, i8*, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5018, !5019, !5020, !5021}
!llvm.ident = !{!5022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file249", scope: !2, file: !3, line: 520, type: !5015, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !131, globals: !5009, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/matrox/matroxfb_accel.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !25, !31, !36, !42, !49, !55, !64, !72, !78, !84, !91, !99, !105, !119}
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
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mga_chip", file: !120, line: 315, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "drivers/video/fbdev/matrox/matroxfb_base.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130}
!122 = !DIEnumerator(name: "MGA_2064", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "MGA_2164", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "MGA_1064", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "MGA_1164", value: 3, isUnsigned: true)
!126 = !DIEnumerator(name: "MGA_G100", value: 4, isUnsigned: true)
!127 = !DIEnumerator(name: "MGA_G200", value: 5, isUnsigned: true)
!128 = !DIEnumerator(name: "MGA_G400", value: 6, isUnsigned: true)
!129 = !DIEnumerator(name: "MGA_G450", value: 7, isUnsigned: true)
!130 = !DIEnumerator(name: "MGA_G550", value: 8, isUnsigned: true)
!131 = !{!132, !134, !135, !5003, !5004, !5006, !4389, !5007, !196}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_fb_info", file: !120, line: 338, size: 27968, elements: !137)
!137 = !{!138, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4385, !4435, !4442, !4719, !4730, !4740, !4754, !4811, !4826, !4828, !4829, !4841, !4847, !4848, !4849, !4866, !4884, !4889, !4890, !4891, !4892, !4893, !4904, !4905, !4932, !4933, !4951, !4961, !4976, !5001}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon", scope: !136, file: !120, line: 339, baseType: !139, size: 8128)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !140, line: 437, size: 8128, elements: !141)
!140 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !149, !150, !151, !152, !190, !191, !233, !261, !327, !339, !359, !360, !370, !371, !372, !4113, !4114, !4116, !4123, !4138, !4266, !4267, !4268, !4269, !4345, !4350, !4351, !4352, !4353, !4354, !4355, !4367}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !139, file: !140, line: 438, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 168, baseType: !145)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 166, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !145, file: !144, line: 167, baseType: !148, size: 32)
!148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !140, line: 439, baseType: !148, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !140, line: 440, baseType: !148, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !139, file: !140, line: 445, baseType: !148, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !139, file: !140, line: 446, baseType: !153, size: 192, offset: 128)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !154, line: 53, size: 192, elements: !155)
!154 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !168, !184}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !153, file: !154, line: 54, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !158, line: 13, baseType: !159)
!158 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !144, line: 175, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 173, size: 64, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !160, file: !144, line: 174, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !164, line: 22, baseType: !165)
!164 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !166, line: 30, baseType: !167)
!166 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!167 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !153, file: !154, line: 55, baseType: !169, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 83, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 71, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 72, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 72, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 73, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !170, line: 20, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !170, line: 21, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !181, line: 25, baseType: !182)
!181 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 25, elements: !183)
!183 = !{}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !153, file: !154, line: 59, baseType: !185, size: 128, offset: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !144, line: 178, size: 128, elements: !186)
!186 = !{!187, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !144, line: 179, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !185, file: !144, line: 179, baseType: !188, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !139, file: !140, line: 447, baseType: !153, size: 192, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !139, file: !140, line: 448, baseType: !192, size: 1280, offset: 512)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !193, line: 242, size: 1280, elements: !194)
!193 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !197, !198, !199, !200, !201, !202, !203, !204, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !192, file: !193, line: 243, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !166, line: 27, baseType: !7)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !192, file: !193, line: 244, baseType: !196, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !192, file: !193, line: 245, baseType: !196, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !192, file: !193, line: 246, baseType: !196, size: 32, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !192, file: !193, line: 247, baseType: !196, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !192, file: !193, line: 248, baseType: !196, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !192, file: !193, line: 250, baseType: !196, size: 32, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !192, file: !193, line: 251, baseType: !196, size: 32, offset: 224)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !192, file: !193, line: 253, baseType: !205, size: 96, offset: 256)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !193, line: 188, size: 96, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !205, file: !193, line: 189, baseType: !196, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !205, file: !193, line: 190, baseType: !196, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !205, file: !193, line: 191, baseType: !196, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !192, file: !193, line: 254, baseType: !205, size: 96, offset: 352)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !192, file: !193, line: 255, baseType: !205, size: 96, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !192, file: !193, line: 256, baseType: !205, size: 96, offset: 544)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !192, file: !193, line: 258, baseType: !196, size: 32, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !192, file: !193, line: 260, baseType: !196, size: 32, offset: 672)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !192, file: !193, line: 262, baseType: !196, size: 32, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !192, file: !193, line: 263, baseType: !196, size: 32, offset: 736)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !192, file: !193, line: 265, baseType: !196, size: 32, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !192, file: !193, line: 268, baseType: !196, size: 32, offset: 800)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !192, file: !193, line: 269, baseType: !196, size: 32, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !192, file: !193, line: 270, baseType: !196, size: 32, offset: 864)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !192, file: !193, line: 271, baseType: !196, size: 32, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !192, file: !193, line: 272, baseType: !196, size: 32, offset: 928)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !192, file: !193, line: 273, baseType: !196, size: 32, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !192, file: !193, line: 274, baseType: !196, size: 32, offset: 992)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !192, file: !193, line: 275, baseType: !196, size: 32, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !192, file: !193, line: 276, baseType: !196, size: 32, offset: 1056)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !192, file: !193, line: 277, baseType: !196, size: 32, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !192, file: !193, line: 278, baseType: !196, size: 32, offset: 1120)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !192, file: !193, line: 279, baseType: !230, size: 128, offset: 1152)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 4)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !139, file: !140, line: 449, baseType: !234, size: 640, offset: 1792)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !193, line: 157, size: 640, elements: !235)
!235 = !{!236, !241, !243, !244, !245, !246, !247, !250, !251, !252, !253, !254, !255, !256, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !234, file: !193, line: 158, baseType: !237, size: 128)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, elements: !239)
!238 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!239 = !{!240}
!240 = !DISubrange(count: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !234, file: !193, line: 159, baseType: !242, size: 64, offset: 128)
!242 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !234, file: !193, line: 161, baseType: !196, size: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !193, line: 162, baseType: !196, size: 32, offset: 224)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !234, file: !193, line: 163, baseType: !196, size: 32, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !234, file: !193, line: 164, baseType: !196, size: 32, offset: 288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !234, file: !193, line: 165, baseType: !248, size: 16, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !166, line: 24, baseType: !249)
!249 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !234, file: !193, line: 166, baseType: !248, size: 16, offset: 336)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !234, file: !193, line: 167, baseType: !248, size: 16, offset: 352)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !234, file: !193, line: 168, baseType: !196, size: 32, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !234, file: !193, line: 169, baseType: !242, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !234, file: !193, line: 171, baseType: !196, size: 32, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !234, file: !193, line: 172, baseType: !196, size: 32, offset: 544)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !234, file: !193, line: 174, baseType: !248, size: 16, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !234, file: !193, line: 175, baseType: !258, size: 32, offset: 592)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 32, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 2)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !139, file: !140, line: 450, baseType: !262, size: 1152, offset: 2432)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !140, line: 63, size: 1152, elements: !263)
!263 = !{!264, !275, !296, !300, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !262, file: !140, line: 64, baseType: !265, size: 256)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !140, line: 52, size: 256, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !265, file: !140, line: 53, baseType: !196, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !265, file: !140, line: 54, baseType: !196, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !265, file: !140, line: 55, baseType: !196, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !265, file: !140, line: 56, baseType: !196, size: 32, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !265, file: !140, line: 57, baseType: !196, size: 32, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !265, file: !140, line: 58, baseType: !196, size: 32, offset: 160)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !265, file: !140, line: 59, baseType: !196, size: 32, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !265, file: !140, line: 60, baseType: !196, size: 32, offset: 224)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !262, file: !140, line: 65, baseType: !276, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !140, line: 766, size: 512, elements: !278)
!278 = !{!279, !282, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !140, line: 767, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !277, file: !140, line: 768, baseType: !283, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !164, line: 21, baseType: !196)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !277, file: !140, line: 769, baseType: !283, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !277, file: !140, line: 770, baseType: !283, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !277, file: !140, line: 771, baseType: !283, size: 32, offset: 160)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !277, file: !140, line: 772, baseType: !283, size: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !277, file: !140, line: 773, baseType: !283, size: 32, offset: 224)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !277, file: !140, line: 774, baseType: !283, size: 32, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !277, file: !140, line: 775, baseType: !283, size: 32, offset: 288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !277, file: !140, line: 776, baseType: !283, size: 32, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !277, file: !140, line: 777, baseType: !283, size: 32, offset: 352)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !277, file: !140, line: 778, baseType: !283, size: 32, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !277, file: !140, line: 779, baseType: !283, size: 32, offset: 416)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !277, file: !140, line: 780, baseType: !283, size: 32, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !262, file: !140, line: 66, baseType: !297, size: 32, offset: 320)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 32, elements: !231)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !166, line: 21, baseType: !299)
!299 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !262, file: !140, line: 67, baseType: !301, size: 112, offset: 352)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 112, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 14)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !262, file: !140, line: 68, baseType: !301, size: 112, offset: 464)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !262, file: !140, line: 69, baseType: !301, size: 112, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !262, file: !140, line: 70, baseType: !196, size: 32, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !262, file: !140, line: 71, baseType: !196, size: 32, offset: 736)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !262, file: !140, line: 72, baseType: !196, size: 32, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !262, file: !140, line: 73, baseType: !196, size: 32, offset: 800)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !262, file: !140, line: 74, baseType: !196, size: 32, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !262, file: !140, line: 75, baseType: !196, size: 32, offset: 864)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !262, file: !140, line: 76, baseType: !196, size: 32, offset: 896)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !262, file: !140, line: 77, baseType: !196, size: 32, offset: 928)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !262, file: !140, line: 78, baseType: !196, size: 32, offset: 960)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !262, file: !140, line: 79, baseType: !248, size: 16, offset: 992)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !262, file: !140, line: 80, baseType: !248, size: 16, offset: 1008)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !262, file: !140, line: 81, baseType: !248, size: 16, offset: 1024)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !262, file: !140, line: 82, baseType: !248, size: 16, offset: 1040)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !262, file: !140, line: 83, baseType: !248, size: 16, offset: 1056)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !262, file: !140, line: 84, baseType: !248, size: 16, offset: 1072)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !262, file: !140, line: 85, baseType: !248, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !262, file: !140, line: 86, baseType: !248, size: 16, offset: 1104)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !262, file: !140, line: 87, baseType: !298, size: 8, offset: 1120)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !262, file: !140, line: 88, baseType: !298, size: 8, offset: 1128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !262, file: !140, line: 89, baseType: !298, size: 8, offset: 1136)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !262, file: !140, line: 90, baseType: !298, size: 8, offset: 1144)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !139, file: !140, line: 451, baseType: !328, size: 256, offset: 3584)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !329, line: 102, size: 256, elements: !330)
!329 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !332, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !328, file: !329, line: 103, baseType: !157, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !328, file: !329, line: 104, baseType: !185, size: 128, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !328, file: !329, line: 105, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !329, line: 21, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !139, file: !140, line: 452, baseType: !340, size: 448, offset: 3840)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !140, line: 185, size: 448, elements: !341)
!341 = !{!342, !345, !346, !347, !348, !349, !350, !351, !352, !353, !358}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !340, file: !140, line: 186, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !164, line: 17, baseType: !298)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !140, line: 187, baseType: !283, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !340, file: !140, line: 188, baseType: !283, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !340, file: !140, line: 189, baseType: !283, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !340, file: !140, line: 190, baseType: !283, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !340, file: !140, line: 191, baseType: !283, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !140, line: 192, baseType: !283, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !340, file: !140, line: 193, baseType: !283, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !340, file: !140, line: 194, baseType: !283, size: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !340, file: !140, line: 198, baseType: !354, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, !134, !134, !7}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !340, file: !140, line: 199, baseType: !354, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !139, file: !140, line: 453, baseType: !340, size: 448, offset: 4288)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !139, file: !140, line: 454, baseType: !361, size: 320, offset: 4736)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !193, line: 282, size: 320, elements: !362)
!362 = !{!363, !364, !365, !367, !368, !369}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !361, file: !193, line: 283, baseType: !196, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !361, file: !193, line: 284, baseType: !196, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !361, file: !193, line: 285, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !361, file: !193, line: 286, baseType: !366, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !361, file: !193, line: 287, baseType: !366, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !361, file: !193, line: 288, baseType: !366, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !139, file: !140, line: 455, baseType: !185, size: 128, offset: 5056)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !139, file: !140, line: 456, baseType: !276, size: 64, offset: 5184)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !139, file: !140, line: 462, baseType: !373, size: 64, offset: 5248)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !6, line: 280, size: 6912, elements: !375)
!375 = !{!376, !386, !387, !388, !403, !415, !416, !4110, !4112}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !374, file: !6, line: 284, baseType: !377, size: 224)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !6, line: 182, size: 224, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !377, file: !6, line: 194, baseType: !148, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !377, file: !6, line: 203, baseType: !148, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !377, file: !6, line: 219, baseType: !148, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !377, file: !6, line: 238, baseType: !148, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !6, line: 249, baseType: !5, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !6, line: 264, baseType: !7, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !377, file: !6, line: 272, baseType: !13, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !374, file: !6, line: 294, baseType: !153, size: 192, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !374, file: !6, line: 303, baseType: !153, size: 192, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !374, file: !6, line: 312, baseType: !389, size: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !6, line: 120, size: 256, elements: !392)
!392 = !{!393, !394, !398, !399}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !391, file: !6, line: 128, baseType: !7, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !391, file: !6, line: 146, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!148, !373}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !391, file: !6, line: 160, baseType: !395, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !391, file: !6, line: 174, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!148, !373, !357}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !374, file: !6, line: 317, baseType: !404, size: 192, offset: 704)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !405, line: 54, size: 192, elements: !406)
!405 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !413, !414}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !404, file: !405, line: 55, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !405, line: 51, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!148, !412, !242, !134}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !405, line: 56, baseType: !412, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !404, file: !405, line: 57, baseType: !148, size: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !374, file: !6, line: 322, baseType: !185, size: 128, offset: 896)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !374, file: !6, line: 327, baseType: !417, size: 5568, offset: 1024)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !85, line: 461, size: 5568, elements: !418)
!418 = !{!419, !3563, !3565, !3568, !3569, !3620, !3711, !3712, !3713, !3714, !3715, !3724, !3829, !3842, !4037, !4038, !4042, !4044, !4045, !4046, !4050, !4056, !4057, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4098, !4099, !4100, !4103, !4106, !4107, !4108, !4109}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !417, file: !85, line: 462, baseType: !420, size: 512)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !421, line: 64, size: 512, elements: !422)
!421 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !424, !425, !427, !472, !3424, !3557, !3558, !3559, !3560, !3561, !3562}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !421, line: 65, baseType: !280, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !420, file: !421, line: 66, baseType: !185, size: 128, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !420, file: !421, line: 67, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !420, file: !421, line: 68, baseType: !428, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !421, line: 192, size: 704, elements: !430)
!430 = !{!431, !432, !433, !434}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !429, file: !421, line: 193, baseType: !185, size: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !429, file: !421, line: 194, baseType: !169, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !429, file: !421, line: 195, baseType: !420, size: 512, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !429, file: !421, line: 196, baseType: !435, size: 64, offset: 640)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !421, line: 156, size: 192, elements: !438)
!438 = !{!439, !444, !449}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !437, file: !421, line: 157, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!148, !428, !426}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !421, line: 158, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!280, !428, !426}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !437, file: !421, line: 159, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!148, !428, !426, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !421, line: 148, size: 20736, elements: !456)
!456 = !{!457, !462, !466, !467, !471}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !455, file: !421, line: 149, baseType: !458, size: 192)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 192, elements: !460)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!460 = !{!461}
!461 = !DISubrange(count: 3)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !455, file: !421, line: 150, baseType: !463, size: 4096, offset: 192)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 4096, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !455, file: !421, line: 151, baseType: !148, size: 32, offset: 4288)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !455, file: !421, line: 152, baseType: !468, size: 16384, offset: 4320)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 16384, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 2048)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !455, file: !421, line: 153, baseType: !148, size: 32, offset: 20704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !420, file: !421, line: 69, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !421, line: 138, size: 448, elements: !475)
!475 = !{!476, !480, !508, !510, !3386, !3414, !3418}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !474, file: !421, line: 139, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !426}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !474, file: !421, line: 140, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !484, line: 230, size: 128, elements: !485)
!484 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!485 = !{!486, !501}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !483, file: !484, line: 231, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !426, !495, !459}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !144, line: 60, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !492, line: 73, baseType: !493)
!492 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !492, line: 15, baseType: !494)
!494 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !484, line: 30, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !496, file: !484, line: 31, baseType: !280, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !496, file: !484, line: 32, baseType: !500, size: 16, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !144, line: 19, baseType: !249)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !483, file: !484, line: 232, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!490, !426, !495, !280, !505}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 55, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !492, line: 72, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !492, line: 16, baseType: !242)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !474, file: !421, line: 141, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !474, file: !421, line: 142, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !484, line: 84, size: 320, elements: !515)
!515 = !{!516, !517, !521, !3383, !3384}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !514, file: !484, line: 85, baseType: !280, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !514, file: !484, line: 86, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!500, !426, !495, !148}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !514, file: !484, line: 88, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!500, !426, !525, !148}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !484, line: 168, size: 448, elements: !527)
!527 = !{!528, !529, !530, !531, !3378, !3379}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !526, file: !484, line: 169, baseType: !496, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !526, file: !484, line: 170, baseType: !505, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !526, file: !484, line: 171, baseType: !134, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !526, file: !484, line: 172, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!490, !535, !426, !525, !459, !709, !505}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 916, size: 1856, align: 32, elements: !537)
!537 = !{!538, !556, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3361, !3362, !3371, !3372, !3373, !3374, !3375, !3376, !3377}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !536, file: !56, line: 920, baseType: !539, size: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !56, line: 917, size: 128, elements: !540)
!540 = !{!541, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !539, file: !56, line: 918, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !543, line: 58, size: 64, elements: !544)
!543 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !543, line: 59, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !539, file: !56, line: 919, baseType: !548, size: 128, align: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !144, line: 216, size: 128, align: 64, elements: !549)
!549 = !{!550, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !144, line: 217, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !548, file: !144, line: 218, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !551}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !536, file: !56, line: 921, baseType: !557, size: 128, offset: 128)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !558, line: 8, size: 128, elements: !559)
!558 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !564}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !557, file: !558, line: 9, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !563, line: 18, flags: DIFlagFwdDecl)
!563 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !557, file: !558, line: 10, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !563, line: 89, size: 1536, elements: !567)
!567 = !{!568, !569, !579, !587, !588, !606, !3311, !3313, !3325, !3326, !3327, !3328, !3329, !3335, !3336, !3337}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !566, file: !563, line: 91, baseType: !7, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !566, file: !563, line: 92, baseType: !570, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !571, line: 277, baseType: !572)
!571 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !571, line: 277, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !572, file: !571, line: 277, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !571, line: 70, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !571, line: 65, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !576, file: !571, line: 66, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !566, file: !563, line: 93, baseType: !580, size: 128, offset: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !581, line: 38, size: 128, elements: !582)
!581 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!582 = !{!583, !585}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !581, line: 39, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !580, file: !581, line: 39, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !566, file: !563, line: 94, baseType: !565, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !566, file: !563, line: 95, baseType: !589, size: 128, offset: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !563, line: 47, size: 128, elements: !590)
!590 = !{!591, !603}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !563, line: 48, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !563, line: 48, size: 64, elements: !593)
!593 = !{!594, !599}
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !563, line: 49, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !592, file: !563, line: 49, size: 64, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !595, file: !563, line: 50, baseType: !283, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !595, file: !563, line: 50, baseType: !283, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !592, file: !563, line: 52, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !164, line: 23, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !166, line: 31, baseType: !602)
!602 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !563, line: 54, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !566, file: !563, line: 96, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 610, size: 4224, elements: !609)
!609 = !{!610, !611, !612, !620, !627, !628, !774, !3022, !3023, !3024, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3287, !3295, !3296, !3297, !3307, !3308, !3309, !3310}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !608, file: !56, line: 611, baseType: !500, size: 16)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !608, file: !56, line: 612, baseType: !249, size: 16, offset: 16)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !608, file: !56, line: 613, baseType: !613, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !614, line: 23, baseType: !615)
!614 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 21, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !615, file: !614, line: 22, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !144, line: 32, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !492, line: 49, baseType: !7)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !608, file: !56, line: 614, baseType: !621, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !614, line: 28, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 26, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !622, file: !614, line: 27, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !144, line: 33, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !492, line: 50, baseType: !7)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !608, file: !56, line: 615, baseType: !7, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !608, file: !56, line: 622, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1864, size: 1536, align: 512, elements: !632)
!632 = !{!633, !637, !650, !654, !660, !664, !670, !674, !678, !682, !686, !687, !693, !697, !721, !750, !754, !760, !765, !769, !770}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !631, file: !56, line: 1865, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!565, !607, !565, !7}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !631, file: !56, line: 1866, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!280, !565, !607, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !643, line: 10, size: 128, elements: !644)
!643 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!644 = !{!645, !649}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !642, file: !643, line: 11, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !134}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !642, file: !643, line: 12, baseType: !134, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !631, file: !56, line: 1867, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!148, !607, !148}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !631, file: !56, line: 1868, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!658, !607, !148}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 581, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !631, file: !56, line: 1870, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!148, !565, !459, !148}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !631, file: !56, line: 1872, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!148, !607, !565, !500, !668}
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !144, line: 30, baseType: !669)
!669 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !631, file: !56, line: 1873, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!148, !565, !607, !565}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !631, file: !56, line: 1874, baseType: !675, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!148, !607, !565}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !631, file: !56, line: 1875, baseType: !679, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!148, !607, !565, !280}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !631, file: !56, line: 1876, baseType: !683, size: 64, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!148, !607, !565, !500}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !631, file: !56, line: 1877, baseType: !675, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !631, file: !56, line: 1878, baseType: !688, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!148, !607, !565, !500, !691}
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !144, line: 16, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !144, line: 13, baseType: !283)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !631, file: !56, line: 1879, baseType: !694, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!148, !607, !565, !607, !565, !7}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !631, file: !56, line: 1881, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!148, !565, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 219, size: 640, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !711, !718, !719, !720}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !702, file: !56, line: 220, baseType: !7, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !702, file: !56, line: 221, baseType: !500, size: 16, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !702, file: !56, line: 222, baseType: !613, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !702, file: !56, line: 223, baseType: !621, size: 32, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !702, file: !56, line: 224, baseType: !709, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !144, line: 46, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !492, line: 88, baseType: !167)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !702, file: !56, line: 225, baseType: !712, size: 128, offset: 192)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !713, line: 13, size: 128, elements: !714)
!713 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !712, file: !713, line: 14, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !713, line: 8, baseType: !165)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !712, file: !713, line: 15, baseType: !494, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !702, file: !56, line: 226, baseType: !712, size: 128, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !702, file: !56, line: 227, baseType: !712, size: 128, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !702, file: !56, line: 234, baseType: !535, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !631, file: !56, line: 1882, baseType: !722, size: 64, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!148, !725, !727, !283, !7}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !729, line: 22, size: 1152, elements: !730)
!729 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !732, !733, !734, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !728, file: !729, line: 23, baseType: !283, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !728, file: !729, line: 24, baseType: !500, size: 16, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !728, file: !729, line: 25, baseType: !7, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !728, file: !729, line: 26, baseType: !735, size: 32, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !144, line: 104, baseType: !283)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !728, file: !729, line: 27, baseType: !600, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !728, file: !729, line: 28, baseType: !600, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !728, file: !729, line: 37, baseType: !600, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !728, file: !729, line: 38, baseType: !691, size: 32, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !728, file: !729, line: 39, baseType: !691, size: 32, offset: 352)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !728, file: !729, line: 40, baseType: !613, size: 32, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !728, file: !729, line: 41, baseType: !621, size: 32, offset: 416)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !728, file: !729, line: 42, baseType: !709, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !728, file: !729, line: 43, baseType: !712, size: 128, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !728, file: !729, line: 44, baseType: !712, size: 128, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !728, file: !729, line: 45, baseType: !712, size: 128, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !728, file: !729, line: 46, baseType: !712, size: 128, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !728, file: !729, line: 47, baseType: !600, size: 64, offset: 1024)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !728, file: !729, line: 48, baseType: !600, size: 64, offset: 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !631, file: !56, line: 1883, baseType: !751, size: 64, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!490, !565, !459, !505}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !631, file: !56, line: 1884, baseType: !755, size: 64, offset: 1024)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!148, !607, !758, !600, !600}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !631, file: !56, line: 1886, baseType: !761, size: 64, offset: 1088)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!148, !607, !764, !148}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !631, file: !56, line: 1887, baseType: !766, size: 64, offset: 1152)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!148, !607, !565, !535, !7, !500}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !631, file: !56, line: 1890, baseType: !683, size: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !631, file: !56, line: 1891, baseType: !771, size: 64, offset: 1280)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!148, !607, !658, !148}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !608, file: !56, line: 623, baseType: !775, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1416, size: 9472, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !833, !2629, !2711, !2794, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2810, !2814, !2815, !2818, !2819, !2822, !2823, !2824, !2865, !2892, !2893, !2894, !2895, !2896, !2897, !2900, !2902, !2909, !2910, !2912, !2913, !2914, !2973, !2974, !2989, !2990, !2991, !2992, !2993, !2996, !2997, !2998, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !776, file: !56, line: 1417, baseType: !185, size: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !776, file: !56, line: 1418, baseType: !691, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !776, file: !56, line: 1419, baseType: !299, size: 8, offset: 160)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !776, file: !56, line: 1420, baseType: !242, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !776, file: !56, line: 1421, baseType: !709, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !776, file: !56, line: 1422, baseType: !784, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2228, size: 576, elements: !786)
!786 = !{!787, !788, !789, !796, !800, !804, !808, !812, !813, !823, !826, !827, !828, !830, !831, !832}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !56, line: 2229, baseType: !280, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !785, file: !56, line: 2230, baseType: !148, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !785, file: !56, line: 2238, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!148, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !795, line: 28, flags: DIFlagFwdDecl)
!795 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!796 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !785, file: !56, line: 2239, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 70, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !785, file: !56, line: 2240, baseType: !801, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!565, !784, !148, !280, !134}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !785, file: !56, line: 2242, baseType: !805, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !775}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !785, file: !56, line: 2243, baseType: !809, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !811, line: 76, flags: DIFlagFwdDecl)
!811 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !56, line: 2244, baseType: !784, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !785, file: !56, line: 2245, baseType: !814, size: 64, offset: 512)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !144, line: 182, size: 64, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !814, file: !144, line: 183, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !144, line: 186, size: 128, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !144, line: 187, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !818, file: !144, line: 187, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !785, file: !56, line: 2247, baseType: !824, offset: 576)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !825, line: 187, elements: !183)
!825 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !785, file: !56, line: 2248, baseType: !824, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !785, file: !56, line: 2249, baseType: !824, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !785, file: !56, line: 2250, baseType: !829, offset: 576)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, elements: !460)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !785, file: !56, line: 2252, baseType: !824, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !785, file: !56, line: 2253, baseType: !824, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !785, file: !56, line: 2254, baseType: !824, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !776, file: !56, line: 1423, baseType: !834, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 1935, size: 1472, elements: !837)
!837 = !{!838, !842, !846, !847, !851, !857, !861, !862, !863, !867, !871, !872, !873, !874, !880, !885, !886, !893, !894, !895, !896, !2613, !2628}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !836, file: !56, line: 1936, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!607, !775}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !836, file: !56, line: 1937, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !607}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !836, file: !56, line: 1938, baseType: !843, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !836, file: !56, line: 1940, baseType: !848, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !607, !148}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !836, file: !56, line: 1941, baseType: !852, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!148, !607, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 40, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !836, file: !56, line: 1942, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!148, !607}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !836, file: !56, line: 1943, baseType: !843, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !836, file: !56, line: 1944, baseType: !805, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !836, file: !56, line: 1945, baseType: !864, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!148, !775, !148}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !836, file: !56, line: 1946, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!148, !775}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !836, file: !56, line: 1947, baseType: !868, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !836, file: !56, line: 1948, baseType: !868, size: 64, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !836, file: !56, line: 1949, baseType: !868, size: 64, offset: 768)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !836, file: !56, line: 1950, baseType: !875, size: 64, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!148, !565, !878}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 57, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !836, file: !56, line: 1951, baseType: !881, size: 64, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!148, !775, !884, !459}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !836, file: !56, line: 1952, baseType: !805, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !836, file: !56, line: 1954, baseType: !887, size: 64, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!148, !890, !565}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !892, line: 539, flags: DIFlagFwdDecl)
!892 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !836, file: !56, line: 1955, baseType: !887, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !836, file: !56, line: 1956, baseType: !887, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !836, file: !56, line: 1957, baseType: !887, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !836, file: !56, line: 1963, baseType: !897, size: 64, offset: 1280)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!148, !775, !900, !923}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !902, line: 68, size: 512, align: 128, elements: !903)
!902 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!903 = !{!904, !905, !2605, !2612}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !901, file: !902, line: 69, baseType: !242, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !902, line: 77, baseType: !906, size: 320, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !902, line: 77, size: 320, elements: !907)
!907 = !{!908, !1084, !1089, !1117, !1125, !1131, !2536, !2604}
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !902, line: 78, baseType: !909, size: 320)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !902, line: 78, size: 320, elements: !910)
!910 = !{!911, !912, !1082, !1083}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !909, file: !902, line: 84, baseType: !185, size: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !909, file: !902, line: 86, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 451, size: 1216, align: 64, elements: !915)
!915 = !{!916, !917, !925, !926, !927, !942, !951, !952, !953, !954, !1075, !1076, !1079, !1080, !1081}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !914, file: !56, line: 452, baseType: !607, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !914, file: !56, line: 453, baseType: !918, size: 128, offset: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !919, line: 292, size: 128, elements: !920)
!919 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!920 = !{!921, !922, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !918, file: !919, line: 293, baseType: !169)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !918, file: !919, line: 295, baseType: !923, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !144, line: 148, baseType: !7)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !918, file: !919, line: 296, baseType: !134, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !914, file: !56, line: 454, baseType: !923, size: 32, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !914, file: !56, line: 455, baseType: !143, size: 32, offset: 224)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !914, file: !56, line: 460, baseType: !928, size: 128, offset: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !929, line: 125, size: 128, elements: !930)
!929 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!930 = !{!931, !941}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !928, file: !929, line: 126, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !929, line: 31, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !932, file: !929, line: 32, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !929, line: 24, size: 192, align: 64, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !936, file: !929, line: 25, baseType: !242, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !936, file: !929, line: 26, baseType: !935, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !936, file: !929, line: 27, baseType: !935, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !928, file: !929, line: 127, baseType: !935, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !914, file: !56, line: 461, baseType: !943, size: 256, offset: 384)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !944, line: 35, size: 256, elements: !945)
!944 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !947, !948, !950}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !943, file: !944, line: 36, baseType: !157, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !943, file: !944, line: 42, baseType: !157, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !943, file: !944, line: 46, baseType: !949, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !170, line: 29, baseType: !177)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !943, file: !944, line: 47, baseType: !185, size: 128, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !914, file: !56, line: 462, baseType: !242, size: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !914, file: !56, line: 463, baseType: !242, size: 64, offset: 704)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !914, file: !56, line: 464, baseType: !242, size: 64, offset: 768)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !914, file: !56, line: 465, baseType: !955, size: 64, offset: 832)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 367, size: 1408, elements: !958)
!958 = !{!959, !963, !967, !971, !975, !979, !985, !991, !995, !1000, !1004, !1008, !1012, !1039, !1043, !1049, !1050, !1051, !1055, !1060, !1064, !1071}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !957, file: !56, line: 368, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!148, !900, !855}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !957, file: !56, line: 369, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!148, !535, !900}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !957, file: !56, line: 372, baseType: !968, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!148, !913, !855}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !957, file: !56, line: 375, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!148, !900}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !957, file: !56, line: 381, baseType: !976, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!148, !535, !913, !188, !7}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !957, file: !56, line: 383, baseType: !980, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 290, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !957, file: !56, line: 385, baseType: !986, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!148, !535, !913, !709, !7, !7, !989, !990}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !957, file: !56, line: 388, baseType: !992, size: 64, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!148, !535, !913, !709, !7, !7, !900, !134}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !957, file: !56, line: 393, baseType: !996, size: 64, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !913, !999}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !144, line: 125, baseType: !600)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !957, file: !56, line: 394, baseType: !1001, size: 64, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !900, !7, !7}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !957, file: !56, line: 395, baseType: !1005, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!148, !900, !923}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !957, file: !56, line: 396, baseType: !1009, size: 64, offset: 704)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !900}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !957, file: !56, line: 397, baseType: !1013, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!490, !1016, !1037}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 320, size: 384, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1025, !1026, !1027, !1029, !1030}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1017, file: !56, line: 321, baseType: !535, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1017, file: !56, line: 326, baseType: !709, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1017, file: !56, line: 327, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !1016, !494, !494}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1017, file: !56, line: 328, baseType: !134, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1017, file: !56, line: 329, baseType: !148, size: 32, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1017, file: !56, line: 330, baseType: !1028, size: 16, offset: 288)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !164, line: 19, baseType: !248)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1017, file: !56, line: 331, baseType: !1028, size: 16, offset: 304)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !56, line: 332, baseType: !1031, size: 64, offset: 320)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !56, line: 332, size: 64, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1031, file: !56, line: 333, baseType: !7, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1031, file: !56, line: 334, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 334, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !56, line: 64, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !957, file: !56, line: 402, baseType: !1040, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!148, !913, !900, !900, !18}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !957, file: !56, line: 404, baseType: !1044, size: 64, offset: 896)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!668, !900, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1048, line: 305, baseType: !7)
!1048 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !957, file: !56, line: 405, baseType: !1009, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !957, file: !56, line: 406, baseType: !972, size: 64, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !957, file: !56, line: 407, baseType: !1052, size: 64, offset: 1088)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!148, !900, !242, !242}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !957, file: !56, line: 409, baseType: !1056, size: 64, offset: 1152)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !900, !1059, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !957, file: !56, line: 410, baseType: !1061, size: 64, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!148, !913, !900}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !957, file: !56, line: 413, baseType: !1065, size: 64, offset: 1280)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!148, !1068, !535, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 61, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !957, file: !56, line: 415, baseType: !1072, size: 64, offset: 1344)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !535}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !914, file: !56, line: 466, baseType: !242, size: 64, offset: 896)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !914, file: !56, line: 467, baseType: !1077, size: 32, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1078, line: 8, baseType: !283)
!1078 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !914, file: !56, line: 468, baseType: !169, offset: 992)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !914, file: !56, line: 469, baseType: !185, size: 128, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !914, file: !56, line: 470, baseType: !134, size: 64, offset: 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !909, file: !902, line: 87, baseType: !242, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !909, file: !902, line: 94, baseType: !242, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !902, line: 96, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !902, line: 96, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1085, file: !902, line: 101, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !144, line: 143, baseType: !600)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !902, line: 103, baseType: !1090, size: 320)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !902, line: 103, size: 320, elements: !1091)
!1091 = !{!1092, !1102, !1105, !1106}
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !902, line: 104, baseType: !1093, size: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !902, line: 104, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1093, file: !902, line: 105, baseType: !185, size: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !902, line: 106, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !902, line: 106, size: 128, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !902, line: 107, baseType: !900, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1097, file: !902, line: 109, baseType: !148, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1097, file: !902, line: 110, baseType: !148, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1090, file: !902, line: 117, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !902, line: 117, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1090, file: !902, line: 119, baseType: !134, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !902, line: 120, baseType: !1107, size: 64, offset: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !902, line: 120, size: 64, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1107, file: !902, line: 121, baseType: !134, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1107, file: !902, line: 122, baseType: !242, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1107, file: !902, line: 123, baseType: !1112, size: 32)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !902, line: 123, size: 32, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1112, file: !902, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1112, file: !902, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1112, file: !902, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !902, line: 130, baseType: !1118, size: 192)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !902, line: 130, size: 192, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123, !1124}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1118, file: !902, line: 131, baseType: !242, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1118, file: !902, line: 134, baseType: !299, size: 8, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1118, file: !902, line: 135, baseType: !299, size: 8, offset: 72)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1118, file: !902, line: 136, baseType: !143, size: 32, offset: 96)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1118, file: !902, line: 137, baseType: !7, size: 32, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !902, line: 139, baseType: !1126, size: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !902, line: 139, size: 256, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1126, file: !902, line: 140, baseType: !242, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1126, file: !902, line: 141, baseType: !143, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1126, file: !902, line: 143, baseType: !185, size: 128, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !902, line: 145, baseType: !1132, size: 256)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !902, line: 145, size: 256, elements: !1133)
!1133 = !{!1134, !1135, !1137, !1138, !2535}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1132, file: !902, line: 146, baseType: !242, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1132, file: !902, line: 147, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !892, line: 509, baseType: !900)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1132, file: !902, line: 148, baseType: !242, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1132, file: !902, line: 149, baseType: !1139, size: 64, offset: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1132, file: !902, line: 149, size: 64, elements: !1140)
!1140 = !{!1141, !2534}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1139, file: !902, line: 150, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !902, line: 388, size: 7296, elements: !1144)
!1144 = !{!1145, !2530}
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !902, line: 389, baseType: !1146, size: 7296)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !902, line: 389, size: 7296, elements: !1147)
!1147 = !{!1148, !1266, !1267, !1268, !1272, !1273, !1274, !1275, !1276, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1317, !1323, !1326, !1366, !1367, !2514, !2515, !2518, !2519, !2520, !2523, !2524, !2525, !2528, !2529}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1146, file: !902, line: 390, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !902, line: 305, size: 1472, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1166, !1167, !1172, !1173, !1176, !1260, !1261, !1262, !1263, !1264}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1150, file: !902, line: 308, baseType: !242, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1150, file: !902, line: 309, baseType: !242, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1150, file: !902, line: 313, baseType: !1149, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1150, file: !902, line: 313, baseType: !1149, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1150, file: !902, line: 315, baseType: !936, size: 192, align: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1150, file: !902, line: 323, baseType: !242, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1150, file: !902, line: 327, baseType: !1142, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1150, file: !902, line: 333, baseType: !1160, size: 64, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !892, line: 284, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !892, line: 284, size: 64, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1161, file: !892, line: 284, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1165, line: 19, baseType: !242)
!1165 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1150, file: !902, line: 334, baseType: !242, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1150, file: !902, line: 343, baseType: !1168, size: 256, offset: 704)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !902, line: 340, size: 256, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1168, file: !902, line: 341, baseType: !936, size: 192, align: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1168, file: !902, line: 342, baseType: !242, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1150, file: !902, line: 351, baseType: !185, size: 128, offset: 960)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1150, file: !902, line: 353, baseType: !1174, size: 64, offset: 1088)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !902, line: 353, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1150, file: !902, line: 356, baseType: !1177, size: 64, offset: 1152)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !26, line: 557, size: 832, elements: !1180)
!1180 = !{!1181, !1185, !1186, !1190, !1194, !1234, !1238, !1242, !1246, !1247, !1248, !1252, !1256}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1179, file: !26, line: 558, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1149}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1179, file: !26, line: 559, baseType: !1182, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1179, file: !26, line: 560, baseType: !1187, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!148, !1149, !242}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1179, file: !26, line: 561, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!148, !1149}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1179, file: !26, line: 562, baseType: !1195, size: 64, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !902, line: 682, baseType: !7)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !26, line: 508, size: 768, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1214, !1221, !1227, !1228, !1229, !1231, !1233}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1200, file: !26, line: 509, baseType: !1149, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !26, line: 510, baseType: !7, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1200, file: !26, line: 511, baseType: !923, size: 32, offset: 96)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1200, file: !26, line: 512, baseType: !242, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1200, file: !26, line: 513, baseType: !242, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1200, file: !26, line: 514, baseType: !1208, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !892, line: 385, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !892, line: 385, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1210, file: !892, line: 385, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1165, line: 15, baseType: !242)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1200, file: !26, line: 516, baseType: !1215, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !892, line: 359, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !892, line: 359, size: 64, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1217, file: !892, line: 359, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1165, line: 16, baseType: !242)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1200, file: !26, line: 519, baseType: !1222, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1165, line: 21, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1165, line: 21, size: 64, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1223, file: !1165, line: 21, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1165, line: 14, baseType: !242)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1200, file: !26, line: 521, baseType: !900, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1200, file: !26, line: 522, baseType: !900, size: 64, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1200, file: !26, line: 528, baseType: !1230, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1200, file: !26, line: 532, baseType: !1232, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1200, file: !26, line: 536, baseType: !1136, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1179, file: !26, line: 563, baseType: !1235, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1198, !1199, !25}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1179, file: !26, line: 565, baseType: !1239, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1199, !242, !242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1179, file: !26, line: 567, baseType: !1243, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!242, !1149}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1179, file: !26, line: 571, baseType: !1195, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1179, file: !26, line: 574, baseType: !1195, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1179, file: !26, line: 579, baseType: !1249, size: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!148, !1149, !242, !134, !148, !148}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1179, file: !26, line: 585, baseType: !1253, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!280, !1149}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1179, file: !26, line: 615, baseType: !1257, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!900, !1149, !242}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1150, file: !902, line: 359, baseType: !242, size: 64, offset: 1216)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1150, file: !902, line: 361, baseType: !535, size: 64, offset: 1280)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1150, file: !902, line: 362, baseType: !134, size: 64, offset: 1344)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1150, file: !902, line: 365, baseType: !157, size: 64, offset: 1408)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1150, file: !902, line: 373, baseType: !1265, offset: 1472)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !902, line: 296, elements: !183)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1146, file: !902, line: 391, baseType: !932, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1146, file: !902, line: 392, baseType: !600, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1146, file: !902, line: 394, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!242, !535, !242, !242, !242, !242}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1146, file: !902, line: 398, baseType: !242, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1146, file: !902, line: 399, baseType: !242, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1146, file: !902, line: 405, baseType: !242, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1146, file: !902, line: 406, baseType: !242, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1146, file: !902, line: 407, baseType: !1277, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !892, line: 286, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !892, line: 286, size: 64, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1279, file: !892, line: 286, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1165, line: 18, baseType: !242)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1146, file: !902, line: 416, baseType: !143, size: 32, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1146, file: !902, line: 428, baseType: !143, size: 32, offset: 608)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1146, file: !902, line: 437, baseType: !143, size: 32, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1146, file: !902, line: 447, baseType: !143, size: 32, offset: 672)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1146, file: !902, line: 450, baseType: !157, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1146, file: !902, line: 452, baseType: !148, size: 32, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1146, file: !902, line: 454, baseType: !169, offset: 800)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1146, file: !902, line: 457, baseType: !943, size: 256, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1146, file: !902, line: 459, baseType: !185, size: 128, offset: 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1146, file: !902, line: 466, baseType: !242, size: 64, offset: 1216)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1146, file: !902, line: 467, baseType: !242, size: 64, offset: 1280)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1146, file: !902, line: 469, baseType: !242, size: 64, offset: 1344)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1146, file: !902, line: 470, baseType: !242, size: 64, offset: 1408)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1146, file: !902, line: 471, baseType: !159, size: 64, offset: 1472)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1146, file: !902, line: 472, baseType: !242, size: 64, offset: 1536)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1146, file: !902, line: 473, baseType: !242, size: 64, offset: 1600)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1146, file: !902, line: 474, baseType: !242, size: 64, offset: 1664)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1146, file: !902, line: 475, baseType: !242, size: 64, offset: 1728)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1146, file: !902, line: 477, baseType: !169, offset: 1792)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1146, file: !902, line: 478, baseType: !242, size: 64, offset: 1792)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1146, file: !902, line: 478, baseType: !242, size: 64, offset: 1856)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1146, file: !902, line: 478, baseType: !242, size: 64, offset: 1920)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1146, file: !902, line: 478, baseType: !242, size: 64, offset: 1984)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1146, file: !902, line: 479, baseType: !242, size: 64, offset: 2048)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1146, file: !902, line: 479, baseType: !242, size: 64, offset: 2112)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1146, file: !902, line: 479, baseType: !242, size: 64, offset: 2176)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1146, file: !902, line: 480, baseType: !242, size: 64, offset: 2240)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1146, file: !902, line: 480, baseType: !242, size: 64, offset: 2304)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1146, file: !902, line: 480, baseType: !242, size: 64, offset: 2368)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1146, file: !902, line: 480, baseType: !242, size: 64, offset: 2432)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1146, file: !902, line: 482, baseType: !1314, size: 2816, offset: 2496)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 2816, elements: !1315)
!1315 = !{!1316}
!1316 = !DISubrange(count: 44)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1146, file: !902, line: 488, baseType: !1318, size: 256, offset: 5312)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1319, line: 60, size: 256, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1318, file: !1319, line: 61, baseType: !1322, size: 256)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !231)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1146, file: !902, line: 490, baseType: !1324, size: 64, offset: 5568)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !902, line: 490, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1146, file: !902, line: 493, baseType: !1327, size: 896, offset: 5632)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1328, line: 53, baseType: !1329)
!1328 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 13, size: 896, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334, !1337, !1338, !1339, !1340, !1360, !1361, !1362}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1329, file: !1328, line: 18, baseType: !600, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1329, file: !1328, line: 28, baseType: !159, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1329, file: !1328, line: 31, baseType: !943, size: 256, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1329, file: !1328, line: 32, baseType: !1335, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1328, line: 32, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1329, file: !1328, line: 37, baseType: !249, size: 16, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1329, file: !1328, line: 40, baseType: !153, size: 192, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1329, file: !1328, line: 41, baseType: !134, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1329, file: !1328, line: 42, baseType: !1341, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1344, line: 13, size: 896, elements: !1345)
!1344 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1343, file: !1344, line: 14, baseType: !134, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1343, file: !1344, line: 15, baseType: !242, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1343, file: !1344, line: 17, baseType: !242, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1343, file: !1344, line: 17, baseType: !242, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1343, file: !1344, line: 19, baseType: !494, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1343, file: !1344, line: 21, baseType: !494, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1343, file: !1344, line: 22, baseType: !494, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1343, file: !1344, line: 23, baseType: !494, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1343, file: !1344, line: 24, baseType: !494, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1343, file: !1344, line: 25, baseType: !494, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1343, file: !1344, line: 26, baseType: !494, size: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1343, file: !1344, line: 27, baseType: !494, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1343, file: !1344, line: 28, baseType: !494, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1343, file: !1344, line: 29, baseType: !494, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1329, file: !1328, line: 44, baseType: !143, size: 32, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1329, file: !1328, line: 50, baseType: !1028, size: 16, offset: 864)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1329, file: !1328, line: 51, baseType: !1363, size: 16, offset: 880)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !164, line: 18, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !166, line: 23, baseType: !1365)
!1365 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1146, file: !902, line: 495, baseType: !242, size: 64, offset: 6528)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1146, file: !902, line: 497, baseType: !1368, size: 64, offset: 6592)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !902, line: 381, size: 384, elements: !1370)
!1370 = !{!1371, !1372, !2513}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1369, file: !902, line: 382, baseType: !143, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1369, file: !902, line: 383, baseType: !1373, size: 128, offset: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !902, line: 376, size: 128, elements: !1374)
!1374 = !{!1375, !2511}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1373, file: !902, line: 377, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1378, line: 640, size: 48640, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1379 = !{!1380, !1386, !1388, !1389, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1406, !1424, !1435, !1518, !1519, !1520, !1531, !1532, !1534, !1535, !1536, !1537, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1616, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1691, !1693, !1694, !1695, !1707, !1708, !1709, !1710, !1711, !1712, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1736, !1741, !1921, !1922, !1923, !1924, !1925, !1928, !1931, !1934, !1937, !1963, !2064, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2110, !2111, !2112, !2113, !2114, !2119, !2120, !2121, !2124, !2125, !2128, !2131, !2134, !2137, !2169, !2172, !2173, !2252, !2253, !2256, !2257, !2260, !2261, !2262, !2266, !2267, !2268, !2281, !2282, !2283, !2293, !2298, !2301, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1377, file: !1378, line: 646, baseType: !1381, size: 128)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1382, line: 56, size: 128, elements: !1383)
!1382 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !1382, line: 57, baseType: !242, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1381, file: !1382, line: 58, baseType: !283, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1377, file: !1378, line: 649, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !494)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1377, file: !1378, line: 657, baseType: !134, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1377, file: !1378, line: 658, baseType: !1390, size: 32, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1391, line: 113, baseType: !1392)
!1391 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1391, line: 111, size: 32, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1392, file: !1391, line: 112, baseType: !143, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1377, file: !1378, line: 660, baseType: !7, size: 32, offset: 288)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1377, file: !1378, line: 661, baseType: !7, size: 32, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1377, file: !1378, line: 684, baseType: !148, size: 32, offset: 352)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1377, file: !1378, line: 686, baseType: !148, size: 32, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1377, file: !1378, line: 687, baseType: !148, size: 32, offset: 416)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1377, file: !1378, line: 688, baseType: !148, size: 32, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1377, file: !1378, line: 689, baseType: !7, size: 32, offset: 480)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1377, file: !1378, line: 691, baseType: !1403, size: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1378, line: 691, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1377, file: !1378, line: 692, baseType: !1407, size: 832, offset: 576)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1378, line: 451, size: 832, elements: !1408)
!1408 = !{!1409, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1407, file: !1378, line: 453, baseType: !1410, size: 128)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1378, line: 325, size: 128, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1410, file: !1378, line: 326, baseType: !242, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1410, file: !1378, line: 327, baseType: !283, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1407, file: !1378, line: 454, baseType: !936, size: 192, align: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1407, file: !1378, line: 455, baseType: !185, size: 128, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1407, file: !1378, line: 456, baseType: !7, size: 32, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1407, file: !1378, line: 458, baseType: !600, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1407, file: !1378, line: 459, baseType: !600, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1407, file: !1378, line: 460, baseType: !600, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1407, file: !1378, line: 461, baseType: !600, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1407, file: !1378, line: 463, baseType: !600, size: 64, offset: 768)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1407, file: !1378, line: 465, baseType: !1423, offset: 832)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1378, line: 415, elements: !183)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1377, file: !1378, line: 693, baseType: !1425, size: 384, offset: 1408)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1378, line: 489, size: 384, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1425, file: !1378, line: 490, baseType: !185, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1425, file: !1378, line: 491, baseType: !242, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1425, file: !1378, line: 492, baseType: !242, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1425, file: !1378, line: 493, baseType: !7, size: 32, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1425, file: !1378, line: 494, baseType: !249, size: 16, offset: 288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1425, file: !1378, line: 495, baseType: !249, size: 16, offset: 304)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1425, file: !1378, line: 497, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1377, file: !1378, line: 697, baseType: !1436, size: 1792, offset: 1792)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1378, line: 507, size: 1792, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1515, !1516}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1436, file: !1378, line: 508, baseType: !936, size: 192, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1436, file: !1378, line: 515, baseType: !600, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1436, file: !1378, line: 516, baseType: !600, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1436, file: !1378, line: 517, baseType: !600, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1436, file: !1378, line: 518, baseType: !600, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1436, file: !1378, line: 519, baseType: !600, size: 64, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1436, file: !1378, line: 526, baseType: !163, size: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1436, file: !1378, line: 527, baseType: !600, size: 64, offset: 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1436, file: !1378, line: 528, baseType: !7, size: 32, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1436, file: !1378, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1436, file: !1378, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1436, file: !1378, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1436, file: !1378, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1436, file: !1378, line: 563, baseType: !1452, size: 512, offset: 704)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1453)
!1453 = !{!1454, !1462, !1463, !1468, !1511, !1512, !1513, !1514}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1452, file: !32, line: 119, baseType: !1455, size: 256)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1456, line: 9, size: 256, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1455, file: !1456, line: 10, baseType: !936, size: 192, align: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1455, file: !1456, line: 11, baseType: !1460, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1461, line: 29, baseType: !163)
!1461 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1452, file: !32, line: 120, baseType: !1460, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1452, file: !32, line: 121, baseType: !1464, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!31, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1452, file: !32, line: 122, baseType: !1469, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1471)
!1471 = !{!1472, !1492, !1493, !1496, !1501, !1502, !1506, !1510}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1470, file: !32, line: 160, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 214, size: 4608, align: 512, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1474, file: !32, line: 215, baseType: !949)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1474, file: !32, line: 216, baseType: !7, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1474, file: !32, line: 217, baseType: !7, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1474, file: !32, line: 218, baseType: !7, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1474, file: !32, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1474, file: !32, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1474, file: !32, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1474, file: !32, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1474, file: !32, line: 233, baseType: !1460, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1474, file: !32, line: 234, baseType: !1467, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1474, file: !32, line: 235, baseType: !1460, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1474, file: !32, line: 236, baseType: !1467, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1474, file: !32, line: 237, baseType: !1489, size: 4096, offset: 512)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 4096, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 8)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1470, file: !32, line: 161, baseType: !7, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1470, file: !32, line: 162, baseType: !1494, size: 32, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !144, line: 27, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !492, line: 96, baseType: !148)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1470, file: !32, line: 163, baseType: !1497, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !571, line: 276, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !571, line: 276, size: 32, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1498, file: !571, line: 276, baseType: !575, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1470, file: !32, line: 164, baseType: !1467, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1470, file: !32, line: 165, baseType: !1503, size: 128, offset: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1456, line: 14, size: 128, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1503, file: !1456, line: 15, baseType: !928, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1470, file: !32, line: 166, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1460}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1470, file: !32, line: 167, baseType: !1460, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1452, file: !32, line: 123, baseType: !344, size: 8, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1452, file: !32, line: 124, baseType: !344, size: 8, offset: 456)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1452, file: !32, line: 125, baseType: !344, size: 8, offset: 464)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1452, file: !32, line: 126, baseType: !344, size: 8, offset: 472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1436, file: !1378, line: 572, baseType: !1452, size: 512, offset: 1216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1436, file: !1378, line: 580, baseType: !1517, size: 64, offset: 1728)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1377, file: !1378, line: 721, baseType: !7, size: 32, offset: 3584)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1377, file: !1378, line: 722, baseType: !148, size: 32, offset: 3616)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1377, file: !1378, line: 723, baseType: !1521, size: 64, offset: 3648)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1524, line: 17, baseType: !1525)
!1524 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1524, line: 17, size: 64, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1525, file: !1524, line: 17, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DISubrange(count: 1)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1377, file: !1378, line: 724, baseType: !1523, size: 64, offset: 3712)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1377, file: !1378, line: 749, baseType: !1533, offset: 3776)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1378, line: 290, elements: !183)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1377, file: !1378, line: 751, baseType: !185, size: 128, offset: 3776)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1377, file: !1378, line: 757, baseType: !1142, size: 64, offset: 3904)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1377, file: !1378, line: 758, baseType: !1142, size: 64, offset: 3968)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1377, file: !1378, line: 761, baseType: !1538, size: 320, offset: 4032)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1319, line: 34, size: 320, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1538, file: !1319, line: 35, baseType: !600, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1538, file: !1319, line: 36, baseType: !1542, size: 256, offset: 64)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 256, elements: !231)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1377, file: !1378, line: 766, baseType: !148, size: 32, offset: 4352)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1377, file: !1378, line: 767, baseType: !148, size: 32, offset: 4384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1377, file: !1378, line: 768, baseType: !148, size: 32, offset: 4416)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1377, file: !1378, line: 770, baseType: !148, size: 32, offset: 4448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1377, file: !1378, line: 772, baseType: !242, size: 64, offset: 4480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1377, file: !1378, line: 775, baseType: !7, size: 32, offset: 4544)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1377, file: !1378, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1377, file: !1378, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1377, file: !1378, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1377, file: !1378, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1377, file: !1378, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1377, file: !1378, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1377, file: !1378, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1377, file: !1378, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1377, file: !1378, line: 831, baseType: !242, size: 64, offset: 4672)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1377, file: !1378, line: 833, baseType: !1559, size: 384, offset: 4736)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 384, elements: !1560)
!1560 = !{!1561, !1566}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1559, file: !37, line: 26, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!494, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !37, line: 27, baseType: !1567, size: 320, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !37, line: 27, size: 320, elements: !1568)
!1568 = !{!1569, !1579, !1606}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1567, file: !37, line: 36, baseType: !1570, size: 320)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !37, line: 29, size: 320, elements: !1571)
!1571 = !{!1572, !1574, !1575, !1576, !1577, !1578}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1570, file: !37, line: 30, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1570, file: !37, line: 31, baseType: !283, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !37, line: 32, baseType: !283, size: 32, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1570, file: !37, line: 33, baseType: !283, size: 32, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1570, file: !37, line: 34, baseType: !600, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1570, file: !37, line: 35, baseType: !1573, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1567, file: !37, line: 46, baseType: !1580, size: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !37, line: 38, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1605}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1580, file: !37, line: 39, baseType: !1494, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1580, file: !37, line: 40, baseType: !36, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !37, line: 41, baseType: !1585, size: 64, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1580, file: !37, line: 41, size: 64, elements: !1586)
!1586 = !{!1587, !1595}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1585, file: !37, line: 42, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1590, line: 7, size: 128, elements: !1591)
!1590 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1589, file: !1590, line: 8, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !492, line: 93, baseType: !167)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1589, file: !1590, line: 9, baseType: !167, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1585, file: !37, line: 43, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1598, line: 7, size: 64, elements: !1599)
!1598 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1604}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1597, file: !1598, line: 8, baseType: !1601, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1598, line: 5, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !164, line: 20, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !166, line: 26, baseType: !148)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1597, file: !1598, line: 9, baseType: !1602, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1580, file: !37, line: 45, baseType: !600, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1567, file: !37, line: 54, baseType: !1607, size: 256)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !37, line: 48, size: 256, elements: !1608)
!1608 = !{!1609, !1612, !1613, !1614, !1615}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1607, file: !37, line: 49, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !37, line: 14, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1607, file: !37, line: 50, baseType: !148, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1607, file: !37, line: 51, baseType: !148, size: 32, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1607, file: !37, line: 52, baseType: !242, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1607, file: !37, line: 53, baseType: !242, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1377, file: !1378, line: 835, baseType: !1617, size: 32, offset: 5120)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !144, line: 22, baseType: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !492, line: 28, baseType: !148)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1377, file: !1378, line: 836, baseType: !1617, size: 32, offset: 5152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1377, file: !1378, line: 840, baseType: !242, size: 64, offset: 5184)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1377, file: !1378, line: 849, baseType: !1376, size: 64, offset: 5248)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1377, file: !1378, line: 852, baseType: !1376, size: 64, offset: 5312)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1377, file: !1378, line: 857, baseType: !185, size: 128, offset: 5376)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1377, file: !1378, line: 858, baseType: !185, size: 128, offset: 5504)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1377, file: !1378, line: 859, baseType: !1376, size: 64, offset: 5632)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1377, file: !1378, line: 867, baseType: !185, size: 128, offset: 5696)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1377, file: !1378, line: 868, baseType: !185, size: 128, offset: 5824)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1377, file: !1378, line: 871, baseType: !1629, size: 64, offset: 5952)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !65, line: 59, size: 768, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1637, !1638, !1645, !1646}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1630, file: !65, line: 61, baseType: !1390, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1630, file: !65, line: 62, baseType: !7, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1630, file: !65, line: 63, baseType: !169, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1630, file: !65, line: 65, baseType: !1636, size: 256, offset: 64)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 256, elements: !231)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1630, file: !65, line: 66, baseType: !814, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1630, file: !65, line: 68, baseType: !1639, size: 128, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1640, line: 40, baseType: !1641)
!1640 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1640, line: 36, size: 128, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1641, file: !1640, line: 37, baseType: !169)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1641, file: !1640, line: 38, baseType: !185, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1630, file: !65, line: 69, baseType: !548, size: 128, align: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1630, file: !65, line: 70, baseType: !1647, size: 128, offset: 640)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1648, size: 128, elements: !1529)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !65, line: 54, size: 128, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1648, file: !65, line: 55, baseType: !148, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1648, file: !65, line: 56, baseType: !1652, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1654, line: 20, size: 1088, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1661, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1677, !1680, !1681}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1653, file: !1654, line: 21, baseType: !1657, size: 32)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1658, line: 19, size: 32, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1657, file: !1658, line: 20, baseType: !1390, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1653, file: !1654, line: 22, baseType: !1662, size: 192, offset: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1663, line: 19, size: 192, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1662, file: !1663, line: 20, baseType: !918, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1662, file: !1663, line: 21, baseType: !7, size: 32, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1662, file: !1663, line: 22, baseType: !7, size: 32, offset: 160)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1653, file: !1654, line: 23, baseType: !548, size: 128, align: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1653, file: !1654, line: 24, baseType: !7, size: 32, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1653, file: !1654, line: 25, baseType: !1376, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1653, file: !1654, line: 26, baseType: !1103, size: 64, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1653, file: !1654, line: 27, baseType: !7, size: 32, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1653, file: !1654, line: 28, baseType: !1652, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1653, file: !1654, line: 32, baseType: !1675, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !614, line: 18, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1653, file: !1654, line: 33, baseType: !1678, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1654, line: 33, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1653, file: !1654, line: 34, baseType: !148, size: 32, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1653, file: !1654, line: 35, baseType: !1682, size: 192, offset: 896)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1683, line: 7, size: 192, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1690}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1682, file: !1683, line: 8, baseType: !157, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1682, file: !1683, line: 9, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1683, line: 5, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1682, file: !1683, line: 10, baseType: !7, size: 32, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1377, file: !1378, line: 872, baseType: !1692, size: 512, offset: 6016)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 512, elements: !231)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1377, file: !1378, line: 873, baseType: !185, size: 128, offset: 6528)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1377, file: !1378, line: 874, baseType: !185, size: 128, offset: 6656)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1377, file: !1378, line: 876, baseType: !1696, size: 64, offset: 6784)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1698, line: 26, size: 192, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1697, file: !1698, line: 27, baseType: !7, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1697, file: !1698, line: 28, baseType: !1702, size: 128, offset: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1703, line: 43, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1702, file: !1703, line: 44, baseType: !949)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1702, file: !1703, line: 45, baseType: !185, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1377, file: !1378, line: 879, baseType: !884, size: 64, offset: 6848)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1377, file: !1378, line: 882, baseType: !884, size: 64, offset: 6912)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1377, file: !1378, line: 884, baseType: !600, size: 64, offset: 6976)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1377, file: !1378, line: 885, baseType: !600, size: 64, offset: 7040)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1377, file: !1378, line: 890, baseType: !600, size: 64, offset: 7104)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1377, file: !1378, line: 891, baseType: !1713, size: 128, offset: 7168)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1378, line: 242, size: 128, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1713, file: !1378, line: 244, baseType: !600, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1713, file: !1378, line: 245, baseType: !600, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1713, file: !1378, line: 246, baseType: !949, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1377, file: !1378, line: 900, baseType: !242, size: 64, offset: 7296)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1377, file: !1378, line: 901, baseType: !242, size: 64, offset: 7360)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1377, file: !1378, line: 904, baseType: !600, size: 64, offset: 7424)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1377, file: !1378, line: 907, baseType: !600, size: 64, offset: 7488)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1377, file: !1378, line: 910, baseType: !242, size: 64, offset: 7552)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1377, file: !1378, line: 911, baseType: !242, size: 64, offset: 7616)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1377, file: !1378, line: 914, baseType: !1725, size: 640, offset: 7680)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1726, line: 123, size: 640, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1734, !1735}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1725, file: !1726, line: 124, baseType: !1729, size: 576)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, size: 576, elements: !460)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1726, line: 108, size: 192, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1730, file: !1726, line: 109, baseType: !600, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1730, file: !1726, line: 110, baseType: !1503, size: 128, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1725, file: !1726, line: 125, baseType: !7, size: 32, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1725, file: !1726, line: 126, baseType: !7, size: 32, offset: 608)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1377, file: !1378, line: 917, baseType: !1737, size: 192, offset: 8320)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1726, line: 134, size: 192, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1737, file: !1726, line: 135, baseType: !548, size: 128, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1737, file: !1726, line: 136, baseType: !7, size: 32, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1377, file: !1378, line: 923, baseType: !1742, size: 64, offset: 8512)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1745, line: 111, size: 1280, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1764, !1765, !1766, !1767, !1768, !1769, !1876, !1877, !1878, !1879, !1905, !1906, !1916}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1744, file: !1745, line: 112, baseType: !143, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1744, file: !1745, line: 120, baseType: !613, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1744, file: !1745, line: 121, baseType: !621, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1744, file: !1745, line: 122, baseType: !613, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1744, file: !1745, line: 123, baseType: !621, size: 32, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1744, file: !1745, line: 124, baseType: !613, size: 32, offset: 160)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1744, file: !1745, line: 125, baseType: !621, size: 32, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1744, file: !1745, line: 126, baseType: !613, size: 32, offset: 224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1744, file: !1745, line: 127, baseType: !621, size: 32, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1744, file: !1745, line: 128, baseType: !7, size: 32, offset: 288)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1744, file: !1745, line: 129, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1759, line: 26, baseType: !1760)
!1759 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1759, line: 24, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1760, file: !1759, line: 25, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !259)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1744, file: !1745, line: 130, baseType: !1758, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1744, file: !1745, line: 131, baseType: !1758, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1744, file: !1745, line: 132, baseType: !1758, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1744, file: !1745, line: 133, baseType: !1758, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1744, file: !1745, line: 135, baseType: !299, size: 8, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1744, file: !1745, line: 137, baseType: !1770, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1772, line: 189, size: 1664, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775, !1778, !1783, !1784, !1787, !1788, !1793, !1794, !1795, !1796, !1798, !1799, !1800, !1801, !1802, !1840, !1861}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1771, file: !1772, line: 190, baseType: !1390, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1771, file: !1772, line: 191, baseType: !1776, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1772, line: 28, baseType: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !144, line: 98, baseType: !1602)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1772, line: 192, baseType: !1779, size: 192, offset: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !1772, line: 192, size: 192, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1779, file: !1772, line: 193, baseType: !185, size: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1779, file: !1772, line: 194, baseType: !936, size: 192, align: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1771, file: !1772, line: 199, baseType: !943, size: 256, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1771, file: !1772, line: 200, baseType: !1785, size: 64, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1772, line: 200, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1771, file: !1772, line: 201, baseType: !134, size: 64, offset: 576)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1772, line: 202, baseType: !1789, size: 64, offset: 640)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !1772, line: 202, size: 64, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1789, file: !1772, line: 203, baseType: !716, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1789, file: !1772, line: 204, baseType: !716, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1771, file: !1772, line: 206, baseType: !716, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1771, file: !1772, line: 207, baseType: !613, size: 32, offset: 768)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1771, file: !1772, line: 208, baseType: !621, size: 32, offset: 800)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1771, file: !1772, line: 209, baseType: !1797, size: 32, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1772, line: 31, baseType: !735)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1771, file: !1772, line: 210, baseType: !249, size: 16, offset: 864)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1771, file: !1772, line: 211, baseType: !249, size: 16, offset: 880)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1771, file: !1772, line: 215, baseType: !1365, size: 16, offset: 896)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !1772, line: 222, baseType: !242, size: 64, offset: 960)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1772, line: 239, baseType: !1803, size: 320, offset: 1024)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !1772, line: 239, size: 320, elements: !1804)
!1804 = !{!1805, !1832}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1803, file: !1772, line: 240, baseType: !1806, size: 320)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1772, line: 108, size: 320, elements: !1807)
!1807 = !{!1808, !1809, !1821, !1824, !1831}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1806, file: !1772, line: 110, baseType: !242, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1772, line: 111, baseType: !1810, size: 64, offset: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !1772, line: 111, size: 64, elements: !1811)
!1811 = !{!1812, !1820}
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !1772, line: 112, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1772, line: 112, size: 64, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1813, file: !1772, line: 114, baseType: !1028, size: 16)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1813, file: !1772, line: 115, baseType: !1817, size: 48, offset: 16)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 48, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 6)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1810, file: !1772, line: 121, baseType: !242, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !1772, line: 123, baseType: !1822, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1772, line: 96, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1806, file: !1772, line: 124, baseType: !1825, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1772, line: 102, size: 192, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1826, file: !1772, line: 103, baseType: !548, size: 128, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1826, file: !1772, line: 104, baseType: !1390, size: 32, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1826, file: !1772, line: 105, baseType: !668, size: 8, offset: 160)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1806, file: !1772, line: 125, baseType: !280, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1772, line: 241, baseType: !1833, size: 320)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !1772, line: 241, size: 320, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1838, !1839}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1833, file: !1772, line: 242, baseType: !242, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1833, file: !1772, line: 243, baseType: !242, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1833, file: !1772, line: 244, baseType: !1822, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1833, file: !1772, line: 245, baseType: !1825, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1833, file: !1772, line: 246, baseType: !459, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1772, line: 254, baseType: !1841, size: 256, offset: 1344)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !1772, line: 254, size: 256, elements: !1842)
!1842 = !{!1843, !1849}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1841, file: !1772, line: 255, baseType: !1844, size: 256)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1772, line: 128, size: 256, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1844, file: !1772, line: 129, baseType: !134, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1844, file: !1772, line: 130, baseType: !1848, size: 256)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !231)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1772, line: 256, baseType: !1850, size: 256)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1772, line: 256, size: 256, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1850, file: !1772, line: 258, baseType: !185, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1850, file: !1772, line: 259, baseType: !1854, size: 128, offset: 128)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1855, line: 22, size: 128, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !{!1857, !1860}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1854, file: !1855, line: 23, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1855, line: 23, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1854, file: !1855, line: 24, baseType: !242, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1771, file: !1772, line: 274, baseType: !1862, size: 64, offset: 1600)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1772, line: 170, size: 192, elements: !1864)
!1864 = !{!1865, !1874, !1875}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1863, file: !1772, line: 171, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1772, line: 165, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!148, !1770, !1870, !1872, !1770}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1863, file: !1772, line: 172, baseType: !1770, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1863, file: !1772, line: 173, baseType: !1822, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1744, file: !1745, line: 138, baseType: !1770, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1744, file: !1745, line: 139, baseType: !1770, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1744, file: !1745, line: 140, baseType: !1770, size: 64, offset: 896)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1744, file: !1745, line: 145, baseType: !1880, size: 64, offset: 960)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1882, line: 13, size: 896, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !{!1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1881, file: !1882, line: 14, baseType: !1390, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1881, file: !1882, line: 15, baseType: !143, size: 32, offset: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1881, file: !1882, line: 16, baseType: !143, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1881, file: !1882, line: 21, baseType: !157, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1881, file: !1882, line: 27, baseType: !242, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1881, file: !1882, line: 28, baseType: !242, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1881, file: !1882, line: 29, baseType: !157, size: 64, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1881, file: !1882, line: 32, baseType: !818, size: 128, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1881, file: !1882, line: 33, baseType: !613, size: 32, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1881, file: !1882, line: 37, baseType: !157, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1881, file: !1882, line: 44, baseType: !1895, size: 256, offset: 640)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1896, line: 15, size: 256, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !1896, line: 16, baseType: !949)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1895, file: !1896, line: 18, baseType: !148, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1895, file: !1896, line: 19, baseType: !148, size: 32, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1895, file: !1896, line: 20, baseType: !148, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1895, file: !1896, line: 21, baseType: !148, size: 32, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1895, file: !1896, line: 22, baseType: !242, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !1896, line: 23, baseType: !242, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1744, file: !1745, line: 146, baseType: !1675, size: 64, offset: 1024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1744, file: !1745, line: 147, baseType: !1907, size: 64, offset: 1088)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1745, line: 25, size: 64, elements: !1909)
!1909 = !{!1910, !1911, !1912}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1908, file: !1745, line: 26, baseType: !143, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1908, file: !1745, line: 27, baseType: !148, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1908, file: !1745, line: 28, baseType: !1913, offset: 64)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, elements: !1914)
!1914 = !{!1915}
!1915 = !DISubrange(count: 0)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 149, baseType: !1917, size: 128, offset: 1152)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 149, size: 128, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1917, file: !1745, line: 150, baseType: !148, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1917, file: !1745, line: 151, baseType: !548, size: 128, align: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1377, file: !1378, line: 926, baseType: !1742, size: 64, offset: 8576)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1377, file: !1378, line: 929, baseType: !1742, size: 64, offset: 8640)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1377, file: !1378, line: 933, baseType: !1770, size: 64, offset: 8704)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1377, file: !1378, line: 943, baseType: !237, size: 128, offset: 8768)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1377, file: !1378, line: 945, baseType: !1926, size: 64, offset: 8896)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1378, line: 49, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1377, file: !1378, line: 956, baseType: !1929, size: 64, offset: 8960)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1378, line: 45, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1377, file: !1378, line: 959, baseType: !1932, size: 64, offset: 9024)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1378, line: 959, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1377, file: !1378, line: 962, baseType: !1935, size: 64, offset: 9088)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1378, line: 66, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1377, file: !1378, line: 966, baseType: !1938, size: 64, offset: 9152)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1940, line: 31, size: 576, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1941 = !{!1942, !1943, !1946, !1949, !1952, !1953, !1956, !1959, !1960}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1939, file: !1940, line: 32, baseType: !143, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1939, file: !1940, line: 33, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1940, line: 9, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1939, file: !1940, line: 34, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1940, line: 10, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1939, file: !1940, line: 35, baseType: !1950, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1940, line: 8, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1939, file: !1940, line: 36, baseType: !1652, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1939, file: !1940, line: 37, baseType: !1954, size: 64, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1772, line: 34, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1939, file: !1940, line: 38, baseType: !1957, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1940, line: 38, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1939, file: !1940, line: 39, baseType: !1957, size: 64, offset: 448)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1939, file: !1940, line: 40, baseType: !1961, size: 64, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1940, line: 12, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1377, file: !1378, line: 969, baseType: !1964, size: 64, offset: 9216)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1966, line: 82, size: 7296, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !2003, !2012, !2013, !2015, !2016, !2017, !2020, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2050, !2051, !2058, !2059, !2060, !2061, !2062, !2063}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1965, file: !1966, line: 83, baseType: !1390, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1965, file: !1966, line: 84, baseType: !143, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1965, file: !1966, line: 85, baseType: !148, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1965, file: !1966, line: 86, baseType: !185, size: 128, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1965, file: !1966, line: 88, baseType: !1639, size: 128, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1965, file: !1966, line: 91, baseType: !1376, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1965, file: !1966, line: 94, baseType: !1975, size: 192, offset: 448)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1976, line: 30, size: 192, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1975, file: !1976, line: 31, baseType: !185, size: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1975, file: !1976, line: 32, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1981, line: 25, baseType: !1982)
!1981 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1981, line: 23, size: 64, elements: !1983)
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1982, file: !1981, line: 24, baseType: !1528, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1965, file: !1966, line: 97, baseType: !814, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1965, file: !1966, line: 100, baseType: !148, size: 32, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1965, file: !1966, line: 106, baseType: !148, size: 32, offset: 736)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1965, file: !1966, line: 107, baseType: !1376, size: 64, offset: 768)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1965, file: !1966, line: 110, baseType: !148, size: 32, offset: 832)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !1966, line: 111, baseType: !7, size: 32, offset: 864)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1965, file: !1966, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1965, file: !1966, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1965, file: !1966, line: 128, baseType: !148, size: 32, offset: 928)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1965, file: !1966, line: 129, baseType: !185, size: 128, offset: 960)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1965, file: !1966, line: 132, baseType: !1452, size: 512, offset: 1088)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1965, file: !1966, line: 133, baseType: !1460, size: 64, offset: 1600)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1965, file: !1966, line: 140, baseType: !1998, size: 256, offset: 1664)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1999, size: 256, elements: !259)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1966, line: 38, size: 128, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1999, file: !1966, line: 39, baseType: !600, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1999, file: !1966, line: 40, baseType: !600, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1965, file: !1966, line: 146, baseType: !2004, size: 192, offset: 1920)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1966, line: 66, size: 192, elements: !2005)
!2005 = !{!2006}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2004, file: !1966, line: 67, baseType: !2007, size: 192)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1966, line: 47, size: 192, elements: !2008)
!2008 = !{!2009, !2010, !2011}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2007, file: !1966, line: 48, baseType: !159, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2007, file: !1966, line: 49, baseType: !159, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2007, file: !1966, line: 50, baseType: !159, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1965, file: !1966, line: 150, baseType: !1725, size: 640, offset: 2112)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1965, file: !1966, line: 153, baseType: !2014, size: 256, offset: 2752)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 256, elements: !231)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1965, file: !1966, line: 159, baseType: !1629, size: 64, offset: 3008)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1965, file: !1966, line: 162, baseType: !148, size: 32, offset: 3072)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1965, file: !1966, line: 164, baseType: !2018, size: 64, offset: 3136)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1966, line: 164, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1965, file: !1966, line: 175, baseType: !2021, size: 32, offset: 3200)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !571, line: 805, baseType: !2022)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 798, size: 32, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2022, file: !571, line: 803, baseType: !570, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2022, file: !571, line: 804, baseType: !169, offset: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1965, file: !1966, line: 176, baseType: !600, size: 64, offset: 3264)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1965, file: !1966, line: 176, baseType: !600, size: 64, offset: 3328)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1965, file: !1966, line: 176, baseType: !600, size: 64, offset: 3392)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1965, file: !1966, line: 176, baseType: !600, size: 64, offset: 3456)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1965, file: !1966, line: 177, baseType: !600, size: 64, offset: 3520)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1965, file: !1966, line: 178, baseType: !600, size: 64, offset: 3584)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1965, file: !1966, line: 179, baseType: !1713, size: 128, offset: 3648)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1965, file: !1966, line: 180, baseType: !242, size: 64, offset: 3776)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1965, file: !1966, line: 180, baseType: !242, size: 64, offset: 3840)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1965, file: !1966, line: 180, baseType: !242, size: 64, offset: 3904)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1965, file: !1966, line: 180, baseType: !242, size: 64, offset: 3968)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1965, file: !1966, line: 181, baseType: !242, size: 64, offset: 4032)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1965, file: !1966, line: 181, baseType: !242, size: 64, offset: 4096)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1965, file: !1966, line: 181, baseType: !242, size: 64, offset: 4160)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1965, file: !1966, line: 181, baseType: !242, size: 64, offset: 4224)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1965, file: !1966, line: 182, baseType: !242, size: 64, offset: 4288)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1965, file: !1966, line: 182, baseType: !242, size: 64, offset: 4352)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1965, file: !1966, line: 182, baseType: !242, size: 64, offset: 4416)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1965, file: !1966, line: 182, baseType: !242, size: 64, offset: 4480)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1965, file: !1966, line: 183, baseType: !242, size: 64, offset: 4544)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1965, file: !1966, line: 183, baseType: !242, size: 64, offset: 4608)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1965, file: !1966, line: 184, baseType: !2048, offset: 4672)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2049, line: 12, elements: !183)
!2049 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1965, file: !1966, line: 192, baseType: !602, size: 64, offset: 4672)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1965, file: !1966, line: 203, baseType: !2052, size: 2048, offset: 4736)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2053, size: 2048, elements: !239)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2054, line: 43, size: 128, elements: !2055)
!2054 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2053, file: !2054, line: 44, baseType: !507, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2053, file: !2054, line: 45, baseType: !507, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1965, file: !1966, line: 220, baseType: !668, size: 8, offset: 6784)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1965, file: !1966, line: 221, baseType: !1365, size: 16, offset: 6800)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1965, file: !1966, line: 222, baseType: !1365, size: 16, offset: 6816)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1965, file: !1966, line: 224, baseType: !1142, size: 64, offset: 6848)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1965, file: !1966, line: 227, baseType: !153, size: 192, offset: 6912)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1965, file: !1966, line: 233, baseType: !153, size: 192, offset: 7104)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1377, file: !1378, line: 970, baseType: !2065, size: 64, offset: 9280)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1966, line: 20, size: 16576, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2066, file: !1966, line: 21, baseType: !169)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2066, file: !1966, line: 22, baseType: !1390, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2066, file: !1966, line: 23, baseType: !1639, size: 128, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2066, file: !1966, line: 24, baseType: !2072, size: 16384, offset: 192)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2073, size: 16384, elements: !464)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1976, line: 49, size: 256, elements: !2074)
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2073, file: !1976, line: 50, baseType: !2076, size: 256)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1976, line: 35, size: 256, elements: !2077)
!2077 = !{!2078, !2085, !2086, !2092}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2076, file: !1976, line: 37, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2080, line: 19, baseType: !2081)
!2080 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2080, line: 18, baseType: !2083)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !148}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2076, file: !1976, line: 38, baseType: !242, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2076, file: !1976, line: 44, baseType: !2087, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2080, line: 22, baseType: !2088)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2080, line: 21, baseType: !2090)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2076, file: !1976, line: 46, baseType: !1980, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1377, file: !1378, line: 971, baseType: !1980, size: 64, offset: 9344)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1377, file: !1378, line: 972, baseType: !1980, size: 64, offset: 9408)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1377, file: !1378, line: 974, baseType: !1980, size: 64, offset: 9472)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1377, file: !1378, line: 975, baseType: !1975, size: 192, offset: 9536)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1377, file: !1378, line: 976, baseType: !242, size: 64, offset: 9728)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1377, file: !1378, line: 977, baseType: !505, size: 64, offset: 9792)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1377, file: !1378, line: 978, baseType: !7, size: 32, offset: 9856)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1377, file: !1378, line: 980, baseType: !551, size: 64, offset: 9920)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1377, file: !1378, line: 989, baseType: !2102, size: 128, offset: 9984)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2103, line: 35, size: 128, elements: !2104)
!2103 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2102, file: !2103, line: 36, baseType: !148, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2102, file: !2103, line: 37, baseType: !143, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2102, file: !2103, line: 38, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2103, line: 23, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1377, file: !1378, line: 992, baseType: !600, size: 64, offset: 10112)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1377, file: !1378, line: 993, baseType: !600, size: 64, offset: 10176)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1377, file: !1378, line: 996, baseType: !169, offset: 10240)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1377, file: !1378, line: 999, baseType: !949, offset: 10240)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1377, file: !1378, line: 1001, baseType: !2115, size: 64, offset: 10240)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1378, line: 636, size: 64, elements: !2116)
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2115, file: !1378, line: 637, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1377, file: !1378, line: 1005, baseType: !928, size: 128, offset: 10304)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1377, file: !1378, line: 1007, baseType: !1376, size: 64, offset: 10432)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1377, file: !1378, line: 1009, baseType: !2122, size: 64, offset: 10496)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1378, line: 1009, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1377, file: !1378, line: 1043, baseType: !134, size: 64, offset: 10560)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1377, file: !1378, line: 1046, baseType: !2126, size: 64, offset: 10624)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1378, line: 41, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1377, file: !1378, line: 1050, baseType: !2129, size: 64, offset: 10688)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1378, line: 42, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1377, file: !1378, line: 1054, baseType: !2132, size: 64, offset: 10752)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1378, line: 55, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1377, file: !1378, line: 1056, baseType: !2135, size: 64, offset: 10816)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1378, line: 40, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1377, file: !1378, line: 1058, baseType: !2138, size: 64, offset: 10880)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2140, line: 99, size: 704, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2167, !2168}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2139, file: !2140, line: 100, baseType: !157, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2139, file: !2140, line: 101, baseType: !143, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2139, file: !2140, line: 102, baseType: !143, size: 32, offset: 96)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2139, file: !2140, line: 105, baseType: !169, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2139, file: !2140, line: 107, baseType: !249, size: 16, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2139, file: !2140, line: 109, baseType: !918, size: 128, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2139, file: !2140, line: 110, baseType: !2149, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2140, line: 73, size: 448, elements: !2151)
!2151 = !{!2152, !2155, !2156, !2161, !2166}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2150, file: !2140, line: 74, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2140, line: 74, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2150, file: !2140, line: 75, baseType: !2138, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !2140, line: 83, baseType: !2157, size: 128, offset: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !2140, line: 83, size: 128, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2157, file: !2140, line: 84, baseType: !185, size: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2157, file: !2140, line: 85, baseType: !1103, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !2140, line: 87, baseType: !2162, size: 128, offset: 256)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !2140, line: 87, size: 128, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2162, file: !2140, line: 88, baseType: !818, size: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2162, file: !2140, line: 89, baseType: !548, size: 128, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2140, line: 92, baseType: !7, size: 32, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2139, file: !2140, line: 111, baseType: !814, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2139, file: !2140, line: 113, baseType: !328, size: 256, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1377, file: !1378, line: 1061, baseType: !2170, size: 64, offset: 10944)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1378, line: 43, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1377, file: !1378, line: 1064, baseType: !242, size: 64, offset: 11008)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1377, file: !1378, line: 1065, baseType: !2174, size: 64, offset: 11072)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1976, line: 14, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1976, line: 12, size: 384, elements: !2177)
!2177 = !{!2178}
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2176, file: !1976, line: 13, baseType: !2179, size: 384)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2176, file: !1976, line: 13, size: 384, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2179, file: !1976, line: 13, baseType: !148, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2179, file: !1976, line: 13, baseType: !148, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2179, file: !1976, line: 13, baseType: !148, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2179, file: !1976, line: 13, baseType: !2185, size: 256, offset: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2186, line: 32, size: 256, elements: !2187)
!2186 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2187 = !{!2188, !2193, !2206, !2212, !2221, !2241, !2246}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2185, file: !2186, line: 37, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2186, line: 34, size: 64, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2189, file: !2186, line: 35, baseType: !1618, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2189, file: !2186, line: 36, baseType: !619, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2185, file: !2186, line: 45, baseType: !2194, size: 192)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2186, line: 40, size: 192, elements: !2195)
!2195 = !{!2196, !2198, !2199, !2205}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2194, file: !2186, line: 41, baseType: !2197, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !492, line: 95, baseType: !148)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2194, file: !2186, line: 42, baseType: !148, size: 32, offset: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2194, file: !2186, line: 43, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2186, line: 11, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2186, line: 8, size: 64, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2201, file: !2186, line: 9, baseType: !148, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2201, file: !2186, line: 10, baseType: !134, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2194, file: !2186, line: 44, baseType: !148, size: 32, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2185, file: !2186, line: 52, baseType: !2207, size: 128)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2186, line: 48, size: 128, elements: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2207, file: !2186, line: 49, baseType: !1618, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2207, file: !2186, line: 50, baseType: !619, size: 32, offset: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2207, file: !2186, line: 51, baseType: !2200, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2185, file: !2186, line: 61, baseType: !2213, size: 256)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2186, line: 55, size: 256, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218, !2220}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2213, file: !2186, line: 56, baseType: !1618, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2213, file: !2186, line: 57, baseType: !619, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2213, file: !2186, line: 58, baseType: !148, size: 32, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2213, file: !2186, line: 59, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !492, line: 94, baseType: !493)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2213, file: !2186, line: 60, baseType: !2219, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2185, file: !2186, line: 95, baseType: !2222, size: 256)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2186, line: 64, size: 256, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2222, file: !2186, line: 65, baseType: !134, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !2186, line: 77, baseType: !2226, size: 192, offset: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !2186, line: 77, size: 192, elements: !2227)
!2227 = !{!2228, !2229, !2236}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2226, file: !2186, line: 82, baseType: !1365, size: 16)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2226, file: !2186, line: 88, baseType: !2230, size: 192)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2226, file: !2186, line: 84, size: 192, elements: !2231)
!2231 = !{!2232, !2234, !2235}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2230, file: !2186, line: 85, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 64, elements: !1490)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2230, file: !2186, line: 86, baseType: !134, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2230, file: !2186, line: 87, baseType: !134, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2226, file: !2186, line: 93, baseType: !2237, size: 96)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2226, file: !2186, line: 90, size: 96, elements: !2238)
!2238 = !{!2239, !2240}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2237, file: !2186, line: 91, baseType: !2233, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2237, file: !2186, line: 92, baseType: !196, size: 32, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2185, file: !2186, line: 101, baseType: !2242, size: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2186, line: 98, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2242, file: !2186, line: 99, baseType: !494, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2242, file: !2186, line: 100, baseType: !148, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2185, file: !2186, line: 108, baseType: !2247, size: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !2186, line: 104, size: 128, elements: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2247, file: !2186, line: 105, baseType: !134, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2247, file: !2186, line: 106, baseType: !148, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2247, file: !2186, line: 107, baseType: !7, size: 32, offset: 96)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1377, file: !1378, line: 1067, baseType: !2048, offset: 11136)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1377, file: !1378, line: 1099, baseType: !2254, size: 64, offset: 11136)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1378, line: 56, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1377, file: !1378, line: 1103, baseType: !185, size: 128, offset: 11200)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1377, file: !1378, line: 1104, baseType: !2258, size: 64, offset: 11328)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1378, line: 46, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1377, file: !1378, line: 1105, baseType: !153, size: 192, offset: 11392)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1377, file: !1378, line: 1106, baseType: !7, size: 32, offset: 11584)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1377, file: !1378, line: 1109, baseType: !2263, size: 128, offset: 11648)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2264, size: 128, elements: !259)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1378, line: 51, flags: DIFlagFwdDecl)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1377, file: !1378, line: 1110, baseType: !153, size: 192, offset: 11776)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1377, file: !1378, line: 1111, baseType: !185, size: 128, offset: 11968)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1377, file: !1378, line: 1173, baseType: !2269, size: 64, offset: 12096)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2271, line: 62, size: 256, align: 256, elements: !2272)
!2271 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2272 = !{!2273, !2274, !2275, !2280}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2270, file: !2271, line: 75, baseType: !196, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2270, file: !2271, line: 90, baseType: !196, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2270, file: !2271, line: 124, baseType: !2276, size: 64, offset: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !2271, line: 109, size: 64, elements: !2277)
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2276, file: !2271, line: 110, baseType: !601, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2276, file: !2271, line: 112, baseType: !601, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2270, file: !2271, line: 144, baseType: !196, size: 32, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1377, file: !1378, line: 1174, baseType: !283, size: 32, offset: 12160)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1377, file: !1378, line: 1179, baseType: !242, size: 64, offset: 12224)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1377, file: !1378, line: 1182, baseType: !2284, size: 128, offset: 12288)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1319, line: 76, size: 128, elements: !2285)
!2285 = !{!2286, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2284, file: !1319, line: 85, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2288, line: 7, size: 64, elements: !2289)
!2288 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2289 = !{!2290}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2287, file: !2288, line: 12, baseType: !1525, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2284, file: !1319, line: 88, baseType: !668, size: 8, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2284, file: !1319, line: 95, baseType: !668, size: 8, offset: 72)
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1378, line: 1184, baseType: !2294, size: 128, offset: 12416)
!2294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !1378, line: 1184, size: 128, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2294, file: !1378, line: 1185, baseType: !1390, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2294, file: !1378, line: 1186, baseType: !548, size: 128, align: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1377, file: !1378, line: 1190, baseType: !2299, size: 64, offset: 12544)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1378, line: 53, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1377, file: !1378, line: 1192, baseType: !2302, size: 128, offset: 12608)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1319, line: 64, size: 128, elements: !2303)
!2303 = !{!2304, !2305, !2306}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2302, file: !1319, line: 65, baseType: !900, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2302, file: !1319, line: 67, baseType: !196, size: 32, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2302, file: !1319, line: 68, baseType: !196, size: 32, offset: 96)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1377, file: !1378, line: 1206, baseType: !148, size: 32, offset: 12736)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1377, file: !1378, line: 1207, baseType: !148, size: 32, offset: 12768)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1377, file: !1378, line: 1209, baseType: !242, size: 64, offset: 12800)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1377, file: !1378, line: 1219, baseType: !600, size: 64, offset: 12864)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1377, file: !1378, line: 1220, baseType: !600, size: 64, offset: 12928)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1377, file: !1378, line: 1317, baseType: !148, size: 32, offset: 12992)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1377, file: !1378, line: 1319, baseType: !1376, size: 64, offset: 13056)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1377, file: !1378, line: 1322, baseType: !2315, size: 64, offset: 13120)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2317, line: 56, size: 512, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2318 = !{!2319, !2320, !2321, !2322, !2323, !2324, !2325, !2327}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2316, file: !2317, line: 57, baseType: !2315, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2316, file: !2317, line: 58, baseType: !134, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2316, file: !2317, line: 59, baseType: !242, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !2317, line: 60, baseType: !242, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2316, file: !2317, line: 61, baseType: !989, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2316, file: !2317, line: 62, baseType: !7, size: 32, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2316, file: !2317, line: 63, baseType: !2326, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !144, line: 153, baseType: !600)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2316, file: !2317, line: 64, baseType: !2328, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1377, file: !1378, line: 1326, baseType: !1390, size: 32, offset: 13184)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1377, file: !1378, line: 1342, baseType: !134, size: 64, offset: 13248)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1377, file: !1378, line: 1343, baseType: !601, size: 64, offset: 13312)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1377, file: !1378, line: 1344, baseType: !600, size: 64, offset: 13376)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1377, file: !1378, line: 1345, baseType: !601, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1377, file: !1378, line: 1346, baseType: !601, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1377, file: !1378, line: 1347, baseType: !601, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1377, file: !1378, line: 1348, baseType: !548, size: 128, align: 64, offset: 13504)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1377, file: !1378, line: 1358, baseType: !2339, size: 34816, offset: 13824)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2340, line: 485, size: 34816, elements: !2341)
!2340 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2341 = !{!2342, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2371, !2372, !2373, !2374, !2375, !2376, !2379, !2380, !2381}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2339, file: !2340, line: 487, baseType: !2343, size: 192)
!2343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, size: 192, elements: !460)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2345, line: 16, size: 64, elements: !2346)
!2345 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2344, file: !2345, line: 17, baseType: !1028, size: 16)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2344, file: !2345, line: 18, baseType: !1028, size: 16, offset: 16)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2344, file: !2345, line: 19, baseType: !1028, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2344, file: !2345, line: 19, baseType: !1028, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2344, file: !2345, line: 19, baseType: !1028, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2344, file: !2345, line: 19, baseType: !1028, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2344, file: !2345, line: 19, baseType: !1028, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2344, file: !2345, line: 20, baseType: !1028, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2344, file: !2345, line: 20, baseType: !1028, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2344, file: !2345, line: 20, baseType: !1028, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2344, file: !2345, line: 20, baseType: !1028, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2344, file: !2345, line: 20, baseType: !1028, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2344, file: !2345, line: 20, baseType: !1028, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2339, file: !2340, line: 491, baseType: !242, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2339, file: !2340, line: 495, baseType: !249, size: 16, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2339, file: !2340, line: 496, baseType: !249, size: 16, offset: 272)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2339, file: !2340, line: 497, baseType: !249, size: 16, offset: 288)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2339, file: !2340, line: 498, baseType: !249, size: 16, offset: 304)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2339, file: !2340, line: 502, baseType: !242, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2339, file: !2340, line: 503, baseType: !242, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2339, file: !2340, line: 514, baseType: !2368, size: 256, offset: 448)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, size: 256, elements: !231)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2340, line: 483, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2339, file: !2340, line: 516, baseType: !242, size: 64, offset: 704)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2339, file: !2340, line: 518, baseType: !242, size: 64, offset: 768)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2339, file: !2340, line: 520, baseType: !242, size: 64, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2339, file: !2340, line: 521, baseType: !242, size: 64, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2339, file: !2340, line: 522, baseType: !242, size: 64, offset: 960)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2339, file: !2340, line: 528, baseType: !2377, size: 64, offset: 1024)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2340, line: 10, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2339, file: !2340, line: 535, baseType: !242, size: 64, offset: 1088)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2339, file: !2340, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2339, file: !2340, line: 540, baseType: !2382, size: 33280, offset: 1536)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2383, line: 317, size: 33280, elements: !2384)
!2383 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2384 = !{!2385, !2386, !2387}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2382, file: !2383, line: 330, baseType: !7, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2382, file: !2383, line: 337, baseType: !242, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2382, file: !2383, line: 348, baseType: !2388, size: 32768, offset: 512)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2383, line: 304, size: 32768, elements: !2389)
!2389 = !{!2390, !2405, !2444, !2494, !2507}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2388, file: !2383, line: 305, baseType: !2391, size: 896)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2383, line: 12, size: 896, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2404}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2391, file: !2383, line: 13, baseType: !283, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2391, file: !2383, line: 14, baseType: !283, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2391, file: !2383, line: 15, baseType: !283, size: 32, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2391, file: !2383, line: 16, baseType: !283, size: 32, offset: 96)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2391, file: !2383, line: 17, baseType: !283, size: 32, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2391, file: !2383, line: 18, baseType: !283, size: 32, offset: 160)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2391, file: !2383, line: 19, baseType: !283, size: 32, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2391, file: !2383, line: 22, baseType: !2401, size: 640, offset: 224)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 640, elements: !2402)
!2402 = !{!2403}
!2403 = !DISubrange(count: 20)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2391, file: !2383, line: 25, baseType: !283, size: 32, offset: 864)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2388, file: !2383, line: 306, baseType: !2406, size: 4096, align: 128)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2383, line: 34, size: 4096, align: 128, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2427, !2428, !2429, !2433, !2435, !2439}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2406, file: !2383, line: 35, baseType: !1028, size: 16)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2406, file: !2383, line: 36, baseType: !1028, size: 16, offset: 16)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2406, file: !2383, line: 37, baseType: !1028, size: 16, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2406, file: !2383, line: 38, baseType: !1028, size: 16, offset: 48)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2406, file: !2383, line: 39, baseType: !2413, size: 128, offset: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2406, file: !2383, line: 39, size: 128, elements: !2414)
!2414 = !{!2415, !2420}
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !2413, file: !2383, line: 40, baseType: !2416, size: 128)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2383, line: 40, size: 128, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2416, file: !2383, line: 41, baseType: !600, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2416, file: !2383, line: 42, baseType: !600, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !2413, file: !2383, line: 44, baseType: !2421, size: 128)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2383, line: 44, size: 128, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2421, file: !2383, line: 45, baseType: !283, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2421, file: !2383, line: 46, baseType: !283, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2421, file: !2383, line: 47, baseType: !283, size: 32, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2421, file: !2383, line: 48, baseType: !283, size: 32, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2406, file: !2383, line: 51, baseType: !283, size: 32, offset: 192)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2406, file: !2383, line: 52, baseType: !283, size: 32, offset: 224)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2406, file: !2383, line: 55, baseType: !2430, size: 1024, offset: 256)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 1024, elements: !2431)
!2431 = !{!2432}
!2432 = !DISubrange(count: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2406, file: !2383, line: 58, baseType: !2434, size: 2048, offset: 1280)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 2048, elements: !464)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2406, file: !2383, line: 60, baseType: !2436, size: 384, offset: 3328)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 384, elements: !2437)
!2437 = !{!2438}
!2438 = !DISubrange(count: 12)
!2439 = !DIDerivedType(tag: DW_TAG_member, scope: !2406, file: !2383, line: 62, baseType: !2440, size: 384, offset: 3712)
!2440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2406, file: !2383, line: 62, size: 384, elements: !2441)
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2440, file: !2383, line: 63, baseType: !2436, size: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2440, file: !2383, line: 64, baseType: !2436, size: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2388, file: !2383, line: 307, baseType: !2445, size: 1088)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2383, line: 79, size: 1088, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2493}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2445, file: !2383, line: 80, baseType: !283, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2445, file: !2383, line: 81, baseType: !283, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2445, file: !2383, line: 82, baseType: !283, size: 32, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2445, file: !2383, line: 83, baseType: !283, size: 32, offset: 96)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2445, file: !2383, line: 84, baseType: !283, size: 32, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2445, file: !2383, line: 85, baseType: !283, size: 32, offset: 160)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2445, file: !2383, line: 86, baseType: !283, size: 32, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2445, file: !2383, line: 88, baseType: !2401, size: 640, offset: 224)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2445, file: !2383, line: 89, baseType: !344, size: 8, offset: 864)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2445, file: !2383, line: 90, baseType: !344, size: 8, offset: 872)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2445, file: !2383, line: 91, baseType: !344, size: 8, offset: 880)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2445, file: !2383, line: 92, baseType: !344, size: 8, offset: 888)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2445, file: !2383, line: 93, baseType: !344, size: 8, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2445, file: !2383, line: 94, baseType: !344, size: 8, offset: 904)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2445, file: !2383, line: 95, baseType: !2462, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2464, line: 11, size: 128, elements: !2465)
!2464 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2463, file: !2464, line: 12, baseType: !494, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2463, file: !2464, line: 13, baseType: !2468, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2470, line: 56, size: 1344, elements: !2471)
!2470 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2469, file: !2470, line: 61, baseType: !242, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2469, file: !2470, line: 62, baseType: !242, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2469, file: !2470, line: 63, baseType: !242, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2469, file: !2470, line: 64, baseType: !242, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2469, file: !2470, line: 65, baseType: !242, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2469, file: !2470, line: 66, baseType: !242, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2469, file: !2470, line: 68, baseType: !242, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2469, file: !2470, line: 69, baseType: !242, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2469, file: !2470, line: 70, baseType: !242, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2469, file: !2470, line: 71, baseType: !242, size: 64, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2469, file: !2470, line: 72, baseType: !242, size: 64, offset: 640)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2469, file: !2470, line: 73, baseType: !242, size: 64, offset: 704)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2469, file: !2470, line: 74, baseType: !242, size: 64, offset: 768)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2469, file: !2470, line: 75, baseType: !242, size: 64, offset: 832)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2469, file: !2470, line: 76, baseType: !242, size: 64, offset: 896)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2469, file: !2470, line: 81, baseType: !242, size: 64, offset: 960)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2469, file: !2470, line: 83, baseType: !242, size: 64, offset: 1024)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2469, file: !2470, line: 84, baseType: !242, size: 64, offset: 1088)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2469, file: !2470, line: 85, baseType: !242, size: 64, offset: 1152)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2469, file: !2470, line: 86, baseType: !242, size: 64, offset: 1216)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2469, file: !2470, line: 87, baseType: !242, size: 64, offset: 1280)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2445, file: !2383, line: 96, baseType: !283, size: 32, offset: 1024)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2388, file: !2383, line: 308, baseType: !2495, size: 4608, align: 512)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2383, line: 289, size: 4608, align: 512, elements: !2496)
!2496 = !{!2497, !2498, !2505}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2495, file: !2383, line: 290, baseType: !2406, size: 4096, align: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2495, file: !2383, line: 291, baseType: !2499, size: 512, offset: 4096)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2383, line: 268, size: 512, elements: !2500)
!2500 = !{!2501, !2502, !2503}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2499, file: !2383, line: 269, baseType: !600, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2499, file: !2383, line: 270, baseType: !600, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2499, file: !2383, line: 271, baseType: !2504, size: 384, offset: 128)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 384, elements: !1818)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2495, file: !2383, line: 292, baseType: !2506, offset: 4608)
!2506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, elements: !1914)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2388, file: !2383, line: 309, baseType: !2508, size: 32768)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32768, elements: !2509)
!2509 = !{!2510}
!2510 = !DISubrange(count: 4096)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1373, file: !902, line: 378, baseType: !2512, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1369, file: !902, line: 384, baseType: !1697, size: 192, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1146, file: !902, line: 500, baseType: !169, offset: 6656)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1146, file: !902, line: 501, baseType: !2516, size: 64, offset: 6656)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !902, line: 387, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1146, file: !902, line: 516, baseType: !1675, size: 64, offset: 6720)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1146, file: !902, line: 519, baseType: !535, size: 64, offset: 6784)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1146, file: !902, line: 521, baseType: !2521, size: 64, offset: 6848)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !902, line: 521, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1146, file: !902, line: 545, baseType: !143, size: 32, offset: 6912)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1146, file: !902, line: 548, baseType: !668, size: 8, offset: 6944)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1146, file: !902, line: 550, baseType: !2526, offset: 6952)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2527, line: 142, elements: !183)
!2527 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1146, file: !902, line: 554, baseType: !328, size: 256, offset: 6976)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1146, file: !902, line: 557, baseType: !283, size: 32, offset: 7232)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1143, file: !902, line: 565, baseType: !2531, offset: 7296)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !2532)
!2532 = !{!2533}
!2533 = !DISubrange(count: -1)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1139, file: !902, line: 151, baseType: !143, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1132, file: !902, line: 156, baseType: !169, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !902, line: 159, baseType: !2537, size: 128)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !902, line: 159, size: 128, elements: !2538)
!2538 = !{!2539, !2603}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2537, file: !902, line: 161, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 110, size: 1152, elements: !2542)
!2542 = !{!2543, !2553, !2574, !2575, !2576, !2577, !2578, !2590, !2591, !2592}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2541, file: !43, line: 111, baseType: !2544, size: 384)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 19, size: 384, elements: !2545)
!2545 = !{!2546, !2548, !2549, !2550, !2551, !2552}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2544, file: !43, line: 20, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2544, file: !43, line: 21, baseType: !2547, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2544, file: !43, line: 22, baseType: !2547, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2544, file: !43, line: 23, baseType: !242, size: 64, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2544, file: !43, line: 24, baseType: !242, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2544, file: !43, line: 25, baseType: !242, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2541, file: !43, line: 112, baseType: !2554, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2556, line: 105, size: 128, elements: !2557)
!2556 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2555, file: !2556, line: 110, baseType: !242, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2555, file: !2556, line: 118, baseType: !2560, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2556, line: 95, size: 448, elements: !2562)
!2562 = !{!2563, !2564, !2569, !2570, !2571, !2572, !2573}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2561, file: !2556, line: 96, baseType: !157, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2561, file: !2556, line: 97, baseType: !2565, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2556, line: 60, baseType: !2567)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !2554}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2561, file: !2556, line: 98, baseType: !2565, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2561, file: !2556, line: 99, baseType: !668, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2561, file: !2556, line: 100, baseType: !668, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2561, file: !2556, line: 101, baseType: !548, size: 128, align: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2561, file: !2556, line: 102, baseType: !2554, size: 64, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2541, file: !43, line: 113, baseType: !2555, size: 128, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2541, file: !43, line: 114, baseType: !1697, size: 192, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2541, file: !43, line: 115, baseType: !42, size: 32, offset: 768)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2541, file: !43, line: 116, baseType: !7, size: 32, offset: 800)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2541, file: !43, line: 117, baseType: !2579, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2581)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 67, size: 256, elements: !2582)
!2582 = !{!2583, !2584, !2588, !2589}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2581, file: !43, line: 73, baseType: !1009, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2581, file: !43, line: 78, baseType: !2585, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !2540}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2581, file: !43, line: 83, baseType: !2585, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2581, file: !43, line: 89, baseType: !1195, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2541, file: !43, line: 118, baseType: !134, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2541, file: !43, line: 119, baseType: !148, size: 32, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !43, line: 120, baseType: !2593, size: 128, offset: 1024)
!2593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2541, file: !43, line: 120, size: 128, elements: !2594)
!2594 = !{!2595, !2601}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2593, file: !43, line: 121, baseType: !2596, size: 128)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2597, line: 6, size: 128, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2596, file: !2597, line: 7, baseType: !600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2596, file: !2597, line: 8, baseType: !600, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2593, file: !43, line: 122, baseType: !2602)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2596, elements: !1914)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2537, file: !902, line: 162, baseType: !134, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !906, file: !902, line: 176, baseType: !548, size: 128, align: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !902, line: 179, baseType: !2606, size: 32, offset: 384)
!2606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !902, line: 179, size: 32, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2606, file: !902, line: 184, baseType: !143, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2606, file: !902, line: 192, baseType: !7, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2606, file: !902, line: 194, baseType: !7, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2606, file: !902, line: 195, baseType: !148, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !901, file: !902, line: 199, baseType: !143, size: 32, offset: 416)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !836, file: !56, line: 1964, baseType: !2614, size: 64, offset: 1344)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!494, !775, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2619, line: 12, size: 256, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2620 = !{!2621, !2622, !2623, !2624, !2625}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2618, file: !2619, line: 13, baseType: !923, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2618, file: !2619, line: 16, baseType: !148, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2618, file: !2619, line: 23, baseType: !242, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2618, file: !2619, line: 30, baseType: !242, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2618, file: !2619, line: 33, baseType: !2626, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !902, line: 27, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !836, file: !56, line: 1966, baseType: !2614, size: 64, offset: 1408)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !776, file: !56, line: 1424, baseType: !2630, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !50, line: 322, size: 704, elements: !2633)
!2633 = !{!2634, !2680, !2684, !2688, !2689, !2690, !2691, !2692, !2697, !2702, !2706}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2632, file: !50, line: 323, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!148, !2638}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !50, line: 294, size: 1600, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2665, !2666, !2667}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2639, file: !50, line: 295, baseType: !818, size: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2639, file: !50, line: 296, baseType: !185, size: 128, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2639, file: !50, line: 297, baseType: !185, size: 128, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2639, file: !50, line: 298, baseType: !185, size: 128, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2639, file: !50, line: 299, baseType: !153, size: 192, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2639, file: !50, line: 300, baseType: !169, offset: 704)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2639, file: !50, line: 301, baseType: !143, size: 32, offset: 704)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2639, file: !50, line: 302, baseType: !775, size: 64, offset: 768)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2639, file: !50, line: 303, baseType: !2650, size: 64, offset: 832)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !50, line: 68, size: 64, elements: !2651)
!2651 = !{!2652, !2664}
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !2650, file: !50, line: 69, baseType: !2653, size: 32)
!2653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2650, file: !50, line: 69, size: 32, elements: !2654)
!2654 = !{!2655, !2656, !2657}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2653, file: !50, line: 70, baseType: !613, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2653, file: !50, line: 71, baseType: !621, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2653, file: !50, line: 72, baseType: !2658, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2659, line: 24, baseType: !2660)
!2659 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2659, line: 22, size: 32, elements: !2661)
!2661 = !{!2662}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2660, file: !2659, line: 23, baseType: !2663, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2659, line: 20, baseType: !619)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2650, file: !50, line: 74, baseType: !49, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2639, file: !50, line: 304, baseType: !709, size: 64, offset: 896)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2639, file: !50, line: 305, baseType: !242, size: 64, offset: 960)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2639, file: !50, line: 306, baseType: !2668, size: 576, offset: 1024)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !50, line: 205, size: 576, elements: !2669)
!2669 = !{!2670, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2668, file: !50, line: 206, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !50, line: 66, baseType: !167)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2668, file: !50, line: 207, baseType: !2671, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2668, file: !50, line: 208, baseType: !2671, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2668, file: !50, line: 209, baseType: !2671, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2668, file: !50, line: 210, baseType: !2671, size: 64, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2668, file: !50, line: 211, baseType: !2671, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2668, file: !50, line: 212, baseType: !2671, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2668, file: !50, line: 213, baseType: !716, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2668, file: !50, line: 214, baseType: !716, size: 64, offset: 512)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2632, file: !50, line: 324, baseType: !2681, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!2638, !775, !148}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2632, file: !50, line: 325, baseType: !2685, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2638}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2632, file: !50, line: 326, baseType: !2635, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2632, file: !50, line: 327, baseType: !2635, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2632, file: !50, line: 328, baseType: !2635, size: 64, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2632, file: !50, line: 329, baseType: !864, size: 64, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2632, file: !50, line: 332, baseType: !2693, size: 64, offset: 448)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!2696, !607}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2632, file: !50, line: 333, baseType: !2698, size: 64, offset: 512)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!148, !607, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2632, file: !50, line: 335, baseType: !2703, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!148, !607, !2696}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2632, file: !50, line: 337, baseType: !2707, size: 64, offset: 640)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!148, !775, !2710}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !776, file: !56, line: 1425, baseType: !2712, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !50, line: 428, size: 704, elements: !2715)
!2715 = !{!2716, !2720, !2721, !2725, !2726, !2727, !2742, !2765, !2769, !2770, !2793}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2714, file: !50, line: 429, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!148, !775, !148, !148, !725}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2714, file: !50, line: 430, baseType: !864, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2714, file: !50, line: 431, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!148, !775, !7}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2714, file: !50, line: 432, baseType: !2722, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2714, file: !50, line: 433, baseType: !864, size: 64, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2714, file: !50, line: 434, baseType: !2728, size: 64, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!148, !775, !148, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !50, line: 415, size: 256, elements: !2733)
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2732, file: !50, line: 416, baseType: !148, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2732, file: !50, line: 417, baseType: !7, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2732, file: !50, line: 418, baseType: !7, size: 32, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2732, file: !50, line: 420, baseType: !7, size: 32, offset: 96)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2732, file: !50, line: 421, baseType: !7, size: 32, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2732, file: !50, line: 422, baseType: !7, size: 32, offset: 160)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2732, file: !50, line: 423, baseType: !7, size: 32, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2732, file: !50, line: 424, baseType: !7, size: 32, offset: 224)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2714, file: !50, line: 435, baseType: !2743, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!148, !775, !2650, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !50, line: 343, size: 960, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2747, file: !50, line: 344, baseType: !148, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2747, file: !50, line: 345, baseType: !600, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2747, file: !50, line: 346, baseType: !600, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2747, file: !50, line: 347, baseType: !600, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2747, file: !50, line: 348, baseType: !600, size: 64, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2747, file: !50, line: 349, baseType: !600, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2747, file: !50, line: 350, baseType: !600, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2747, file: !50, line: 351, baseType: !163, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2747, file: !50, line: 353, baseType: !163, size: 64, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2747, file: !50, line: 354, baseType: !148, size: 32, offset: 576)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2747, file: !50, line: 355, baseType: !148, size: 32, offset: 608)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2747, file: !50, line: 356, baseType: !600, size: 64, offset: 640)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2747, file: !50, line: 357, baseType: !600, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2747, file: !50, line: 358, baseType: !600, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2747, file: !50, line: 359, baseType: !163, size: 64, offset: 832)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2747, file: !50, line: 360, baseType: !148, size: 32, offset: 896)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2714, file: !50, line: 436, baseType: !2766, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!148, !775, !2710, !2746}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2714, file: !50, line: 438, baseType: !2743, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2714, file: !50, line: 439, baseType: !2771, size: 64, offset: 576)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!148, !775, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !50, line: 409, size: 1408, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2775, file: !50, line: 410, baseType: !7, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2775, file: !50, line: 411, baseType: !2779, size: 1344, offset: 64)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 1344, elements: !460)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !50, line: 395, size: 448, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2792}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2780, file: !50, line: 396, baseType: !7, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2780, file: !50, line: 397, baseType: !7, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2780, file: !50, line: 399, baseType: !7, size: 32, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2780, file: !50, line: 400, baseType: !7, size: 32, offset: 96)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2780, file: !50, line: 401, baseType: !7, size: 32, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2780, file: !50, line: 402, baseType: !7, size: 32, offset: 160)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2780, file: !50, line: 403, baseType: !7, size: 32, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2780, file: !50, line: 404, baseType: !602, size: 64, offset: 256)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2780, file: !50, line: 405, baseType: !2791, size: 64, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !144, line: 126, baseType: !600)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2780, file: !50, line: 406, baseType: !2791, size: 64, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2714, file: !50, line: 440, baseType: !2722, size: 64, offset: 640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !776, file: !56, line: 1426, baseType: !2795, size: 64, offset: 576)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2797)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 49, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !776, file: !56, line: 1427, baseType: !242, size: 64, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !776, file: !56, line: 1428, baseType: !242, size: 64, offset: 704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !776, file: !56, line: 1429, baseType: !242, size: 64, offset: 768)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !776, file: !56, line: 1430, baseType: !565, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !776, file: !56, line: 1431, baseType: !943, size: 256, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !776, file: !56, line: 1432, baseType: !148, size: 32, offset: 1152)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !776, file: !56, line: 1433, baseType: !143, size: 32, offset: 1184)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !776, file: !56, line: 1437, baseType: !2806, size: 64, offset: 1216)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2809)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1437, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !776, file: !56, line: 1449, baseType: !2811, size: 64, offset: 1280)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !581, line: 34, size: 64, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2811, file: !581, line: 35, baseType: !584, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !776, file: !56, line: 1450, baseType: !185, size: 128, offset: 1344)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !776, file: !56, line: 1451, baseType: !2816, size: 64, offset: 1472)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 699, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !776, file: !56, line: 1452, baseType: !2135, size: 64, offset: 1536)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !776, file: !56, line: 1453, baseType: !2820, size: 64, offset: 1600)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1453, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !776, file: !56, line: 1454, baseType: !818, size: 128, offset: 1664)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !776, file: !56, line: 1455, baseType: !7, size: 32, offset: 1792)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !776, file: !56, line: 1456, baseType: !2825, size: 2432, offset: 1856)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !50, line: 518, size: 2432, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2831, !2863}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !50, line: 519, baseType: !7, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2825, file: !50, line: 520, baseType: !943, size: 256, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2825, file: !50, line: 521, baseType: !2830, size: 192, offset: 320)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 192, elements: !460)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2825, file: !50, line: 522, baseType: !2832, size: 1728, offset: 512)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2833, size: 1728, elements: !460)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !50, line: 222, size: 576, elements: !2834)
!2834 = !{!2835, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2833, file: !50, line: 223, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !50, line: 443, size: 256, elements: !2838)
!2838 = !{!2839, !2840, !2853, !2854}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2837, file: !50, line: 444, baseType: !148, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2837, file: !50, line: 445, baseType: !2841, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2843)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !50, line: 310, size: 512, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2843, file: !50, line: 311, baseType: !864, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2843, file: !50, line: 312, baseType: !864, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2843, file: !50, line: 313, baseType: !864, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2843, file: !50, line: 314, baseType: !864, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2843, file: !50, line: 315, baseType: !2635, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2843, file: !50, line: 316, baseType: !2635, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2843, file: !50, line: 317, baseType: !2635, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2843, file: !50, line: 318, baseType: !2707, size: 64, offset: 448)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2837, file: !50, line: 446, baseType: !809, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2837, file: !50, line: 447, baseType: !2836, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2833, file: !50, line: 224, baseType: !148, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2833, file: !50, line: 226, baseType: !185, size: 128, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2833, file: !50, line: 227, baseType: !242, size: 64, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2833, file: !50, line: 228, baseType: !7, size: 32, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2833, file: !50, line: 229, baseType: !7, size: 32, offset: 352)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2833, file: !50, line: 230, baseType: !2671, size: 64, offset: 384)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2833, file: !50, line: 231, baseType: !2671, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2833, file: !50, line: 232, baseType: !134, size: 64, offset: 512)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2825, file: !50, line: 523, baseType: !2864, size: 192, offset: 2240)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2841, size: 192, elements: !460)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !776, file: !56, line: 1458, baseType: !2866, size: 2112, offset: 4288)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1410, size: 2112, elements: !2867)
!2867 = !{!2868, !2869, !2870}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2866, file: !56, line: 1411, baseType: !148, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2866, file: !56, line: 1412, baseType: !1639, size: 128, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2866, file: !56, line: 1413, baseType: !2871, size: 1920, offset: 192)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2872, size: 1920, elements: !460)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2873, line: 12, size: 640, elements: !2874)
!2873 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2874 = !{!2875, !2883, !2885, !2890, !2891}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2872, file: !2873, line: 13, baseType: !2876, size: 320)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2877, line: 17, size: 320, elements: !2878)
!2877 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2878 = !{!2879, !2880, !2881, !2882}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2876, file: !2877, line: 18, baseType: !148, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2876, file: !2877, line: 19, baseType: !148, size: 32, offset: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2876, file: !2877, line: 20, baseType: !1639, size: 128, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2876, file: !2877, line: 22, baseType: !548, size: 128, align: 64, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2872, file: !2873, line: 14, baseType: !2884, size: 64, offset: 320)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2872, file: !2873, line: 15, baseType: !2886, size: 64, offset: 384)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2887, line: 16, size: 64, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2886, file: !2887, line: 17, baseType: !1376, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2872, file: !2873, line: 16, baseType: !1639, size: 128, offset: 448)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2872, file: !2873, line: 17, baseType: !143, size: 32, offset: 576)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !776, file: !56, line: 1465, baseType: !134, size: 64, offset: 6400)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !776, file: !56, line: 1468, baseType: !283, size: 32, offset: 6464)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !776, file: !56, line: 1470, baseType: !716, size: 64, offset: 6528)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !776, file: !56, line: 1471, baseType: !716, size: 64, offset: 6592)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !776, file: !56, line: 1473, baseType: !196, size: 32, offset: 6656)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !776, file: !56, line: 1474, baseType: !2898, size: 64, offset: 6720)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 603, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !776, file: !56, line: 1477, baseType: !2901, size: 256, offset: 6784)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 256, elements: !2431)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !776, file: !56, line: 1478, baseType: !2903, size: 128, offset: 7040)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2904, line: 18, baseType: !2905)
!2904 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2904, line: 16, size: 128, elements: !2906)
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2905, file: !2904, line: 17, baseType: !2908, size: 128)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 128, elements: !239)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !776, file: !56, line: 1480, baseType: !7, size: 32, offset: 7168)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !776, file: !56, line: 1481, baseType: !2911, size: 32, offset: 7200)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !144, line: 150, baseType: !7)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !776, file: !56, line: 1487, baseType: !153, size: 192, offset: 7232)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !776, file: !56, line: 1493, baseType: !280, size: 64, offset: 7424)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !776, file: !56, line: 1495, baseType: !2915, size: 64, offset: 7488)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2917)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !563, line: 135, size: 1024, align: 512, elements: !2918)
!2918 = !{!2919, !2923, !2924, !2931, !2937, !2941, !2945, !2949, !2950, !2954, !2958, !2963, !2967}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2917, file: !563, line: 136, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!148, !565, !7}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2917, file: !563, line: 137, baseType: !2920, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2917, file: !563, line: 138, baseType: !2925, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!148, !2928, !2930}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2917, file: !563, line: 139, baseType: !2932, size: 64, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!148, !2928, !7, !280, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2917, file: !563, line: 141, baseType: !2938, size: 64, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!148, !2928}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2917, file: !563, line: 142, baseType: !2942, size: 64, offset: 320)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!148, !565}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2917, file: !563, line: 143, baseType: !2946, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !565}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2917, file: !563, line: 144, baseType: !2946, size: 64, offset: 448)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2917, file: !563, line: 145, baseType: !2951, size: 64, offset: 512)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !565, !607}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2917, file: !563, line: 146, baseType: !2955, size: 64, offset: 576)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!459, !565, !459, !148}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2917, file: !563, line: 147, baseType: !2959, size: 64, offset: 640)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!561, !2962}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2917, file: !563, line: 148, baseType: !2964, size: 64, offset: 704)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!148, !725, !668}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2917, file: !563, line: 149, baseType: !2968, size: 64, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!565, !565, !2971}
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !776, file: !56, line: 1500, baseType: !148, size: 32, offset: 7552)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !776, file: !56, line: 1502, baseType: !2975, size: 448, offset: 7616)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2619, line: 60, size: 448, elements: !2976)
!2976 = !{!2977, !2982, !2983, !2984, !2985, !2986, !2987}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2975, file: !2619, line: 61, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!242, !2981, !2617}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2975, file: !2619, line: 63, baseType: !2978, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2975, file: !2619, line: 66, baseType: !494, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2975, file: !2619, line: 67, baseType: !148, size: 32, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2975, file: !2619, line: 68, baseType: !7, size: 32, offset: 224)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2975, file: !2619, line: 71, baseType: !185, size: 128, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2975, file: !2619, line: 77, baseType: !2988, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !776, file: !56, line: 1505, baseType: !157, size: 64, offset: 8064)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !776, file: !56, line: 1508, baseType: !157, size: 64, offset: 8128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !776, file: !56, line: 1511, baseType: !148, size: 32, offset: 8192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !776, file: !56, line: 1514, baseType: !1077, size: 32, offset: 8224)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !776, file: !56, line: 1517, baseType: !2994, size: 64, offset: 8256)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !329, line: 18, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !776, file: !56, line: 1518, baseType: !814, size: 64, offset: 8320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !776, file: !56, line: 1525, baseType: !1675, size: 64, offset: 8384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !776, file: !56, line: 1532, baseType: !2999, size: 64, offset: 8448)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3000, line: 52, size: 64, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3001 = !{!3002}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2999, file: !3000, line: 53, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3000, line: 40, size: 256, elements: !3005)
!3005 = !{!3006, !3007, !3012}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3004, file: !3000, line: 42, baseType: !169)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3004, file: !3000, line: 44, baseType: !3008, size: 192)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3000, line: 28, size: 192, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3008, file: !3000, line: 29, baseType: !185, size: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3008, file: !3000, line: 31, baseType: !494, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3004, file: !3000, line: 49, baseType: !494, size: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !776, file: !56, line: 1533, baseType: !2999, size: 64, offset: 8512)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !776, file: !56, line: 1534, baseType: !548, size: 128, align: 64, offset: 8576)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !776, file: !56, line: 1535, baseType: !328, size: 256, offset: 8704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !776, file: !56, line: 1537, baseType: !153, size: 192, offset: 8960)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !776, file: !56, line: 1542, baseType: !148, size: 32, offset: 9152)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !776, file: !56, line: 1545, baseType: !169, offset: 9184)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !776, file: !56, line: 1546, baseType: !185, size: 128, offset: 9216)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !776, file: !56, line: 1548, baseType: !169, offset: 9344)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !776, file: !56, line: 1549, baseType: !185, size: 128, offset: 9344)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !608, file: !56, line: 624, baseType: !913, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !608, file: !56, line: 631, baseType: !242, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !56, line: 639, baseType: !3025, size: 32, offset: 384)
!3025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !56, line: 639, size: 32, elements: !3026)
!3026 = !{!3027, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3025, file: !56, line: 640, baseType: !3028, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3025, file: !56, line: 641, baseType: !7, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !608, file: !56, line: 643, baseType: !691, size: 32, offset: 416)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !608, file: !56, line: 644, baseType: !709, size: 64, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !608, file: !56, line: 645, baseType: !712, size: 128, offset: 512)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !608, file: !56, line: 646, baseType: !712, size: 128, offset: 640)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !608, file: !56, line: 647, baseType: !712, size: 128, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !608, file: !56, line: 648, baseType: !169, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !608, file: !56, line: 649, baseType: !249, size: 16, offset: 896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !608, file: !56, line: 650, baseType: !344, size: 8, offset: 912)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !608, file: !56, line: 651, baseType: !344, size: 8, offset: 920)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !608, file: !56, line: 652, baseType: !2791, size: 64, offset: 960)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !608, file: !56, line: 659, baseType: !242, size: 64, offset: 1024)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !608, file: !56, line: 660, baseType: !943, size: 256, offset: 1088)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !608, file: !56, line: 662, baseType: !242, size: 64, offset: 1344)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !608, file: !56, line: 663, baseType: !242, size: 64, offset: 1408)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !608, file: !56, line: 665, baseType: !818, size: 128, offset: 1472)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !608, file: !56, line: 666, baseType: !185, size: 128, offset: 1600)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !608, file: !56, line: 675, baseType: !185, size: 128, offset: 1728)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !608, file: !56, line: 676, baseType: !185, size: 128, offset: 1856)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !608, file: !56, line: 677, baseType: !185, size: 128, offset: 1984)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !56, line: 678, baseType: !3050, size: 128, offset: 2112)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !56, line: 678, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3050, file: !56, line: 679, baseType: !814, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3050, file: !56, line: 680, baseType: !548, size: 128, align: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !608, file: !56, line: 682, baseType: !159, size: 64, offset: 2240)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !608, file: !56, line: 683, baseType: !159, size: 64, offset: 2304)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !608, file: !56, line: 684, baseType: !143, size: 32, offset: 2368)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !608, file: !56, line: 685, baseType: !143, size: 32, offset: 2400)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !608, file: !56, line: 686, baseType: !143, size: 32, offset: 2432)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !608, file: !56, line: 688, baseType: !143, size: 32, offset: 2464)
!3060 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !56, line: 690, baseType: !3061, size: 64, offset: 2496)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !56, line: 690, size: 64, elements: !3062)
!3062 = !{!3063, !3286}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3061, file: !56, line: 691, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1822, size: 2048, elements: !3067)
!3067 = !{!3068, !3069, !3073, !3078, !3082, !3083, !3084, !3088, !3101, !3102, !3110, !3114, !3115, !3119, !3120, !3124, !3129, !3130, !3134, !3138, !3246, !3250, !3251, !3255, !3256, !3260, !3264, !3269, !3273, !3277, !3281, !3285}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3066, file: !56, line: 1823, baseType: !809, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3066, file: !56, line: 1824, baseType: !3070, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!709, !535, !709, !148}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3066, file: !56, line: 1825, baseType: !3074, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!490, !535, !459, !505, !3077}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3066, file: !56, line: 1826, baseType: !3079, size: 64, offset: 192)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!490, !535, !280, !505, !3077}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3066, file: !56, line: 1827, baseType: !1013, size: 64, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3066, file: !56, line: 1828, baseType: !1013, size: 64, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3066, file: !56, line: 1829, baseType: !3085, size: 64, offset: 384)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!148, !1016, !668}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3066, file: !56, line: 1830, baseType: !3089, size: 64, offset: 448)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!148, !535, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1776, size: 128, elements: !3094)
!3094 = !{!3095, !3100}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3093, file: !56, line: 1777, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1773, baseType: !3097)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!148, !3092, !280, !148, !709, !600, !7}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3093, file: !56, line: 1778, baseType: !709, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3066, file: !56, line: 1831, baseType: !3089, size: 64, offset: 512)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3066, file: !56, line: 1832, baseType: !3103, size: 64, offset: 576)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!3106, !535, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3107, line: 52, baseType: !7)
!3107 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !795, line: 27, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3066, file: !56, line: 1833, baseType: !3111, size: 64, offset: 640)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!494, !535, !7, !242}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3066, file: !56, line: 1834, baseType: !3111, size: 64, offset: 704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3066, file: !56, line: 1835, baseType: !3116, size: 64, offset: 768)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!148, !535, !1149}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3066, file: !56, line: 1836, baseType: !242, size: 64, offset: 832)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3066, file: !56, line: 1837, baseType: !3121, size: 64, offset: 896)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!148, !607, !535}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3066, file: !56, line: 1838, baseType: !3125, size: 64, offset: 960)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!148, !535, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1007, baseType: !134)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3066, file: !56, line: 1839, baseType: !3121, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3066, file: !56, line: 1840, baseType: !3131, size: 64, offset: 1088)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!148, !535, !709, !709, !148}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3066, file: !56, line: 1841, baseType: !3135, size: 64, offset: 1152)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!148, !148, !535, !148}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3066, file: !56, line: 1842, baseType: !3139, size: 64, offset: 1216)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!148, !535, !148, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1062, size: 1664, elements: !3144)
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3176, !3177, !3178, !3191, !3222}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3143, file: !56, line: 1063, baseType: !3142, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3143, file: !56, line: 1064, baseType: !185, size: 128, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3143, file: !56, line: 1065, baseType: !818, size: 128, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3143, file: !56, line: 1066, baseType: !185, size: 128, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3143, file: !56, line: 1069, baseType: !185, size: 128, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3143, file: !56, line: 1072, baseType: !3128, size: 64, offset: 576)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3143, file: !56, line: 1073, baseType: !7, size: 32, offset: 640)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3143, file: !56, line: 1074, baseType: !299, size: 8, offset: 672)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3143, file: !56, line: 1075, baseType: !7, size: 32, offset: 704)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3143, file: !56, line: 1076, baseType: !148, size: 32, offset: 736)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3143, file: !56, line: 1077, baseType: !1639, size: 128, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3143, file: !56, line: 1078, baseType: !535, size: 64, offset: 896)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3143, file: !56, line: 1079, baseType: !709, size: 64, offset: 960)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3143, file: !56, line: 1080, baseType: !709, size: 64, offset: 1024)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3143, file: !56, line: 1082, baseType: !3160, size: 64, offset: 1088)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !56, line: 1314, size: 320, elements: !3162)
!3162 = !{!3163, !3171, !3172, !3173, !3174, !3175}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3161, file: !56, line: 1315, baseType: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3165, line: 20, baseType: !3166)
!3165 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3165, line: 11, elements: !3167)
!3167 = !{!3168}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3166, file: !3165, line: 12, baseType: !3169)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !181, line: 33, baseType: !3170)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 31, elements: !183)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3161, file: !56, line: 1316, baseType: !148, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3161, file: !56, line: 1317, baseType: !148, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3161, file: !56, line: 1318, baseType: !3160, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3161, file: !56, line: 1319, baseType: !535, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3161, file: !56, line: 1320, baseType: !548, size: 128, align: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3143, file: !56, line: 1084, baseType: !242, size: 64, offset: 1152)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3143, file: !56, line: 1085, baseType: !242, size: 64, offset: 1216)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3143, file: !56, line: 1087, baseType: !3179, size: 64, offset: 1280)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3181)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !56, line: 1011, size: 128, elements: !3182)
!3182 = !{!3183, !3187}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3181, file: !56, line: 1012, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{null, !3142, !3142}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3181, file: !56, line: 1013, baseType: !3188, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !3142}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3143, file: !56, line: 1088, baseType: !3192, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !56, line: 1016, size: 512, elements: !3195)
!3195 = !{!3196, !3200, !3204, !3205, !3209, !3213, !3217, !3221}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3194, file: !56, line: 1017, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!3128, !3128}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3194, file: !56, line: 1018, baseType: !3201, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !3128}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3194, file: !56, line: 1019, baseType: !3188, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3194, file: !56, line: 1020, baseType: !3206, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!148, !3142, !148}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3194, file: !56, line: 1021, baseType: !3210, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!668, !3142}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3194, file: !56, line: 1022, baseType: !3214, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!148, !3142, !148, !188}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3194, file: !56, line: 1023, baseType: !3218, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3142, !990}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3194, file: !56, line: 1024, baseType: !3210, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3143, file: !56, line: 1097, baseType: !3223, size: 256, offset: 1408)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3143, file: !56, line: 1089, size: 256, elements: !3224)
!3224 = !{!3225, !3234, !3240}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3223, file: !56, line: 1090, baseType: !3226, size: 256)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3227, line: 10, size: 256, elements: !3228)
!3227 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3228 = !{!3229, !3230, !3233}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3226, file: !3227, line: 11, baseType: !283, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3226, file: !3227, line: 12, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3227, line: 5, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3226, file: !3227, line: 13, baseType: !185, size: 128, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3223, file: !56, line: 1091, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3227, line: 17, size: 64, elements: !3236)
!3236 = !{!3237}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3235, file: !3227, line: 18, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3227, line: 16, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3223, file: !56, line: 1096, baseType: !3241, size: 192)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3223, file: !56, line: 1092, size: 192, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3241, file: !56, line: 1093, baseType: !185, size: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3241, file: !56, line: 1094, baseType: !148, size: 32, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3241, file: !56, line: 1095, baseType: !7, size: 32, offset: 160)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3066, file: !56, line: 1843, baseType: !3247, size: 64, offset: 1280)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!490, !535, !900, !148, !505, !3077, !148}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3066, file: !56, line: 1844, baseType: !1269, size: 64, offset: 1344)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3066, file: !56, line: 1845, baseType: !3252, size: 64, offset: 1408)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!148, !148}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3066, file: !56, line: 1846, baseType: !3139, size: 64, offset: 1472)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3066, file: !56, line: 1847, baseType: !3257, size: 64, offset: 1536)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!490, !2299, !535, !3077, !505, !7}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3066, file: !56, line: 1848, baseType: !3261, size: 64, offset: 1600)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!490, !535, !3077, !2299, !505, !7}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3066, file: !56, line: 1849, baseType: !3265, size: 64, offset: 1664)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!148, !535, !494, !3268, !990}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3066, file: !56, line: 1850, baseType: !3270, size: 64, offset: 1728)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!494, !535, !148, !709, !709}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3066, file: !56, line: 1852, baseType: !3274, size: 64, offset: 1792)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !890, !535}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3066, file: !56, line: 1856, baseType: !3278, size: 64, offset: 1856)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!490, !535, !709, !535, !709, !505, !7}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3066, file: !56, line: 1858, baseType: !3282, size: 64, offset: 1920)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!709, !535, !709, !535, !709, !709, !7}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3066, file: !56, line: 1861, baseType: !3131, size: 64, offset: 1984)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3061, file: !56, line: 692, baseType: !843, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !608, file: !56, line: 694, baseType: !3288, size: 64, offset: 2560)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 1100, size: 384, elements: !3290)
!3290 = !{!3291, !3292, !3293, !3294}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3289, file: !56, line: 1101, baseType: !169)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3289, file: !56, line: 1102, baseType: !185, size: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3289, file: !56, line: 1103, baseType: !185, size: 128, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3289, file: !56, line: 1104, baseType: !185, size: 128, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !608, file: !56, line: 695, baseType: !914, size: 1216, align: 64, offset: 2624)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !608, file: !56, line: 696, baseType: !185, size: 128, offset: 3840)
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !56, line: 697, baseType: !3298, size: 64, offset: 3968)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !56, line: 697, size: 64, elements: !3299)
!3299 = !{!3300, !3301, !3302, !3305, !3306}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3298, file: !56, line: 698, baseType: !2299, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3298, file: !56, line: 699, baseType: !2816, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3298, file: !56, line: 700, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !56, line: 700, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3298, file: !56, line: 701, baseType: !459, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3298, file: !56, line: 702, baseType: !7, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !608, file: !56, line: 705, baseType: !196, size: 32, offset: 4032)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !608, file: !56, line: 708, baseType: !196, size: 32, offset: 4064)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !608, file: !56, line: 709, baseType: !2898, size: 64, offset: 4096)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !608, file: !56, line: 720, baseType: !134, size: 64, offset: 4160)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !566, file: !563, line: 98, baseType: !3312, size: 256, offset: 448)
!3312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !2431)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !566, file: !563, line: 101, baseType: !3314, size: 32, offset: 704)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3315, line: 25, size: 32, elements: !3316)
!3315 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3315, line: 26, baseType: !3318, size: 32)
!3318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3314, file: !3315, line: 26, size: 32, elements: !3319)
!3319 = !{!3320}
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3318, file: !3315, line: 30, baseType: !3321, size: 32)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3318, file: !3315, line: 30, size: 32, elements: !3322)
!3322 = !{!3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3321, file: !3315, line: 31, baseType: !169)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3321, file: !3315, line: 32, baseType: !148, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !566, file: !563, line: 102, baseType: !2915, size: 64, offset: 768)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !566, file: !563, line: 103, baseType: !775, size: 64, offset: 832)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !566, file: !563, line: 104, baseType: !242, size: 64, offset: 896)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !566, file: !563, line: 105, baseType: !134, size: 64, offset: 960)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !563, line: 107, baseType: !3330, size: 128, offset: 1024)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !563, line: 107, size: 128, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3330, file: !563, line: 108, baseType: !185, size: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3330, file: !563, line: 109, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !566, file: !563, line: 111, baseType: !185, size: 128, offset: 1152)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !566, file: !563, line: 112, baseType: !185, size: 128, offset: 1280)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !566, file: !563, line: 120, baseType: !3338, size: 128, offset: 1408)
!3338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !563, line: 116, size: 128, elements: !3339)
!3339 = !{!3340, !3341, !3342}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3338, file: !563, line: 117, baseType: !818, size: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3338, file: !563, line: 118, baseType: !580, size: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3338, file: !563, line: 119, baseType: !548, size: 128, align: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !536, file: !56, line: 922, baseType: !607, size: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !536, file: !56, line: 923, baseType: !3064, size: 64, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !536, file: !56, line: 929, baseType: !169, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !536, file: !56, line: 930, baseType: !55, size: 32, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !536, file: !56, line: 931, baseType: !157, size: 64, offset: 448)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !536, file: !56, line: 932, baseType: !7, size: 32, offset: 512)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !536, file: !56, line: 933, baseType: !2911, size: 32, offset: 544)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !536, file: !56, line: 934, baseType: !153, size: 192, offset: 576)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !536, file: !56, line: 935, baseType: !709, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !536, file: !56, line: 936, baseType: !3353, size: 192, offset: 832)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 885, size: 192, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3353, file: !56, line: 886, baseType: !3164)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3353, file: !56, line: 887, baseType: !1629, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3353, file: !56, line: 888, baseType: !64, size: 32, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3353, file: !56, line: 889, baseType: !613, size: 32, offset: 96)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3353, file: !56, line: 889, baseType: !613, size: 32, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3353, file: !56, line: 890, baseType: !148, size: 32, offset: 160)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !536, file: !56, line: 937, baseType: !1742, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !536, file: !56, line: 938, baseType: !3363, size: 256, offset: 1088)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 896, size: 256, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3363, file: !56, line: 897, baseType: !242, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3363, file: !56, line: 898, baseType: !7, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3363, file: !56, line: 899, baseType: !7, size: 32, offset: 96)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3363, file: !56, line: 902, baseType: !7, size: 32, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3363, file: !56, line: 903, baseType: !7, size: 32, offset: 160)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3363, file: !56, line: 904, baseType: !709, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !536, file: !56, line: 940, baseType: !600, size: 64, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !536, file: !56, line: 945, baseType: !134, size: 64, offset: 1408)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !536, file: !56, line: 949, baseType: !185, size: 128, offset: 1472)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !536, file: !56, line: 950, baseType: !185, size: 128, offset: 1600)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !536, file: !56, line: 952, baseType: !913, size: 64, offset: 1728)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !536, file: !56, line: 953, baseType: !1077, size: 32, offset: 1792)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !536, file: !56, line: 954, baseType: !1077, size: 32, offset: 1824)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !526, file: !484, line: 174, baseType: !532, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !526, file: !484, line: 176, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!148, !535, !426, !525, !1149}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !514, file: !484, line: 90, baseType: !509, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !514, file: !484, line: 91, baseType: !3385, size: 64, offset: 256)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !474, file: !421, line: 143, baseType: !3387, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!3390, !426}
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !3393)
!3393 = !{!3394, !3395, !3399, !3403, !3409, !3413}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3392, file: !73, line: 40, baseType: !72, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3392, file: !73, line: 41, baseType: !3396, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!668}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3392, file: !73, line: 42, baseType: !3400, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!134}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3392, file: !73, line: 43, baseType: !3404, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!2328, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3392, file: !73, line: 44, baseType: !3410, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!2328}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3392, file: !73, line: 45, baseType: !646, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !474, file: !421, line: 144, baseType: !3415, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!2328, !426}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !474, file: !421, line: 145, baseType: !3419, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !426, !3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !420, file: !421, line: 70, baseType: !3425, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !795, line: 123, size: 1024, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3550, !3551, !3552, !3553, !3554}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3426, file: !795, line: 124, baseType: !143, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3426, file: !795, line: 125, baseType: !143, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3426, file: !795, line: 135, baseType: !3425, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3426, file: !795, line: 136, baseType: !280, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3426, file: !795, line: 138, baseType: !936, size: 192, align: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3426, file: !795, line: 140, baseType: !2328, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3426, file: !795, line: 141, baseType: !7, size: 32, offset: 448)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3426, file: !795, line: 142, baseType: !3436, size: 256, offset: 512)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3426, file: !795, line: 142, size: 256, elements: !3437)
!3437 = !{!3438, !3478, !3482}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3436, file: !795, line: 143, baseType: !3439, size: 192)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !795, line: 91, size: 192, elements: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3439, file: !795, line: 92, baseType: !242, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3439, file: !795, line: 94, baseType: !932, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3439, file: !795, line: 100, baseType: !3444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !795, line: 180, size: 704, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3476, !3477}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3445, file: !795, line: 182, baseType: !3425, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3445, file: !795, line: 183, baseType: !7, size: 32, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3445, file: !795, line: 186, baseType: !1662, size: 192, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3445, file: !795, line: 187, baseType: !283, size: 32, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3445, file: !795, line: 188, baseType: !283, size: 32, offset: 352)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3445, file: !795, line: 189, baseType: !3453, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !795, line: 168, size: 320, elements: !3455)
!3455 = !{!3456, !3460, !3464, !3468, !3472}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3454, file: !795, line: 169, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!148, !890, !3444}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3454, file: !795, line: 171, baseType: !3461, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!148, !3425, !280, !500}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3454, file: !795, line: 173, baseType: !3465, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!148, !3425}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3454, file: !795, line: 174, baseType: !3469, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!148, !3425, !3425, !280}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3454, file: !795, line: 176, baseType: !3473, size: 64, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!148, !890, !3425, !3444}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3445, file: !795, line: 192, baseType: !185, size: 128, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3445, file: !795, line: 194, baseType: !1639, size: 128, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3436, file: !795, line: 144, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !795, line: 103, size: 64, elements: !3480)
!3480 = !{!3481}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3479, file: !795, line: 104, baseType: !3425, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3436, file: !795, line: 145, baseType: !3483, size: 256)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !795, line: 107, size: 256, elements: !3484)
!3484 = !{!3485, !3545, !3548, !3549}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3483, file: !795, line: 108, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !795, line: 217, size: 768, elements: !3489)
!3489 = !{!3490, !3510, !3514, !3518, !3522, !3526, !3530, !3534, !3535, !3536, !3537, !3541}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3488, file: !795, line: 222, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!148, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !795, line: 197, size: 1088, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3495, file: !795, line: 199, baseType: !3425, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3495, file: !795, line: 200, baseType: !535, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3495, file: !795, line: 201, baseType: !890, size: 64, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3495, file: !795, line: 202, baseType: !134, size: 64, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3495, file: !795, line: 205, baseType: !153, size: 192, offset: 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3495, file: !795, line: 206, baseType: !153, size: 192, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3495, file: !795, line: 207, baseType: !148, size: 32, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3495, file: !795, line: 208, baseType: !185, size: 128, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3495, file: !795, line: 209, baseType: !459, size: 64, offset: 832)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3495, file: !795, line: 211, baseType: !505, size: 64, offset: 896)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3495, file: !795, line: 212, baseType: !668, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3495, file: !795, line: 213, baseType: !668, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3495, file: !795, line: 214, baseType: !1177, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3488, file: !795, line: 223, baseType: !3511, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{null, !3494}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3488, file: !795, line: 236, baseType: !3515, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!148, !890, !134}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3488, file: !795, line: 238, baseType: !3519, size: 64, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!134, !890, !3077}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3488, file: !795, line: 239, baseType: !3523, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!134, !890, !134, !3077}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3488, file: !795, line: 240, baseType: !3527, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !890, !134}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3488, file: !795, line: 242, baseType: !3531, size: 64, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!490, !3494, !459, !505, !709}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3488, file: !795, line: 252, baseType: !505, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3488, file: !795, line: 259, baseType: !668, size: 8, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3488, file: !795, line: 260, baseType: !3531, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3488, file: !795, line: 263, baseType: !3538, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!3106, !3494, !3108}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3488, file: !795, line: 266, baseType: !3542, size: 64, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!148, !3494, !1149}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3483, file: !795, line: 109, baseType: !3546, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !795, line: 31, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3483, file: !795, line: 110, baseType: !709, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3483, file: !795, line: 111, baseType: !3425, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3426, file: !795, line: 148, baseType: !134, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3426, file: !795, line: 154, baseType: !600, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3426, file: !795, line: 156, baseType: !249, size: 16, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3426, file: !795, line: 157, baseType: !500, size: 16, offset: 912)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3426, file: !795, line: 158, baseType: !3555, size: 64, offset: 960)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !795, line: 32, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !420, file: !421, line: 71, baseType: !1657, size: 32, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !420, file: !421, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !420, file: !421, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !420, file: !421, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !420, file: !421, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !420, file: !421, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !417, file: !85, line: 463, baseType: !3564, size: 64, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !417, file: !85, line: 465, baseType: !3566, size: 64, offset: 576)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !85, line: 36, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !417, file: !85, line: 467, baseType: !280, size: 64, offset: 640)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !85, line: 468, baseType: !3570, size: 64, offset: 704)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !85, line: 87, size: 384, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3580, !3585, !3589}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3572, file: !85, line: 88, baseType: !280, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3572, file: !85, line: 89, baseType: !511, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3572, file: !85, line: 90, baseType: !3577, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!148, !3564, !454}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3572, file: !85, line: 91, baseType: !3581, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!459, !3564, !3584, !3422, !3423}
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3572, file: !85, line: 93, baseType: !3586, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{null, !3564}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3572, file: !85, line: 95, baseType: !3590, size: 64, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !92, line: 278, size: 1472, elements: !3593)
!3593 = !{!3594, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3592, file: !92, line: 279, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!148, !3564}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3592, file: !92, line: 280, baseType: !3586, size: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3592, file: !92, line: 281, baseType: !3595, size: 64, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3592, file: !92, line: 282, baseType: !3595, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3592, file: !92, line: 283, baseType: !3595, size: 64, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3592, file: !92, line: 284, baseType: !3595, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3592, file: !92, line: 285, baseType: !3595, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3592, file: !92, line: 286, baseType: !3595, size: 64, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3592, file: !92, line: 287, baseType: !3595, size: 64, offset: 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3592, file: !92, line: 288, baseType: !3595, size: 64, offset: 576)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3592, file: !92, line: 289, baseType: !3595, size: 64, offset: 640)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3592, file: !92, line: 290, baseType: !3595, size: 64, offset: 704)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3592, file: !92, line: 291, baseType: !3595, size: 64, offset: 768)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3592, file: !92, line: 292, baseType: !3595, size: 64, offset: 832)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3592, file: !92, line: 293, baseType: !3595, size: 64, offset: 896)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3592, file: !92, line: 294, baseType: !3595, size: 64, offset: 960)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3592, file: !92, line: 295, baseType: !3595, size: 64, offset: 1024)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3592, file: !92, line: 296, baseType: !3595, size: 64, offset: 1088)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3592, file: !92, line: 297, baseType: !3595, size: 64, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3592, file: !92, line: 298, baseType: !3595, size: 64, offset: 1216)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3592, file: !92, line: 299, baseType: !3595, size: 64, offset: 1280)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3592, file: !92, line: 300, baseType: !3595, size: 64, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3592, file: !92, line: 301, baseType: !3595, size: 64, offset: 1408)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !417, file: !85, line: 470, baseType: !3621, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3623, line: 82, size: 1408, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3706, !3709, !3710}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3622, file: !3623, line: 83, baseType: !280, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3622, file: !3623, line: 84, baseType: !280, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3622, file: !3623, line: 85, baseType: !3564, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3622, file: !3623, line: 86, baseType: !511, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3622, file: !3623, line: 87, baseType: !511, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3622, file: !3623, line: 88, baseType: !511, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3622, file: !3623, line: 90, baseType: !3632, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!148, !3564, !3635}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 95, size: 1152, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3641, !3642, !3643, !3644, !3657, !3670, !3671, !3672, !3673, !3674, !3682, !3683, !3684, !3685, !3686, !3687}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3636, file: !79, line: 96, baseType: !280, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3636, file: !79, line: 97, baseType: !3621, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3636, file: !79, line: 99, baseType: !809, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3636, file: !79, line: 100, baseType: !280, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3636, file: !79, line: 102, baseType: !668, size: 8, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3636, file: !79, line: 103, baseType: !78, size: 32, offset: 288)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3636, file: !79, line: 105, baseType: !3645, size: 64, offset: 320)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3648, line: 262, size: 1600, elements: !3649)
!3648 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3649 = !{!3650, !3651, !3652, !3656}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3647, file: !3648, line: 263, baseType: !2901, size: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3647, file: !3648, line: 264, baseType: !2901, size: 256, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3647, file: !3648, line: 265, baseType: !3653, size: 1024, offset: 512)
!3653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 1024, elements: !3654)
!3654 = !{!3655}
!3655 = !DISubrange(count: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3647, file: !3648, line: 266, baseType: !2328, size: 64, offset: 1536)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3636, file: !79, line: 106, baseType: !3658, size: 64, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3648, line: 210, size: 256, elements: !3661)
!3661 = !{!3662, !3666, !3668, !3669}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3660, file: !3648, line: 211, baseType: !3663, size: 72)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 72, elements: !3664)
!3664 = !{!3665}
!3665 = !DISubrange(count: 9)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3660, file: !3648, line: 212, baseType: !3667, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3648, line: 14, baseType: !242)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3660, file: !3648, line: 213, baseType: !196, size: 32, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3660, file: !3648, line: 214, baseType: !196, size: 32, offset: 224)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3636, file: !79, line: 108, baseType: !3595, size: 64, offset: 448)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3636, file: !79, line: 109, baseType: !3586, size: 64, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3636, file: !79, line: 110, baseType: !3595, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3636, file: !79, line: 111, baseType: !3586, size: 64, offset: 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3636, file: !79, line: 112, baseType: !3675, size: 64, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!148, !3564, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !92, line: 52, baseType: !3679)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !92, line: 50, size: 32, elements: !3680)
!3680 = !{!3681}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3679, file: !92, line: 51, baseType: !148, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3636, file: !79, line: 113, baseType: !3595, size: 64, offset: 768)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3636, file: !79, line: 114, baseType: !511, size: 64, offset: 832)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3636, file: !79, line: 115, baseType: !511, size: 64, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3636, file: !79, line: 117, baseType: !3590, size: 64, offset: 960)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3636, file: !79, line: 118, baseType: !3586, size: 64, offset: 1024)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3636, file: !79, line: 120, baseType: !3688, size: 64, offset: 1088)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 120, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3622, file: !3623, line: 91, baseType: !3577, size: 64, offset: 448)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3622, file: !3623, line: 92, baseType: !3595, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3622, file: !3623, line: 93, baseType: !3586, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3622, file: !3623, line: 94, baseType: !3595, size: 64, offset: 640)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3622, file: !3623, line: 95, baseType: !3586, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3622, file: !3623, line: 97, baseType: !3595, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3622, file: !3623, line: 98, baseType: !3595, size: 64, offset: 832)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3622, file: !3623, line: 100, baseType: !3675, size: 64, offset: 896)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3622, file: !3623, line: 101, baseType: !3595, size: 64, offset: 960)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3622, file: !3623, line: 103, baseType: !3595, size: 64, offset: 1024)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3622, file: !3623, line: 105, baseType: !3595, size: 64, offset: 1088)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3622, file: !3623, line: 107, baseType: !3590, size: 64, offset: 1152)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3622, file: !3623, line: 109, baseType: !3703, size: 64, offset: 1216)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3705)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3623, line: 109, flags: DIFlagFwdDecl)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3622, file: !3623, line: 111, baseType: !3707, size: 64, offset: 1280)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3623, line: 111, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3622, file: !3623, line: 112, baseType: !824, offset: 1344)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3622, file: !3623, line: 114, baseType: !668, size: 8, offset: 1344)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !417, file: !85, line: 471, baseType: !3635, size: 64, offset: 832)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !417, file: !85, line: 473, baseType: !134, size: 64, offset: 896)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !417, file: !85, line: 475, baseType: !134, size: 64, offset: 960)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !417, file: !85, line: 480, baseType: !153, size: 192, offset: 1024)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !417, file: !85, line: 484, baseType: !3716, size: 576, offset: 1216)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !85, line: 361, size: 576, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3716, file: !85, line: 362, baseType: !185, size: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3716, file: !85, line: 363, baseType: !185, size: 128, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3716, file: !85, line: 364, baseType: !185, size: 128, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3716, file: !85, line: 365, baseType: !185, size: 128, offset: 384)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3716, file: !85, line: 366, baseType: !668, size: 8, offset: 512)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3716, file: !85, line: 367, baseType: !84, size: 32, offset: 544)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !417, file: !85, line: 485, baseType: !3725, size: 2304, offset: 1792)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !92, line: 565, size: 2304, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3822, !3826}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3725, file: !92, line: 566, baseType: !3678, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3725, file: !92, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3725, file: !92, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3725, file: !92, line: 569, baseType: !668, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3725, file: !92, line: 570, baseType: !668, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3725, file: !92, line: 571, baseType: !668, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3725, file: !92, line: 572, baseType: !668, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3725, file: !92, line: 573, baseType: !668, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3725, file: !92, line: 574, baseType: !668, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3725, file: !92, line: 575, baseType: !668, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3725, file: !92, line: 576, baseType: !668, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3725, file: !92, line: 577, baseType: !283, size: 32, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3725, file: !92, line: 578, baseType: !169, offset: 96)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3725, file: !92, line: 580, baseType: !185, size: 128, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3725, file: !92, line: 581, baseType: !1697, size: 192, offset: 256)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3725, file: !92, line: 582, baseType: !3743, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3745, line: 43, size: 1472, elements: !3746)
!3745 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3754, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3744, file: !3745, line: 44, baseType: !280, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3744, file: !3745, line: 45, baseType: !148, size: 32, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3744, file: !3745, line: 46, baseType: !185, size: 128, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3744, file: !3745, line: 47, baseType: !169, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3744, file: !3745, line: 48, baseType: !3752, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !92, line: 533, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3744, file: !3745, line: 49, baseType: !3755, size: 320, offset: 320)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3756, line: 11, size: 320, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3757 = !{!3758, !3759, !3760, !3765}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3755, file: !3756, line: 16, baseType: !818, size: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3755, file: !3756, line: 17, baseType: !242, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3755, file: !3756, line: 18, baseType: !3761, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3764}
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3755, file: !3756, line: 19, baseType: !283, size: 32, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3744, file: !3745, line: 50, baseType: !242, size: 64, offset: 640)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3744, file: !3745, line: 51, baseType: !1460, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3744, file: !3745, line: 52, baseType: !1460, size: 64, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3744, file: !3745, line: 53, baseType: !1460, size: 64, offset: 832)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3744, file: !3745, line: 54, baseType: !1460, size: 64, offset: 896)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3744, file: !3745, line: 55, baseType: !1460, size: 64, offset: 960)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3744, file: !3745, line: 56, baseType: !242, size: 64, offset: 1024)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3744, file: !3745, line: 57, baseType: !242, size: 64, offset: 1088)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3744, file: !3745, line: 58, baseType: !242, size: 64, offset: 1152)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3744, file: !3745, line: 59, baseType: !242, size: 64, offset: 1216)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3744, file: !3745, line: 60, baseType: !242, size: 64, offset: 1280)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3744, file: !3745, line: 61, baseType: !3564, size: 64, offset: 1344)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3744, file: !3745, line: 62, baseType: !668, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3744, file: !3745, line: 63, baseType: !668, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3725, file: !92, line: 583, baseType: !668, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3725, file: !92, line: 584, baseType: !668, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3725, file: !92, line: 585, baseType: !668, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3725, file: !92, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3725, file: !92, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3725, file: !92, line: 592, baseType: !1452, size: 512, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3725, file: !92, line: 593, baseType: !600, size: 64, offset: 1088)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3725, file: !92, line: 594, baseType: !328, size: 256, offset: 1152)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3725, file: !92, line: 595, baseType: !1639, size: 128, offset: 1408)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3725, file: !92, line: 596, baseType: !3752, size: 64, offset: 1536)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3725, file: !92, line: 597, baseType: !143, size: 32, offset: 1600)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3725, file: !92, line: 598, baseType: !143, size: 32, offset: 1632)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3725, file: !92, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3725, file: !92, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3725, file: !92, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3725, file: !92, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3725, file: !92, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3725, file: !92, line: 604, baseType: !668, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3725, file: !92, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3725, file: !92, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3725, file: !92, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3725, file: !92, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3725, file: !92, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3725, file: !92, line: 610, baseType: !7, size: 32, offset: 1696)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3725, file: !92, line: 611, baseType: !91, size: 32, offset: 1728)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3725, file: !92, line: 612, baseType: !99, size: 32, offset: 1760)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3725, file: !92, line: 613, baseType: !148, size: 32, offset: 1792)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3725, file: !92, line: 614, baseType: !148, size: 32, offset: 1824)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3725, file: !92, line: 615, baseType: !600, size: 64, offset: 1856)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3725, file: !92, line: 616, baseType: !600, size: 64, offset: 1920)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3725, file: !92, line: 617, baseType: !600, size: 64, offset: 1984)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3725, file: !92, line: 618, baseType: !600, size: 64, offset: 2048)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3725, file: !92, line: 620, baseType: !3813, size: 64, offset: 2112)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !92, line: 536, size: 256, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3814, file: !92, line: 537, baseType: !169)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3814, file: !92, line: 538, baseType: !7, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3814, file: !92, line: 540, baseType: !185, size: 128, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3814, file: !92, line: 543, baseType: !3820, size: 64, offset: 192)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !92, line: 534, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3725, file: !92, line: 621, baseType: !3823, size: 64, offset: 2176)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3564, !1602}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3725, file: !92, line: 622, baseType: !3827, size: 64, offset: 2240)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !92, line: 622, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !417, file: !85, line: 486, baseType: !3830, size: 64, offset: 4096)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !92, line: 642, size: 1792, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3839, !3840, !3841}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3831, file: !92, line: 643, baseType: !3592, size: 1472)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3831, file: !92, line: 644, baseType: !3595, size: 64, offset: 1472)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3831, file: !92, line: 645, baseType: !3836, size: 64, offset: 1536)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !3564, !668}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3831, file: !92, line: 646, baseType: !3595, size: 64, offset: 1600)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3831, file: !92, line: 647, baseType: !3586, size: 64, offset: 1664)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3831, file: !92, line: 648, baseType: !3586, size: 64, offset: 1728)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !417, file: !85, line: 493, baseType: !3843, size: 64, offset: 4160)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !106, line: 162, size: 1088, elements: !3845)
!3845 = !{!3846, !3847, !3848, !4021, !4022, !4023, !4024, !4025, !4026, !4029, !4030, !4031, !4032, !4033, !4034, !4035}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3844, file: !106, line: 163, baseType: !185, size: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3844, file: !106, line: 164, baseType: !280, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3844, file: !106, line: 165, baseType: !3849, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !106, line: 105, size: 640, elements: !3852)
!3852 = !{!3853, !3971, !3982, !3987, !3991, !3998, !4002, !4006, !4013, !4017}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3851, file: !106, line: 106, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!148, !3843, !3857, !105}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3859, line: 51, size: 1344, elements: !3860)
!3859 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3860 = !{!3861, !3862, !3864, !3865, !3955, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3858, file: !3859, line: 52, baseType: !280, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3858, file: !3859, line: 53, baseType: !3863, size: 32, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3859, line: 28, baseType: !283)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3858, file: !3859, line: 54, baseType: !280, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3858, file: !3859, line: 55, baseType: !3866, size: 192, offset: 192)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3867, line: 17, size: 192, elements: !3868)
!3867 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3868 = !{!3869, !3871, !3954}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3866, file: !3867, line: 18, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3866, file: !3867, line: 19, baseType: !3872, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3867, line: 110, size: 1152, elements: !3875)
!3875 = !{!3876, !3880, !3884, !3890, !3896, !3900, !3904, !3909, !3913, !3914, !3918, !3922, !3926, !3937, !3938, !3939, !3940, !3950}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3874, file: !3867, line: 111, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!3870, !3870}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3874, file: !3867, line: 112, baseType: !3881, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3870}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3874, file: !3867, line: 113, baseType: !3885, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!668, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3866)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3874, file: !3867, line: 114, baseType: !3891, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!2328, !3888, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3874, file: !3867, line: 116, baseType: !3897, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!668, !3888, !280}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3874, file: !3867, line: 118, baseType: !3901, size: 64, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!148, !3888, !280, !7, !134, !505}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3874, file: !3867, line: 123, baseType: !3905, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!148, !3888, !280, !3908, !505}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3874, file: !3867, line: 126, baseType: !3910, size: 64, offset: 448)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!280, !3888}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3874, file: !3867, line: 127, baseType: !3910, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3874, file: !3867, line: 128, baseType: !3915, size: 64, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!3870, !3888}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3874, file: !3867, line: 130, baseType: !3919, size: 64, offset: 640)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!3870, !3888, !3870}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3874, file: !3867, line: 133, baseType: !3923, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!3870, !3888, !280}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3874, file: !3867, line: 135, baseType: !3927, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!148, !3888, !280, !280, !7, !7, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3867, line: 43, size: 640, elements: !3932)
!3932 = !{!3933, !3934, !3935}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3931, file: !3867, line: 44, baseType: !3870, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3931, file: !3867, line: 45, baseType: !7, size: 32, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3931, file: !3867, line: 46, baseType: !3936, size: 512, offset: 128)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 512, elements: !1490)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3874, file: !3867, line: 140, baseType: !3919, size: 64, offset: 832)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3874, file: !3867, line: 143, baseType: !3915, size: 64, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3874, file: !3867, line: 145, baseType: !3877, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3874, file: !3867, line: 146, baseType: !3941, size: 64, offset: 1024)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!148, !3888, !3944}
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3867, line: 29, size: 128, elements: !3946)
!3946 = !{!3947, !3948, !3949}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3945, file: !3867, line: 30, baseType: !7, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3945, file: !3867, line: 31, baseType: !7, size: 32, offset: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3945, file: !3867, line: 32, baseType: !3888, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3874, file: !3867, line: 148, baseType: !3951, size: 64, offset: 1088)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!148, !3888, !3564}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3866, file: !3867, line: 20, baseType: !3564, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3858, file: !3859, line: 57, baseType: !3956, size: 64, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3859, line: 31, size: 704, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3957, file: !3859, line: 32, baseType: !459, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3957, file: !3859, line: 33, baseType: !148, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3957, file: !3859, line: 34, baseType: !134, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3957, file: !3859, line: 35, baseType: !3956, size: 64, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3957, file: !3859, line: 43, baseType: !526, size: 448, offset: 256)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3858, file: !3859, line: 58, baseType: !3956, size: 64, offset: 448)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3858, file: !3859, line: 59, baseType: !3857, size: 64, offset: 512)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3858, file: !3859, line: 60, baseType: !3857, size: 64, offset: 576)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3858, file: !3859, line: 61, baseType: !3857, size: 64, offset: 640)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3858, file: !3859, line: 63, baseType: !420, size: 512, offset: 704)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3858, file: !3859, line: 65, baseType: !242, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3858, file: !3859, line: 66, baseType: !134, size: 64, offset: 1280)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3851, file: !106, line: 108, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!148, !3843, !3975, !105}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !106, line: 63, size: 640, elements: !3977)
!3977 = !{!3978, !3979, !3980}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3976, file: !106, line: 64, baseType: !3870, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3976, file: !106, line: 65, baseType: !148, size: 32, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3976, file: !106, line: 66, baseType: !3981, size: 512, offset: 96)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 512, elements: !239)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3851, file: !106, line: 110, baseType: !3983, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!148, !3843, !7, !3986}
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !144, line: 164, baseType: !242)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3851, file: !106, line: 111, baseType: !3988, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !3843, !7}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3851, file: !106, line: 112, baseType: !3992, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!148, !3843, !3857, !3995, !7, !3997, !2884}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3851, file: !106, line: 117, baseType: !3999, size: 64, offset: 320)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!148, !3843, !7, !7, !134}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3851, file: !106, line: 119, baseType: !4003, size: 64, offset: 384)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !3843, !7, !7}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3851, file: !106, line: 121, baseType: !4007, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!148, !3843, !4010, !668}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4012, line: 11, flags: DIFlagFwdDecl)
!4012 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3851, file: !106, line: 122, baseType: !4014, size: 64, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3843, !4010}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3851, file: !106, line: 123, baseType: !4018, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!148, !3843, !3975, !3997, !2884}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3844, file: !106, line: 166, baseType: !134, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3844, file: !106, line: 167, baseType: !7, size: 32, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3844, file: !106, line: 168, baseType: !7, size: 32, offset: 352)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3844, file: !106, line: 171, baseType: !3870, size: 64, offset: 384)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3844, file: !106, line: 172, baseType: !105, size: 32, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3844, file: !106, line: 173, baseType: !4027, size: 64, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !106, line: 134, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3844, file: !106, line: 175, baseType: !3843, size: 64, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3844, file: !106, line: 182, baseType: !3986, size: 64, offset: 640)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3844, file: !106, line: 183, baseType: !7, size: 32, offset: 704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3844, file: !106, line: 184, baseType: !7, size: 32, offset: 736)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3844, file: !106, line: 185, baseType: !918, size: 128, offset: 768)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3844, file: !106, line: 186, baseType: !153, size: 192, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3844, file: !106, line: 187, baseType: !4036, offset: 1088)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2532)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !417, file: !85, line: 499, baseType: !185, size: 128, offset: 4224)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !417, file: !85, line: 502, baseType: !4039, size: 64, offset: 4352)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4041)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !85, line: 502, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !417, file: !85, line: 504, baseType: !4043, size: 64, offset: 4416)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !417, file: !85, line: 505, baseType: !600, size: 64, offset: 4480)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !417, file: !85, line: 510, baseType: !600, size: 64, offset: 4544)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !417, file: !85, line: 511, baseType: !4047, size: 64, offset: 4608)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4049)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !85, line: 511, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !417, file: !85, line: 513, baseType: !4051, size: 64, offset: 4672)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !85, line: 288, size: 128, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4052, file: !85, line: 293, baseType: !7, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4052, file: !85, line: 294, baseType: !242, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !417, file: !85, line: 515, baseType: !185, size: 128, offset: 4736)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !417, file: !85, line: 526, baseType: !4058, offset: 4864)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4059, line: 5, elements: !183)
!4059 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !417, file: !85, line: 528, baseType: !3857, size: 64, offset: 4864)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !417, file: !85, line: 529, baseType: !3870, size: 64, offset: 4928)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !417, file: !85, line: 534, baseType: !691, size: 32, offset: 4992)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !417, file: !85, line: 535, baseType: !283, size: 32, offset: 5024)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !417, file: !85, line: 537, baseType: !169, offset: 5056)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !417, file: !85, line: 538, baseType: !185, size: 128, offset: 5056)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !417, file: !85, line: 540, baseType: !4067, size: 64, offset: 5184)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4069, line: 54, size: 960, elements: !4070)
!4069 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076, !4077, !4081, !4085, !4086, !4087, !4088, !4092, !4096, !4097}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4068, file: !4069, line: 55, baseType: !280, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4068, file: !4069, line: 56, baseType: !809, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4068, file: !4069, line: 58, baseType: !511, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4068, file: !4069, line: 59, baseType: !511, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4068, file: !4069, line: 60, baseType: !426, size: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4068, file: !4069, line: 62, baseType: !3577, size: 64, offset: 320)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4068, file: !4069, line: 63, baseType: !4078, size: 64, offset: 384)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!459, !3564, !3584}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4068, file: !4069, line: 65, baseType: !4082, size: 64, offset: 448)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !4067}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4068, file: !4069, line: 66, baseType: !3586, size: 64, offset: 512)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4068, file: !4069, line: 68, baseType: !3595, size: 64, offset: 576)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4068, file: !4069, line: 70, baseType: !3390, size: 64, offset: 640)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4068, file: !4069, line: 71, baseType: !4089, size: 64, offset: 704)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!2328, !3564}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4068, file: !4069, line: 73, baseType: !4093, size: 64, offset: 768)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !3564, !3422, !3423}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4068, file: !4069, line: 75, baseType: !3590, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4068, file: !4069, line: 77, baseType: !3707, size: 64, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !417, file: !85, line: 541, baseType: !511, size: 64, offset: 5248)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !417, file: !85, line: 543, baseType: !3586, size: 64, offset: 5312)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !417, file: !85, line: 544, baseType: !4101, size: 64, offset: 5376)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !85, line: 45, flags: DIFlagFwdDecl)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !417, file: !85, line: 545, baseType: !4104, size: 64, offset: 5440)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !85, line: 47, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !417, file: !85, line: 547, baseType: !668, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !417, file: !85, line: 548, baseType: !668, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !417, file: !85, line: 549, baseType: !668, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !417, file: !85, line: 550, baseType: !668, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !374, file: !6, line: 335, baseType: !4111, size: 256, offset: 6592)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 256, elements: !2431)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !374, file: !6, line: 340, baseType: !148, size: 32, offset: 6848)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !139, file: !140, line: 465, baseType: !153, size: 192, offset: 5312)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !139, file: !140, line: 466, baseType: !4115, size: 1024, offset: 5504)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 1024, elements: !3654)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !139, file: !140, line: 469, baseType: !4117, size: 704, offset: 6528)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !329, line: 115, size: 704, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4117, file: !329, line: 116, baseType: !328, size: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4117, file: !329, line: 117, baseType: !3755, size: 320, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4117, file: !329, line: 120, baseType: !2994, size: 64, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4117, file: !329, line: 121, baseType: !148, size: 32, offset: 640)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !139, file: !140, line: 470, baseType: !4124, size: 64, offset: 7232)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !140, line: 203, size: 512, elements: !4126)
!4126 = !{!4127, !4128, !4129, !4130, !4134}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4125, file: !140, line: 205, baseType: !242, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4125, file: !140, line: 206, baseType: !153, size: 192, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4125, file: !140, line: 207, baseType: !185, size: 128, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4125, file: !140, line: 209, baseType: !4131, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !357}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4125, file: !140, line: 210, baseType: !4135, size: 64, offset: 448)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !357, !188}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !139, file: !140, line: 473, baseType: !4139, size: 64, offset: 7296)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !140, line: 228, size: 1472, elements: !4142)
!4142 = !{!4143, !4144, !4148, !4149, !4153, !4157, !4162, !4166, !4170, !4175, !4179, !4180, !4194, !4208, !4225, !4242, !4243, !4247, !4248, !4252, !4263, !4264, !4265}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4141, file: !140, line: 230, baseType: !809, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4141, file: !140, line: 231, baseType: !4145, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!148, !357, !148}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4141, file: !140, line: 232, baseType: !4145, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4141, file: !140, line: 237, baseType: !4150, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!490, !357, !459, !505, !3077}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4141, file: !140, line: 239, baseType: !4154, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!490, !357, !280, !505, !3077}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4141, file: !140, line: 244, baseType: !4158, size: 64, offset: 320)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!148, !4161, !357}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4141, file: !140, line: 247, baseType: !4163, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!148, !357}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4141, file: !140, line: 250, baseType: !4167, size: 64, offset: 448)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!148, !7, !7, !7, !7, !7, !357}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4141, file: !140, line: 254, baseType: !4171, size: 64, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!148, !4174, !357}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4141, file: !140, line: 257, baseType: !4176, size: 64, offset: 576)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!148, !148, !357}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4141, file: !140, line: 260, baseType: !4158, size: 64, offset: 640)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4141, file: !140, line: 263, baseType: !4181, size: 64, offset: 704)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !357, !4184}
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4186)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !193, line: 351, size: 192, elements: !4187)
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4193}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4186, file: !193, line: 352, baseType: !196, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4186, file: !193, line: 353, baseType: !196, size: 32, offset: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4186, file: !193, line: 354, baseType: !196, size: 32, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4186, file: !193, line: 355, baseType: !196, size: 32, offset: 96)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4186, file: !193, line: 356, baseType: !196, size: 32, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4186, file: !193, line: 357, baseType: !196, size: 32, offset: 160)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4141, file: !140, line: 265, baseType: !4195, size: 64, offset: 768)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !357, !4198}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4200)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !193, line: 342, size: 192, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4200, file: !193, line: 343, baseType: !196, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4200, file: !193, line: 344, baseType: !196, size: 32, offset: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4200, file: !193, line: 345, baseType: !196, size: 32, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4200, file: !193, line: 346, baseType: !196, size: 32, offset: 96)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4200, file: !193, line: 347, baseType: !196, size: 32, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4200, file: !193, line: 348, baseType: !196, size: 32, offset: 160)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4141, file: !140, line: 267, baseType: !4209, size: 64, offset: 832)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !357, !4212}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !193, line: 360, size: 640, elements: !4215)
!4215 = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4214, file: !193, line: 361, baseType: !196, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4214, file: !193, line: 362, baseType: !196, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4214, file: !193, line: 363, baseType: !196, size: 32, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4214, file: !193, line: 364, baseType: !196, size: 32, offset: 96)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4214, file: !193, line: 365, baseType: !196, size: 32, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4214, file: !193, line: 366, baseType: !196, size: 32, offset: 160)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4214, file: !193, line: 367, baseType: !298, size: 8, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4214, file: !193, line: 368, baseType: !280, size: 64, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4214, file: !193, line: 369, baseType: !361, size: 320, offset: 320)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4141, file: !140, line: 270, baseType: !4226, size: 64, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!148, !357, !4229}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !193, line: 388, size: 832, elements: !4231)
!4231 = !{!4232, !4233, !4234, !4235, !4236, !4241}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4230, file: !193, line: 389, baseType: !248, size: 16)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4230, file: !193, line: 390, baseType: !248, size: 16, offset: 16)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4230, file: !193, line: 391, baseType: !248, size: 16, offset: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4230, file: !193, line: 392, baseType: !280, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4230, file: !193, line: 393, baseType: !4237, size: 32, offset: 128)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !193, line: 384, size: 32, elements: !4238)
!4238 = !{!4239, !4240}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4237, file: !193, line: 385, baseType: !248, size: 16)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4237, file: !193, line: 385, baseType: !248, size: 16, offset: 16)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4230, file: !193, line: 394, baseType: !4214, size: 640, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4141, file: !140, line: 273, baseType: !4163, size: 64, offset: 960)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4141, file: !140, line: 276, baseType: !4244, size: 64, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!148, !357, !7, !242}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4141, file: !140, line: 280, baseType: !4244, size: 64, offset: 1088)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4141, file: !140, line: 284, baseType: !4249, size: 64, offset: 1152)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!148, !357, !1149}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4141, file: !140, line: 287, baseType: !4253, size: 64, offset: 1216)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !357, !4256, !4161}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !140, line: 144, size: 128, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4262}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4257, file: !140, line: 145, baseType: !283, size: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4257, file: !140, line: 146, baseType: !283, size: 32, offset: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4257, file: !140, line: 147, baseType: !283, size: 32, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4257, file: !140, line: 148, baseType: !283, size: 32, offset: 96)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4141, file: !140, line: 291, baseType: !4131, size: 64, offset: 1280)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4141, file: !140, line: 294, baseType: !4163, size: 64, offset: 1344)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4141, file: !140, line: 295, baseType: !4163, size: 64, offset: 1408)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !139, file: !140, line: 474, baseType: !3564, size: 64, offset: 7360)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !139, file: !140, line: 475, baseType: !3564, size: 64, offset: 7424)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !139, file: !140, line: 476, baseType: !148, size: 32, offset: 7488)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !139, file: !140, line: 478, baseType: !4270, size: 64, offset: 7552)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !140, line: 355, size: 384, elements: !4272)
!4272 = !{!4273, !4287, !4300, !4315, !4331, !4344}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4271, file: !140, line: 357, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !357, !4277}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !140, line: 306, size: 192, elements: !4279)
!4279 = !{!4280, !4281, !4282, !4283, !4284}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4278, file: !140, line: 307, baseType: !196, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4278, file: !140, line: 308, baseType: !196, size: 32, offset: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4278, file: !140, line: 309, baseType: !196, size: 32, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4278, file: !140, line: 310, baseType: !196, size: 32, offset: 96)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4278, file: !140, line: 311, baseType: !4285, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4271, file: !140, line: 362, baseType: !4288, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !357, !4291}
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !140, line: 326, size: 192, elements: !4293)
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4292, file: !140, line: 327, baseType: !196, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4292, file: !140, line: 328, baseType: !196, size: 32, offset: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4292, file: !140, line: 329, baseType: !196, size: 32, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4292, file: !140, line: 330, baseType: !196, size: 32, offset: 96)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4292, file: !140, line: 331, baseType: !196, size: 32, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4292, file: !140, line: 332, baseType: !196, size: 32, offset: 160)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4271, file: !140, line: 364, baseType: !4301, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{null, !357, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !140, line: 315, size: 256, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4305, file: !140, line: 316, baseType: !196, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4305, file: !140, line: 317, baseType: !196, size: 32, offset: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4305, file: !140, line: 318, baseType: !196, size: 32, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4305, file: !140, line: 319, baseType: !196, size: 32, offset: 96)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4305, file: !140, line: 320, baseType: !196, size: 32, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4305, file: !140, line: 321, baseType: !196, size: 32, offset: 160)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4305, file: !140, line: 322, baseType: !196, size: 32, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4305, file: !140, line: 323, baseType: !196, size: 32, offset: 224)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4271, file: !140, line: 366, baseType: !4316, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{null, !357, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !140, line: 335, size: 320, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4320, file: !140, line: 336, baseType: !196, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4320, file: !140, line: 337, baseType: !196, size: 32, offset: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4320, file: !140, line: 338, baseType: !196, size: 32, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4320, file: !140, line: 339, baseType: !196, size: 32, offset: 96)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4320, file: !140, line: 340, baseType: !196, size: 32, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4320, file: !140, line: 341, baseType: !196, size: 32, offset: 160)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4320, file: !140, line: 342, baseType: !196, size: 32, offset: 192)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4320, file: !140, line: 343, baseType: !4330, size: 64, offset: 256)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4271, file: !140, line: 368, baseType: !4332, size: 64, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !357, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !140, line: 346, size: 192, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341, !4342, !4343}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4336, file: !140, line: 347, baseType: !196, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4336, file: !140, line: 348, baseType: !196, size: 32, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4336, file: !140, line: 349, baseType: !196, size: 32, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4336, file: !140, line: 350, baseType: !196, size: 32, offset: 96)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4336, file: !140, line: 351, baseType: !196, size: 32, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4336, file: !140, line: 352, baseType: !196, size: 32, offset: 160)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4271, file: !140, line: 371, baseType: !4163, size: 64, offset: 320)
!4345 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !140, line: 480, baseType: !4346, size: 64, offset: 7616)
!4346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !140, line: 480, size: 64, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4346, file: !140, line: 481, baseType: !459, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4346, file: !140, line: 482, baseType: !459, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !139, file: !140, line: 484, baseType: !242, size: 64, offset: 7680)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !139, file: !140, line: 485, baseType: !134, size: 64, offset: 7744)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !140, line: 488, baseType: !283, size: 32, offset: 7808)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !139, file: !140, line: 489, baseType: !134, size: 64, offset: 7872)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !139, file: !140, line: 491, baseType: !134, size: 64, offset: 7936)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !139, file: !140, line: 501, baseType: !4356, size: 64, offset: 8000)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !140, line: 495, size: 64, elements: !4358)
!4358 = !{!4359, !4360}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4357, file: !140, line: 496, baseType: !7, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4357, file: !140, line: 500, baseType: !4361, offset: 64)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4362, elements: !1914)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !140, line: 497, size: 128, elements: !4363)
!4363 = !{!4364, !4366}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4362, file: !140, line: 498, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !144, line: 158, baseType: !2326)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4362, file: !140, line: 499, baseType: !4365, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !139, file: !140, line: 503, baseType: !668, size: 8, offset: 8064)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "next_fb", scope: !136, file: !120, line: 341, baseType: !185, size: 128, offset: 8128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !136, file: !120, line: 343, baseType: !148, size: 32, offset: 8256)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !136, file: !120, line: 344, baseType: !148, size: 32, offset: 8288)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !136, file: !120, line: 345, baseType: !7, size: 32, offset: 8320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "userusecount", scope: !136, file: !120, line: 347, baseType: !7, size: 32, offset: 8352)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags", scope: !136, file: !120, line: 348, baseType: !242, size: 64, offset: 8384)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !136, file: !120, line: 350, baseType: !4375, size: 160, offset: 8448)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matroxfb_par", file: !120, line: 230, size: 160, elements: !4376)
!4376 = !{!4377, !4378, !4379}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "final_bppShift", scope: !4375, file: !120, line: 232, baseType: !7, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "cmap_len", scope: !4375, file: !120, line: 233, baseType: !7, size: 32, offset: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ydstorg", scope: !4375, file: !120, line: 238, baseType: !4380, size: 96, offset: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4375, file: !120, line: 234, size: 96, elements: !4381)
!4381 = !{!4382, !4383, !4384}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4380, file: !120, line: 235, baseType: !7, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !4380, file: !120, line: 236, baseType: !7, size: 32, offset: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !4380, file: !120, line: 237, baseType: !7, size: 32, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !136, file: !120, line: 351, baseType: !4386, size: 9664, offset: 8608)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_hw_state", file: !120, line: 264, size: 9664, elements: !4387)
!4387 = !{!4388, !4390, !4392, !4396, !4397, !4401, !4405, !4407, !4411, !4412, !4416, !4431}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "MXoptionReg", scope: !4386, file: !120, line: 265, baseType: !4389, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32_t", file: !144, line: 97, baseType: !283)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "DACclk", scope: !4386, file: !120, line: 266, baseType: !4391, size: 48, offset: 32)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 48, elements: !1818)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "DACreg", scope: !4386, file: !120, line: 267, baseType: !4393, size: 640, offset: 80)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 640, elements: !4394)
!4394 = !{!4395}
!4395 = !DISubrange(count: 80)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "MiscOutReg", scope: !4386, file: !120, line: 268, baseType: !299, size: 8, offset: 720)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "DACpal", scope: !4386, file: !120, line: 269, baseType: !4398, size: 6144, offset: 728)
!4398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 6144, elements: !4399)
!4399 = !{!4400}
!4400 = !DISubrange(count: 768)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "CRTC", scope: !4386, file: !120, line: 270, baseType: !4402, size: 200, offset: 6872)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 200, elements: !4403)
!4403 = !{!4404}
!4404 = !DISubrange(count: 25)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "CRTCEXT", scope: !4386, file: !120, line: 271, baseType: !4406, size: 72, offset: 7072)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 72, elements: !3664)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "SEQ", scope: !4386, file: !120, line: 272, baseType: !4408, size: 40, offset: 7144)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 40, elements: !4409)
!4409 = !{!4410}
!4410 = !DISubrange(count: 5)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "GCTL", scope: !4386, file: !120, line: 274, baseType: !4406, size: 72, offset: 7184)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ATTR", scope: !4386, file: !120, line: 276, baseType: !4413, size: 168, offset: 7256)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 168, elements: !4414)
!4414 = !{!4415}
!4415 = !DISubrange(count: 21)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "maven", scope: !4386, file: !120, line: 279, baseType: !4417, size: 2208, offset: 7424)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mavenregs", file: !120, line: 249, size: 2208, elements: !4418)
!4418 = !{!4419, !4424, !4425, !4426, !4427, !4428, !4430}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4417, file: !120, line: 250, baseType: !4420, size: 2048)
!4420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4421, size: 2048, elements: !4422)
!4421 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int8_t", file: !144, line: 93, baseType: !344)
!4422 = !{!4423}
!4423 = !DISubrange(count: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4417, file: !120, line: 251, baseType: !148, size: 32, offset: 2048)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "vlines", scope: !4417, file: !120, line: 252, baseType: !148, size: 32, offset: 2080)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "xtal", scope: !4417, file: !120, line: 253, baseType: !148, size: 32, offset: 2112)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !4417, file: !120, line: 254, baseType: !148, size: 32, offset: 2144)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4417, file: !120, line: 256, baseType: !4429, size: 16, offset: 2176)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !144, line: 95, baseType: !1028)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "hcorr", scope: !4417, file: !120, line: 257, baseType: !4429, size: 16, offset: 2192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "crtc2", scope: !4386, file: !120, line: 281, baseType: !4432, size: 32, offset: 9632)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_crtc2", file: !120, line: 260, size: 32, elements: !4433)
!4433 = !{!4434}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !4432, file: !120, line: 261, baseType: !4389, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !136, file: !120, line: 353, baseType: !4436, size: 128, offset: 18272)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_accel_data", file: !120, line: 284, size: 128, elements: !4437)
!4437 = !{!4438, !4439, !4440, !4441}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "m_dwg_rect", scope: !4436, file: !120, line: 288, baseType: !4389, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "m_opmode", scope: !4436, file: !120, line: 289, baseType: !4389, size: 32, offset: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "m_access", scope: !4436, file: !120, line: 290, baseType: !4389, size: 32, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "m_pitch", scope: !4436, file: !120, line: 291, baseType: !4389, size: 32, offset: 96)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "pcidev", scope: !136, file: !120, line: 355, baseType: !4443, size: 64, offset: 18432)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4445, line: 309, size: 19264, elements: !4446)
!4445 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4446 = !{!4447, !4448, !4522, !4523, !4524, !4525, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4617, !4618, !4619, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4693, !4694, !4695, !4696, !4697, !4698, !4700, !4701, !4702, !4705, !4712, !4713, !4714, !4715, !4716, !4717, !4718}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4444, file: !4445, line: 310, baseType: !185, size: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4444, file: !4445, line: 311, baseType: !4449, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4445, line: 605, size: 8064, elements: !4451)
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4458, !4472, !4473, !4474, !4498, !4501, !4502, !4506, !4507, !4508, !4509, !4510, !4514, !4515, !4517, !4518, !4519, !4520, !4521}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4450, file: !4445, line: 606, baseType: !185, size: 128)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4450, file: !4445, line: 607, baseType: !4449, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4450, file: !4445, line: 608, baseType: !185, size: 128, offset: 192)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4450, file: !4445, line: 609, baseType: !185, size: 128, offset: 320)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4450, file: !4445, line: 610, baseType: !4443, size: 64, offset: 448)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4450, file: !4445, line: 611, baseType: !185, size: 128, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4450, file: !4445, line: 613, baseType: !4459, size: 256, offset: 640)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4460, size: 256, elements: !231)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4462, line: 20, size: 512, elements: !4463)
!4462 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4461, file: !4462, line: 21, baseType: !4365, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4461, file: !4462, line: 22, baseType: !4365, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4461, file: !4462, line: 23, baseType: !280, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4461, file: !4462, line: 24, baseType: !242, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4461, file: !4462, line: 25, baseType: !242, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4461, file: !4462, line: 26, baseType: !4460, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4461, file: !4462, line: 26, baseType: !4460, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4461, file: !4462, line: 26, baseType: !4460, size: 64, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4450, file: !4445, line: 614, baseType: !185, size: 128, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4450, file: !4445, line: 615, baseType: !4461, size: 512, offset: 1024)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4450, file: !4445, line: 617, baseType: !4475, size: 64, offset: 1536)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4445, line: 731, size: 320, elements: !4477)
!4477 = !{!4478, !4482, !4486, !4490, !4494}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4476, file: !4445, line: 732, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!148, !4449}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4476, file: !4445, line: 733, baseType: !4483, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !4449}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4476, file: !4445, line: 734, baseType: !4487, size: 64, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!134, !4449, !7, !148}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4476, file: !4445, line: 735, baseType: !4491, size: 64, offset: 192)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!148, !4449, !7, !148, !148, !1573}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4476, file: !4445, line: 736, baseType: !4495, size: 64, offset: 256)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!148, !4449, !7, !148, !148, !283}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4450, file: !4445, line: 618, baseType: !4499, size: 64, offset: 1600)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4445, line: 537, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4450, file: !4445, line: 619, baseType: !134, size: 64, offset: 1664)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4450, file: !4445, line: 620, baseType: !4503, size: 64, offset: 1728)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4505, line: 84, flags: DIFlagFwdDecl)
!4505 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4450, file: !4445, line: 622, baseType: !299, size: 8, offset: 1792)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4450, file: !4445, line: 623, baseType: !299, size: 8, offset: 1800)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4450, file: !4445, line: 624, baseType: !299, size: 8, offset: 1808)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4450, file: !4445, line: 625, baseType: !299, size: 8, offset: 1816)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4450, file: !4445, line: 630, baseType: !4511, size: 384, offset: 1824)
!4511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 384, elements: !4512)
!4512 = !{!4513}
!4513 = !DISubrange(count: 48)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4450, file: !4445, line: 632, baseType: !249, size: 16, offset: 2208)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4450, file: !4445, line: 633, baseType: !4516, size: 16, offset: 2224)
!4516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4445, line: 237, baseType: !249)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4450, file: !4445, line: 634, baseType: !3564, size: 64, offset: 2240)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4450, file: !4445, line: 635, baseType: !417, size: 5568, offset: 2304)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4450, file: !4445, line: 636, baseType: !525, size: 64, offset: 7872)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4450, file: !4445, line: 637, baseType: !525, size: 64, offset: 7936)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4450, file: !4445, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4444, file: !4445, line: 312, baseType: !4449, size: 64, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4444, file: !4445, line: 314, baseType: !134, size: 64, offset: 256)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4444, file: !4445, line: 315, baseType: !4503, size: 64, offset: 320)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4444, file: !4445, line: 316, baseType: !4526, size: 64, offset: 384)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4445, line: 69, size: 832, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4534, !4535}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4527, file: !4445, line: 70, baseType: !4449, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4527, file: !4445, line: 71, baseType: !185, size: 128, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4527, file: !4445, line: 72, baseType: !4532, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4445, line: 72, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4527, file: !4445, line: 73, baseType: !299, size: 8, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4527, file: !4445, line: 74, baseType: !420, size: 512, offset: 320)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4444, file: !4445, line: 318, baseType: !7, size: 32, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4444, file: !4445, line: 319, baseType: !249, size: 16, offset: 480)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4444, file: !4445, line: 320, baseType: !249, size: 16, offset: 496)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4444, file: !4445, line: 321, baseType: !249, size: 16, offset: 512)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4444, file: !4445, line: 322, baseType: !249, size: 16, offset: 528)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4444, file: !4445, line: 323, baseType: !7, size: 32, offset: 544)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4444, file: !4445, line: 324, baseType: !344, size: 8, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4444, file: !4445, line: 325, baseType: !344, size: 8, offset: 584)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4444, file: !4445, line: 330, baseType: !344, size: 8, offset: 592)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4444, file: !4445, line: 331, baseType: !344, size: 8, offset: 600)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4444, file: !4445, line: 332, baseType: !344, size: 8, offset: 608)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4444, file: !4445, line: 333, baseType: !344, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4444, file: !4445, line: 334, baseType: !344, size: 8, offset: 624)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4444, file: !4445, line: 335, baseType: !344, size: 8, offset: 632)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4444, file: !4445, line: 336, baseType: !1028, size: 16, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4444, file: !4445, line: 337, baseType: !3997, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4444, file: !4445, line: 339, baseType: !4553, size: 64, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4445, line: 858, size: 2048, elements: !4555)
!4555 = !{!4556, !4557, !4558, !4570, !4574, !4578, !4582, !4586, !4587, !4591, !4610, !4611, !4612}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4554, file: !4445, line: 859, baseType: !185, size: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4554, file: !4445, line: 860, baseType: !280, size: 64, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4554, file: !4445, line: 861, baseType: !4559, size: 64, offset: 192)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4561)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3648, line: 38, size: 256, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567, !4568, !4569}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4561, file: !3648, line: 39, baseType: !196, size: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4561, file: !3648, line: 39, baseType: !196, size: 32, offset: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4561, file: !3648, line: 40, baseType: !196, size: 32, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4561, file: !3648, line: 40, baseType: !196, size: 32, offset: 96)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4561, file: !3648, line: 41, baseType: !196, size: 32, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4561, file: !3648, line: 41, baseType: !196, size: 32, offset: 160)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4561, file: !3648, line: 42, baseType: !3667, size: 64, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4554, file: !4445, line: 862, baseType: !4571, size: 64, offset: 256)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!148, !4443, !4559}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4554, file: !4445, line: 863, baseType: !4575, size: 64, offset: 320)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !4443}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4554, file: !4445, line: 864, baseType: !4579, size: 64, offset: 384)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!148, !4443, !3678}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4554, file: !4445, line: 865, baseType: !4583, size: 64, offset: 448)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!148, !4443}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4554, file: !4445, line: 866, baseType: !4575, size: 64, offset: 512)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4554, file: !4445, line: 867, baseType: !4588, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!148, !4443, !148}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4554, file: !4445, line: 868, baseType: !4592, size: 64, offset: 640)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4594)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4445, line: 795, size: 384, elements: !4595)
!4595 = !{!4596, !4602, !4606, !4607, !4608, !4609}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4594, file: !4445, line: 797, baseType: !4597, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!4600, !4443, !4601}
!4600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4445, line: 772, baseType: !7)
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4445, line: 180, baseType: !7)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4594, file: !4445, line: 801, baseType: !4603, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!4600, !4443}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4594, file: !4445, line: 804, baseType: !4603, size: 64, offset: 128)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4594, file: !4445, line: 807, baseType: !4575, size: 64, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4594, file: !4445, line: 808, baseType: !4575, size: 64, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4594, file: !4445, line: 811, baseType: !4575, size: 64, offset: 320)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4554, file: !4445, line: 869, baseType: !511, size: 64, offset: 704)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4554, file: !4445, line: 870, baseType: !3636, size: 1152, offset: 768)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4554, file: !4445, line: 871, baseType: !4613, size: 128, offset: 1920)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4445, line: 759, size: 128, elements: !4614)
!4614 = !{!4615, !4616}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4613, file: !4445, line: 760, baseType: !169)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4613, file: !4445, line: 761, baseType: !185, size: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4444, file: !4445, line: 340, baseType: !600, size: 64, offset: 832)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4444, file: !4445, line: 346, baseType: !4052, size: 128, offset: 896)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4444, file: !4445, line: 348, baseType: !4620, size: 32, offset: 1024)
!4620 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4445, line: 155, baseType: !148)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4444, file: !4445, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4444, file: !4445, line: 352, baseType: !344, size: 8, offset: 1064)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4444, file: !4445, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4444, file: !4445, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4444, file: !4445, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4444, file: !4445, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4444, file: !4445, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4444, file: !4445, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4444, file: !4445, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4444, file: !4445, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4444, file: !4445, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4444, file: !4445, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4444, file: !4445, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4444, file: !4445, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4444, file: !4445, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4444, file: !4445, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4444, file: !4445, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4444, file: !4445, line: 376, baseType: !7, size: 32, offset: 1120)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4444, file: !4445, line: 377, baseType: !7, size: 32, offset: 1152)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4444, file: !4445, line: 380, baseType: !4641, size: 64, offset: 1216)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4445, line: 303, flags: DIFlagFwdDecl)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4444, file: !4445, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4444, file: !4445, line: 383, baseType: !148, size: 32, offset: 1312)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4444, file: !4445, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4444, file: !4445, line: 387, baseType: !4601, size: 32, offset: 1376)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4444, file: !4445, line: 388, baseType: !417, size: 5568, offset: 1408)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4444, file: !4445, line: 390, baseType: !148, size: 32, offset: 6976)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4444, file: !4445, line: 396, baseType: !7, size: 32, offset: 7008)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4444, file: !4445, line: 397, baseType: !4651, size: 8704, offset: 7040)
!4651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4461, size: 8704, elements: !4652)
!4652 = !{!4653}
!4653 = !DISubrange(count: 17)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4444, file: !4445, line: 399, baseType: !668, size: 8, offset: 15744)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4444, file: !4445, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4444, file: !4445, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4444, file: !4445, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4444, file: !4445, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4444, file: !4445, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4444, file: !4445, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4444, file: !4445, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4444, file: !4445, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4444, file: !4445, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4444, file: !4445, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4444, file: !4445, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4444, file: !4445, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4444, file: !4445, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4444, file: !4445, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4444, file: !4445, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4444, file: !4445, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4444, file: !4445, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4444, file: !4445, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4444, file: !4445, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4444, file: !4445, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4444, file: !4445, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4444, file: !4445, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4444, file: !4445, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4444, file: !4445, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4444, file: !4445, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4444, file: !4445, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4444, file: !4445, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4444, file: !4445, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4444, file: !4445, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4444, file: !4445, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4444, file: !4445, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4444, file: !4445, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4444, file: !4445, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4444, file: !4445, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4444, file: !4445, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4444, file: !4445, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4444, file: !4445, line: 450, baseType: !4692, size: 16, offset: 15792)
!4692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4445, line: 206, baseType: !249)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4444, file: !4445, line: 451, baseType: !143, size: 32, offset: 15808)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4444, file: !4445, line: 453, baseType: !3981, size: 512, offset: 15840)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4444, file: !4445, line: 454, baseType: !814, size: 64, offset: 16384)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4444, file: !4445, line: 455, baseType: !525, size: 64, offset: 16448)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4444, file: !4445, line: 456, baseType: !148, size: 32, offset: 16512)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4444, file: !4445, line: 457, baseType: !4699, size: 1088, offset: 16576)
!4699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 1088, elements: !4652)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4444, file: !4445, line: 458, baseType: !4699, size: 1088, offset: 17664)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4444, file: !4445, line: 469, baseType: !511, size: 64, offset: 18752)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4444, file: !4445, line: 471, baseType: !4703, size: 64, offset: 18816)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4445, line: 304, flags: DIFlagFwdDecl)
!4705 = !DIDerivedType(tag: DW_TAG_member, scope: !4444, file: !4445, line: 478, baseType: !4706, size: 64, offset: 18880)
!4706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4444, file: !4445, line: 478, size: 64, elements: !4707)
!4707 = !{!4708, !4711}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4706, file: !4445, line: 479, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4445, line: 305, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4706, file: !4445, line: 480, baseType: !4443, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4444, file: !4445, line: 482, baseType: !1028, size: 16, offset: 18944)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4444, file: !4445, line: 483, baseType: !344, size: 8, offset: 18960)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4444, file: !4445, line: 497, baseType: !1028, size: 16, offset: 18976)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4444, file: !4445, line: 498, baseType: !2326, size: 64, offset: 19008)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4444, file: !4445, line: 499, baseType: !505, size: 64, offset: 19072)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4444, file: !4445, line: 500, baseType: !459, size: 64, offset: 19136)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4444, file: !4445, line: 502, baseType: !242, size: 64, offset: 19200)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "crtc1", scope: !136, file: !120, line: 362, baseType: !4720, size: 320, offset: 18496)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 357, size: 320, elements: !4721)
!4721 = !{!4722, !4727, !4728, !4729}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !4720, file: !120, line: 358, baseType: !4723, size: 192)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_vsync", file: !120, line: 333, size: 192, elements: !4724)
!4724 = !{!4725, !4726}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4723, file: !120, line: 334, baseType: !1639, size: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !4723, file: !120, line: 335, baseType: !7, size: 32, offset: 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4720, file: !120, line: 359, baseType: !7, size: 32, offset: 192)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "mnp", scope: !4720, file: !120, line: 360, baseType: !148, size: 32, offset: 224)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "panpos", scope: !4720, file: !120, line: 361, baseType: !148, size: 32, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "crtc2", scope: !136, file: !120, line: 369, baseType: !4731, size: 576, offset: 18816)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 363, size: 576, elements: !4732)
!4732 = !{!4733, !4734, !4735, !4736, !4739}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !4731, file: !120, line: 364, baseType: !4723, size: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4731, file: !120, line: 365, baseType: !7, size: 32, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "mnp", scope: !4731, file: !120, line: 366, baseType: !148, size: 32, offset: 224)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4731, file: !120, line: 367, baseType: !4737, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "matroxfb_dh_fb_info", file: !120, line: 331, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4731, file: !120, line: 368, baseType: !943, size: 256, offset: 320)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "altout", scope: !136, file: !120, line: 376, baseType: !4741, size: 512, offset: 19392)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 370, size: 512, elements: !4742)
!4742 = !{!4743, !4744}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4741, file: !120, line: 371, baseType: !943, size: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "tvo_params", scope: !4741, file: !120, line: 375, baseType: !4745, size: 224, offset: 256)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4741, file: !120, line: 372, size: 224, elements: !4746)
!4746 = !{!4747, !4748, !4749, !4750, !4751, !4752, !4753}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4745, file: !120, line: 373, baseType: !148, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !4745, file: !120, line: 373, baseType: !148, size: 32, offset: 32)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !4745, file: !120, line: 373, baseType: !148, size: 32, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !4745, file: !120, line: 373, baseType: !148, size: 32, offset: 96)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !4745, file: !120, line: 373, baseType: !148, size: 32, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "testout", scope: !4745, file: !120, line: 374, baseType: !148, size: 32, offset: 160)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "deflicker", scope: !4745, file: !120, line: 374, baseType: !148, size: 32, offset: 192)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "outputs", scope: !136, file: !120, line: 384, baseType: !4755, size: 768, offset: 19904)
!4755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4756, size: 768, elements: !460)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 378, size: 256, elements: !4757)
!4757 = !{!4758, !4759, !4808, !4809, !4810}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4756, file: !120, line: 379, baseType: !7, size: 32)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !4756, file: !120, line: 380, baseType: !4760, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_altout", file: !120, line: 297, size: 512, elements: !4762)
!4762 = !{!4763, !4764, !4786, !4790, !4791, !4795, !4801, !4807}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4761, file: !120, line: 298, baseType: !280, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "compute", scope: !4761, file: !120, line: 299, baseType: !4765, size: 64, offset: 64)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!148, !134, !4768}
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "my_timming", file: !120, line: 187, size: 480, elements: !4770)
!4770 = !{!4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4769, file: !120, line: 188, baseType: !7, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "mnp", scope: !4769, file: !120, line: 189, baseType: !148, size: 32, offset: 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4769, file: !120, line: 190, baseType: !7, size: 32, offset: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "HDisplay", scope: !4769, file: !120, line: 191, baseType: !7, size: 32, offset: 96)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "HSyncStart", scope: !4769, file: !120, line: 192, baseType: !7, size: 32, offset: 128)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "HSyncEnd", scope: !4769, file: !120, line: 193, baseType: !7, size: 32, offset: 160)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "HTotal", scope: !4769, file: !120, line: 194, baseType: !7, size: 32, offset: 192)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "VDisplay", scope: !4769, file: !120, line: 195, baseType: !7, size: 32, offset: 224)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "VSyncStart", scope: !4769, file: !120, line: 196, baseType: !7, size: 32, offset: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "VSyncEnd", scope: !4769, file: !120, line: 197, baseType: !7, size: 32, offset: 288)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "VTotal", scope: !4769, file: !120, line: 198, baseType: !7, size: 32, offset: 320)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4769, file: !120, line: 199, baseType: !7, size: 32, offset: 352)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dblscan", scope: !4769, file: !120, line: 200, baseType: !148, size: 32, offset: 384)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !4769, file: !120, line: 201, baseType: !148, size: 32, offset: 416)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4769, file: !120, line: 202, baseType: !7, size: 32, offset: 448)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !4761, file: !120, line: 300, baseType: !4787, size: 64, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!148, !134}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4761, file: !120, line: 301, baseType: !4787, size: 64, offset: 192)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "verifymode", scope: !4761, file: !120, line: 302, baseType: !4792, size: 64, offset: 256)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!148, !134, !4389}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "getqueryctrl", scope: !4761, file: !120, line: 303, baseType: !4796, size: 64, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!148, !134, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_queryctrl", file: !120, line: 294, flags: DIFlagFwdDecl)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "getctrl", scope: !4761, file: !120, line: 305, baseType: !4802, size: 64, offset: 384)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!148, !134, !4805}
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_control", file: !120, line: 295, flags: DIFlagFwdDecl)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "setctrl", scope: !4761, file: !120, line: 307, baseType: !4802, size: 64, offset: 448)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4756, file: !120, line: 381, baseType: !134, size: 64, offset: 128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4756, file: !120, line: 382, baseType: !7, size: 32, offset: 192)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "default_src", scope: !4756, file: !120, line: 383, baseType: !7, size: 32, offset: 224)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "drivers", scope: !136, file: !120, line: 387, baseType: !4812, size: 320, offset: 20672)
!4812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4813, size: 320, elements: !4409)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matroxfb_driver", file: !120, line: 506, size: 320, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4822}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4814, file: !120, line: 507, baseType: !185, size: 128)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4814, file: !120, line: 508, baseType: !459, size: 64, offset: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4814, file: !120, line: 509, baseType: !4819, size: 64, offset: 192)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!134, !135}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4814, file: !120, line: 510, baseType: !4823, size: 64, offset: 256)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{null, !135, !134}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_data", scope: !136, file: !120, line: 388, baseType: !4827, size: 320, offset: 20992)
!4827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 320, elements: !4409)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_count", scope: !136, file: !120, line: 389, baseType: !7, size: 32, offset: 21312)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "video", scope: !136, file: !120, line: 397, baseType: !4830, size: 256, offset: 21376)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 391, size: 256, elements: !4831)
!4831 = !{!4832, !4833, !4838, !4839, !4840}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4830, file: !120, line: 392, baseType: !242, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "vbase", scope: !4830, file: !120, line: 393, baseType: !4834, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_typedef, name: "vaddr_t", file: !120, line: 126, baseType: !4835)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 124, size: 64, elements: !4836)
!4836 = !{!4837}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4835, file: !120, line: 125, baseType: !134, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4830, file: !120, line: 394, baseType: !7, size: 32, offset: 128)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "len_usable", scope: !4830, file: !120, line: 395, baseType: !7, size: 32, offset: 160)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "len_maximum", scope: !4830, file: !120, line: 396, baseType: !7, size: 32, offset: 192)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !136, file: !120, line: 403, baseType: !4842, size: 192, offset: 21632)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 399, size: 192, elements: !4843)
!4843 = !{!4844, !4845, !4846}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4842, file: !120, line: 400, baseType: !242, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "vbase", scope: !4842, file: !120, line: 401, baseType: !4834, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4842, file: !120, line: 402, baseType: !7, size: 32, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "max_pixel_clock", scope: !136, file: !120, line: 405, baseType: !7, size: 32, offset: 21824)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "max_pixel_clock_panellink", scope: !136, file: !120, line: 406, baseType: !7, size: 32, offset: 21856)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "hw_switch", scope: !136, file: !120, line: 408, baseType: !4850, size: 64, offset: 21888)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_switch", file: !120, line: 499, size: 256, elements: !4852)
!4852 = !{!4853, !4857, !4861, !4865}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "preinit", scope: !4851, file: !120, line: 500, baseType: !4854, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!148, !135}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4851, file: !120, line: 501, baseType: !4858, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{null, !135}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4851, file: !120, line: 502, baseType: !4862, size: 64, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!148, !135, !4768}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4851, file: !120, line: 503, baseType: !4858, size: 64, offset: 192)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !136, file: !120, line: 413, baseType: !4867, size: 256, offset: 21952)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 410, size: 256, elements: !4868)
!4868 = !{!4869, !4879}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "pll", scope: !4867, file: !120, line: 411, baseType: !4870, size: 224)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_pll_features", file: !120, line: 220, size: 224, elements: !4871)
!4871 = !{!4872, !4873, !4874, !4875, !4876, !4877, !4878}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "vco_freq_min", scope: !4870, file: !120, line: 221, baseType: !7, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ref_freq", scope: !4870, file: !120, line: 222, baseType: !7, size: 32, offset: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "feed_div_min", scope: !4870, file: !120, line: 223, baseType: !7, size: 32, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "feed_div_max", scope: !4870, file: !120, line: 224, baseType: !7, size: 32, offset: 96)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "in_div_min", scope: !4870, file: !120, line: 225, baseType: !7, size: 32, offset: 128)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "in_div_max", scope: !4870, file: !120, line: 226, baseType: !7, size: 32, offset: 160)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "post_shift_max", scope: !4870, file: !120, line: 227, baseType: !7, size: 32, offset: 192)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "DAC1064", scope: !4867, file: !120, line: 412, baseType: !4880, size: 16, offset: 224)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_DAC1064_features", file: !120, line: 243, size: 16, elements: !4881)
!4881 = !{!4882, !4883}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "xvrefctrl", scope: !4880, file: !120, line: 244, baseType: !4421, size: 8)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "xmiscctrl", scope: !4880, file: !120, line: 245, baseType: !4421, size: 8, offset: 8)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !136, file: !120, line: 417, baseType: !4885, offset: 22208)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 414, elements: !4886)
!4886 = !{!4887, !4888}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "DAC", scope: !4885, file: !120, line: 415, baseType: !169)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4885, file: !120, line: 416, baseType: !169)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !136, file: !120, line: 419, baseType: !119, size: 32, offset: 22208)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "interleave", scope: !136, file: !120, line: 421, baseType: !148, size: 32, offset: 22240)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "millenium", scope: !136, file: !120, line: 422, baseType: !148, size: 32, offset: 22272)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "milleniumII", scope: !136, file: !120, line: 423, baseType: !148, size: 32, offset: 22304)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "capable", scope: !136, file: !120, line: 431, baseType: !4894, size: 256, offset: 22336)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 424, size: 256, elements: !4895)
!4895 = !{!4896, !4897, !4900, !4901, !4902, !4903}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "cfb4", scope: !4894, file: !120, line: 425, baseType: !148, size: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "vxres", scope: !4894, file: !120, line: 426, baseType: !4898, size: 64, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "cross4MB", scope: !4894, file: !120, line: 427, baseType: !148, size: 32, offset: 128)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4894, file: !120, line: 428, baseType: !148, size: 32, offset: 160)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "plnwt", scope: !4894, file: !120, line: 429, baseType: !148, size: 32, offset: 192)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "srcorg", scope: !4894, file: !120, line: 430, baseType: !148, size: 32, offset: 224)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "wc_cookie", scope: !136, file: !120, line: 432, baseType: !148, size: 32, offset: 22592)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "devflags", scope: !136, file: !120, line: 460, baseType: !4906, size: 768, offset: 22624)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 433, size: 768, elements: !4907)
!4907 = !{!4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "precise_width", scope: !4906, file: !120, line: 434, baseType: !148, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "mga_24bpp_fix", scope: !4906, file: !120, line: 435, baseType: !148, size: 32, offset: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "novga", scope: !4906, file: !120, line: 436, baseType: !148, size: 32, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "nobios", scope: !4906, file: !120, line: 437, baseType: !148, size: 32, offset: 96)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "nopciretry", scope: !4906, file: !120, line: 438, baseType: !148, size: 32, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "noinit", scope: !4906, file: !120, line: 439, baseType: !148, size: 32, offset: 160)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "sgram", scope: !4906, file: !120, line: 440, baseType: !148, size: 32, offset: 192)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "support32MB", scope: !4906, file: !120, line: 441, baseType: !148, size: 32, offset: 224)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "accelerator", scope: !4906, file: !120, line: 443, baseType: !148, size: 32, offset: 256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "text_type_aux", scope: !4906, file: !120, line: 444, baseType: !148, size: 32, offset: 288)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "video64bits", scope: !4906, file: !120, line: 445, baseType: !148, size: 32, offset: 320)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "crtc2", scope: !4906, file: !120, line: 446, baseType: !148, size: 32, offset: 352)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "maven_capable", scope: !4906, file: !120, line: 447, baseType: !148, size: 32, offset: 384)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "vgastep", scope: !4906, file: !120, line: 448, baseType: !7, size: 32, offset: 416)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "textmode", scope: !4906, file: !120, line: 449, baseType: !7, size: 32, offset: 448)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "textstep", scope: !4906, file: !120, line: 450, baseType: !7, size: 32, offset: 480)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "textvram", scope: !4906, file: !120, line: 451, baseType: !7, size: 32, offset: 512)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "ydstorg", scope: !4906, file: !120, line: 452, baseType: !7, size: 32, offset: 544)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "memtype", scope: !4906, file: !120, line: 454, baseType: !148, size: 32, offset: 576)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "g450dac", scope: !4906, file: !120, line: 455, baseType: !148, size: 32, offset: 608)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "dfp_type", scope: !4906, file: !120, line: 456, baseType: !148, size: 32, offset: 640)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "panellink", scope: !4906, file: !120, line: 457, baseType: !148, size: 32, offset: 672)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "dualhead", scope: !4906, file: !120, line: 458, baseType: !148, size: 32, offset: 704)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fbResource", scope: !4906, file: !120, line: 459, baseType: !7, size: 32, offset: 736)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !136, file: !120, line: 461, baseType: !4141, size: 1472, offset: 23424)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "bios", scope: !136, file: !120, line: 462, baseType: !4934, size: 1152, offset: 24896)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_bios", file: !120, line: 317, size: 1152, elements: !4935)
!4935 = !{!4936, !4937, !4938, !4940, !4946}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "bios_valid", scope: !4934, file: !120, line: 318, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "pins_len", scope: !4934, file: !120, line: 319, baseType: !7, size: 32, offset: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "pins", scope: !4934, file: !120, line: 320, baseType: !4939, size: 1024, offset: 64)
!4939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 1024, elements: !3654)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4934, file: !120, line: 323, baseType: !4941, size: 24, offset: 1088)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4934, file: !120, line: 321, size: 24, elements: !4942)
!4942 = !{!4943, !4944, !4945}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "vMaj", scope: !4941, file: !120, line: 322, baseType: !299, size: 8)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "vMin", scope: !4941, file: !120, line: 322, baseType: !299, size: 8, offset: 8)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "vRev", scope: !4941, file: !120, line: 322, baseType: !299, size: 8, offset: 16)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !4934, file: !120, line: 326, baseType: !4947, size: 16, offset: 1112)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4934, file: !120, line: 324, size: 16, elements: !4948)
!4948 = !{!4949, !4950}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4947, file: !120, line: 325, baseType: !299, size: 8)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "tvout", scope: !4947, file: !120, line: 325, baseType: !299, size: 8, offset: 8)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !136, file: !120, line: 467, baseType: !4952, size: 192, offset: 26048)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 463, size: 192, elements: !4953)
!4953 = !{!4954, !4959, !4960}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !4952, file: !120, line: 464, baseType: !4955, size: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_pll_limits", file: !120, line: 215, size: 64, elements: !4956)
!4956 = !{!4957, !4958}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "vcomin", scope: !4955, file: !120, line: 216, baseType: !7, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "vcomax", scope: !4955, file: !120, line: 217, baseType: !7, size: 32, offset: 32)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4952, file: !120, line: 465, baseType: !4955, size: 64, offset: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "video", scope: !4952, file: !120, line: 466, baseType: !4955, size: 64, offset: 128)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !136, file: !120, line: 472, baseType: !4962, size: 864, offset: 26240)
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 468, size: 864, elements: !4963)
!4963 = !{!4964, !4974, !4975}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !4962, file: !120, line: 469, baseType: !4965, size: 288)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrox_pll_cache", file: !120, line: 207, size: 288, elements: !4966)
!4966 = !{!4967, !4968}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4965, file: !120, line: 208, baseType: !7, size: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4965, file: !120, line: 212, baseType: !4969, size: 256, offset: 32)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4970, size: 256, elements: !231)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4965, file: !120, line: 209, size: 64, elements: !4971)
!4971 = !{!4972, !4973}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "mnp_key", scope: !4970, file: !120, line: 210, baseType: !7, size: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "mnp_value", scope: !4970, file: !120, line: 211, baseType: !7, size: 32, offset: 32)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4962, file: !120, line: 470, baseType: !4965, size: 288, offset: 288)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "video", scope: !4962, file: !120, line: 471, baseType: !4965, size: 288, offset: 576)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !136, file: !120, line: 493, baseType: !4977, size: 352, offset: 27104)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !120, line: 473, size: 352, elements: !4978)
!4978 = !{!4979, !4984, !4995}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "pll", scope: !4977, file: !120, line: 477, baseType: !4980, size: 64)
!4980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4977, file: !120, line: 474, size: 64, elements: !4981)
!4981 = !{!4982, !4983}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "video", scope: !4980, file: !120, line: 475, baseType: !7, size: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4980, file: !120, line: 476, baseType: !7, size: 32, offset: 32)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4977, file: !120, line: 487, baseType: !4985, size: 256, offset: 64)
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4977, file: !120, line: 478, size: 256, elements: !4986)
!4986 = !{!4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !4985, file: !120, line: 479, baseType: !4389, size: 32)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "opt2", scope: !4985, file: !120, line: 480, baseType: !4389, size: 32, offset: 32)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "opt3", scope: !4985, file: !120, line: 481, baseType: !4389, size: 32, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "mctlwtst", scope: !4985, file: !120, line: 482, baseType: !4389, size: 32, offset: 96)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "mctlwtst_core", scope: !4985, file: !120, line: 483, baseType: !4389, size: 32, offset: 128)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "memmisc", scope: !4985, file: !120, line: 484, baseType: !4389, size: 32, offset: 160)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "memrdbk", scope: !4985, file: !120, line: 485, baseType: !4389, size: 32, offset: 192)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "maccess", scope: !4985, file: !120, line: 486, baseType: !4389, size: 32, offset: 224)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !4977, file: !120, line: 492, baseType: !4996, size: 32, offset: 320)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4977, file: !120, line: 488, size: 32, elements: !4997)
!4997 = !{!4998, !4999, !5000}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "ddr", scope: !4996, file: !120, line: 489, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "emrswen", scope: !4996, file: !120, line: 490, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "dll", scope: !4996, file: !120, line: 491, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !136, file: !120, line: 494, baseType: !5002, size: 512, offset: 27456)
!5002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4389, size: 512, elements: !239)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !299)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !3107, line: 31, baseType: !196)
!5009 = !{!0, !5010}
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license250", scope: !2, file: !3, line: 520, type: !5012, isLocal: true, isDefinition: true, align: 8)
!5012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 216, elements: !5013)
!5013 = !{!5014}
!5014 = !DISubrange(count: 27)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 496, elements: !5016)
!5016 = !{!5017}
!5017 = !DISubrange(count: 62)
!5018 = !{i32 7, !"Dwarf Version", i32 4}
!5019 = !{i32 2, !"Debug Info Version", i32 3}
!5020 = !{i32 1, !"wchar_size", i32 2}
!5021 = !{i32 1, !"Code Model", i32 2}
!5022 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5023 = distinct !DISubprogram(name: "matrox_cfbX_init", scope: !3, file: !3, line: 111, type: !4859, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5024 = !DILocalVariable(name: "minfo", arg: 1, scope: !5023, file: !3, line: 111, type: !135)
!5025 = !DILocation(line: 111, column: 46, scope: !5023)
!5026 = !DILocalVariable(name: "maccess", scope: !5023, file: !3, line: 113, type: !4389)
!5027 = !DILocation(line: 113, column: 12, scope: !5023)
!5028 = !DILocalVariable(name: "mpitch", scope: !5023, file: !3, line: 114, type: !4389)
!5029 = !DILocation(line: 114, column: 12, scope: !5023)
!5030 = !DILocalVariable(name: "mopmode", scope: !5023, file: !3, line: 115, type: !4389)
!5031 = !DILocation(line: 115, column: 12, scope: !5023)
!5032 = !DILocalVariable(name: "accel", scope: !5023, file: !3, line: 116, type: !148)
!5033 = !DILocation(line: 116, column: 6, scope: !5023)
!5034 = !DILocation(line: 120, column: 11, scope: !5023)
!5035 = !DILocation(line: 120, column: 18, scope: !5023)
!5036 = !DILocation(line: 120, column: 24, scope: !5023)
!5037 = !DILocation(line: 120, column: 28, scope: !5023)
!5038 = !DILocation(line: 120, column: 9, scope: !5023)
!5039 = !DILocation(line: 122, column: 2, scope: !5023)
!5040 = !DILocation(line: 122, column: 9, scope: !5023)
!5041 = !DILocation(line: 122, column: 15, scope: !5023)
!5042 = !DILocation(line: 122, column: 27, scope: !5023)
!5043 = !DILocation(line: 123, column: 2, scope: !5023)
!5044 = !DILocation(line: 123, column: 9, scope: !5023)
!5045 = !DILocation(line: 123, column: 15, scope: !5023)
!5046 = !DILocation(line: 123, column: 27, scope: !5023)
!5047 = !DILocation(line: 124, column: 2, scope: !5023)
!5048 = !DILocation(line: 124, column: 9, scope: !5023)
!5049 = !DILocation(line: 124, column: 15, scope: !5023)
!5050 = !DILocation(line: 124, column: 28, scope: !5023)
!5051 = !DILocation(line: 125, column: 2, scope: !5023)
!5052 = !DILocation(line: 125, column: 9, scope: !5023)
!5053 = !DILocation(line: 125, column: 15, scope: !5023)
!5054 = !DILocation(line: 125, column: 25, scope: !5023)
!5055 = !DILocation(line: 127, column: 11, scope: !5023)
!5056 = !DILocation(line: 127, column: 18, scope: !5023)
!5057 = !DILocation(line: 127, column: 24, scope: !5023)
!5058 = !DILocation(line: 127, column: 28, scope: !5023)
!5059 = !DILocation(line: 127, column: 40, scope: !5023)
!5060 = !DILocation(line: 127, column: 58, scope: !5023)
!5061 = !DILocation(line: 127, column: 8, scope: !5023)
!5062 = !DILocation(line: 129, column: 10, scope: !5023)
!5063 = !DILocation(line: 129, column: 17, scope: !5023)
!5064 = !DILocation(line: 129, column: 23, scope: !5023)
!5065 = !DILocation(line: 129, column: 27, scope: !5023)
!5066 = !DILocation(line: 129, column: 2, scope: !5023)
!5067 = !DILocation(line: 130, column: 20, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 129, column: 43)
!5069 = !DILocation(line: 131, column: 15, scope: !5068)
!5070 = !DILocation(line: 131, column: 22, scope: !5068)
!5071 = !DILocation(line: 131, column: 28, scope: !5068)
!5072 = !DILocation(line: 131, column: 12, scope: !5068)
!5073 = !DILocation(line: 132, column: 13, scope: !5068)
!5074 = !DILocation(line: 133, column: 21, scope: !5068)
!5075 = !DILocation(line: 133, column: 28, scope: !5068)
!5076 = !DILocation(line: 133, column: 5, scope: !5068)
!5077 = !DILocation(line: 134, column: 9, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 134, column: 9)
!5079 = !DILocation(line: 134, column: 15, scope: !5078)
!5080 = !DILocation(line: 134, column: 20, scope: !5078)
!5081 = !DILocation(line: 134, column: 27, scope: !5078)
!5082 = !DILocation(line: 134, column: 9, scope: !5068)
!5083 = !DILocation(line: 135, column: 6, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 134, column: 33)
!5085 = !DILocation(line: 135, column: 13, scope: !5084)
!5086 = !DILocation(line: 135, column: 19, scope: !5084)
!5087 = !DILocation(line: 135, column: 31, scope: !5084)
!5088 = !DILocation(line: 136, column: 6, scope: !5084)
!5089 = !DILocation(line: 136, column: 13, scope: !5084)
!5090 = !DILocation(line: 136, column: 19, scope: !5084)
!5091 = !DILocation(line: 136, column: 31, scope: !5084)
!5092 = !DILocation(line: 137, column: 5, scope: !5084)
!5093 = !DILocation(line: 138, column: 5, scope: !5068)
!5094 = !DILocation(line: 139, column: 20, scope: !5068)
!5095 = !DILocation(line: 140, column: 13, scope: !5068)
!5096 = !DILocation(line: 141, column: 21, scope: !5068)
!5097 = !DILocation(line: 141, column: 28, scope: !5068)
!5098 = !DILocation(line: 141, column: 5, scope: !5068)
!5099 = !DILocation(line: 142, column: 9, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 142, column: 9)
!5101 = !DILocation(line: 142, column: 9, scope: !5068)
!5102 = !DILocation(line: 143, column: 6, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 142, column: 16)
!5104 = !DILocation(line: 143, column: 13, scope: !5103)
!5105 = !DILocation(line: 143, column: 19, scope: !5103)
!5106 = !DILocation(line: 143, column: 31, scope: !5103)
!5107 = !DILocation(line: 144, column: 6, scope: !5103)
!5108 = !DILocation(line: 144, column: 13, scope: !5103)
!5109 = !DILocation(line: 144, column: 19, scope: !5103)
!5110 = !DILocation(line: 144, column: 31, scope: !5103)
!5111 = !DILocation(line: 145, column: 6, scope: !5103)
!5112 = !DILocation(line: 145, column: 13, scope: !5103)
!5113 = !DILocation(line: 145, column: 19, scope: !5103)
!5114 = !DILocation(line: 145, column: 32, scope: !5103)
!5115 = !DILocation(line: 146, column: 5, scope: !5103)
!5116 = !DILocation(line: 147, column: 5, scope: !5068)
!5117 = !DILocation(line: 148, column: 16, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 148, column: 16)
!5119 = !DILocation(line: 148, column: 23, scope: !5118)
!5120 = !DILocation(line: 148, column: 29, scope: !5118)
!5121 = !DILocation(line: 148, column: 33, scope: !5118)
!5122 = !DILocation(line: 148, column: 39, scope: !5118)
!5123 = !DILocation(line: 148, column: 46, scope: !5118)
!5124 = !DILocation(line: 148, column: 16, scope: !5068)
!5125 = !DILocation(line: 149, column: 14, scope: !5118)
!5126 = !DILocation(line: 149, column: 6, scope: !5118)
!5127 = !DILocation(line: 151, column: 14, scope: !5118)
!5128 = !DILocation(line: 152, column: 13, scope: !5068)
!5129 = !DILocation(line: 153, column: 9, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 153, column: 9)
!5131 = !DILocation(line: 153, column: 9, scope: !5068)
!5132 = !DILocation(line: 154, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 153, column: 16)
!5134 = !DILocation(line: 154, column: 13, scope: !5133)
!5135 = !DILocation(line: 154, column: 19, scope: !5133)
!5136 = !DILocation(line: 154, column: 31, scope: !5133)
!5137 = !DILocation(line: 155, column: 6, scope: !5133)
!5138 = !DILocation(line: 155, column: 13, scope: !5133)
!5139 = !DILocation(line: 155, column: 19, scope: !5133)
!5140 = !DILocation(line: 155, column: 31, scope: !5133)
!5141 = !DILocation(line: 156, column: 6, scope: !5133)
!5142 = !DILocation(line: 156, column: 13, scope: !5133)
!5143 = !DILocation(line: 156, column: 19, scope: !5133)
!5144 = !DILocation(line: 156, column: 32, scope: !5133)
!5145 = !DILocation(line: 157, column: 5, scope: !5133)
!5146 = !DILocation(line: 158, column: 5, scope: !5068)
!5147 = !DILocation(line: 159, column: 20, scope: !5068)
!5148 = !DILocation(line: 160, column: 13, scope: !5068)
!5149 = !DILocation(line: 161, column: 9, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 161, column: 9)
!5151 = !DILocation(line: 161, column: 9, scope: !5068)
!5152 = !DILocation(line: 162, column: 6, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 161, column: 16)
!5154 = !DILocation(line: 162, column: 13, scope: !5153)
!5155 = !DILocation(line: 162, column: 19, scope: !5153)
!5156 = !DILocation(line: 162, column: 31, scope: !5153)
!5157 = !DILocation(line: 163, column: 6, scope: !5153)
!5158 = !DILocation(line: 163, column: 13, scope: !5153)
!5159 = !DILocation(line: 163, column: 19, scope: !5153)
!5160 = !DILocation(line: 163, column: 31, scope: !5153)
!5161 = !DILocation(line: 164, column: 6, scope: !5153)
!5162 = !DILocation(line: 164, column: 13, scope: !5153)
!5163 = !DILocation(line: 164, column: 19, scope: !5153)
!5164 = !DILocation(line: 164, column: 32, scope: !5153)
!5165 = !DILocation(line: 165, column: 5, scope: !5153)
!5166 = !DILocation(line: 166, column: 5, scope: !5068)
!5167 = !DILocation(line: 167, column: 20, scope: !5068)
!5168 = !DILocation(line: 168, column: 13, scope: !5068)
!5169 = !DILocation(line: 169, column: 9, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 169, column: 9)
!5171 = !DILocation(line: 169, column: 9, scope: !5068)
!5172 = !DILocation(line: 170, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 169, column: 16)
!5174 = !DILocation(line: 170, column: 13, scope: !5173)
!5175 = !DILocation(line: 170, column: 19, scope: !5173)
!5176 = !DILocation(line: 170, column: 31, scope: !5173)
!5177 = !DILocation(line: 171, column: 6, scope: !5173)
!5178 = !DILocation(line: 171, column: 13, scope: !5173)
!5179 = !DILocation(line: 171, column: 19, scope: !5173)
!5180 = !DILocation(line: 171, column: 31, scope: !5173)
!5181 = !DILocation(line: 172, column: 6, scope: !5173)
!5182 = !DILocation(line: 172, column: 13, scope: !5173)
!5183 = !DILocation(line: 172, column: 19, scope: !5173)
!5184 = !DILocation(line: 172, column: 32, scope: !5173)
!5185 = !DILocation(line: 173, column: 5, scope: !5173)
!5186 = !DILocation(line: 174, column: 5, scope: !5068)
!5187 = !DILocation(line: 175, column: 20, scope: !5068)
!5188 = !DILocation(line: 176, column: 13, scope: !5068)
!5189 = !DILocation(line: 177, column: 5, scope: !5068)
!5190 = !DILocation(line: 179, column: 2, scope: !5023)
!5191 = !DILocation(line: 179, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 179, column: 2)
!5193 = distinct !{!5193, !5190, !5190}
!5194 = !DILocation(line: 180, column: 2, scope: !5023)
!5195 = !DILocation(line: 181, column: 2, scope: !5023)
!5196 = !DILocation(line: 182, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 182, column: 6)
!5198 = !DILocation(line: 182, column: 13, scope: !5197)
!5199 = !DILocation(line: 182, column: 21, scope: !5197)
!5200 = !DILocation(line: 182, column: 6, scope: !5023)
!5201 = !DILocation(line: 183, column: 3, scope: !5197)
!5202 = !DILocation(line: 184, column: 6, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 184, column: 6)
!5204 = !DILocation(line: 184, column: 13, scope: !5203)
!5205 = !DILocation(line: 184, column: 21, scope: !5203)
!5206 = !DILocation(line: 184, column: 6, scope: !5023)
!5207 = !DILocation(line: 185, column: 3, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 184, column: 29)
!5209 = !DILocation(line: 186, column: 3, scope: !5208)
!5210 = !DILocation(line: 187, column: 2, scope: !5208)
!5211 = !DILocation(line: 188, column: 2, scope: !5023)
!5212 = !DILocation(line: 189, column: 2, scope: !5023)
!5213 = !DILocation(line: 190, column: 2, scope: !5023)
!5214 = !DILocation(line: 191, column: 2, scope: !5023)
!5215 = !DILocation(line: 192, column: 2, scope: !5023)
!5216 = !DILocation(line: 193, column: 2, scope: !5023)
!5217 = !DILocation(line: 193, column: 9, scope: !5023)
!5218 = !DILocation(line: 193, column: 15, scope: !5023)
!5219 = !DILocation(line: 193, column: 26, scope: !5023)
!5220 = !DILocation(line: 195, column: 26, scope: !5023)
!5221 = !DILocation(line: 195, column: 2, scope: !5023)
!5222 = !DILocation(line: 195, column: 9, scope: !5023)
!5223 = !DILocation(line: 195, column: 15, scope: !5023)
!5224 = !DILocation(line: 195, column: 24, scope: !5023)
!5225 = !DILocation(line: 196, column: 26, scope: !5023)
!5226 = !DILocation(line: 196, column: 2, scope: !5023)
!5227 = !DILocation(line: 196, column: 9, scope: !5023)
!5228 = !DILocation(line: 196, column: 15, scope: !5023)
!5229 = !DILocation(line: 196, column: 24, scope: !5023)
!5230 = !DILocation(line: 197, column: 25, scope: !5023)
!5231 = !DILocation(line: 197, column: 2, scope: !5023)
!5232 = !DILocation(line: 197, column: 9, scope: !5023)
!5233 = !DILocation(line: 197, column: 15, scope: !5023)
!5234 = !DILocation(line: 197, column: 23, scope: !5023)
!5235 = !DILocation(line: 198, column: 1, scope: !5023)
!5236 = distinct !DISubprogram(name: "matrox_cfb4_pal", scope: !3, file: !3, line: 89, type: !5237, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{null, !5003}
!5239 = !DILocalVariable(name: "pal", arg: 1, scope: !5236, file: !3, line: 89, type: !5003)
!5240 = !DILocation(line: 89, column: 47, scope: !5236)
!5241 = !DILocalVariable(name: "i", scope: !5236, file: !3, line: 90, type: !7)
!5242 = !DILocation(line: 90, column: 15, scope: !5236)
!5243 = !DILocation(line: 92, column: 9, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 92, column: 2)
!5245 = !DILocation(line: 92, column: 7, scope: !5244)
!5246 = !DILocation(line: 92, column: 14, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 92, column: 2)
!5248 = !DILocation(line: 92, column: 16, scope: !5247)
!5249 = !DILocation(line: 92, column: 2, scope: !5244)
!5250 = !DILocation(line: 93, column: 12, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 92, column: 27)
!5252 = !DILocation(line: 93, column: 14, scope: !5251)
!5253 = !DILocation(line: 93, column: 3, scope: !5251)
!5254 = !DILocation(line: 93, column: 7, scope: !5251)
!5255 = !DILocation(line: 93, column: 10, scope: !5251)
!5256 = !DILocation(line: 94, column: 2, scope: !5251)
!5257 = !DILocation(line: 92, column: 23, scope: !5247)
!5258 = !DILocation(line: 92, column: 2, scope: !5247)
!5259 = distinct !{!5259, !5249, !5260}
!5260 = !DILocation(line: 94, column: 2, scope: !5244)
!5261 = !DILocation(line: 95, column: 1, scope: !5236)
!5262 = distinct !DISubprogram(name: "matroxfb_cfb4_copyarea", scope: !3, file: !3, line: 292, type: !4196, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5263 = !DILocalVariable(name: "info", arg: 1, scope: !5262, file: !3, line: 292, type: !357)
!5264 = !DILocation(line: 292, column: 52, scope: !5262)
!5265 = !DILocalVariable(name: "area", arg: 2, scope: !5262, file: !3, line: 292, type: !4198)
!5266 = !DILocation(line: 292, column: 84, scope: !5262)
!5267 = !DILocalVariable(name: "minfo", scope: !5262, file: !3, line: 293, type: !135)
!5268 = !DILocation(line: 293, column: 25, scope: !5262)
!5269 = !DILocalVariable(name: "__mptr", scope: !5270, file: !3, line: 293, type: !134)
!5270 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 293, column: 33)
!5271 = !DILocation(line: 293, column: 33, scope: !5270)
!5272 = !DILocation(line: 293, column: 33, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 293, column: 33)
!5274 = !DILocation(line: 295, column: 7, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 295, column: 6)
!5276 = !DILocation(line: 295, column: 13, scope: !5275)
!5277 = !DILocation(line: 295, column: 18, scope: !5275)
!5278 = !DILocation(line: 295, column: 24, scope: !5275)
!5279 = !DILocation(line: 295, column: 16, scope: !5275)
!5280 = !DILocation(line: 295, column: 29, scope: !5275)
!5281 = !DILocation(line: 295, column: 35, scope: !5275)
!5282 = !DILocation(line: 295, column: 27, scope: !5275)
!5283 = !DILocation(line: 295, column: 42, scope: !5275)
!5284 = !DILocation(line: 295, column: 6, scope: !5262)
!5285 = !DILocation(line: 296, column: 16, scope: !5275)
!5286 = !DILocation(line: 296, column: 22, scope: !5275)
!5287 = !DILocation(line: 296, column: 3, scope: !5275)
!5288 = !DILocation(line: 298, column: 26, scope: !5275)
!5289 = !DILocation(line: 298, column: 33, scope: !5275)
!5290 = !DILocation(line: 298, column: 40, scope: !5275)
!5291 = !DILocation(line: 298, column: 46, scope: !5275)
!5292 = !DILocation(line: 298, column: 50, scope: !5275)
!5293 = !DILocation(line: 298, column: 63, scope: !5275)
!5294 = !DILocation(line: 298, column: 69, scope: !5275)
!5295 = !DILocation(line: 298, column: 75, scope: !5275)
!5296 = !DILocation(line: 298, column: 79, scope: !5275)
!5297 = !DILocation(line: 298, column: 85, scope: !5275)
!5298 = !DILocation(line: 298, column: 88, scope: !5275)
!5299 = !DILocation(line: 298, column: 94, scope: !5275)
!5300 = !DILocation(line: 298, column: 100, scope: !5275)
!5301 = !DILocation(line: 298, column: 104, scope: !5275)
!5302 = !DILocation(line: 298, column: 110, scope: !5275)
!5303 = !DILocation(line: 298, column: 113, scope: !5275)
!5304 = !DILocation(line: 298, column: 119, scope: !5275)
!5305 = !DILocation(line: 298, column: 125, scope: !5275)
!5306 = !DILocation(line: 298, column: 133, scope: !5275)
!5307 = !DILocation(line: 298, column: 139, scope: !5275)
!5308 = !DILocation(line: 298, column: 145, scope: !5275)
!5309 = !DILocation(line: 298, column: 3, scope: !5275)
!5310 = !DILocation(line: 299, column: 1, scope: !5262)
!5311 = distinct !DISubprogram(name: "matroxfb_cfb4_fillrect", scope: !3, file: !3, line: 395, type: !4182, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5312 = !DILocalVariable(name: "info", arg: 1, scope: !5311, file: !3, line: 395, type: !357)
!5313 = !DILocation(line: 395, column: 52, scope: !5311)
!5314 = !DILocalVariable(name: "rect", arg: 2, scope: !5311, file: !3, line: 395, type: !4184)
!5315 = !DILocation(line: 395, column: 84, scope: !5311)
!5316 = !DILocalVariable(name: "minfo", scope: !5311, file: !3, line: 396, type: !135)
!5317 = !DILocation(line: 396, column: 25, scope: !5311)
!5318 = !DILocalVariable(name: "__mptr", scope: !5319, file: !3, line: 396, type: !134)
!5319 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 396, column: 33)
!5320 = !DILocation(line: 396, column: 33, scope: !5319)
!5321 = !DILocation(line: 396, column: 33, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 396, column: 33)
!5323 = !DILocation(line: 398, column: 10, scope: !5311)
!5324 = !DILocation(line: 398, column: 16, scope: !5311)
!5325 = !DILocation(line: 398, column: 2, scope: !5311)
!5326 = !DILocation(line: 400, column: 24, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 398, column: 21)
!5328 = !DILocation(line: 400, column: 45, scope: !5327)
!5329 = !DILocation(line: 400, column: 51, scope: !5327)
!5330 = !DILocation(line: 400, column: 32, scope: !5327)
!5331 = !DILocation(line: 400, column: 67, scope: !5327)
!5332 = !DILocation(line: 400, column: 73, scope: !5327)
!5333 = !DILocation(line: 400, column: 31, scope: !5327)
!5334 = !DILocation(line: 400, column: 81, scope: !5327)
!5335 = !DILocation(line: 400, column: 87, scope: !5327)
!5336 = !DILocation(line: 400, column: 91, scope: !5327)
!5337 = !DILocation(line: 400, column: 97, scope: !5327)
!5338 = !DILocation(line: 400, column: 101, scope: !5327)
!5339 = !DILocation(line: 400, column: 107, scope: !5327)
!5340 = !DILocation(line: 400, column: 115, scope: !5327)
!5341 = !DILocation(line: 400, column: 121, scope: !5327)
!5342 = !DILocation(line: 400, column: 4, scope: !5327)
!5343 = !DILocation(line: 401, column: 4, scope: !5327)
!5344 = !DILocation(line: 403, column: 1, scope: !5311)
!5345 = distinct !DISubprogram(name: "matrox_cfb8_pal", scope: !3, file: !3, line: 97, type: !5237, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5346 = !DILocalVariable(name: "pal", arg: 1, scope: !5345, file: !3, line: 97, type: !5003)
!5347 = !DILocation(line: 97, column: 47, scope: !5345)
!5348 = !DILocalVariable(name: "i", scope: !5345, file: !3, line: 98, type: !7)
!5349 = !DILocation(line: 98, column: 15, scope: !5345)
!5350 = !DILocation(line: 100, column: 9, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 100, column: 2)
!5352 = !DILocation(line: 100, column: 7, scope: !5351)
!5353 = !DILocation(line: 100, column: 14, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 100, column: 2)
!5355 = !DILocation(line: 100, column: 16, scope: !5354)
!5356 = !DILocation(line: 100, column: 2, scope: !5351)
!5357 = !DILocation(line: 101, column: 12, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 100, column: 27)
!5359 = !DILocation(line: 101, column: 14, scope: !5358)
!5360 = !DILocation(line: 101, column: 3, scope: !5358)
!5361 = !DILocation(line: 101, column: 7, scope: !5358)
!5362 = !DILocation(line: 101, column: 10, scope: !5358)
!5363 = !DILocation(line: 102, column: 2, scope: !5358)
!5364 = !DILocation(line: 100, column: 23, scope: !5354)
!5365 = !DILocation(line: 100, column: 2, scope: !5354)
!5366 = distinct !{!5366, !5356, !5367}
!5367 = !DILocation(line: 102, column: 2, scope: !5351)
!5368 = !DILocation(line: 103, column: 1, scope: !5345)
!5369 = distinct !DISubprogram(name: "matroxfb_copyarea", scope: !3, file: !3, line: 301, type: !4196, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5370 = !DILocalVariable(name: "info", arg: 1, scope: !5369, file: !3, line: 301, type: !357)
!5371 = !DILocation(line: 301, column: 47, scope: !5369)
!5372 = !DILocalVariable(name: "area", arg: 2, scope: !5369, file: !3, line: 301, type: !4198)
!5373 = !DILocation(line: 301, column: 79, scope: !5369)
!5374 = !DILocalVariable(name: "minfo", scope: !5369, file: !3, line: 302, type: !135)
!5375 = !DILocation(line: 302, column: 25, scope: !5369)
!5376 = !DILocalVariable(name: "__mptr", scope: !5377, file: !3, line: 302, type: !134)
!5377 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 302, column: 33)
!5378 = !DILocation(line: 302, column: 33, scope: !5377)
!5379 = !DILocation(line: 302, column: 33, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 302, column: 33)
!5381 = !DILocation(line: 304, column: 21, scope: !5369)
!5382 = !DILocation(line: 304, column: 28, scope: !5369)
!5383 = !DILocation(line: 304, column: 35, scope: !5369)
!5384 = !DILocation(line: 304, column: 41, scope: !5369)
!5385 = !DILocation(line: 304, column: 45, scope: !5369)
!5386 = !DILocation(line: 304, column: 59, scope: !5369)
!5387 = !DILocation(line: 304, column: 65, scope: !5369)
!5388 = !DILocation(line: 304, column: 69, scope: !5369)
!5389 = !DILocation(line: 304, column: 75, scope: !5369)
!5390 = !DILocation(line: 304, column: 79, scope: !5369)
!5391 = !DILocation(line: 304, column: 85, scope: !5369)
!5392 = !DILocation(line: 304, column: 89, scope: !5369)
!5393 = !DILocation(line: 304, column: 95, scope: !5369)
!5394 = !DILocation(line: 304, column: 99, scope: !5369)
!5395 = !DILocation(line: 304, column: 105, scope: !5369)
!5396 = !DILocation(line: 304, column: 113, scope: !5369)
!5397 = !DILocation(line: 304, column: 119, scope: !5369)
!5398 = !DILocation(line: 304, column: 2, scope: !5369)
!5399 = !DILocation(line: 305, column: 1, scope: !5369)
!5400 = distinct !DISubprogram(name: "matroxfb_fillrect", scope: !3, file: !3, line: 327, type: !4182, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5401 = !DILocalVariable(name: "info", arg: 1, scope: !5400, file: !3, line: 327, type: !357)
!5402 = !DILocation(line: 327, column: 47, scope: !5400)
!5403 = !DILocalVariable(name: "rect", arg: 2, scope: !5400, file: !3, line: 327, type: !4184)
!5404 = !DILocation(line: 327, column: 79, scope: !5400)
!5405 = !DILocalVariable(name: "minfo", scope: !5400, file: !3, line: 328, type: !135)
!5406 = !DILocation(line: 328, column: 25, scope: !5400)
!5407 = !DILocalVariable(name: "__mptr", scope: !5408, file: !3, line: 328, type: !134)
!5408 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 328, column: 33)
!5409 = !DILocation(line: 328, column: 33, scope: !5408)
!5410 = !DILocation(line: 328, column: 33, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 328, column: 33)
!5412 = !DILocation(line: 330, column: 10, scope: !5400)
!5413 = !DILocation(line: 330, column: 16, scope: !5400)
!5414 = !DILocation(line: 330, column: 2, scope: !5400)
!5415 = !DILocation(line: 332, column: 25, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 330, column: 21)
!5417 = !DILocation(line: 332, column: 46, scope: !5416)
!5418 = !DILocation(line: 332, column: 52, scope: !5416)
!5419 = !DILocation(line: 332, column: 33, scope: !5416)
!5420 = !DILocation(line: 332, column: 68, scope: !5416)
!5421 = !DILocation(line: 332, column: 74, scope: !5416)
!5422 = !DILocation(line: 332, column: 32, scope: !5416)
!5423 = !DILocation(line: 332, column: 82, scope: !5416)
!5424 = !DILocation(line: 332, column: 88, scope: !5416)
!5425 = !DILocation(line: 332, column: 92, scope: !5416)
!5426 = !DILocation(line: 332, column: 98, scope: !5416)
!5427 = !DILocation(line: 332, column: 102, scope: !5416)
!5428 = !DILocation(line: 332, column: 108, scope: !5416)
!5429 = !DILocation(line: 332, column: 116, scope: !5416)
!5430 = !DILocation(line: 332, column: 122, scope: !5416)
!5431 = !DILocation(line: 332, column: 4, scope: !5416)
!5432 = !DILocation(line: 333, column: 4, scope: !5416)
!5433 = !DILocation(line: 335, column: 1, scope: !5400)
!5434 = distinct !DISubprogram(name: "matroxfb_imageblit", scope: !3, file: !3, line: 499, type: !4210, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5435 = !DILocalVariable(name: "info", arg: 1, scope: !5434, file: !3, line: 499, type: !357)
!5436 = !DILocation(line: 499, column: 48, scope: !5434)
!5437 = !DILocalVariable(name: "image", arg: 2, scope: !5434, file: !3, line: 499, type: !4212)
!5438 = !DILocation(line: 499, column: 77, scope: !5434)
!5439 = !DILocalVariable(name: "minfo", scope: !5434, file: !3, line: 500, type: !135)
!5440 = !DILocation(line: 500, column: 25, scope: !5434)
!5441 = !DILocalVariable(name: "__mptr", scope: !5442, file: !3, line: 500, type: !134)
!5442 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 500, column: 33)
!5443 = !DILocation(line: 500, column: 33, scope: !5442)
!5444 = !DILocation(line: 500, column: 33, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 500, column: 33)
!5446 = !DILocation(line: 504, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 504, column: 6)
!5448 = !DILocation(line: 504, column: 13, scope: !5447)
!5449 = !DILocation(line: 504, column: 19, scope: !5447)
!5450 = !DILocation(line: 504, column: 6, scope: !5434)
!5451 = !DILocalVariable(name: "fgx", scope: !5452, file: !3, line: 505, type: !4389)
!5452 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 504, column: 25)
!5453 = !DILocation(line: 505, column: 13, scope: !5452)
!5454 = !DILocalVariable(name: "bgx", scope: !5452, file: !3, line: 505, type: !4389)
!5455 = !DILocation(line: 505, column: 18, scope: !5452)
!5456 = !DILocation(line: 507, column: 22, scope: !5452)
!5457 = !DILocation(line: 507, column: 28, scope: !5452)
!5458 = !DILocation(line: 507, column: 10, scope: !5452)
!5459 = !DILocation(line: 507, column: 44, scope: !5452)
!5460 = !DILocation(line: 507, column: 51, scope: !5452)
!5461 = !DILocation(line: 507, column: 9, scope: !5452)
!5462 = !DILocation(line: 507, column: 7, scope: !5452)
!5463 = !DILocation(line: 508, column: 22, scope: !5452)
!5464 = !DILocation(line: 508, column: 28, scope: !5452)
!5465 = !DILocation(line: 508, column: 10, scope: !5452)
!5466 = !DILocation(line: 508, column: 44, scope: !5452)
!5467 = !DILocation(line: 508, column: 51, scope: !5452)
!5468 = !DILocation(line: 508, column: 9, scope: !5452)
!5469 = !DILocation(line: 508, column: 7, scope: !5452)
!5470 = !DILocation(line: 509, column: 27, scope: !5452)
!5471 = !DILocation(line: 509, column: 34, scope: !5452)
!5472 = !DILocation(line: 509, column: 39, scope: !5452)
!5473 = !DILocation(line: 509, column: 44, scope: !5452)
!5474 = !DILocation(line: 509, column: 51, scope: !5452)
!5475 = !DILocation(line: 509, column: 57, scope: !5452)
!5476 = !DILocation(line: 509, column: 64, scope: !5452)
!5477 = !DILocation(line: 509, column: 71, scope: !5452)
!5478 = !DILocation(line: 509, column: 78, scope: !5452)
!5479 = !DILocation(line: 509, column: 86, scope: !5452)
!5480 = !DILocation(line: 509, column: 93, scope: !5452)
!5481 = !DILocation(line: 509, column: 97, scope: !5452)
!5482 = !DILocation(line: 509, column: 104, scope: !5452)
!5483 = !DILocation(line: 509, column: 3, scope: !5452)
!5484 = !DILocation(line: 510, column: 2, scope: !5452)
!5485 = !DILocation(line: 516, column: 17, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 510, column: 9)
!5487 = !DILocation(line: 516, column: 23, scope: !5486)
!5488 = !DILocation(line: 516, column: 3, scope: !5486)
!5489 = !DILocation(line: 518, column: 1, scope: !5434)
!5490 = distinct !DISubprogram(name: "mga_readl", scope: !120, file: !120, line: 140, type: !5491, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!4389, !4834, !7}
!5493 = !DILocalVariable(name: "va", arg: 1, scope: !5490, file: !120, line: 140, type: !4834)
!5494 = !DILocation(line: 140, column: 43, scope: !5490)
!5495 = !DILocalVariable(name: "offs", arg: 2, scope: !5490, file: !120, line: 140, type: !7)
!5496 = !DILocation(line: 140, column: 60, scope: !5490)
!5497 = !DILocation(line: 141, column: 18, scope: !5490)
!5498 = !DILocation(line: 141, column: 26, scope: !5490)
!5499 = !DILocation(line: 141, column: 24, scope: !5490)
!5500 = !DILocation(line: 141, column: 9, scope: !5490)
!5501 = !DILocation(line: 141, column: 2, scope: !5490)
!5502 = distinct !DISubprogram(name: "mga_writel", scope: !120, file: !120, line: 144, type: !5503, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{null, !4834, !7, !4389}
!5505 = !DILocalVariable(name: "va", arg: 1, scope: !5502, file: !120, line: 144, type: !4834)
!5506 = !DILocation(line: 144, column: 39, scope: !5502)
!5507 = !DILocalVariable(name: "offs", arg: 2, scope: !5502, file: !120, line: 144, type: !7)
!5508 = !DILocation(line: 144, column: 56, scope: !5502)
!5509 = !DILocalVariable(name: "value", arg: 3, scope: !5502, file: !120, line: 144, type: !4389)
!5510 = !DILocation(line: 144, column: 72, scope: !5502)
!5511 = !DILocation(line: 145, column: 9, scope: !5502)
!5512 = !DILocation(line: 145, column: 19, scope: !5502)
!5513 = !DILocation(line: 145, column: 27, scope: !5502)
!5514 = !DILocation(line: 145, column: 25, scope: !5502)
!5515 = !DILocation(line: 145, column: 2, scope: !5502)
!5516 = !DILocation(line: 146, column: 1, scope: !5502)
!5517 = distinct !DISubprogram(name: "readl", scope: !5518, file: !5518, line: 59, type: !5519, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5518 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!7, !5521}
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5523)
!5523 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5524 = !DILocalVariable(name: "addr", arg: 1, scope: !5517, file: !5518, line: 59, type: !5521)
!5525 = !DILocation(line: 59, column: 1, scope: !5517)
!5526 = !DILocalVariable(name: "ret", scope: !5517, file: !5518, line: 59, type: !7)
!5527 = !{i32 -2141450671}
!5528 = distinct !DISubprogram(name: "writel", scope: !5518, file: !5518, line: 67, type: !5529, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{null, !7, !5531}
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5532 = !DILocalVariable(name: "val", arg: 1, scope: !5528, file: !5518, line: 67, type: !7)
!5533 = !DILocation(line: 67, column: 1, scope: !5528)
!5534 = !DILocalVariable(name: "addr", arg: 2, scope: !5528, file: !5518, line: 67, type: !5531)
!5535 = !{i32 -2141448278}
!5536 = distinct !DISubprogram(name: "matrox_accel_bmove_lin", scope: !3, file: !3, line: 249, type: !5537, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{null, !135, !148, !148, !148, !148, !148, !148, !148}
!5539 = !DILocalVariable(name: "minfo", arg: 1, scope: !5536, file: !3, line: 249, type: !135)
!5540 = !DILocation(line: 249, column: 59, scope: !5536)
!5541 = !DILocalVariable(name: "vxres", arg: 2, scope: !5536, file: !3, line: 249, type: !148)
!5542 = !DILocation(line: 249, column: 70, scope: !5536)
!5543 = !DILocalVariable(name: "sy", arg: 3, scope: !5536, file: !3, line: 250, type: !148)
!5544 = !DILocation(line: 250, column: 12, scope: !5536)
!5545 = !DILocalVariable(name: "sx", arg: 4, scope: !5536, file: !3, line: 250, type: !148)
!5546 = !DILocation(line: 250, column: 20, scope: !5536)
!5547 = !DILocalVariable(name: "dy", arg: 5, scope: !5536, file: !3, line: 250, type: !148)
!5548 = !DILocation(line: 250, column: 28, scope: !5536)
!5549 = !DILocalVariable(name: "dx", arg: 6, scope: !5536, file: !3, line: 250, type: !148)
!5550 = !DILocation(line: 250, column: 36, scope: !5536)
!5551 = !DILocalVariable(name: "height", arg: 7, scope: !5536, file: !3, line: 250, type: !148)
!5552 = !DILocation(line: 250, column: 44, scope: !5536)
!5553 = !DILocalVariable(name: "width", arg: 8, scope: !5536, file: !3, line: 251, type: !148)
!5554 = !DILocation(line: 251, column: 12, scope: !5536)
!5555 = !DILocalVariable(name: "start", scope: !5536, file: !3, line: 253, type: !148)
!5556 = !DILocation(line: 253, column: 6, scope: !5536)
!5557 = !DILocalVariable(name: "end", scope: !5536, file: !3, line: 253, type: !148)
!5558 = !DILocation(line: 253, column: 13, scope: !5536)
!5559 = !DILocation(line: 260, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 260, column: 6)
!5561 = !DILocation(line: 260, column: 12, scope: !5560)
!5562 = !DILocation(line: 260, column: 10, scope: !5560)
!5563 = !DILocation(line: 260, column: 16, scope: !5560)
!5564 = !DILocation(line: 260, column: 21, scope: !5560)
!5565 = !DILocation(line: 260, column: 27, scope: !5560)
!5566 = !DILocation(line: 260, column: 24, scope: !5560)
!5567 = !DILocation(line: 260, column: 31, scope: !5560)
!5568 = !DILocation(line: 260, column: 35, scope: !5560)
!5569 = !DILocation(line: 260, column: 41, scope: !5560)
!5570 = !DILocation(line: 260, column: 38, scope: !5560)
!5571 = !DILocation(line: 260, column: 6, scope: !5536)
!5572 = !DILocation(line: 261, column: 3, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 260, column: 47)
!5574 = !DILocation(line: 261, column: 3, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 261, column: 3)
!5576 = distinct !{!5576, !5572, !5572}
!5577 = !DILocation(line: 262, column: 32, scope: !5573)
!5578 = !DILocation(line: 262, column: 3, scope: !5573)
!5579 = !DILocation(line: 263, column: 3, scope: !5573)
!5580 = !DILocation(line: 265, column: 3, scope: !5573)
!5581 = !DILocation(line: 266, column: 8, scope: !5573)
!5582 = !DILocation(line: 267, column: 11, scope: !5573)
!5583 = !DILocation(line: 267, column: 14, scope: !5573)
!5584 = !DILocation(line: 267, column: 13, scope: !5573)
!5585 = !DILocation(line: 267, column: 20, scope: !5573)
!5586 = !DILocation(line: 267, column: 19, scope: !5573)
!5587 = !DILocation(line: 267, column: 23, scope: !5573)
!5588 = !DILocation(line: 267, column: 22, scope: !5573)
!5589 = !DILocation(line: 267, column: 9, scope: !5573)
!5590 = !DILocation(line: 268, column: 9, scope: !5573)
!5591 = !DILocation(line: 268, column: 15, scope: !5573)
!5592 = !DILocation(line: 268, column: 14, scope: !5573)
!5593 = !DILocation(line: 268, column: 7, scope: !5573)
!5594 = !DILocation(line: 269, column: 2, scope: !5573)
!5595 = !DILocation(line: 270, column: 3, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 269, column: 9)
!5597 = !DILocation(line: 270, column: 3, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 270, column: 3)
!5599 = distinct !{!5599, !5595, !5595}
!5600 = !DILocation(line: 271, column: 32, scope: !5596)
!5601 = !DILocation(line: 271, column: 3, scope: !5596)
!5602 = !DILocation(line: 272, column: 3, scope: !5596)
!5603 = !DILocation(line: 273, column: 3, scope: !5596)
!5604 = !DILocation(line: 274, column: 3, scope: !5596)
!5605 = !DILocation(line: 275, column: 8, scope: !5596)
!5606 = !DILocation(line: 276, column: 10, scope: !5596)
!5607 = !DILocation(line: 276, column: 13, scope: !5596)
!5608 = !DILocation(line: 276, column: 12, scope: !5596)
!5609 = !DILocation(line: 276, column: 19, scope: !5596)
!5610 = !DILocation(line: 276, column: 23, scope: !5596)
!5611 = !DILocation(line: 276, column: 22, scope: !5596)
!5612 = !DILocation(line: 276, column: 29, scope: !5596)
!5613 = !DILocation(line: 276, column: 28, scope: !5596)
!5614 = !DILocation(line: 276, column: 32, scope: !5596)
!5615 = !DILocation(line: 276, column: 31, scope: !5596)
!5616 = !DILocation(line: 276, column: 7, scope: !5596)
!5617 = !DILocation(line: 277, column: 11, scope: !5596)
!5618 = !DILocation(line: 277, column: 15, scope: !5596)
!5619 = !DILocation(line: 277, column: 14, scope: !5596)
!5620 = !DILocation(line: 277, column: 9, scope: !5596)
!5621 = !DILocation(line: 278, column: 9, scope: !5596)
!5622 = !DILocation(line: 278, column: 15, scope: !5596)
!5623 = !DILocation(line: 278, column: 6, scope: !5596)
!5624 = !DILocation(line: 280, column: 2, scope: !5536)
!5625 = !DILocation(line: 280, column: 2, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 280, column: 2)
!5627 = distinct !{!5627, !5624, !5624}
!5628 = !DILocation(line: 281, column: 31, scope: !5536)
!5629 = !DILocation(line: 281, column: 2, scope: !5536)
!5630 = !DILocation(line: 282, column: 2, scope: !5536)
!5631 = !DILocation(line: 283, column: 2, scope: !5536)
!5632 = !DILocation(line: 284, column: 2, scope: !5536)
!5633 = !DILocation(line: 285, column: 2, scope: !5536)
!5634 = !DILocation(line: 286, column: 2, scope: !5536)
!5635 = !DILocation(line: 287, column: 2, scope: !5536)
!5636 = !DILocation(line: 287, column: 2, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 287, column: 2)
!5638 = !DILocation(line: 287, column: 2, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 287, column: 2)
!5640 = distinct !{!5640, !5636, !5636}
!5641 = !DILocation(line: 290, column: 1, scope: !5536)
!5642 = distinct !DISubprogram(name: "matrox_accel_restore_maccess", scope: !3, file: !3, line: 202, type: !4859, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5643 = !DILocalVariable(name: "minfo", arg: 1, scope: !5642, file: !3, line: 202, type: !135)
!5644 = !DILocation(line: 202, column: 65, scope: !5642)
!5645 = !DILocation(line: 204, column: 2, scope: !5642)
!5646 = !DILocation(line: 205, column: 2, scope: !5642)
!5647 = !DILocation(line: 206, column: 1, scope: !5642)
!5648 = distinct !DISubprogram(name: "matrox_accel_bmove", scope: !3, file: !3, line: 208, type: !5537, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5649 = !DILocalVariable(name: "minfo", arg: 1, scope: !5648, file: !3, line: 208, type: !135)
!5650 = !DILocation(line: 208, column: 55, scope: !5648)
!5651 = !DILocalVariable(name: "vxres", arg: 2, scope: !5648, file: !3, line: 208, type: !148)
!5652 = !DILocation(line: 208, column: 66, scope: !5648)
!5653 = !DILocalVariable(name: "sy", arg: 3, scope: !5648, file: !3, line: 208, type: !148)
!5654 = !DILocation(line: 208, column: 77, scope: !5648)
!5655 = !DILocalVariable(name: "sx", arg: 4, scope: !5648, file: !3, line: 209, type: !148)
!5656 = !DILocation(line: 209, column: 15, scope: !5648)
!5657 = !DILocalVariable(name: "dy", arg: 5, scope: !5648, file: !3, line: 209, type: !148)
!5658 = !DILocation(line: 209, column: 23, scope: !5648)
!5659 = !DILocalVariable(name: "dx", arg: 6, scope: !5648, file: !3, line: 209, type: !148)
!5660 = !DILocation(line: 209, column: 31, scope: !5648)
!5661 = !DILocalVariable(name: "height", arg: 7, scope: !5648, file: !3, line: 209, type: !148)
!5662 = !DILocation(line: 209, column: 39, scope: !5648)
!5663 = !DILocalVariable(name: "width", arg: 8, scope: !5648, file: !3, line: 209, type: !148)
!5664 = !DILocation(line: 209, column: 51, scope: !5648)
!5665 = !DILocalVariable(name: "start", scope: !5648, file: !3, line: 211, type: !148)
!5666 = !DILocation(line: 211, column: 6, scope: !5648)
!5667 = !DILocalVariable(name: "end", scope: !5648, file: !3, line: 211, type: !148)
!5668 = !DILocation(line: 211, column: 13, scope: !5648)
!5669 = !DILocation(line: 218, column: 7, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 218, column: 6)
!5671 = !DILocation(line: 218, column: 12, scope: !5670)
!5672 = !DILocation(line: 218, column: 10, scope: !5670)
!5673 = !DILocation(line: 218, column: 16, scope: !5670)
!5674 = !DILocation(line: 218, column: 21, scope: !5670)
!5675 = !DILocation(line: 218, column: 27, scope: !5670)
!5676 = !DILocation(line: 218, column: 24, scope: !5670)
!5677 = !DILocation(line: 218, column: 31, scope: !5670)
!5678 = !DILocation(line: 218, column: 35, scope: !5670)
!5679 = !DILocation(line: 218, column: 41, scope: !5670)
!5680 = !DILocation(line: 218, column: 38, scope: !5670)
!5681 = !DILocation(line: 218, column: 6, scope: !5648)
!5682 = !DILocation(line: 219, column: 3, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 218, column: 47)
!5684 = !DILocation(line: 219, column: 3, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 219, column: 3)
!5686 = distinct !{!5686, !5682, !5682}
!5687 = !DILocation(line: 220, column: 32, scope: !5683)
!5688 = !DILocation(line: 220, column: 3, scope: !5683)
!5689 = !DILocation(line: 221, column: 3, scope: !5683)
!5690 = !DILocation(line: 223, column: 3, scope: !5683)
!5691 = !DILocation(line: 224, column: 8, scope: !5683)
!5692 = !DILocation(line: 225, column: 11, scope: !5683)
!5693 = !DILocation(line: 225, column: 14, scope: !5683)
!5694 = !DILocation(line: 225, column: 13, scope: !5683)
!5695 = !DILocation(line: 225, column: 20, scope: !5683)
!5696 = !DILocation(line: 225, column: 19, scope: !5683)
!5697 = !DILocation(line: 225, column: 23, scope: !5683)
!5698 = !DILocation(line: 225, column: 22, scope: !5683)
!5699 = !DILocation(line: 225, column: 9, scope: !5683)
!5700 = !DILocation(line: 226, column: 9, scope: !5683)
!5701 = !DILocation(line: 226, column: 15, scope: !5683)
!5702 = !DILocation(line: 226, column: 14, scope: !5683)
!5703 = !DILocation(line: 226, column: 7, scope: !5683)
!5704 = !DILocation(line: 227, column: 2, scope: !5683)
!5705 = !DILocation(line: 228, column: 3, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 227, column: 9)
!5707 = !DILocation(line: 228, column: 3, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 228, column: 3)
!5709 = distinct !{!5709, !5705, !5705}
!5710 = !DILocation(line: 229, column: 32, scope: !5706)
!5711 = !DILocation(line: 229, column: 3, scope: !5706)
!5712 = !DILocation(line: 230, column: 3, scope: !5706)
!5713 = !DILocation(line: 231, column: 3, scope: !5706)
!5714 = !DILocation(line: 232, column: 3, scope: !5706)
!5715 = !DILocation(line: 233, column: 8, scope: !5706)
!5716 = !DILocation(line: 234, column: 10, scope: !5706)
!5717 = !DILocation(line: 234, column: 13, scope: !5706)
!5718 = !DILocation(line: 234, column: 12, scope: !5706)
!5719 = !DILocation(line: 234, column: 19, scope: !5706)
!5720 = !DILocation(line: 234, column: 23, scope: !5706)
!5721 = !DILocation(line: 234, column: 22, scope: !5706)
!5722 = !DILocation(line: 234, column: 29, scope: !5706)
!5723 = !DILocation(line: 234, column: 28, scope: !5706)
!5724 = !DILocation(line: 234, column: 32, scope: !5706)
!5725 = !DILocation(line: 234, column: 31, scope: !5706)
!5726 = !DILocation(line: 234, column: 7, scope: !5706)
!5727 = !DILocation(line: 235, column: 11, scope: !5706)
!5728 = !DILocation(line: 235, column: 15, scope: !5706)
!5729 = !DILocation(line: 235, column: 14, scope: !5706)
!5730 = !DILocation(line: 235, column: 9, scope: !5706)
!5731 = !DILocation(line: 236, column: 9, scope: !5706)
!5732 = !DILocation(line: 236, column: 15, scope: !5706)
!5733 = !DILocation(line: 236, column: 6, scope: !5706)
!5734 = !DILocation(line: 238, column: 2, scope: !5648)
!5735 = !DILocation(line: 238, column: 2, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 238, column: 2)
!5737 = distinct !{!5737, !5734, !5734}
!5738 = !DILocation(line: 239, column: 31, scope: !5648)
!5739 = !DILocation(line: 239, column: 2, scope: !5648)
!5740 = !DILocation(line: 240, column: 2, scope: !5648)
!5741 = !DILocation(line: 241, column: 2, scope: !5648)
!5742 = !DILocation(line: 242, column: 2, scope: !5648)
!5743 = !DILocation(line: 243, column: 2, scope: !5648)
!5744 = !DILocation(line: 244, column: 2, scope: !5648)
!5745 = !DILocation(line: 244, column: 2, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 244, column: 2)
!5747 = !DILocation(line: 244, column: 2, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 244, column: 2)
!5749 = distinct !{!5749, !5745, !5745}
!5750 = !DILocation(line: 247, column: 1, scope: !5648)
!5751 = distinct !DISubprogram(name: "matroxfb_accel_clear", scope: !3, file: !3, line: 307, type: !5752, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{null, !135, !4389, !148, !148, !148, !148}
!5754 = !DILocalVariable(name: "minfo", arg: 1, scope: !5751, file: !3, line: 307, type: !135)
!5755 = !DILocation(line: 307, column: 57, scope: !5751)
!5756 = !DILocalVariable(name: "color", arg: 2, scope: !5751, file: !3, line: 307, type: !4389)
!5757 = !DILocation(line: 307, column: 74, scope: !5751)
!5758 = !DILocalVariable(name: "sy", arg: 3, scope: !5751, file: !3, line: 308, type: !148)
!5759 = !DILocation(line: 308, column: 10, scope: !5751)
!5760 = !DILocalVariable(name: "sx", arg: 4, scope: !5751, file: !3, line: 308, type: !148)
!5761 = !DILocation(line: 308, column: 18, scope: !5751)
!5762 = !DILocalVariable(name: "height", arg: 5, scope: !5751, file: !3, line: 308, type: !148)
!5763 = !DILocation(line: 308, column: 26, scope: !5751)
!5764 = !DILocalVariable(name: "width", arg: 6, scope: !5751, file: !3, line: 308, type: !148)
!5765 = !DILocation(line: 308, column: 38, scope: !5751)
!5766 = !DILocation(line: 316, column: 2, scope: !5751)
!5767 = !DILocation(line: 316, column: 2, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 316, column: 2)
!5769 = distinct !{!5769, !5766, !5766}
!5770 = !DILocation(line: 317, column: 31, scope: !5751)
!5771 = !DILocation(line: 317, column: 2, scope: !5751)
!5772 = !DILocation(line: 318, column: 2, scope: !5751)
!5773 = !DILocation(line: 319, column: 2, scope: !5751)
!5774 = !DILocation(line: 320, column: 2, scope: !5751)
!5775 = !DILocation(line: 321, column: 2, scope: !5751)
!5776 = !DILocation(line: 322, column: 2, scope: !5751)
!5777 = !DILocation(line: 322, column: 2, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 322, column: 2)
!5779 = !DILocation(line: 322, column: 2, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 322, column: 2)
!5781 = distinct !{!5781, !5777, !5777}
!5782 = !DILocation(line: 325, column: 1, scope: !5751)
!5783 = distinct !DISubprogram(name: "matroxfb_cfb4_clear", scope: !3, file: !3, line: 337, type: !5752, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5784 = !DILocalVariable(name: "minfo", arg: 1, scope: !5783, file: !3, line: 337, type: !135)
!5785 = !DILocation(line: 337, column: 56, scope: !5783)
!5786 = !DILocalVariable(name: "bgx", arg: 2, scope: !5783, file: !3, line: 337, type: !4389)
!5787 = !DILocation(line: 337, column: 73, scope: !5783)
!5788 = !DILocalVariable(name: "sy", arg: 3, scope: !5783, file: !3, line: 338, type: !148)
!5789 = !DILocation(line: 338, column: 9, scope: !5783)
!5790 = !DILocalVariable(name: "sx", arg: 4, scope: !5783, file: !3, line: 338, type: !148)
!5791 = !DILocation(line: 338, column: 17, scope: !5783)
!5792 = !DILocalVariable(name: "height", arg: 5, scope: !5783, file: !3, line: 338, type: !148)
!5793 = !DILocation(line: 338, column: 25, scope: !5783)
!5794 = !DILocalVariable(name: "width", arg: 6, scope: !5783, file: !3, line: 338, type: !148)
!5795 = !DILocation(line: 338, column: 37, scope: !5783)
!5796 = !DILocalVariable(name: "whattodo", scope: !5783, file: !3, line: 340, type: !148)
!5797 = !DILocation(line: 340, column: 6, scope: !5783)
!5798 = !DILocation(line: 347, column: 11, scope: !5783)
!5799 = !DILocation(line: 348, column: 6, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 348, column: 6)
!5801 = !DILocation(line: 348, column: 9, scope: !5800)
!5802 = !DILocation(line: 348, column: 6, scope: !5783)
!5803 = !DILocation(line: 349, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 348, column: 14)
!5805 = !DILocation(line: 350, column: 8, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 350, column: 7)
!5807 = !DILocation(line: 350, column: 7, scope: !5804)
!5808 = !DILocation(line: 350, column: 15, scope: !5806)
!5809 = !DILocation(line: 351, column: 9, scope: !5804)
!5810 = !DILocation(line: 352, column: 12, scope: !5804)
!5811 = !DILocation(line: 353, column: 2, scope: !5804)
!5812 = !DILocation(line: 354, column: 6, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 354, column: 6)
!5814 = !DILocation(line: 354, column: 12, scope: !5813)
!5815 = !DILocation(line: 354, column: 6, scope: !5783)
!5816 = !DILocation(line: 355, column: 12, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 354, column: 17)
!5818 = !DILocation(line: 356, column: 2, scope: !5817)
!5819 = !DILocation(line: 357, column: 8, scope: !5783)
!5820 = !DILocation(line: 358, column: 5, scope: !5783)
!5821 = !DILocation(line: 359, column: 6, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 359, column: 6)
!5823 = !DILocation(line: 359, column: 6, scope: !5783)
!5824 = !DILocation(line: 360, column: 3, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 359, column: 13)
!5826 = !DILocation(line: 360, column: 3, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 360, column: 3)
!5828 = distinct !{!5828, !5824, !5824}
!5829 = !DILocation(line: 361, column: 32, scope: !5825)
!5830 = !DILocation(line: 361, column: 3, scope: !5825)
!5831 = !DILocation(line: 362, column: 3, scope: !5825)
!5832 = !DILocation(line: 363, column: 3, scope: !5825)
!5833 = !DILocation(line: 364, column: 3, scope: !5825)
!5834 = !DILocation(line: 365, column: 3, scope: !5825)
!5835 = !DILocation(line: 366, column: 3, scope: !5825)
!5836 = !DILocation(line: 367, column: 3, scope: !5825)
!5837 = !DILocation(line: 367, column: 3, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 367, column: 3)
!5839 = !DILocation(line: 367, column: 3, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 367, column: 3)
!5841 = distinct !{!5841, !5837, !5837}
!5842 = !DILocation(line: 368, column: 2, scope: !5825)
!5843 = !DILocation(line: 369, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 369, column: 6)
!5845 = !DILocation(line: 369, column: 6, scope: !5783)
!5846 = !DILocalVariable(name: "step", scope: !5847, file: !3, line: 370, type: !4389)
!5847 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 369, column: 16)
!5848 = !DILocation(line: 370, column: 13, scope: !5847)
!5849 = !DILocation(line: 370, column: 20, scope: !5847)
!5850 = !DILocation(line: 370, column: 27, scope: !5847)
!5851 = !DILocation(line: 370, column: 33, scope: !5847)
!5852 = !DILocation(line: 370, column: 37, scope: !5847)
!5853 = !DILocation(line: 370, column: 50, scope: !5847)
!5854 = !DILocalVariable(name: "vbase", scope: !5847, file: !3, line: 371, type: !4834)
!5855 = !DILocation(line: 371, column: 11, scope: !5847)
!5856 = !DILocation(line: 371, column: 19, scope: !5847)
!5857 = !DILocation(line: 371, column: 26, scope: !5847)
!5858 = !DILocation(line: 371, column: 32, scope: !5847)
!5859 = !DILocation(line: 372, column: 7, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 372, column: 7)
!5861 = !DILocation(line: 372, column: 16, scope: !5860)
!5862 = !DILocation(line: 372, column: 7, scope: !5847)
!5863 = !DILocalVariable(name: "uaddr", scope: !5864, file: !3, line: 373, type: !7)
!5864 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 372, column: 21)
!5865 = !DILocation(line: 373, column: 17, scope: !5864)
!5866 = !DILocation(line: 373, column: 25, scope: !5864)
!5867 = !DILocation(line: 373, column: 30, scope: !5864)
!5868 = !DILocation(line: 373, column: 28, scope: !5864)
!5869 = !DILocation(line: 373, column: 37, scope: !5864)
!5870 = !DILocation(line: 373, column: 35, scope: !5864)
!5871 = !DILocation(line: 373, column: 40, scope: !5864)
!5872 = !DILocalVariable(name: "loop", scope: !5864, file: !3, line: 374, type: !4389)
!5873 = !DILocation(line: 374, column: 14, scope: !5864)
!5874 = !DILocalVariable(name: "bgx2", scope: !5864, file: !3, line: 375, type: !4421)
!5875 = !DILocation(line: 375, column: 13, scope: !5864)
!5876 = !DILocation(line: 375, column: 20, scope: !5864)
!5877 = !DILocation(line: 375, column: 24, scope: !5864)
!5878 = !DILocation(line: 376, column: 16, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 376, column: 4)
!5880 = !DILocation(line: 376, column: 14, scope: !5879)
!5881 = !DILocation(line: 376, column: 9, scope: !5879)
!5882 = !DILocation(line: 376, column: 24, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 376, column: 4)
!5884 = !DILocation(line: 376, column: 29, scope: !5883)
!5885 = !DILocation(line: 376, column: 4, scope: !5879)
!5886 = !DILocation(line: 377, column: 23, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 376, column: 43)
!5888 = !DILocation(line: 377, column: 48, scope: !5887)
!5889 = !DILocation(line: 377, column: 31, scope: !5887)
!5890 = !DILocation(line: 377, column: 55, scope: !5887)
!5891 = !DILocation(line: 377, column: 65, scope: !5887)
!5892 = !DILocation(line: 377, column: 63, scope: !5887)
!5893 = !DILocation(line: 377, column: 30, scope: !5887)
!5894 = !DILocation(line: 377, column: 5, scope: !5887)
!5895 = !DILocation(line: 378, column: 14, scope: !5887)
!5896 = !DILocation(line: 378, column: 11, scope: !5887)
!5897 = !DILocation(line: 379, column: 4, scope: !5887)
!5898 = !DILocation(line: 376, column: 39, scope: !5883)
!5899 = !DILocation(line: 376, column: 4, scope: !5883)
!5900 = distinct !{!5900, !5885, !5901}
!5901 = !DILocation(line: 379, column: 4, scope: !5879)
!5902 = !DILocation(line: 380, column: 3, scope: !5864)
!5903 = !DILocation(line: 381, column: 7, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 381, column: 7)
!5905 = !DILocation(line: 381, column: 16, scope: !5904)
!5906 = !DILocation(line: 381, column: 7, scope: !5847)
!5907 = !DILocalVariable(name: "uaddr", scope: !5908, file: !3, line: 382, type: !7)
!5908 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 381, column: 21)
!5909 = !DILocation(line: 382, column: 17, scope: !5908)
!5910 = !DILocation(line: 382, column: 25, scope: !5908)
!5911 = !DILocation(line: 382, column: 30, scope: !5908)
!5912 = !DILocation(line: 382, column: 28, scope: !5908)
!5913 = !DILocation(line: 382, column: 37, scope: !5908)
!5914 = !DILocation(line: 382, column: 35, scope: !5908)
!5915 = !DILocation(line: 382, column: 42, scope: !5908)
!5916 = !DILocation(line: 382, column: 40, scope: !5908)
!5917 = !DILocalVariable(name: "loop", scope: !5908, file: !3, line: 383, type: !4389)
!5918 = !DILocation(line: 383, column: 14, scope: !5908)
!5919 = !DILocalVariable(name: "bgx2", scope: !5908, file: !3, line: 384, type: !4421)
!5920 = !DILocation(line: 384, column: 13, scope: !5908)
!5921 = !DILocation(line: 384, column: 20, scope: !5908)
!5922 = !DILocation(line: 384, column: 24, scope: !5908)
!5923 = !DILocation(line: 385, column: 16, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 385, column: 4)
!5925 = !DILocation(line: 385, column: 14, scope: !5924)
!5926 = !DILocation(line: 385, column: 9, scope: !5924)
!5927 = !DILocation(line: 385, column: 24, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 385, column: 4)
!5929 = !DILocation(line: 385, column: 29, scope: !5928)
!5930 = !DILocation(line: 385, column: 4, scope: !5924)
!5931 = !DILocation(line: 386, column: 23, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5928, file: !3, line: 385, column: 43)
!5933 = !DILocation(line: 386, column: 48, scope: !5932)
!5934 = !DILocation(line: 386, column: 31, scope: !5932)
!5935 = !DILocation(line: 386, column: 55, scope: !5932)
!5936 = !DILocation(line: 386, column: 65, scope: !5932)
!5937 = !DILocation(line: 386, column: 63, scope: !5932)
!5938 = !DILocation(line: 386, column: 30, scope: !5932)
!5939 = !DILocation(line: 386, column: 5, scope: !5932)
!5940 = !DILocation(line: 387, column: 14, scope: !5932)
!5941 = !DILocation(line: 387, column: 11, scope: !5932)
!5942 = !DILocation(line: 388, column: 4, scope: !5932)
!5943 = !DILocation(line: 385, column: 39, scope: !5928)
!5944 = !DILocation(line: 385, column: 4, scope: !5928)
!5945 = distinct !{!5945, !5930, !5946}
!5946 = !DILocation(line: 388, column: 4, scope: !5924)
!5947 = !DILocation(line: 389, column: 3, scope: !5908)
!5948 = !DILocation(line: 390, column: 2, scope: !5847)
!5949 = !DILocation(line: 393, column: 1, scope: !5783)
!5950 = distinct !DISubprogram(name: "mga_writeb", scope: !120, file: !120, line: 132, type: !5951, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{null, !4834, !7, !4421}
!5953 = !DILocalVariable(name: "va", arg: 1, scope: !5950, file: !120, line: 132, type: !4834)
!5954 = !DILocation(line: 132, column: 39, scope: !5950)
!5955 = !DILocalVariable(name: "offs", arg: 2, scope: !5950, file: !120, line: 132, type: !7)
!5956 = !DILocation(line: 132, column: 56, scope: !5950)
!5957 = !DILocalVariable(name: "value", arg: 3, scope: !5950, file: !120, line: 132, type: !4421)
!5958 = !DILocation(line: 132, column: 71, scope: !5950)
!5959 = !DILocation(line: 133, column: 9, scope: !5950)
!5960 = !DILocation(line: 133, column: 19, scope: !5950)
!5961 = !DILocation(line: 133, column: 27, scope: !5950)
!5962 = !DILocation(line: 133, column: 25, scope: !5950)
!5963 = !DILocation(line: 133, column: 2, scope: !5950)
!5964 = !DILocation(line: 134, column: 1, scope: !5950)
!5965 = distinct !DISubprogram(name: "mga_readb", scope: !120, file: !120, line: 128, type: !5966, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!7, !4834, !7}
!5968 = !DILocalVariable(name: "va", arg: 1, scope: !5965, file: !120, line: 128, type: !4834)
!5969 = !DILocation(line: 128, column: 46, scope: !5965)
!5970 = !DILocalVariable(name: "offs", arg: 2, scope: !5965, file: !120, line: 128, type: !7)
!5971 = !DILocation(line: 128, column: 63, scope: !5965)
!5972 = !DILocation(line: 129, column: 18, scope: !5965)
!5973 = !DILocation(line: 129, column: 26, scope: !5965)
!5974 = !DILocation(line: 129, column: 24, scope: !5965)
!5975 = !DILocation(line: 129, column: 9, scope: !5965)
!5976 = !DILocation(line: 129, column: 2, scope: !5965)
!5977 = distinct !DISubprogram(name: "writeb", scope: !5518, file: !5518, line: 65, type: !5978, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{null, !299, !5531}
!5980 = !DILocalVariable(name: "val", arg: 1, scope: !5977, file: !5518, line: 65, type: !299)
!5981 = !DILocation(line: 65, column: 1, scope: !5977)
!5982 = !DILocalVariable(name: "addr", arg: 2, scope: !5977, file: !5518, line: 65, type: !5531)
!5983 = !{i32 -2141449048}
!5984 = distinct !DISubprogram(name: "readb", scope: !5518, file: !5518, line: 57, type: !5985, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{!299, !5521}
!5987 = !DILocalVariable(name: "addr", arg: 1, scope: !5984, file: !5518, line: 57, type: !5521)
!5988 = !DILocation(line: 57, column: 1, scope: !5984)
!5989 = !DILocalVariable(name: "ret", scope: !5984, file: !5518, line: 57, type: !299)
!5990 = !{i32 -2141451502}
!5991 = distinct !DISubprogram(name: "matroxfb_1bpp_imageblit", scope: !3, file: !3, line: 405, type: !5992, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{null, !135, !4389, !4389, !5994, !148, !148, !148, !148}
!5994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5995, size: 64)
!5995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4421)
!5996 = !DILocalVariable(name: "p", arg: 1, scope: !5997, file: !5998, line: 56, type: !6001)
!5997 = distinct !DISubprogram(name: "__le32_to_cpup", scope: !5998, file: !5998, line: 56, type: !5999, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5998 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!5999 = !DISubroutineType(types: !6000)
!6000 = !{!196, !6001}
!6001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6002, size: 64)
!6002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5008)
!6003 = !DILocation(line: 56, column: 59, scope: !5997, inlinedAt: !6004)
!6004 = distinct !DILocation(line: 15, column: 9, scope: !6005, inlinedAt: !6009)
!6005 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !6006, file: !6006, line: 13, type: !6007, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6006 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!6007 = !DISubroutineType(types: !6008)
!6008 = !{!283, !2328}
!6009 = distinct !DILocation(line: 488, column: 16, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 488, column: 16)
!6011 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 486, column: 35)
!6012 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 486, column: 5)
!6013 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 486, column: 5)
!6014 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 483, column: 21)
!6015 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 481, column: 10)
!6016 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 471, column: 14)
!6017 = distinct !DILexicalBlock(scope: !6018, file: !3, line: 461, column: 14)
!6018 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 457, column: 7)
!6019 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 454, column: 9)
!6020 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 451, column: 6)
!6021 = !DILocalVariable(name: "p", arg: 1, scope: !6005, file: !6006, line: 13, type: !2328)
!6022 = !DILocation(line: 13, column: 59, scope: !6005, inlinedAt: !6009)
!6023 = !DILocalVariable(name: "minfo", arg: 1, scope: !5991, file: !3, line: 405, type: !135)
!6024 = !DILocation(line: 405, column: 60, scope: !5991)
!6025 = !DILocalVariable(name: "fgx", arg: 2, scope: !5991, file: !3, line: 405, type: !4389)
!6026 = !DILocation(line: 405, column: 77, scope: !5991)
!6027 = !DILocalVariable(name: "bgx", arg: 3, scope: !5991, file: !3, line: 406, type: !4389)
!6028 = !DILocation(line: 406, column: 19, scope: !5991)
!6029 = !DILocalVariable(name: "chardata", arg: 4, scope: !5991, file: !3, line: 406, type: !5994)
!6030 = !DILocation(line: 406, column: 40, scope: !5991)
!6031 = !DILocalVariable(name: "width", arg: 5, scope: !5991, file: !3, line: 407, type: !148)
!6032 = !DILocation(line: 407, column: 13, scope: !5991)
!6033 = !DILocalVariable(name: "height", arg: 6, scope: !5991, file: !3, line: 407, type: !148)
!6034 = !DILocation(line: 407, column: 24, scope: !5991)
!6035 = !DILocalVariable(name: "yy", arg: 7, scope: !5991, file: !3, line: 407, type: !148)
!6036 = !DILocation(line: 407, column: 36, scope: !5991)
!6037 = !DILocalVariable(name: "xx", arg: 8, scope: !5991, file: !3, line: 407, type: !148)
!6038 = !DILocation(line: 407, column: 44, scope: !5991)
!6039 = !DILocalVariable(name: "step", scope: !5991, file: !3, line: 409, type: !4389)
!6040 = !DILocation(line: 409, column: 12, scope: !5991)
!6041 = !DILocalVariable(name: "ydstlen", scope: !5991, file: !3, line: 410, type: !4389)
!6042 = !DILocation(line: 410, column: 12, scope: !5991)
!6043 = !DILocalVariable(name: "xlen", scope: !5991, file: !3, line: 411, type: !4389)
!6044 = !DILocation(line: 411, column: 12, scope: !5991)
!6045 = !DILocalVariable(name: "ar0", scope: !5991, file: !3, line: 412, type: !4389)
!6046 = !DILocation(line: 412, column: 12, scope: !5991)
!6047 = !DILocalVariable(name: "charcell", scope: !5991, file: !3, line: 413, type: !4389)
!6048 = !DILocation(line: 413, column: 12, scope: !5991)
!6049 = !DILocalVariable(name: "fxbndry", scope: !5991, file: !3, line: 414, type: !4389)
!6050 = !DILocation(line: 414, column: 12, scope: !5991)
!6051 = !DILocalVariable(name: "mmio", scope: !5991, file: !3, line: 415, type: !4834)
!6052 = !DILocation(line: 415, column: 10, scope: !5991)
!6053 = !DILocalVariable(name: "easy", scope: !5991, file: !3, line: 416, type: !148)
!6054 = !DILocation(line: 416, column: 6, scope: !5991)
!6055 = !DILocation(line: 421, column: 10, scope: !5991)
!6056 = !DILocation(line: 421, column: 16, scope: !5991)
!6057 = !DILocation(line: 421, column: 21, scope: !5991)
!6058 = !DILocation(line: 421, column: 7, scope: !5991)
!6059 = !DILocation(line: 422, column: 13, scope: !5991)
!6060 = !DILocation(line: 422, column: 22, scope: !5991)
!6061 = !DILocation(line: 422, column: 20, scope: !5991)
!6062 = !DILocation(line: 422, column: 11, scope: !5991)
!6063 = !DILocation(line: 423, column: 10, scope: !5991)
!6064 = !DILocation(line: 423, column: 19, scope: !5991)
!6065 = !DILocation(line: 423, column: 24, scope: !5991)
!6066 = !DILocation(line: 423, column: 7, scope: !5991)
!6067 = !DILocation(line: 424, column: 13, scope: !5991)
!6068 = !DILocation(line: 424, column: 16, scope: !5991)
!6069 = !DILocation(line: 424, column: 25, scope: !5991)
!6070 = !DILocation(line: 424, column: 23, scope: !5991)
!6071 = !DILocation(line: 424, column: 10, scope: !5991)
!6072 = !DILocation(line: 425, column: 6, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 425, column: 6)
!6074 = !DILocation(line: 425, column: 15, scope: !6073)
!6075 = !DILocation(line: 425, column: 20, scope: !6073)
!6076 = !DILocation(line: 425, column: 12, scope: !6073)
!6077 = !DILocation(line: 425, column: 6, scope: !5991)
!6078 = !DILocation(line: 426, column: 9, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 425, column: 26)
!6080 = !DILocation(line: 426, column: 18, scope: !6079)
!6081 = !DILocation(line: 426, column: 16, scope: !6079)
!6082 = !DILocation(line: 426, column: 24, scope: !6079)
!6083 = !DILocation(line: 426, column: 7, scope: !6079)
!6084 = !DILocation(line: 427, column: 8, scope: !6079)
!6085 = !DILocation(line: 428, column: 2, scope: !6079)
!6086 = !DILocation(line: 429, column: 9, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 428, column: 9)
!6088 = !DILocation(line: 429, column: 15, scope: !6087)
!6089 = !DILocation(line: 429, column: 7, scope: !6087)
!6090 = !DILocation(line: 430, column: 8, scope: !6087)
!6091 = !DILocation(line: 435, column: 2, scope: !5991)
!6092 = !DILocation(line: 435, column: 2, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 435, column: 2)
!6094 = distinct !{!6094, !6091, !6091}
!6095 = !DILocation(line: 436, column: 31, scope: !5991)
!6096 = !DILocation(line: 436, column: 2, scope: !5991)
!6097 = !DILocation(line: 437, column: 6, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 437, column: 6)
!6099 = !DILocation(line: 437, column: 6, scope: !5991)
!6100 = !DILocation(line: 438, column: 3, scope: !6098)
!6101 = !DILocation(line: 440, column: 3, scope: !6098)
!6102 = !DILocation(line: 441, column: 2, scope: !5991)
!6103 = !DILocation(line: 442, column: 2, scope: !5991)
!6104 = !DILocation(line: 443, column: 14, scope: !5991)
!6105 = !DILocation(line: 443, column: 19, scope: !5991)
!6106 = !DILocation(line: 443, column: 17, scope: !5991)
!6107 = !DILocation(line: 443, column: 25, scope: !5991)
!6108 = !DILocation(line: 443, column: 30, scope: !5991)
!6109 = !DILocation(line: 443, column: 39, scope: !5991)
!6110 = !DILocation(line: 443, column: 37, scope: !5991)
!6111 = !DILocation(line: 443, column: 10, scope: !5991)
!6112 = !DILocation(line: 444, column: 9, scope: !5991)
!6113 = !DILocation(line: 444, column: 16, scope: !5991)
!6114 = !DILocation(line: 444, column: 21, scope: !5991)
!6115 = !DILocation(line: 446, column: 2, scope: !5991)
!6116 = !DILocation(line: 446, column: 2, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 446, column: 2)
!6118 = distinct !{!6118, !6115, !6115}
!6119 = !DILocation(line: 447, column: 31, scope: !5991)
!6120 = !DILocation(line: 447, column: 2, scope: !5991)
!6121 = !DILocation(line: 448, column: 30, scope: !5991)
!6122 = !DILocation(line: 448, column: 2, scope: !5991)
!6123 = !DILocation(line: 449, column: 26, scope: !5991)
!6124 = !DILocation(line: 449, column: 2, scope: !5991)
!6125 = !DILocation(line: 450, column: 2, scope: !5991)
!6126 = !DILocation(line: 451, column: 6, scope: !6020)
!6127 = !DILocation(line: 451, column: 6, scope: !5991)
!6128 = !DILocation(line: 452, column: 40, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 451, column: 12)
!6130 = !DILocation(line: 452, column: 3, scope: !6129)
!6131 = !DILocation(line: 453, column: 25, scope: !6129)
!6132 = !DILocation(line: 453, column: 35, scope: !6129)
!6133 = !DILocation(line: 453, column: 3, scope: !6129)
!6134 = !DILocation(line: 454, column: 2, scope: !6129)
!6135 = !DILocation(line: 455, column: 3, scope: !6019)
!6136 = !DILocation(line: 456, column: 40, scope: !6019)
!6137 = !DILocation(line: 456, column: 3, scope: !6019)
!6138 = !DILocation(line: 457, column: 8, scope: !6018)
!6139 = !DILocation(line: 457, column: 13, scope: !6018)
!6140 = !DILocation(line: 457, column: 18, scope: !6018)
!6141 = !DILocation(line: 457, column: 7, scope: !6019)
!6142 = !DILocation(line: 460, column: 26, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6018, file: !3, line: 457, column: 24)
!6144 = !DILocation(line: 460, column: 36, scope: !6143)
!6145 = !DILocation(line: 460, column: 4, scope: !6143)
!6146 = !DILocation(line: 461, column: 3, scope: !6143)
!6147 = !DILocation(line: 461, column: 14, scope: !6017)
!6148 = !DILocation(line: 461, column: 19, scope: !6017)
!6149 = !DILocation(line: 461, column: 14, scope: !6018)
!6150 = !DILocation(line: 463, column: 4, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 461, column: 25)
!6152 = !DILocation(line: 463, column: 17, scope: !6151)
!6153 = !DILocation(line: 467, column: 16, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6151, file: !3, line: 463, column: 21)
!6155 = !DILocation(line: 467, column: 15, scope: !6154)
!6156 = !DILocation(line: 467, column: 31, scope: !6154)
!6157 = !DILocation(line: 467, column: 5, scope: !6154)
!6158 = !DILocation(line: 469, column: 13, scope: !6154)
!6159 = distinct !{!6159, !6150, !6160}
!6160 = !DILocation(line: 470, column: 4, scope: !6151)
!6161 = !DILocation(line: 471, column: 3, scope: !6151)
!6162 = !DILocation(line: 471, column: 14, scope: !6016)
!6163 = !DILocation(line: 471, column: 19, scope: !6016)
!6164 = !DILocation(line: 471, column: 14, scope: !6017)
!6165 = !DILocation(line: 473, column: 4, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 471, column: 25)
!6167 = !DILocation(line: 473, column: 17, scope: !6166)
!6168 = !DILocation(line: 477, column: 28, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 473, column: 21)
!6170 = !DILocation(line: 477, column: 15, scope: !6169)
!6171 = !DILocation(line: 477, column: 43, scope: !6169)
!6172 = !DILocation(line: 477, column: 5, scope: !6169)
!6173 = !DILocation(line: 479, column: 14, scope: !6169)
!6174 = distinct !{!6174, !6165, !6175}
!6175 = !DILocation(line: 480, column: 4, scope: !6166)
!6176 = !DILocation(line: 481, column: 3, scope: !6166)
!6177 = !DILocation(line: 483, column: 4, scope: !6015)
!6178 = !DILocation(line: 483, column: 17, scope: !6015)
!6179 = !DILocalVariable(name: "i", scope: !6014, file: !3, line: 484, type: !505)
!6180 = !DILocation(line: 484, column: 12, scope: !6014)
!6181 = !DILocation(line: 486, column: 12, scope: !6013)
!6182 = !DILocation(line: 486, column: 10, scope: !6013)
!6183 = !DILocation(line: 486, column: 17, scope: !6012)
!6184 = !DILocation(line: 486, column: 21, scope: !6012)
!6185 = !DILocation(line: 486, column: 19, scope: !6012)
!6186 = !DILocation(line: 486, column: 5, scope: !6013)
!6187 = !DILocation(line: 488, column: 16, scope: !6010)
!6188 = !DILocation(line: 15, column: 32, scope: !6005, inlinedAt: !6009)
!6189 = !DILocation(line: 15, column: 22, scope: !6005, inlinedAt: !6009)
!6190 = !DILocation(line: 58, column: 25, scope: !5997, inlinedAt: !6004)
!6191 = !DILocation(line: 58, column: 24, scope: !5997, inlinedAt: !6004)
!6192 = !DILocation(line: 488, column: 16, scope: !6011)
!6193 = !DILocation(line: 488, column: 63, scope: !6011)
!6194 = !DILocation(line: 488, column: 6, scope: !6011)
!6195 = !DILocation(line: 489, column: 5, scope: !6011)
!6196 = !DILocation(line: 486, column: 29, scope: !6012)
!6197 = !DILocation(line: 486, column: 5, scope: !6012)
!6198 = distinct !{!6198, !6186, !6199}
!6199 = !DILocation(line: 489, column: 5, scope: !6013)
!6200 = !DILocation(line: 490, column: 17, scope: !6014)
!6201 = !DILocation(line: 490, column: 14, scope: !6014)
!6202 = distinct !{!6202, !6177, !6203}
!6203 = !DILocation(line: 491, column: 4, scope: !6015)
!6204 = !DILocation(line: 494, column: 2, scope: !5991)
!6205 = !DILocation(line: 494, column: 2, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 494, column: 2)
!6207 = !DILocation(line: 494, column: 2, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 494, column: 2)
!6209 = distinct !{!6209, !6205, !6205}
!6210 = !DILocation(line: 496, column: 1, scope: !5991)
!6211 = distinct !DISubprogram(name: "mga_memcpy_toio", scope: !120, file: !120, line: 148, type: !6212, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{null, !4834, !2328, !148}
!6214 = !DILocalVariable(name: "va", arg: 1, scope: !6211, file: !120, line: 148, type: !4834)
!6215 = !DILocation(line: 148, column: 44, scope: !6211)
!6216 = !DILocalVariable(name: "src", arg: 2, scope: !6211, file: !120, line: 148, type: !2328)
!6217 = !DILocation(line: 148, column: 60, scope: !6211)
!6218 = !DILocalVariable(name: "len", arg: 3, scope: !6211, file: !120, line: 148, type: !148)
!6219 = !DILocation(line: 148, column: 69, scope: !6211)
!6220 = !DILocation(line: 157, column: 19, scope: !6211)
!6221 = !DILocation(line: 157, column: 26, scope: !6211)
!6222 = !DILocation(line: 157, column: 31, scope: !6211)
!6223 = !DILocation(line: 157, column: 35, scope: !6211)
!6224 = !DILocation(line: 157, column: 2, scope: !6211)
!6225 = !DILocation(line: 177, column: 1, scope: !6211)
!6226 = distinct !DISubprogram(name: "__writel", scope: !5518, file: !5518, line: 71, type: !5529, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6227 = !DILocalVariable(name: "val", arg: 1, scope: !6226, file: !5518, line: 71, type: !7)
!6228 = !DILocation(line: 71, column: 1, scope: !6226)
!6229 = !DILocalVariable(name: "addr", arg: 2, scope: !6226, file: !5518, line: 71, type: !5531)
!6230 = !{i32 -2141447142}
