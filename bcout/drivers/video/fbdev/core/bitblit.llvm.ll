; ModuleID = '../bcout/drivers/video/fbdev/core/bitblit.llvm.bc'
source_filename = "drivers/video/fbdev/core/bitblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.fbcon_ops = type { void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32, i32, i32)*, void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32)*, void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)*, void (%struct.vc_data*, %struct.fb_info*, i32, i32)*, void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, %struct.vc_data*)*, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, %struct.fbcon_display*, %struct.fb_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.atomic_t = type { i32 }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.mutex }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
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
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type opaque
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.fbcon_display = type { i8*, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_videomode* }
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.66, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, %struct.fb_videomode*, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct.fb_info*, i8*, i8*, i32)*, void (%struct.fb_info*, i8*, i8*, i32)* }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, %struct.backlight_ops*, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*, %struct.fb_info*)* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_tile_ops = type { void (%struct.fb_info*, %struct.fb_tilemap*)*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.66 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }

@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fbcon_set_bitops(%struct.fbcon_ops* %ops) #0 !dbg !152 {
entry:
  %ops.addr = alloca %struct.fbcon_ops*, align 8
  store %struct.fbcon_ops* %ops, %struct.fbcon_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fbcon_ops** %ops.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  %0 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5054
  %bmove = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %0, i32 0, i32 0, !dbg !5055
  store void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32, i32, i32)* @bit_bmove, void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32, i32, i32)** %bmove, align 8, !dbg !5056
  %1 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5057
  %clear = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %1, i32 0, i32 1, !dbg !5058
  store void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32)* @bit_clear, void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32)** %clear, align 8, !dbg !5059
  %2 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5060
  %putcs = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %2, i32 0, i32 2, !dbg !5061
  store void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)* @bit_putcs, void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)** %putcs, align 8, !dbg !5062
  %3 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5063
  %clear_margins = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %3, i32 0, i32 3, !dbg !5064
  store void (%struct.vc_data*, %struct.fb_info*, i32, i32)* @bit_clear_margins, void (%struct.vc_data*, %struct.fb_info*, i32, i32)** %clear_margins, align 8, !dbg !5065
  %4 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5066
  %cursor = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %4, i32 0, i32 4, !dbg !5067
  store void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32)* @bit_cursor, void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32)** %cursor, align 8, !dbg !5068
  %5 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5069
  %update_start = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %5, i32 0, i32 5, !dbg !5070
  store i32 (%struct.fb_info*)* @bit_update_start, i32 (%struct.fb_info*)** %update_start, align 8, !dbg !5071
  %6 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5072
  %rotate_font = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %6, i32 0, i32 6, !dbg !5073
  store i32 (%struct.fb_info*, %struct.vc_data*)* null, i32 (%struct.fb_info*, %struct.vc_data*)** %rotate_font, align 8, !dbg !5074
  %7 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops.addr, align 8, !dbg !5075
  %rotate = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %7, i32 0, i32 20, !dbg !5077
  %8 = load i32, i32* %rotate, align 8, !dbg !5077
  %tobool = icmp ne i32 %8, 0, !dbg !5075
  br i1 %tobool, label %if.then, label %if.end, !dbg !5078

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5079

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5080

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !5080

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !5082
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bit_bmove(%struct.vc_data* %vc, %struct.fb_info* %info, i32 %sy, i32 %sx, i32 %dy, i32 %dx, i32 %height, i32 %width) #0 !dbg !5083 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %sy.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %area = alloca %struct.fb_copyarea, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i32 %sy, i32* %sy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sy.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  store i32 %sx, i32* %sx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sx.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store i32 %dy, i32* %dy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dy.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i32 %dx, i32* %dx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dx.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.declare(metadata %struct.fb_copyarea* %area, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load i32, i32* %sx.addr, align 4, !dbg !5102
  %1 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5103
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i32 0, i32 27, !dbg !5104
  %width1 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 0, !dbg !5105
  %2 = load i32, i32* %width1, align 8, !dbg !5105
  %mul = mul i32 %0, %2, !dbg !5106
  %sx2 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %area, i32 0, i32 4, !dbg !5107
  store i32 %mul, i32* %sx2, align 4, !dbg !5108
  %3 = load i32, i32* %sy.addr, align 4, !dbg !5109
  %4 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5110
  %vc_font3 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 27, !dbg !5111
  %height4 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font3, i32 0, i32 1, !dbg !5112
  %5 = load i32, i32* %height4, align 4, !dbg !5112
  %mul5 = mul i32 %3, %5, !dbg !5113
  %sy6 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %area, i32 0, i32 5, !dbg !5114
  store i32 %mul5, i32* %sy6, align 4, !dbg !5115
  %6 = load i32, i32* %dx.addr, align 4, !dbg !5116
  %7 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5117
  %vc_font7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 27, !dbg !5118
  %width8 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font7, i32 0, i32 0, !dbg !5119
  %8 = load i32, i32* %width8, align 8, !dbg !5119
  %mul9 = mul i32 %6, %8, !dbg !5120
  %dx10 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %area, i32 0, i32 0, !dbg !5121
  store i32 %mul9, i32* %dx10, align 4, !dbg !5122
  %9 = load i32, i32* %dy.addr, align 4, !dbg !5123
  %10 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5124
  %vc_font11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 27, !dbg !5125
  %height12 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font11, i32 0, i32 1, !dbg !5126
  %11 = load i32, i32* %height12, align 4, !dbg !5126
  %mul13 = mul i32 %9, %11, !dbg !5127
  %dy14 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %area, i32 0, i32 1, !dbg !5128
  store i32 %mul13, i32* %dy14, align 4, !dbg !5129
  %12 = load i32, i32* %height.addr, align 4, !dbg !5130
  %13 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5131
  %vc_font15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 27, !dbg !5132
  %height16 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font15, i32 0, i32 1, !dbg !5133
  %14 = load i32, i32* %height16, align 4, !dbg !5133
  %mul17 = mul i32 %12, %14, !dbg !5134
  %height18 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %area, i32 0, i32 3, !dbg !5135
  store i32 %mul17, i32* %height18, align 4, !dbg !5136
  %15 = load i32, i32* %width.addr, align 4, !dbg !5137
  %16 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5138
  %vc_font19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 27, !dbg !5139
  %width20 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font19, i32 0, i32 0, !dbg !5140
  %17 = load i32, i32* %width20, align 8, !dbg !5140
  %mul21 = mul i32 %15, %17, !dbg !5141
  %width22 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %area, i32 0, i32 2, !dbg !5142
  store i32 %mul21, i32* %width22, align 4, !dbg !5143
  %18 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5144
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 20, !dbg !5145
  %19 = load %struct.fb_ops*, %struct.fb_ops** %fbops, align 8, !dbg !5145
  %fb_copyarea = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %19, i32 0, i32 12, !dbg !5146
  %20 = load void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_copyarea*)** %fb_copyarea, align 8, !dbg !5146
  %21 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5147
  call void %20(%struct.fb_info* %21, %struct.fb_copyarea* %area) #6, !dbg !5144
  ret void, !dbg !5148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bit_clear(%struct.vc_data* %vc, %struct.fb_info* %info, i32 %sy, i32 %sx, i32 %height, i32 %width) #0 !dbg !5149 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %sy.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bgshift = alloca i32, align 4
  %region = alloca %struct.fb_fillrect, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i32 %sy, i32* %sy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sy.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i32 %sx, i32* %sx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sx.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.declare(metadata i32* %bgshift, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5164
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 26, !dbg !5165
  %1 = load i16, i16* %vc_hi_font_mask, align 8, !dbg !5165
  %conv = zext i16 %1 to i32, !dbg !5166
  %tobool = icmp ne i32 %conv, 0, !dbg !5166
  %2 = zext i1 %tobool to i64, !dbg !5166
  %cond = select i1 %tobool, i32 13, i32 12, !dbg !5166
  store i32 %cond, i32* %bgshift, align 4, !dbg !5163
  call void @llvm.dbg.declare(metadata %struct.fb_fillrect* %region, metadata !5167, metadata !DIExpression()), !dbg !5168
  %3 = load i32, i32* %bgshift, align 4, !dbg !5169
  %4 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5169
  %5 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5169
  %call = call i32 @attr_col_ec(i32 %3, %struct.vc_data* %4, %struct.fb_info* %5, i32 0) #6, !dbg !5169
  %color = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 4, !dbg !5170
  store i32 %call, i32* %color, align 4, !dbg !5171
  %6 = load i32, i32* %sx.addr, align 4, !dbg !5172
  %7 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5173
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 27, !dbg !5174
  %width1 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 0, !dbg !5175
  %8 = load i32, i32* %width1, align 8, !dbg !5175
  %mul = mul i32 %6, %8, !dbg !5176
  %dx = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 0, !dbg !5177
  store i32 %mul, i32* %dx, align 4, !dbg !5178
  %9 = load i32, i32* %sy.addr, align 4, !dbg !5179
  %10 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5180
  %vc_font2 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 27, !dbg !5181
  %height3 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font2, i32 0, i32 1, !dbg !5182
  %11 = load i32, i32* %height3, align 4, !dbg !5182
  %mul4 = mul i32 %9, %11, !dbg !5183
  %dy = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 1, !dbg !5184
  store i32 %mul4, i32* %dy, align 4, !dbg !5185
  %12 = load i32, i32* %width.addr, align 4, !dbg !5186
  %13 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5187
  %vc_font5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 27, !dbg !5188
  %width6 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font5, i32 0, i32 0, !dbg !5189
  %14 = load i32, i32* %width6, align 8, !dbg !5189
  %mul7 = mul i32 %12, %14, !dbg !5190
  %width8 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 2, !dbg !5191
  store i32 %mul7, i32* %width8, align 4, !dbg !5192
  %15 = load i32, i32* %height.addr, align 4, !dbg !5193
  %16 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5194
  %vc_font9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 27, !dbg !5195
  %height10 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font9, i32 0, i32 1, !dbg !5196
  %17 = load i32, i32* %height10, align 4, !dbg !5196
  %mul11 = mul i32 %15, %17, !dbg !5197
  %height12 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 3, !dbg !5198
  store i32 %mul11, i32* %height12, align 4, !dbg !5199
  %rop = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 5, !dbg !5200
  store i32 0, i32* %rop, align 4, !dbg !5201
  %18 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5202
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 20, !dbg !5203
  %19 = load %struct.fb_ops*, %struct.fb_ops** %fbops, align 8, !dbg !5203
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %19, i32 0, i32 11, !dbg !5204
  %20 = load void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect, align 8, !dbg !5204
  %21 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5205
  call void %20(%struct.fb_info* %21, %struct.fb_fillrect* %region) #6, !dbg !5202
  ret void, !dbg !5206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bit_putcs(%struct.vc_data* %vc, %struct.fb_info* %info, i16* %s, i32 %count, i32 %yy, i32 %xx, i32 %fg, i32 %bg) #0 !dbg !5207 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5208, metadata !DIExpression()), !dbg !5212
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5222, metadata !DIExpression()), !dbg !5223
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5224, metadata !DIExpression()), !dbg !5225
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5226, metadata !DIExpression()), !dbg !5227
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5228, metadata !DIExpression()), !dbg !5232
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5234, metadata !DIExpression()), !dbg !5238
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5240, metadata !DIExpression()), !dbg !5244
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5249, metadata !DIExpression()), !dbg !5250
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5251, metadata !DIExpression()), !dbg !5252
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5253, metadata !DIExpression()), !dbg !5254
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5255, metadata !DIExpression()), !dbg !5256
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5257, metadata !DIExpression()), !dbg !5258
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5259, metadata !DIExpression()), !dbg !5260
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5261, metadata !DIExpression()), !dbg !5262
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5263, metadata !DIExpression()), !dbg !5264
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %s.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %yy.addr = alloca i32, align 4
  %xx.addr = alloca i32, align 4
  %fg.addr = alloca i32, align 4
  %bg.addr = alloca i32, align 4
  %image = alloca %struct.fb_image, align 8
  %width = alloca i32, align 4
  %cellsize = alloca i32, align 4
  %maxcnt = alloca i32, align 4
  %scan_align = alloca i32, align 4
  %buf_align = alloca i32, align 4
  %mod = alloca i32, align 4
  %cnt = alloca i32, align 4
  %pitch = alloca i32, align 4
  %size12 = alloca i32, align 4
  %attribute = alloca i32, align 4
  %dst = alloca i8*, align 8
  %buf = alloca i8*, align 8
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  store i32 %yy, i32* %yy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %yy.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  store i32 %xx, i32* %xx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %xx.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  store i32 %fg, i32* %fg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fg.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i32 %bg, i32* %bg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bg.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.declare(metadata %struct.fb_image* %image, metadata !5281, metadata !DIExpression()), !dbg !5282
  call void @llvm.dbg.declare(metadata i32* %width, metadata !5283, metadata !DIExpression()), !dbg !5284
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5285
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 27, !dbg !5285
  %width1 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 0, !dbg !5285
  %1 = load i32, i32* %width1, align 8, !dbg !5285
  %add = add i32 %1, 8, !dbg !5285
  %sub = sub i32 %add, 1, !dbg !5285
  %div = udiv i32 %sub, 8, !dbg !5285
  store i32 %div, i32* %width, align 4, !dbg !5284
  call void @llvm.dbg.declare(metadata i32* %cellsize, metadata !5286, metadata !DIExpression()), !dbg !5287
  %2 = load i32, i32* %width, align 4, !dbg !5288
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5289
  %vc_font2 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 27, !dbg !5290
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font2, i32 0, i32 1, !dbg !5291
  %4 = load i32, i32* %height, align 4, !dbg !5291
  %mul = mul i32 %2, %4, !dbg !5292
  store i32 %mul, i32* %cellsize, align 4, !dbg !5287
  call void @llvm.dbg.declare(metadata i32* %maxcnt, metadata !5293, metadata !DIExpression()), !dbg !5294
  %5 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5295
  %pixmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 10, !dbg !5296
  %size = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %pixmap, i32 0, i32 1, !dbg !5297
  %6 = load i32, i32* %size, align 8, !dbg !5297
  %7 = load i32, i32* %cellsize, align 4, !dbg !5298
  %div3 = udiv i32 %6, %7, !dbg !5299
  store i32 %div3, i32* %maxcnt, align 4, !dbg !5294
  call void @llvm.dbg.declare(metadata i32* %scan_align, metadata !5300, metadata !DIExpression()), !dbg !5301
  %8 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5302
  %pixmap4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 10, !dbg !5303
  %scan_align5 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %pixmap4, i32 0, i32 4, !dbg !5304
  %9 = load i32, i32* %scan_align5, align 4, !dbg !5304
  %sub6 = sub i32 %9, 1, !dbg !5305
  store i32 %sub6, i32* %scan_align, align 4, !dbg !5301
  call void @llvm.dbg.declare(metadata i32* %buf_align, metadata !5306, metadata !DIExpression()), !dbg !5307
  %10 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5308
  %pixmap7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 10, !dbg !5309
  %buf_align8 = getelementptr inbounds %struct.fb_pixmap, %struct.fb_pixmap* %pixmap7, i32 0, i32 3, !dbg !5310
  %11 = load i32, i32* %buf_align8, align 8, !dbg !5310
  %sub9 = sub i32 %11, 1, !dbg !5311
  store i32 %sub9, i32* %buf_align, align 4, !dbg !5307
  call void @llvm.dbg.declare(metadata i32* %mod, metadata !5312, metadata !DIExpression()), !dbg !5313
  %12 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5314
  %vc_font10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 27, !dbg !5315
  %width11 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font10, i32 0, i32 0, !dbg !5316
  %13 = load i32, i32* %width11, align 8, !dbg !5316
  %rem = urem i32 %13, 8, !dbg !5317
  store i32 %rem, i32* %mod, align 4, !dbg !5313
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !5318, metadata !DIExpression()), !dbg !5319
  call void @llvm.dbg.declare(metadata i32* %pitch, metadata !5320, metadata !DIExpression()), !dbg !5321
  call void @llvm.dbg.declare(metadata i32* %size12, metadata !5322, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.declare(metadata i32* %attribute, metadata !5324, metadata !DIExpression()), !dbg !5325
  %14 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5326
  %15 = load i16*, i16** %s.addr, align 8, !dbg !5327
  %16 = load i16, i16* %15, align 2, !dbg !5327
  %call = call i32 @get_attribute(%struct.fb_info* %14, i16 zeroext %16) #6, !dbg !5328
  store i32 %call, i32* %attribute, align 4, !dbg !5325
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !5329, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5331, metadata !DIExpression()), !dbg !5332
  store i8* null, i8** %buf, align 8, !dbg !5332
  %17 = load i32, i32* %fg.addr, align 4, !dbg !5333
  %fg_color = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 4, !dbg !5334
  store i32 %17, i32* %fg_color, align 8, !dbg !5335
  %18 = load i32, i32* %bg.addr, align 4, !dbg !5336
  %bg_color = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 5, !dbg !5337
  store i32 %18, i32* %bg_color, align 4, !dbg !5338
  %19 = load i32, i32* %xx.addr, align 4, !dbg !5339
  %20 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5340
  %vc_font13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 27, !dbg !5341
  %width14 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font13, i32 0, i32 0, !dbg !5342
  %21 = load i32, i32* %width14, align 8, !dbg !5342
  %mul15 = mul i32 %19, %21, !dbg !5343
  %dx = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 0, !dbg !5344
  store i32 %mul15, i32* %dx, align 8, !dbg !5345
  %22 = load i32, i32* %yy.addr, align 4, !dbg !5346
  %23 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5347
  %vc_font16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 27, !dbg !5348
  %height17 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font16, i32 0, i32 1, !dbg !5349
  %24 = load i32, i32* %height17, align 4, !dbg !5349
  %mul18 = mul i32 %22, %24, !dbg !5350
  %dy = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 1, !dbg !5351
  store i32 %mul18, i32* %dy, align 4, !dbg !5352
  %25 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5353
  %vc_font19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 27, !dbg !5354
  %height20 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font19, i32 0, i32 1, !dbg !5355
  %26 = load i32, i32* %height20, align 4, !dbg !5355
  %height21 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 3, !dbg !5356
  store i32 %26, i32* %height21, align 4, !dbg !5357
  %depth = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 6, !dbg !5358
  store i8 1, i8* %depth, align 8, !dbg !5359
  %27 = load i32, i32* %attribute, align 4, !dbg !5360
  %tobool = icmp ne i32 %27, 0, !dbg !5360
  br i1 %tobool, label %if.then, label %if.end25, !dbg !5361

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %cellsize, align 4, !dbg !5362
  %conv = zext i32 %28 to i64, !dbg !5362
  store i64 %conv, i64* %size.addr.i, align 8
  store i32 2592, i32* %flags.addr.i, align 4
  %29 = load i64, i64* %size.addr.i, align 8, !dbg !5363
  %30 = call i1 @llvm.is.constant.i64(i64 %29) #7, !dbg !5364
  br i1 %30, label %if.then.i, label %if.end9.i, !dbg !5365

if.then.i:                                        ; preds = %if.then
  %31 = load i64, i64* %size.addr.i, align 8, !dbg !5366
  %cmp.i = icmp ugt i64 %31, 8192, !dbg !5367
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5368

if.then1.i:                                       ; preds = %if.then.i
  %32 = load i64, i64* %size.addr.i, align 8, !dbg !5369
  %33 = load i32, i32* %flags.addr.i, align 4, !dbg !5370
  store i64 %32, i64* %size.addr.i.i, align 8
  store i32 %33, i32* %flags.addr.i.i, align 4
  %34 = load i64, i64* %size.addr.i.i, align 8, !dbg !5371
  %call.i.i = call i32 @get_order(i64 %34) #8, !dbg !5372
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5258
  %35 = load i64, i64* %size.addr.i.i, align 8, !dbg !5373
  %36 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5374
  %37 = load i32, i32* %order.i.i, align 4, !dbg !5375
  store i64 %35, i64* %size.addr.i.i.i, align 8
  store i32 %36, i32* %flags.addr.i.i.i, align 4
  store i32 %37, i32* %order.addr.i.i.i, align 4
  %38 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5376
  %39 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5377
  %40 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5378
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %38, i32 %39, i32 %40) #9, !dbg !5379
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5379
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5379
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5379
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !5379
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5380
  br label %kmalloc.exit, !dbg !5380

if.end.i:                                         ; preds = %if.then.i
  %41 = load i64, i64* %size.addr.i, align 8, !dbg !5381
  store i64 %41, i64* %size.addr.i11.i, align 8
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5382
  %tobool.i.i = icmp ne i64 %42, 0, !dbg !5382
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5384

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5385
  br label %kmalloc_index.exit.i, !dbg !5385

if.end.i.i:                                       ; preds = %if.end.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5386
  %cmp.i.i = icmp ule i64 %43, 8, !dbg !5388
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5389

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5390
  br label %kmalloc_index.exit.i, !dbg !5390

if.end2.i.i:                                      ; preds = %if.end.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5391
  %cmp3.i.i = icmp ugt i64 %44, 64, !dbg !5393
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5394

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5395
  %cmp4.i.i = icmp ule i64 %45, 96, !dbg !5396
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5397

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5398
  br label %kmalloc_index.exit.i, !dbg !5398

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5399
  %cmp7.i.i = icmp ugt i64 %46, 128, !dbg !5401
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5402

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5403
  %cmp9.i.i = icmp ule i64 %47, 192, !dbg !5404
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5405

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5406
  br label %kmalloc_index.exit.i, !dbg !5406

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5407
  %cmp12.i.i = icmp ule i64 %48, 8, !dbg !5409
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5410

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5411
  br label %kmalloc_index.exit.i, !dbg !5411

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5412
  %cmp15.i.i = icmp ule i64 %49, 16, !dbg !5414
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5415

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5416
  br label %kmalloc_index.exit.i, !dbg !5416

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5417
  %cmp18.i.i = icmp ule i64 %50, 32, !dbg !5419
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5420

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5421
  br label %kmalloc_index.exit.i, !dbg !5421

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5422
  %cmp21.i.i = icmp ule i64 %51, 64, !dbg !5424
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5425

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5426
  br label %kmalloc_index.exit.i, !dbg !5426

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5427
  %cmp24.i.i = icmp ule i64 %52, 128, !dbg !5429
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5430

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5431
  br label %kmalloc_index.exit.i, !dbg !5431

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5432
  %cmp27.i.i = icmp ule i64 %53, 256, !dbg !5434
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5435

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5436
  br label %kmalloc_index.exit.i, !dbg !5436

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5437
  %cmp30.i.i = icmp ule i64 %54, 512, !dbg !5439
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5440

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5441
  br label %kmalloc_index.exit.i, !dbg !5441

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5442
  %cmp33.i.i = icmp ule i64 %55, 1024, !dbg !5444
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5445

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5446
  br label %kmalloc_index.exit.i, !dbg !5446

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5447
  %cmp36.i.i = icmp ule i64 %56, 2048, !dbg !5449
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5450

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5451
  br label %kmalloc_index.exit.i, !dbg !5451

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5452
  %cmp39.i.i = icmp ule i64 %57, 4096, !dbg !5454
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5455

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5456
  br label %kmalloc_index.exit.i, !dbg !5456

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5457
  %cmp42.i.i = icmp ule i64 %58, 8192, !dbg !5459
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5460

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5461
  br label %kmalloc_index.exit.i, !dbg !5461

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5462
  %cmp45.i.i = icmp ule i64 %59, 16384, !dbg !5464
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5465

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5466
  br label %kmalloc_index.exit.i, !dbg !5466

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5467
  %cmp48.i.i = icmp ule i64 %60, 32768, !dbg !5469
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5470

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5471
  br label %kmalloc_index.exit.i, !dbg !5471

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5472
  %cmp51.i.i = icmp ule i64 %61, 65536, !dbg !5474
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5475

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5476
  br label %kmalloc_index.exit.i, !dbg !5476

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5477
  %cmp54.i.i = icmp ule i64 %62, 131072, !dbg !5479
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5480

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5481
  br label %kmalloc_index.exit.i, !dbg !5481

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5482
  %cmp57.i.i = icmp ule i64 %63, 262144, !dbg !5484
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5485

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5486
  br label %kmalloc_index.exit.i, !dbg !5486

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5487
  %cmp60.i.i = icmp ule i64 %64, 524288, !dbg !5489
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5490

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5491
  br label %kmalloc_index.exit.i, !dbg !5491

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5492
  %cmp63.i.i = icmp ule i64 %65, 1048576, !dbg !5494
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5495

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5496
  br label %kmalloc_index.exit.i, !dbg !5496

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5497
  %cmp66.i.i = icmp ule i64 %66, 2097152, !dbg !5499
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5500

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5501
  br label %kmalloc_index.exit.i, !dbg !5501

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5502
  %cmp69.i.i = icmp ule i64 %67, 4194304, !dbg !5504
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5505

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5506
  br label %kmalloc_index.exit.i, !dbg !5506

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5507
  %cmp72.i.i = icmp ule i64 %68, 8388608, !dbg !5509
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5510

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5511
  br label %kmalloc_index.exit.i, !dbg !5511

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5512
  %cmp75.i.i = icmp ule i64 %69, 16777216, !dbg !5514
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5515

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5516
  br label %kmalloc_index.exit.i, !dbg !5516

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5517
  %cmp78.i.i = icmp ule i64 %70, 33554432, !dbg !5519
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5520

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5521
  br label %kmalloc_index.exit.i, !dbg !5521

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %71 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5522
  %cmp81.i.i = icmp ule i64 %71, 67108864, !dbg !5524
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5525

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5526
  br label %kmalloc_index.exit.i, !dbg !5526

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !5527, !srcloc !5530
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !5531, !srcloc !5534
  unreachable, !dbg !5535

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %72 = load i32, i32* %retval.i.i, align 4, !dbg !5536
  store i32 %72, i32* %index.i, align 4, !dbg !5537
  %73 = load i32, i32* %index.i, align 4, !dbg !5538
  %tobool.i = icmp ne i32 %73, 0, !dbg !5538
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5540

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5541
  br label %kmalloc.exit, !dbg !5541

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %74 = load i32, i32* %flags.addr.i, align 4, !dbg !5542
  store i32 %74, i32* %flags.addr.i13.i, align 4
  %75 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5543
  %and.i.i = and i32 %75, 17, !dbg !5543
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5543
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5543
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5543
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5543
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5545

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5546
  br label %kmalloc_type.exit.i, !dbg !5546

if.end.i16.i:                                     ; preds = %if.end4.i
  %76 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5547
  %and2.i.i = and i32 %76, 1, !dbg !5548
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5547
  %77 = zext i1 %tobool3.i.i to i64, !dbg !5547
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5547
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5549
  br label %kmalloc_type.exit.i, !dbg !5549

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %78 = load i32, i32* %retval.i12.i, align 4, !dbg !5550
  %idxprom.i = zext i32 %78 to i64, !dbg !5551
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5551
  %79 = load i32, i32* %index.i, align 4, !dbg !5552
  %idxprom6.i = zext i32 %79 to i64, !dbg !5551
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5551
  %80 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5551
  %81 = load i32, i32* %flags.addr.i, align 4, !dbg !5553
  %82 = load i64, i64* %size.addr.i, align 8, !dbg !5554
  store %struct.kmem_cache* %80, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %81, i32* %flags.addr.i17.i, align 4
  store i64 %82, i64* %size.addr.i18.i, align 8
  %83 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5555
  %84 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5556
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %83, i32 %84) #9, !dbg !5557
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5557
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5557
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5557
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !5557
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5227
  %85 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5558
  %86 = load i8*, i8** %ret.i.i, align 8, !dbg !5559
  %87 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5560
  %88 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5561
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %85, i8* %86, i64 %87, i32 %88) #9, !dbg !5562
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5563
  %89 = load i8*, i8** %ret.i.i, align 8, !dbg !5564
  store i8* %89, i8** %retval.i, align 8, !dbg !5565
  br label %kmalloc.exit, !dbg !5565

if.end9.i:                                        ; preds = %if.then
  %90 = load i64, i64* %size.addr.i, align 8, !dbg !5566
  %91 = load i32, i32* %flags.addr.i, align 4, !dbg !5567
  %call10.i = call noalias i8* @__kmalloc(i64 %90, i32 %91) #9, !dbg !5568
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5568
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5568
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5568
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !5568
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5569
  br label %kmalloc.exit, !dbg !5569

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %92 = load i8*, i8** %retval.i, align 8, !dbg !5570
  store i8* %92, i8** %buf, align 8, !dbg !5571
  %93 = load i8*, i8** %buf, align 8, !dbg !5572
  %tobool23 = icmp ne i8* %93, null, !dbg !5572
  br i1 %tobool23, label %if.end, label %if.then24, !dbg !5574

if.then24:                                        ; preds = %kmalloc.exit
  br label %if.end61, !dbg !5575

if.end:                                           ; preds = %kmalloc.exit
  br label %if.end25, !dbg !5576

if.end25:                                         ; preds = %if.end, %entry
  br label %while.cond, !dbg !5577

while.cond:                                       ; preds = %if.end49, %if.end25
  %94 = load i32, i32* %count.addr, align 4, !dbg !5578
  %tobool26 = icmp ne i32 %94, 0, !dbg !5577
  br i1 %tobool26, label %while.body, label %while.end, !dbg !5577

while.body:                                       ; preds = %while.cond
  %95 = load i32, i32* %count.addr, align 4, !dbg !5579
  %96 = load i32, i32* %maxcnt, align 4, !dbg !5582
  %cmp = icmp ugt i32 %95, %96, !dbg !5583
  br i1 %cmp, label %if.then28, label %if.else, !dbg !5584

if.then28:                                        ; preds = %while.body
  %97 = load i32, i32* %maxcnt, align 4, !dbg !5585
  store i32 %97, i32* %cnt, align 4, !dbg !5586
  br label %if.end29, !dbg !5587

if.else:                                          ; preds = %while.body
  %98 = load i32, i32* %count.addr, align 4, !dbg !5588
  store i32 %98, i32* %cnt, align 4, !dbg !5589
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then28
  %99 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5590
  %vc_font30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 27, !dbg !5591
  %width31 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font30, i32 0, i32 0, !dbg !5592
  %100 = load i32, i32* %width31, align 8, !dbg !5592
  %101 = load i32, i32* %cnt, align 4, !dbg !5593
  %mul32 = mul i32 %100, %101, !dbg !5594
  %width33 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 2, !dbg !5595
  store i32 %mul32, i32* %width33, align 8, !dbg !5596
  %width34 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 2, !dbg !5597
  %102 = load i32, i32* %width34, align 8, !dbg !5597
  %add35 = add i32 %102, 8, !dbg !5597
  %sub36 = sub i32 %add35, 1, !dbg !5597
  %div37 = udiv i32 %sub36, 8, !dbg !5597
  %103 = load i32, i32* %scan_align, align 4, !dbg !5598
  %add38 = add i32 %div37, %103, !dbg !5599
  store i32 %add38, i32* %pitch, align 4, !dbg !5600
  %104 = load i32, i32* %scan_align, align 4, !dbg !5601
  %neg = xor i32 %104, -1, !dbg !5602
  %105 = load i32, i32* %pitch, align 4, !dbg !5603
  %and = and i32 %105, %neg, !dbg !5603
  store i32 %and, i32* %pitch, align 4, !dbg !5603
  %106 = load i32, i32* %pitch, align 4, !dbg !5604
  %height39 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 3, !dbg !5605
  %107 = load i32, i32* %height39, align 4, !dbg !5605
  %mul40 = mul i32 %106, %107, !dbg !5606
  %108 = load i32, i32* %buf_align, align 4, !dbg !5607
  %add41 = add i32 %mul40, %108, !dbg !5608
  store i32 %add41, i32* %size12, align 4, !dbg !5609
  %109 = load i32, i32* %buf_align, align 4, !dbg !5610
  %neg42 = xor i32 %109, -1, !dbg !5611
  %110 = load i32, i32* %size12, align 4, !dbg !5612
  %and43 = and i32 %110, %neg42, !dbg !5612
  store i32 %and43, i32* %size12, align 4, !dbg !5612
  %111 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5613
  %112 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5614
  %pixmap44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 10, !dbg !5615
  %113 = load i32, i32* %size12, align 4, !dbg !5616
  %call45 = call i8* @fb_get_buffer_offset(%struct.fb_info* %111, %struct.fb_pixmap* %pixmap44, i32 %113) #6, !dbg !5617
  store i8* %call45, i8** %dst, align 8, !dbg !5618
  %114 = load i8*, i8** %dst, align 8, !dbg !5619
  %data = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 7, !dbg !5620
  store i8* %114, i8** %data, align 8, !dbg !5621
  %115 = load i32, i32* %mod, align 4, !dbg !5622
  %tobool46 = icmp ne i32 %115, 0, !dbg !5622
  br i1 %tobool46, label %if.else48, label %if.then47, !dbg !5624

if.then47:                                        ; preds = %if.end29
  %116 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5625
  %117 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5626
  %118 = load i16*, i16** %s.addr, align 8, !dbg !5627
  %119 = load i32, i32* %attribute, align 4, !dbg !5628
  %120 = load i32, i32* %cnt, align 4, !dbg !5629
  %121 = load i32, i32* %pitch, align 4, !dbg !5630
  %122 = load i32, i32* %width, align 4, !dbg !5631
  %123 = load i32, i32* %cellsize, align 4, !dbg !5632
  %124 = load i8*, i8** %buf, align 8, !dbg !5633
  %125 = load i8*, i8** %dst, align 8, !dbg !5634
  call void @bit_putcs_aligned(%struct.vc_data* %116, %struct.fb_info* %117, i16* %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, %struct.fb_image* %image, i8* %124, i8* %125) #6, !dbg !5635
  br label %if.end49, !dbg !5635

if.else48:                                        ; preds = %if.end29
  %126 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5636
  %127 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5637
  %128 = load i16*, i16** %s.addr, align 8, !dbg !5638
  %129 = load i32, i32* %attribute, align 4, !dbg !5639
  %130 = load i32, i32* %cnt, align 4, !dbg !5640
  %131 = load i32, i32* %pitch, align 4, !dbg !5641
  %132 = load i32, i32* %width, align 4, !dbg !5642
  %133 = load i32, i32* %cellsize, align 4, !dbg !5643
  %134 = load i8*, i8** %buf, align 8, !dbg !5644
  %135 = load i8*, i8** %dst, align 8, !dbg !5645
  call void @bit_putcs_unaligned(%struct.vc_data* %126, %struct.fb_info* %127, i16* %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, %struct.fb_image* %image, i8* %134, i8* %135) #6, !dbg !5646
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.then47
  %136 = load i32, i32* %cnt, align 4, !dbg !5647
  %137 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5648
  %vc_font50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %137, i32 0, i32 27, !dbg !5649
  %width51 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font50, i32 0, i32 0, !dbg !5650
  %138 = load i32, i32* %width51, align 8, !dbg !5650
  %mul52 = mul i32 %136, %138, !dbg !5651
  %dx53 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 0, !dbg !5652
  %139 = load i32, i32* %dx53, align 8, !dbg !5653
  %add54 = add i32 %139, %mul52, !dbg !5653
  store i32 %add54, i32* %dx53, align 8, !dbg !5653
  %140 = load i32, i32* %cnt, align 4, !dbg !5654
  %141 = load i32, i32* %count.addr, align 4, !dbg !5655
  %sub55 = sub i32 %141, %140, !dbg !5655
  store i32 %sub55, i32* %count.addr, align 4, !dbg !5655
  %142 = load i32, i32* %cnt, align 4, !dbg !5656
  %143 = load i16*, i16** %s.addr, align 8, !dbg !5657
  %idx.ext = zext i32 %142 to i64, !dbg !5657
  %add.ptr = getelementptr i16, i16* %143, i64 %idx.ext, !dbg !5657
  store i16* %add.ptr, i16** %s.addr, align 8, !dbg !5657
  br label %while.cond, !dbg !5577, !llvm.loop !5658

while.end:                                        ; preds = %while.cond
  %144 = load i8*, i8** %buf, align 8, !dbg !5660
  %tobool56 = icmp ne i8* %144, null, !dbg !5660
  %lnot = xor i1 %tobool56, true, !dbg !5660
  %lnot57 = xor i1 %lnot, true, !dbg !5660
  %lnot.ext = zext i1 %lnot57 to i32, !dbg !5660
  %conv58 = sext i32 %lnot.ext to i64, !dbg !5660
  %tobool59 = icmp ne i64 %conv58, 0, !dbg !5660
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !5662

if.then60:                                        ; preds = %while.end
  %145 = load i8*, i8** %buf, align 8, !dbg !5663
  call void @kfree(i8* %145) #6, !dbg !5664
  br label %if.end61, !dbg !5664

if.end61:                                         ; preds = %if.then24, %if.then60, %while.end
  ret void, !dbg !5665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bit_clear_margins(%struct.vc_data* %vc, %struct.fb_info* %info, i32 %color, i32 %bottom_only) #0 !dbg !5666 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %color.addr = alloca i32, align 4
  %bottom_only.addr = alloca i32, align 4
  %cw = alloca i32, align 4
  %ch = alloca i32, align 4
  %rw = alloca i32, align 4
  %bh = alloca i32, align 4
  %rs = alloca i32, align 4
  %bs = alloca i32, align 4
  %region = alloca %struct.fb_fillrect, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5669, metadata !DIExpression()), !dbg !5670
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  store i32 %bottom_only, i32* %bottom_only.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bottom_only.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  call void @llvm.dbg.declare(metadata i32* %cw, metadata !5675, metadata !DIExpression()), !dbg !5676
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5677
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 27, !dbg !5678
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 0, !dbg !5679
  %1 = load i32, i32* %width, align 8, !dbg !5679
  store i32 %1, i32* %cw, align 4, !dbg !5676
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !5680, metadata !DIExpression()), !dbg !5681
  %2 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5682
  %vc_font1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %2, i32 0, i32 27, !dbg !5683
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font1, i32 0, i32 1, !dbg !5684
  %3 = load i32, i32* %height, align 4, !dbg !5684
  store i32 %3, i32* %ch, align 4, !dbg !5681
  call void @llvm.dbg.declare(metadata i32* %rw, metadata !5685, metadata !DIExpression()), !dbg !5686
  %4 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5687
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 6, !dbg !5688
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 0, !dbg !5689
  %5 = load i32, i32* %xres, align 8, !dbg !5689
  %6 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5690
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 4, !dbg !5691
  %7 = load i32, i32* %vc_cols, align 4, !dbg !5691
  %8 = load i32, i32* %cw, align 4, !dbg !5692
  %mul = mul i32 %7, %8, !dbg !5693
  %sub = sub i32 %5, %mul, !dbg !5694
  store i32 %sub, i32* %rw, align 4, !dbg !5686
  call void @llvm.dbg.declare(metadata i32* %bh, metadata !5695, metadata !DIExpression()), !dbg !5696
  %9 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5697
  %var2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 6, !dbg !5698
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var2, i32 0, i32 1, !dbg !5699
  %10 = load i32, i32* %yres, align 4, !dbg !5699
  %11 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5700
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 5, !dbg !5701
  %12 = load i32, i32* %vc_rows, align 8, !dbg !5701
  %13 = load i32, i32* %ch, align 4, !dbg !5702
  %mul3 = mul i32 %12, %13, !dbg !5703
  %sub4 = sub i32 %10, %mul3, !dbg !5704
  store i32 %sub4, i32* %bh, align 4, !dbg !5696
  call void @llvm.dbg.declare(metadata i32* %rs, metadata !5705, metadata !DIExpression()), !dbg !5706
  %14 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5707
  %var5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 6, !dbg !5708
  %xres6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var5, i32 0, i32 0, !dbg !5709
  %15 = load i32, i32* %xres6, align 8, !dbg !5709
  %16 = load i32, i32* %rw, align 4, !dbg !5710
  %sub7 = sub i32 %15, %16, !dbg !5711
  store i32 %sub7, i32* %rs, align 4, !dbg !5706
  call void @llvm.dbg.declare(metadata i32* %bs, metadata !5712, metadata !DIExpression()), !dbg !5713
  %17 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5714
  %var8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 6, !dbg !5715
  %yres9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var8, i32 0, i32 1, !dbg !5716
  %18 = load i32, i32* %yres9, align 4, !dbg !5716
  %19 = load i32, i32* %bh, align 4, !dbg !5717
  %sub10 = sub i32 %18, %19, !dbg !5718
  store i32 %sub10, i32* %bs, align 4, !dbg !5713
  call void @llvm.dbg.declare(metadata %struct.fb_fillrect* %region, metadata !5719, metadata !DIExpression()), !dbg !5720
  %20 = load i32, i32* %color.addr, align 4, !dbg !5721
  %color11 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 4, !dbg !5722
  store i32 %20, i32* %color11, align 4, !dbg !5723
  %rop = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 5, !dbg !5724
  store i32 0, i32* %rop, align 4, !dbg !5725
  %21 = load i32, i32* %rw, align 4, !dbg !5726
  %cmp = icmp sgt i32 %21, 0, !dbg !5728
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5729

land.lhs.true:                                    ; preds = %entry
  %22 = load i32, i32* %bottom_only.addr, align 4, !dbg !5730
  %tobool = icmp ne i32 %22, 0, !dbg !5730
  br i1 %tobool, label %if.end, label %if.then, !dbg !5731

if.then:                                          ; preds = %land.lhs.true
  %23 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5732
  %var12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 6, !dbg !5734
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var12, i32 0, i32 4, !dbg !5735
  %24 = load i32, i32* %xoffset, align 8, !dbg !5735
  %25 = load i32, i32* %rs, align 4, !dbg !5736
  %add = add i32 %24, %25, !dbg !5737
  %dx = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 0, !dbg !5738
  store i32 %add, i32* %dx, align 4, !dbg !5739
  %dy = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 1, !dbg !5740
  store i32 0, i32* %dy, align 4, !dbg !5741
  %26 = load i32, i32* %rw, align 4, !dbg !5742
  %width13 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 2, !dbg !5743
  store i32 %26, i32* %width13, align 4, !dbg !5744
  %27 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5745
  %var14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 6, !dbg !5746
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var14, i32 0, i32 3, !dbg !5747
  %28 = load i32, i32* %yres_virtual, align 4, !dbg !5747
  %height15 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 3, !dbg !5748
  store i32 %28, i32* %height15, align 4, !dbg !5749
  %29 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5750
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 20, !dbg !5751
  %30 = load %struct.fb_ops*, %struct.fb_ops** %fbops, align 8, !dbg !5751
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %30, i32 0, i32 11, !dbg !5752
  %31 = load void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect, align 8, !dbg !5752
  %32 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5753
  call void %31(%struct.fb_info* %32, %struct.fb_fillrect* %region) #6, !dbg !5750
  br label %if.end, !dbg !5754

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %33 = load i32, i32* %bh, align 4, !dbg !5755
  %cmp16 = icmp sgt i32 %33, 0, !dbg !5757
  br i1 %cmp16, label %if.then17, label %if.end28, !dbg !5758

if.then17:                                        ; preds = %if.end
  %34 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5759
  %var18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 6, !dbg !5761
  %xoffset19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var18, i32 0, i32 4, !dbg !5762
  %35 = load i32, i32* %xoffset19, align 8, !dbg !5762
  %dx20 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 0, !dbg !5763
  store i32 %35, i32* %dx20, align 4, !dbg !5764
  %36 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5765
  %var21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 6, !dbg !5766
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var21, i32 0, i32 5, !dbg !5767
  %37 = load i32, i32* %yoffset, align 4, !dbg !5767
  %38 = load i32, i32* %bs, align 4, !dbg !5768
  %add22 = add i32 %37, %38, !dbg !5769
  %dy23 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 1, !dbg !5770
  store i32 %add22, i32* %dy23, align 4, !dbg !5771
  %39 = load i32, i32* %rs, align 4, !dbg !5772
  %width24 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 2, !dbg !5773
  store i32 %39, i32* %width24, align 4, !dbg !5774
  %40 = load i32, i32* %bh, align 4, !dbg !5775
  %height25 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %region, i32 0, i32 3, !dbg !5776
  store i32 %40, i32* %height25, align 4, !dbg !5777
  %41 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5778
  %fbops26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 20, !dbg !5779
  %42 = load %struct.fb_ops*, %struct.fb_ops** %fbops26, align 8, !dbg !5779
  %fb_fillrect27 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %42, i32 0, i32 11, !dbg !5780
  %43 = load void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_fillrect*)** %fb_fillrect27, align 8, !dbg !5780
  %44 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5781
  call void %43(%struct.fb_info* %44, %struct.fb_fillrect* %region) #6, !dbg !5778
  br label %if.end28, !dbg !5782

if.end28:                                         ; preds = %if.then17, %if.end
  ret void, !dbg !5783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bit_cursor(%struct.vc_data* %vc, %struct.fb_info* %info, i32 %mode, i32 %fg, i32 %bg) #0 !dbg !5784 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %mode.addr = alloca i32, align 4
  %fg.addr = alloca i32, align 4
  %bg.addr = alloca i32, align 4
  %cursor = alloca %struct.fb_cursor, align 8
  %ops = alloca %struct.fbcon_ops*, align 8
  %charmask = alloca i16, align 2
  %w = alloca i32, align 4
  %c = alloca i32, align 4
  %y = alloca i32, align 4
  %attribute = alloca i32, align 4
  %use_sw = alloca i32, align 4
  %err = alloca i32, align 4
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %mask170 = alloca i8*, align 8
  %cur_height = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %msk = alloca i8, align 1
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  store i32 %fg, i32* %fg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fg.addr, metadata !5791, metadata !DIExpression()), !dbg !5792
  store i32 %bg, i32* %bg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bg.addr, metadata !5793, metadata !DIExpression()), !dbg !5794
  call void @llvm.dbg.declare(metadata %struct.fb_cursor* %cursor, metadata !5795, metadata !DIExpression()), !dbg !5796
  call void @llvm.dbg.declare(metadata %struct.fbcon_ops** %ops, metadata !5797, metadata !DIExpression()), !dbg !5798
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5799
  %fbcon_par = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 29, !dbg !5800
  %1 = load i8*, i8** %fbcon_par, align 8, !dbg !5800
  %2 = bitcast i8* %1 to %struct.fbcon_ops*, !dbg !5799
  store %struct.fbcon_ops* %2, %struct.fbcon_ops** %ops, align 8, !dbg !5798
  call void @llvm.dbg.declare(metadata i16* %charmask, metadata !5801, metadata !DIExpression()), !dbg !5802
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5803
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 26, !dbg !5804
  %4 = load i16, i16* %vc_hi_font_mask, align 8, !dbg !5804
  %conv = zext i16 %4 to i32, !dbg !5803
  %tobool = icmp ne i32 %conv, 0, !dbg !5803
  %5 = zext i1 %tobool to i64, !dbg !5803
  %cond = select i1 %tobool, i32 511, i32 255, !dbg !5803
  %conv1 = trunc i32 %cond to i16, !dbg !5803
  store i16 %conv1, i16* %charmask, align 2, !dbg !5802
  call void @llvm.dbg.declare(metadata i32* %w, metadata !5805, metadata !DIExpression()), !dbg !5806
  %6 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5807
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 27, !dbg !5807
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 0, !dbg !5807
  %7 = load i32, i32* %width, align 8, !dbg !5807
  %add = add i32 %7, 8, !dbg !5807
  %sub = sub i32 %add, 1, !dbg !5807
  %div = udiv i32 %sub, 8, !dbg !5807
  store i32 %div, i32* %w, align 4, !dbg !5806
  call void @llvm.dbg.declare(metadata i32* %c, metadata !5808, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata i32* %y, metadata !5810, metadata !DIExpression()), !dbg !5811
  %8 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5812
  %p = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %8, i32 0, i32 10, !dbg !5813
  %9 = load %struct.fbcon_display*, %struct.fbcon_display** %p, align 8, !dbg !5813
  %10 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5814
  %state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 1, !dbg !5815
  %y2 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state, i32 0, i32 1, !dbg !5816
  %11 = load i32, i32* %y2, align 4, !dbg !5816
  %call = call i32 @real_y(%struct.fbcon_display* %9, i32 %11) #6, !dbg !5817
  store i32 %call, i32* %y, align 4, !dbg !5811
  call void @llvm.dbg.declare(metadata i32* %attribute, metadata !5818, metadata !DIExpression()), !dbg !5819
  call void @llvm.dbg.declare(metadata i32* %use_sw, metadata !5820, metadata !DIExpression()), !dbg !5821
  %12 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5822
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 22, !dbg !5823
  %13 = load i32, i32* %vc_cursor_type, align 4, !dbg !5823
  %and = and i32 %13, 16, !dbg !5824
  store i32 %and, i32* %use_sw, align 4, !dbg !5821
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5825, metadata !DIExpression()), !dbg !5826
  store i32 1, i32* %err, align 4, !dbg !5826
  call void @llvm.dbg.declare(metadata i8** %src, metadata !5827, metadata !DIExpression()), !dbg !5828
  %set = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !5829
  store i16 0, i16* %set, align 8, !dbg !5830
  %14 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5831
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 25, !dbg !5831
  %15 = load i64, i64* %vc_pos, align 8, !dbg !5831
  %16 = inttoptr i64 %15 to i16*, !dbg !5831
  %17 = load i16, i16* %16, align 2, !dbg !5831
  %conv3 = zext i16 %17 to i32, !dbg !5831
  store i32 %conv3, i32* %c, align 4, !dbg !5832
  %18 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5833
  %19 = load i32, i32* %c, align 4, !dbg !5834
  %conv4 = trunc i32 %19 to i16, !dbg !5834
  %call5 = call i32 @get_attribute(%struct.fb_info* %18, i16 zeroext %conv4) #6, !dbg !5835
  store i32 %call5, i32* %attribute, align 4, !dbg !5836
  %20 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5837
  %vc_font6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 27, !dbg !5838
  %data = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font6, i32 0, i32 3, !dbg !5839
  %21 = load i8*, i8** %data, align 8, !dbg !5839
  %22 = load i32, i32* %c, align 4, !dbg !5840
  %23 = load i16, i16* %charmask, align 2, !dbg !5841
  %conv7 = zext i16 %23 to i32, !dbg !5841
  %and8 = and i32 %22, %conv7, !dbg !5842
  %24 = load i32, i32* %w, align 4, !dbg !5843
  %25 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5844
  %vc_font9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 27, !dbg !5845
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font9, i32 0, i32 1, !dbg !5846
  %26 = load i32, i32* %height, align 4, !dbg !5846
  %mul = mul i32 %24, %26, !dbg !5847
  %mul10 = mul i32 %and8, %mul, !dbg !5848
  %idx.ext = zext i32 %mul10 to i64, !dbg !5849
  %add.ptr = getelementptr i8, i8* %21, i64 %idx.ext, !dbg !5849
  store i8* %add.ptr, i8** %src, align 8, !dbg !5850
  %27 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5851
  %cursor_state = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %27, i32 0, i32 9, !dbg !5853
  %image = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state, i32 0, i32 5, !dbg !5854
  %data11 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image, i32 0, i32 7, !dbg !5855
  %28 = load i8*, i8** %data11, align 8, !dbg !5855
  %29 = load i8*, i8** %src, align 8, !dbg !5856
  %cmp = icmp ne i8* %28, %29, !dbg !5857
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5858

lor.lhs.false:                                    ; preds = %entry
  %30 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5859
  %cursor_reset = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %30, i32 0, i32 15, !dbg !5860
  %31 = load i32, i32* %cursor_reset, align 4, !dbg !5860
  %tobool13 = icmp ne i32 %31, 0, !dbg !5859
  br i1 %tobool13, label %if.then, label %if.end, !dbg !5861

if.then:                                          ; preds = %lor.lhs.false, %entry
  %32 = load i8*, i8** %src, align 8, !dbg !5862
  %33 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5864
  %cursor_state14 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %33, i32 0, i32 9, !dbg !5865
  %image15 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state14, i32 0, i32 5, !dbg !5866
  %data16 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image15, i32 0, i32 7, !dbg !5867
  store i8* %32, i8** %data16, align 8, !dbg !5868
  %set17 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !5869
  %34 = load i16, i16* %set17, align 8, !dbg !5870
  %conv18 = zext i16 %34 to i32, !dbg !5870
  %or = or i32 %conv18, 1, !dbg !5870
  %conv19 = trunc i32 %or to i16, !dbg !5870
  store i16 %conv19, i16* %set17, align 8, !dbg !5870
  br label %if.end, !dbg !5871

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %35 = load i32, i32* %attribute, align 4, !dbg !5872
  %tobool20 = icmp ne i32 %35, 0, !dbg !5872
  br i1 %tobool20, label %if.then21, label %if.end31, !dbg !5874

if.then21:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !5875, metadata !DIExpression()), !dbg !5877
  %36 = load i32, i32* %w, align 4, !dbg !5878
  %conv22 = sext i32 %36 to i64, !dbg !5878
  %37 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5879
  %vc_font23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 27, !dbg !5880
  %height24 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font23, i32 0, i32 1, !dbg !5881
  %38 = load i32, i32* %height24, align 4, !dbg !5881
  %conv25 = zext i32 %38 to i64, !dbg !5879
  %call26 = call i8* @kmalloc_array(i64 %conv22, i64 %conv25, i32 2592) #6, !dbg !5882
  store i8* %call26, i8** %dst, align 8, !dbg !5883
  %39 = load i8*, i8** %dst, align 8, !dbg !5884
  %tobool27 = icmp ne i8* %39, null, !dbg !5884
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !5886

if.then28:                                        ; preds = %if.then21
  br label %return, !dbg !5887

if.end29:                                         ; preds = %if.then21
  %40 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5888
  %cursor_data = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %40, i32 0, i32 22, !dbg !5889
  %41 = load i8*, i8** %cursor_data, align 8, !dbg !5889
  call void @kfree(i8* %41) #6, !dbg !5890
  %42 = load i8*, i8** %dst, align 8, !dbg !5891
  %43 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5892
  %cursor_data30 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %43, i32 0, i32 22, !dbg !5893
  store i8* %42, i8** %cursor_data30, align 8, !dbg !5894
  %44 = load i8*, i8** %dst, align 8, !dbg !5895
  %45 = load i8*, i8** %src, align 8, !dbg !5896
  %46 = load i32, i32* %attribute, align 4, !dbg !5897
  %47 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5898
  call void @update_attr(i8* %44, i8* %45, i32 %46, %struct.vc_data* %47) #6, !dbg !5899
  %48 = load i8*, i8** %dst, align 8, !dbg !5900
  store i8* %48, i8** %src, align 8, !dbg !5901
  br label %if.end31, !dbg !5902

if.end31:                                         ; preds = %if.end29, %if.end
  %49 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5903
  %cursor_state32 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %49, i32 0, i32 9, !dbg !5905
  %image33 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state32, i32 0, i32 5, !dbg !5906
  %fg_color = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image33, i32 0, i32 4, !dbg !5907
  %50 = load i32, i32* %fg_color, align 8, !dbg !5907
  %51 = load i32, i32* %fg.addr, align 4, !dbg !5908
  %cmp34 = icmp ne i32 %50, %51, !dbg !5909
  br i1 %cmp34, label %if.then44, label %lor.lhs.false36, !dbg !5910

lor.lhs.false36:                                  ; preds = %if.end31
  %52 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5911
  %cursor_state37 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %52, i32 0, i32 9, !dbg !5912
  %image38 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state37, i32 0, i32 5, !dbg !5913
  %bg_color = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image38, i32 0, i32 5, !dbg !5914
  %53 = load i32, i32* %bg_color, align 4, !dbg !5914
  %54 = load i32, i32* %bg.addr, align 4, !dbg !5915
  %cmp39 = icmp ne i32 %53, %54, !dbg !5916
  br i1 %cmp39, label %if.then44, label %lor.lhs.false41, !dbg !5917

lor.lhs.false41:                                  ; preds = %lor.lhs.false36
  %55 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5918
  %cursor_reset42 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %55, i32 0, i32 15, !dbg !5919
  %56 = load i32, i32* %cursor_reset42, align 4, !dbg !5919
  %tobool43 = icmp ne i32 %56, 0, !dbg !5918
  br i1 %tobool43, label %if.then44, label %if.end55, !dbg !5920

if.then44:                                        ; preds = %lor.lhs.false41, %lor.lhs.false36, %if.end31
  %57 = load i32, i32* %fg.addr, align 4, !dbg !5921
  %58 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5923
  %cursor_state45 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %58, i32 0, i32 9, !dbg !5924
  %image46 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state45, i32 0, i32 5, !dbg !5925
  %fg_color47 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image46, i32 0, i32 4, !dbg !5926
  store i32 %57, i32* %fg_color47, align 8, !dbg !5927
  %59 = load i32, i32* %bg.addr, align 4, !dbg !5928
  %60 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5929
  %cursor_state48 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %60, i32 0, i32 9, !dbg !5930
  %image49 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state48, i32 0, i32 5, !dbg !5931
  %bg_color50 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image49, i32 0, i32 5, !dbg !5932
  store i32 %59, i32* %bg_color50, align 4, !dbg !5933
  %set51 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !5934
  %61 = load i16, i16* %set51, align 8, !dbg !5935
  %conv52 = zext i16 %61 to i32, !dbg !5935
  %or53 = or i32 %conv52, 8, !dbg !5935
  %conv54 = trunc i32 %or53 to i16, !dbg !5935
  store i16 %conv54, i16* %set51, align 8, !dbg !5935
  br label %if.end55, !dbg !5936

if.end55:                                         ; preds = %if.then44, %lor.lhs.false41
  %62 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5937
  %cursor_state56 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %62, i32 0, i32 9, !dbg !5939
  %image57 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state56, i32 0, i32 5, !dbg !5940
  %dx = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image57, i32 0, i32 0, !dbg !5941
  %63 = load i32, i32* %dx, align 8, !dbg !5941
  %64 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5942
  %vc_font58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 27, !dbg !5943
  %width59 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font58, i32 0, i32 0, !dbg !5944
  %65 = load i32, i32* %width59, align 8, !dbg !5944
  %66 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5945
  %state60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 1, !dbg !5946
  %x = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state60, i32 0, i32 0, !dbg !5947
  %67 = load i32, i32* %x, align 8, !dbg !5947
  %mul61 = mul i32 %65, %67, !dbg !5948
  %cmp62 = icmp ne i32 %63, %mul61, !dbg !5949
  br i1 %cmp62, label %if.then75, label %lor.lhs.false64, !dbg !5950

lor.lhs.false64:                                  ; preds = %if.end55
  %68 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5951
  %cursor_state65 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %68, i32 0, i32 9, !dbg !5952
  %image66 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state65, i32 0, i32 5, !dbg !5953
  %dy = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image66, i32 0, i32 1, !dbg !5954
  %69 = load i32, i32* %dy, align 4, !dbg !5954
  %70 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5955
  %vc_font67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 27, !dbg !5956
  %height68 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font67, i32 0, i32 1, !dbg !5957
  %71 = load i32, i32* %height68, align 4, !dbg !5957
  %72 = load i32, i32* %y, align 4, !dbg !5958
  %mul69 = mul i32 %71, %72, !dbg !5959
  %cmp70 = icmp ne i32 %69, %mul69, !dbg !5960
  br i1 %cmp70, label %if.then75, label %lor.lhs.false72, !dbg !5961

lor.lhs.false72:                                  ; preds = %lor.lhs.false64
  %73 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5962
  %cursor_reset73 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %73, i32 0, i32 15, !dbg !5963
  %74 = load i32, i32* %cursor_reset73, align 4, !dbg !5963
  %tobool74 = icmp ne i32 %74, 0, !dbg !5962
  br i1 %tobool74, label %if.then75, label %if.end94, !dbg !5964

if.then75:                                        ; preds = %lor.lhs.false72, %lor.lhs.false64, %if.end55
  %75 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5965
  %vc_font76 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %75, i32 0, i32 27, !dbg !5967
  %width77 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font76, i32 0, i32 0, !dbg !5968
  %76 = load i32, i32* %width77, align 8, !dbg !5968
  %77 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5969
  %state78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 1, !dbg !5970
  %x79 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state78, i32 0, i32 0, !dbg !5971
  %78 = load i32, i32* %x79, align 8, !dbg !5971
  %mul80 = mul i32 %76, %78, !dbg !5972
  %79 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5973
  %cursor_state81 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %79, i32 0, i32 9, !dbg !5974
  %image82 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state81, i32 0, i32 5, !dbg !5975
  %dx83 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image82, i32 0, i32 0, !dbg !5976
  store i32 %mul80, i32* %dx83, align 8, !dbg !5977
  %80 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5978
  %vc_font84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 27, !dbg !5979
  %height85 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font84, i32 0, i32 1, !dbg !5980
  %81 = load i32, i32* %height85, align 4, !dbg !5980
  %82 = load i32, i32* %y, align 4, !dbg !5981
  %mul86 = mul i32 %81, %82, !dbg !5982
  %83 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5983
  %cursor_state87 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %83, i32 0, i32 9, !dbg !5984
  %image88 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state87, i32 0, i32 5, !dbg !5985
  %dy89 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image88, i32 0, i32 1, !dbg !5986
  store i32 %mul86, i32* %dy89, align 4, !dbg !5987
  %set90 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !5988
  %84 = load i16, i16* %set90, align 8, !dbg !5989
  %conv91 = zext i16 %84 to i32, !dbg !5989
  %or92 = or i32 %conv91, 2, !dbg !5989
  %conv93 = trunc i32 %or92 to i16, !dbg !5989
  store i16 %conv93, i16* %set90, align 8, !dbg !5989
  br label %if.end94, !dbg !5990

if.end94:                                         ; preds = %if.then75, %lor.lhs.false72
  %85 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !5991
  %cursor_state95 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %85, i32 0, i32 9, !dbg !5993
  %image96 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state95, i32 0, i32 5, !dbg !5994
  %height97 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image96, i32 0, i32 3, !dbg !5995
  %86 = load i32, i32* %height97, align 4, !dbg !5995
  %87 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5996
  %vc_font98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %87, i32 0, i32 27, !dbg !5997
  %height99 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font98, i32 0, i32 1, !dbg !5998
  %88 = load i32, i32* %height99, align 4, !dbg !5998
  %cmp100 = icmp ne i32 %86, %88, !dbg !5999
  br i1 %cmp100, label %if.then113, label %lor.lhs.false102, !dbg !6000

lor.lhs.false102:                                 ; preds = %if.end94
  %89 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6001
  %cursor_state103 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %89, i32 0, i32 9, !dbg !6002
  %image104 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state103, i32 0, i32 5, !dbg !6003
  %width105 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image104, i32 0, i32 2, !dbg !6004
  %90 = load i32, i32* %width105, align 8, !dbg !6004
  %91 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6005
  %vc_font106 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 27, !dbg !6006
  %width107 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font106, i32 0, i32 0, !dbg !6007
  %92 = load i32, i32* %width107, align 8, !dbg !6007
  %cmp108 = icmp ne i32 %90, %92, !dbg !6008
  br i1 %cmp108, label %if.then113, label %lor.lhs.false110, !dbg !6009

lor.lhs.false110:                                 ; preds = %lor.lhs.false102
  %93 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6010
  %cursor_reset111 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %93, i32 0, i32 15, !dbg !6011
  %94 = load i32, i32* %cursor_reset111, align 4, !dbg !6011
  %tobool112 = icmp ne i32 %94, 0, !dbg !6010
  br i1 %tobool112, label %if.then113, label %if.end128, !dbg !6012

if.then113:                                       ; preds = %lor.lhs.false110, %lor.lhs.false102, %if.end94
  %95 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6013
  %vc_font114 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 27, !dbg !6015
  %height115 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font114, i32 0, i32 1, !dbg !6016
  %96 = load i32, i32* %height115, align 4, !dbg !6016
  %97 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6017
  %cursor_state116 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %97, i32 0, i32 9, !dbg !6018
  %image117 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state116, i32 0, i32 5, !dbg !6019
  %height118 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image117, i32 0, i32 3, !dbg !6020
  store i32 %96, i32* %height118, align 4, !dbg !6021
  %98 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6022
  %vc_font119 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 27, !dbg !6023
  %width120 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font119, i32 0, i32 0, !dbg !6024
  %99 = load i32, i32* %width120, align 8, !dbg !6024
  %100 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6025
  %cursor_state121 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %100, i32 0, i32 9, !dbg !6026
  %image122 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state121, i32 0, i32 5, !dbg !6027
  %width123 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image122, i32 0, i32 2, !dbg !6028
  store i32 %99, i32* %width123, align 8, !dbg !6029
  %set124 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !6030
  %101 = load i16, i16* %set124, align 8, !dbg !6031
  %conv125 = zext i16 %101 to i32, !dbg !6031
  %or126 = or i32 %conv125, 32, !dbg !6031
  %conv127 = trunc i32 %or126 to i16, !dbg !6031
  store i16 %conv127, i16* %set124, align 8, !dbg !6031
  br label %if.end128, !dbg !6032

if.end128:                                        ; preds = %if.then113, %lor.lhs.false110
  %102 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6033
  %cursor_state129 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %102, i32 0, i32 9, !dbg !6035
  %hot = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state129, i32 0, i32 4, !dbg !6036
  %x130 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot, i32 0, i32 0, !dbg !6037
  %103 = load i16, i16* %x130, align 8, !dbg !6037
  %conv131 = zext i16 %103 to i32, !dbg !6033
  %tobool132 = icmp ne i32 %conv131, 0, !dbg !6033
  br i1 %tobool132, label %if.then142, label %lor.lhs.false133, !dbg !6038

lor.lhs.false133:                                 ; preds = %if.end128
  %104 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6039
  %cursor_state134 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %104, i32 0, i32 9, !dbg !6040
  %hot135 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state134, i32 0, i32 4, !dbg !6041
  %y136 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot135, i32 0, i32 1, !dbg !6042
  %105 = load i16, i16* %y136, align 2, !dbg !6042
  %conv137 = zext i16 %105 to i32, !dbg !6039
  %tobool138 = icmp ne i32 %conv137, 0, !dbg !6039
  br i1 %tobool138, label %if.then142, label %lor.lhs.false139, !dbg !6043

lor.lhs.false139:                                 ; preds = %lor.lhs.false133
  %106 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6044
  %cursor_reset140 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %106, i32 0, i32 15, !dbg !6045
  %107 = load i32, i32* %cursor_reset140, align 4, !dbg !6045
  %tobool141 = icmp ne i32 %107, 0, !dbg !6044
  br i1 %tobool141, label %if.then142, label %if.end152, !dbg !6046

if.then142:                                       ; preds = %lor.lhs.false139, %lor.lhs.false133, %if.end128
  %hot143 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 4, !dbg !6047
  %y144 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot143, i32 0, i32 1, !dbg !6049
  store i16 0, i16* %y144, align 2, !dbg !6050
  %108 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6051
  %cursor_state145 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %108, i32 0, i32 9, !dbg !6052
  %hot146 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state145, i32 0, i32 4, !dbg !6053
  %x147 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot146, i32 0, i32 0, !dbg !6054
  store i16 0, i16* %x147, align 8, !dbg !6055
  %set148 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !6056
  %109 = load i16, i16* %set148, align 8, !dbg !6057
  %conv149 = zext i16 %109 to i32, !dbg !6057
  %or150 = or i32 %conv149, 4, !dbg !6057
  %conv151 = trunc i32 %or150 to i16, !dbg !6057
  store i16 %conv151, i16* %set148, align 8, !dbg !6057
  br label %if.end152, !dbg !6058

if.end152:                                        ; preds = %if.then142, %lor.lhs.false139
  %set153 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !6059
  %110 = load i16, i16* %set153, align 8, !dbg !6059
  %conv154 = zext i16 %110 to i32, !dbg !6061
  %and155 = and i32 %conv154, 32, !dbg !6062
  %tobool156 = icmp ne i32 %and155, 0, !dbg !6062
  br i1 %tobool156, label %if.then169, label %lor.lhs.false157, !dbg !6063

lor.lhs.false157:                                 ; preds = %if.end152
  %111 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6064
  %vc_cursor_type158 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %111, i32 0, i32 22, !dbg !6065
  %112 = load i32, i32* %vc_cursor_type158, align 4, !dbg !6065
  %113 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6066
  %p159 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %113, i32 0, i32 10, !dbg !6067
  %114 = load %struct.fbcon_display*, %struct.fbcon_display** %p159, align 8, !dbg !6067
  %cursor_shape = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %114, i32 0, i32 6, !dbg !6068
  %115 = load i32, i32* %cursor_shape, align 8, !dbg !6068
  %cmp160 = icmp ne i32 %112, %115, !dbg !6069
  br i1 %cmp160, label %if.then169, label %lor.lhs.false162, !dbg !6070

lor.lhs.false162:                                 ; preds = %lor.lhs.false157
  %116 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6071
  %cursor_state163 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %116, i32 0, i32 9, !dbg !6072
  %mask = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state163, i32 0, i32 3, !dbg !6073
  %117 = load i8*, i8** %mask, align 8, !dbg !6073
  %cmp164 = icmp eq i8* %117, null, !dbg !6074
  br i1 %cmp164, label %if.then169, label %lor.lhs.false166, !dbg !6075

lor.lhs.false166:                                 ; preds = %lor.lhs.false162
  %118 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6076
  %cursor_reset167 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %118, i32 0, i32 15, !dbg !6077
  %119 = load i32, i32* %cursor_reset167, align 4, !dbg !6077
  %tobool168 = icmp ne i32 %119, 0, !dbg !6076
  br i1 %tobool168, label %if.then169, label %if.end229, !dbg !6078

if.then169:                                       ; preds = %lor.lhs.false166, %lor.lhs.false162, %lor.lhs.false157, %if.end152
  call void @llvm.dbg.declare(metadata i8** %mask170, metadata !6079, metadata !DIExpression()), !dbg !6081
  %120 = load i32, i32* %w, align 4, !dbg !6082
  %conv171 = sext i32 %120 to i64, !dbg !6082
  %121 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6083
  %vc_font172 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %121, i32 0, i32 27, !dbg !6084
  %height173 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font172, i32 0, i32 1, !dbg !6085
  %122 = load i32, i32* %height173, align 4, !dbg !6085
  %conv174 = zext i32 %122 to i64, !dbg !6083
  %call175 = call i8* @kmalloc_array(i64 %conv171, i64 %conv174, i32 2592) #6, !dbg !6086
  store i8* %call175, i8** %mask170, align 8, !dbg !6081
  call void @llvm.dbg.declare(metadata i32* %cur_height, metadata !6087, metadata !DIExpression()), !dbg !6088
  call void @llvm.dbg.declare(metadata i32* %size, metadata !6089, metadata !DIExpression()), !dbg !6090
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6091, metadata !DIExpression()), !dbg !6092
  store i32 0, i32* %i, align 4, !dbg !6092
  call void @llvm.dbg.declare(metadata i8* %msk, metadata !6093, metadata !DIExpression()), !dbg !6094
  store i8 -1, i8* %msk, align 1, !dbg !6094
  %123 = load i8*, i8** %mask170, align 8, !dbg !6095
  %tobool176 = icmp ne i8* %123, null, !dbg !6095
  br i1 %tobool176, label %if.end178, label %if.then177, !dbg !6097

if.then177:                                       ; preds = %if.then169
  br label %return, !dbg !6098

if.end178:                                        ; preds = %if.then169
  %124 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6099
  %cursor_state179 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %124, i32 0, i32 9, !dbg !6100
  %mask180 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state179, i32 0, i32 3, !dbg !6101
  %125 = load i8*, i8** %mask180, align 8, !dbg !6101
  call void @kfree(i8* %125) #6, !dbg !6102
  %126 = load i8*, i8** %mask170, align 8, !dbg !6103
  %127 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6104
  %cursor_state181 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %127, i32 0, i32 9, !dbg !6105
  %mask182 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state181, i32 0, i32 3, !dbg !6106
  store i8* %126, i8** %mask182, align 8, !dbg !6107
  %128 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6108
  %vc_cursor_type183 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %128, i32 0, i32 22, !dbg !6109
  %129 = load i32, i32* %vc_cursor_type183, align 4, !dbg !6109
  %130 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6110
  %p184 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %130, i32 0, i32 10, !dbg !6111
  %131 = load %struct.fbcon_display*, %struct.fbcon_display** %p184, align 8, !dbg !6111
  %cursor_shape185 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %131, i32 0, i32 6, !dbg !6112
  store i32 %129, i32* %cursor_shape185, align 8, !dbg !6113
  %set186 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 0, !dbg !6114
  %132 = load i16, i16* %set186, align 8, !dbg !6115
  %conv187 = zext i16 %132 to i32, !dbg !6115
  %or188 = or i32 %conv187, 16, !dbg !6115
  %conv189 = trunc i32 %or188 to i16, !dbg !6115
  store i16 %conv189, i16* %set186, align 8, !dbg !6115
  %133 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6116
  %p190 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %133, i32 0, i32 10, !dbg !6116
  %134 = load %struct.fbcon_display*, %struct.fbcon_display** %p190, align 8, !dbg !6116
  %cursor_shape191 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %134, i32 0, i32 6, !dbg !6116
  %135 = load i32, i32* %cursor_shape191, align 8, !dbg !6116
  %and192 = and i32 %135, 15, !dbg !6116
  switch i32 %and192, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb193
    i32 3, label %sw.bb199
    i32 4, label %sw.bb203
    i32 5, label %sw.bb206
    i32 6, label %sw.bb210
  ], !dbg !6117

sw.bb:                                            ; preds = %if.end178
  store i32 0, i32* %cur_height, align 4, !dbg !6118
  br label %sw.epilog, !dbg !6120

sw.bb193:                                         ; preds = %if.end178
  %136 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6121
  %vc_font194 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %136, i32 0, i32 27, !dbg !6122
  %height195 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font194, i32 0, i32 1, !dbg !6123
  %137 = load i32, i32* %height195, align 4, !dbg !6123
  %cmp196 = icmp ult i32 %137, 10, !dbg !6124
  %138 = zext i1 %cmp196 to i64, !dbg !6125
  %cond198 = select i1 %cmp196, i32 1, i32 2, !dbg !6125
  store i32 %cond198, i32* %cur_height, align 4, !dbg !6126
  br label %sw.epilog, !dbg !6127

sw.bb199:                                         ; preds = %if.end178
  %139 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6128
  %vc_font200 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %139, i32 0, i32 27, !dbg !6129
  %height201 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font200, i32 0, i32 1, !dbg !6130
  %140 = load i32, i32* %height201, align 4, !dbg !6130
  %div202 = udiv i32 %140, 3, !dbg !6131
  store i32 %div202, i32* %cur_height, align 4, !dbg !6132
  br label %sw.epilog, !dbg !6133

sw.bb203:                                         ; preds = %if.end178
  %141 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6134
  %vc_font204 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %141, i32 0, i32 27, !dbg !6135
  %height205 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font204, i32 0, i32 1, !dbg !6136
  %142 = load i32, i32* %height205, align 4, !dbg !6136
  %shr = lshr i32 %142, 1, !dbg !6137
  store i32 %shr, i32* %cur_height, align 4, !dbg !6138
  br label %sw.epilog, !dbg !6139

sw.bb206:                                         ; preds = %if.end178
  %143 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6140
  %vc_font207 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %143, i32 0, i32 27, !dbg !6141
  %height208 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font207, i32 0, i32 1, !dbg !6142
  %144 = load i32, i32* %height208, align 4, !dbg !6142
  %shl = shl i32 %144, 1, !dbg !6143
  %div209 = udiv i32 %shl, 3, !dbg !6144
  store i32 %div209, i32* %cur_height, align 4, !dbg !6145
  br label %sw.epilog, !dbg !6146

sw.bb210:                                         ; preds = %if.end178
  br label %sw.default, !dbg !6146

sw.default:                                       ; preds = %if.end178, %sw.bb210
  %145 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6147
  %vc_font211 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %145, i32 0, i32 27, !dbg !6148
  %height212 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font211, i32 0, i32 1, !dbg !6149
  %146 = load i32, i32* %height212, align 4, !dbg !6149
  store i32 %146, i32* %cur_height, align 4, !dbg !6150
  br label %sw.epilog, !dbg !6151

sw.epilog:                                        ; preds = %sw.default, %sw.bb206, %sw.bb203, %sw.bb199, %sw.bb193, %sw.bb
  %147 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6152
  %vc_font213 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %147, i32 0, i32 27, !dbg !6153
  %height214 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font213, i32 0, i32 1, !dbg !6154
  %148 = load i32, i32* %height214, align 4, !dbg !6154
  %149 = load i32, i32* %cur_height, align 4, !dbg !6155
  %sub215 = sub i32 %148, %149, !dbg !6156
  %150 = load i32, i32* %w, align 4, !dbg !6157
  %mul216 = mul i32 %sub215, %150, !dbg !6158
  store i32 %mul216, i32* %size, align 4, !dbg !6159
  br label %while.cond, !dbg !6160

while.cond:                                       ; preds = %while.body, %sw.epilog
  %151 = load i32, i32* %size, align 4, !dbg !6161
  %dec = add i32 %151, -1, !dbg !6161
  store i32 %dec, i32* %size, align 4, !dbg !6161
  %tobool217 = icmp ne i32 %151, 0, !dbg !6160
  br i1 %tobool217, label %while.body, label %while.end, !dbg !6160

while.body:                                       ; preds = %while.cond
  %152 = load i8, i8* %msk, align 1, !dbg !6162
  %conv218 = zext i8 %152 to i32, !dbg !6162
  %neg = xor i32 %conv218, -1, !dbg !6163
  %conv219 = trunc i32 %neg to i8, !dbg !6163
  %153 = load i8*, i8** %mask170, align 8, !dbg !6164
  %154 = load i32, i32* %i, align 4, !dbg !6165
  %inc = add i32 %154, 1, !dbg !6165
  store i32 %inc, i32* %i, align 4, !dbg !6165
  %idxprom = sext i32 %154 to i64, !dbg !6164
  %arrayidx = getelementptr i8, i8* %153, i64 %idxprom, !dbg !6164
  store i8 %conv219, i8* %arrayidx, align 1, !dbg !6166
  br label %while.cond, !dbg !6160, !llvm.loop !6167

while.end:                                        ; preds = %while.cond
  %155 = load i32, i32* %cur_height, align 4, !dbg !6168
  %156 = load i32, i32* %w, align 4, !dbg !6169
  %mul220 = mul i32 %155, %156, !dbg !6170
  store i32 %mul220, i32* %size, align 4, !dbg !6171
  br label %while.cond221, !dbg !6172

while.cond221:                                    ; preds = %while.body224, %while.end
  %157 = load i32, i32* %size, align 4, !dbg !6173
  %dec222 = add i32 %157, -1, !dbg !6173
  store i32 %dec222, i32* %size, align 4, !dbg !6173
  %tobool223 = icmp ne i32 %157, 0, !dbg !6172
  br i1 %tobool223, label %while.body224, label %while.end228, !dbg !6172

while.body224:                                    ; preds = %while.cond221
  %158 = load i8, i8* %msk, align 1, !dbg !6174
  %159 = load i8*, i8** %mask170, align 8, !dbg !6175
  %160 = load i32, i32* %i, align 4, !dbg !6176
  %inc225 = add i32 %160, 1, !dbg !6176
  store i32 %inc225, i32* %i, align 4, !dbg !6176
  %idxprom226 = sext i32 %160 to i64, !dbg !6175
  %arrayidx227 = getelementptr i8, i8* %159, i64 %idxprom226, !dbg !6175
  store i8 %158, i8* %arrayidx227, align 1, !dbg !6177
  br label %while.cond221, !dbg !6172, !llvm.loop !6178

while.end228:                                     ; preds = %while.cond221
  br label %if.end229, !dbg !6179

if.end229:                                        ; preds = %while.end228, %lor.lhs.false166
  %161 = load i32, i32* %mode.addr, align 4, !dbg !6180
  switch i32 %161, label %sw.default233 [
    i32 2, label %sw.bb230
    i32 1, label %sw.bb232
    i32 3, label %sw.bb232
  ], !dbg !6181

sw.bb230:                                         ; preds = %if.end229
  %162 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6182
  %cursor_state231 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %162, i32 0, i32 9, !dbg !6184
  %enable = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state231, i32 0, i32 1, !dbg !6185
  store i16 0, i16* %enable, align 2, !dbg !6186
  br label %sw.epilog239, !dbg !6187

sw.bb232:                                         ; preds = %if.end229, %if.end229
  br label %sw.default233, !dbg !6187

sw.default233:                                    ; preds = %if.end229, %sw.bb232
  %163 = load i32, i32* %use_sw, align 4, !dbg !6188
  %tobool234 = icmp ne i32 %163, 0, !dbg !6189
  %164 = zext i1 %tobool234 to i64, !dbg !6189
  %cond235 = select i1 %tobool234, i32 0, i32 1, !dbg !6189
  %conv236 = trunc i32 %cond235 to i16, !dbg !6189
  %165 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6190
  %cursor_state237 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %165, i32 0, i32 9, !dbg !6191
  %enable238 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state237, i32 0, i32 1, !dbg !6192
  store i16 %conv236, i16* %enable238, align 2, !dbg !6193
  br label %sw.epilog239, !dbg !6194

sw.epilog239:                                     ; preds = %sw.default233, %sw.bb230
  %166 = load i8*, i8** %src, align 8, !dbg !6195
  %image240 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6196
  %data241 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image240, i32 0, i32 7, !dbg !6197
  store i8* %166, i8** %data241, align 8, !dbg !6198
  %167 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6199
  %cursor_state242 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %167, i32 0, i32 9, !dbg !6200
  %image243 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state242, i32 0, i32 5, !dbg !6201
  %fg_color244 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image243, i32 0, i32 4, !dbg !6202
  %168 = load i32, i32* %fg_color244, align 8, !dbg !6202
  %image245 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6203
  %fg_color246 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image245, i32 0, i32 4, !dbg !6204
  store i32 %168, i32* %fg_color246, align 8, !dbg !6205
  %169 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6206
  %cursor_state247 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %169, i32 0, i32 9, !dbg !6207
  %image248 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state247, i32 0, i32 5, !dbg !6208
  %bg_color249 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image248, i32 0, i32 5, !dbg !6209
  %170 = load i32, i32* %bg_color249, align 4, !dbg !6209
  %image250 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6210
  %bg_color251 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image250, i32 0, i32 5, !dbg !6211
  store i32 %170, i32* %bg_color251, align 4, !dbg !6212
  %171 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6213
  %cursor_state252 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %171, i32 0, i32 9, !dbg !6214
  %image253 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state252, i32 0, i32 5, !dbg !6215
  %dx254 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image253, i32 0, i32 0, !dbg !6216
  %172 = load i32, i32* %dx254, align 8, !dbg !6216
  %image255 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6217
  %dx256 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image255, i32 0, i32 0, !dbg !6218
  store i32 %172, i32* %dx256, align 8, !dbg !6219
  %173 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6220
  %cursor_state257 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %173, i32 0, i32 9, !dbg !6221
  %image258 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state257, i32 0, i32 5, !dbg !6222
  %dy259 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image258, i32 0, i32 1, !dbg !6223
  %174 = load i32, i32* %dy259, align 4, !dbg !6223
  %image260 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6224
  %dy261 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image260, i32 0, i32 1, !dbg !6225
  store i32 %174, i32* %dy261, align 4, !dbg !6226
  %175 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6227
  %cursor_state262 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %175, i32 0, i32 9, !dbg !6228
  %image263 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state262, i32 0, i32 5, !dbg !6229
  %height264 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image263, i32 0, i32 3, !dbg !6230
  %176 = load i32, i32* %height264, align 4, !dbg !6230
  %image265 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6231
  %height266 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image265, i32 0, i32 3, !dbg !6232
  store i32 %176, i32* %height266, align 4, !dbg !6233
  %177 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6234
  %cursor_state267 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %177, i32 0, i32 9, !dbg !6235
  %image268 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state267, i32 0, i32 5, !dbg !6236
  %width269 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image268, i32 0, i32 2, !dbg !6237
  %178 = load i32, i32* %width269, align 8, !dbg !6237
  %image270 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6238
  %width271 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image270, i32 0, i32 2, !dbg !6239
  store i32 %178, i32* %width271, align 8, !dbg !6240
  %179 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6241
  %cursor_state272 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %179, i32 0, i32 9, !dbg !6242
  %hot273 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state272, i32 0, i32 4, !dbg !6243
  %x274 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot273, i32 0, i32 0, !dbg !6244
  %180 = load i16, i16* %x274, align 8, !dbg !6244
  %hot275 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 4, !dbg !6245
  %x276 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot275, i32 0, i32 0, !dbg !6246
  store i16 %180, i16* %x276, align 8, !dbg !6247
  %181 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6248
  %cursor_state277 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %181, i32 0, i32 9, !dbg !6249
  %hot278 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state277, i32 0, i32 4, !dbg !6250
  %y279 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot278, i32 0, i32 1, !dbg !6251
  %182 = load i16, i16* %y279, align 2, !dbg !6251
  %hot280 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 4, !dbg !6252
  %y281 = getelementptr inbounds %struct.fbcurpos, %struct.fbcurpos* %hot280, i32 0, i32 1, !dbg !6253
  store i16 %182, i16* %y281, align 2, !dbg !6254
  %183 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6255
  %cursor_state282 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %183, i32 0, i32 9, !dbg !6256
  %mask283 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state282, i32 0, i32 3, !dbg !6257
  %184 = load i8*, i8** %mask283, align 8, !dbg !6257
  %mask284 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 3, !dbg !6258
  store i8* %184, i8** %mask284, align 8, !dbg !6259
  %185 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6260
  %cursor_state285 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %185, i32 0, i32 9, !dbg !6261
  %enable286 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor_state285, i32 0, i32 1, !dbg !6262
  %186 = load i16, i16* %enable286, align 2, !dbg !6262
  %enable287 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 1, !dbg !6263
  store i16 %186, i16* %enable287, align 2, !dbg !6264
  %image288 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 5, !dbg !6265
  %depth = getelementptr inbounds %struct.fb_image, %struct.fb_image* %image288, i32 0, i32 6, !dbg !6266
  store i8 1, i8* %depth, align 8, !dbg !6267
  %rop = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %cursor, i32 0, i32 2, !dbg !6268
  store i16 1, i16* %rop, align 4, !dbg !6269
  %187 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6270
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 20, !dbg !6272
  %188 = load %struct.fb_ops*, %struct.fb_ops** %fbops, align 8, !dbg !6272
  %fb_cursor = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %188, i32 0, i32 14, !dbg !6273
  %189 = load i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)** %fb_cursor, align 8, !dbg !6273
  %tobool289 = icmp ne i32 (%struct.fb_info*, %struct.fb_cursor*)* %189, null, !dbg !6270
  br i1 %tobool289, label %if.then290, label %if.end294, !dbg !6274

if.then290:                                       ; preds = %sw.epilog239
  %190 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6275
  %fbops291 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %190, i32 0, i32 20, !dbg !6276
  %191 = load %struct.fb_ops*, %struct.fb_ops** %fbops291, align 8, !dbg !6276
  %fb_cursor292 = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %191, i32 0, i32 14, !dbg !6277
  %192 = load i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)** %fb_cursor292, align 8, !dbg !6277
  %193 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6278
  %call293 = call i32 %192(%struct.fb_info* %193, %struct.fb_cursor* %cursor) #6, !dbg !6275
  store i32 %call293, i32* %err, align 4, !dbg !6279
  br label %if.end294, !dbg !6280

if.end294:                                        ; preds = %if.then290, %sw.epilog239
  %194 = load i32, i32* %err, align 4, !dbg !6281
  %tobool295 = icmp ne i32 %194, 0, !dbg !6281
  br i1 %tobool295, label %if.then296, label %if.end298, !dbg !6283

if.then296:                                       ; preds = %if.end294
  %195 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6284
  %call297 = call i32 @soft_cursor(%struct.fb_info* %195, %struct.fb_cursor* %cursor) #6, !dbg !6285
  br label %if.end298, !dbg !6285

if.end298:                                        ; preds = %if.then296, %if.end294
  %196 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6286
  %cursor_reset299 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %196, i32 0, i32 15, !dbg !6287
  store i32 0, i32* %cursor_reset299, align 4, !dbg !6288
  br label %return, !dbg !6289

return:                                           ; preds = %if.end298, %if.then177, %if.then28
  ret void, !dbg !6289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bit_update_start(%struct.fb_info* %info) #0 !dbg !6290 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %ops = alloca %struct.fbcon_ops*, align 8
  %err = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6291, metadata !DIExpression()), !dbg !6292
  call void @llvm.dbg.declare(metadata %struct.fbcon_ops** %ops, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6295
  %fbcon_par = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 29, !dbg !6296
  %1 = load i8*, i8** %fbcon_par, align 8, !dbg !6296
  %2 = bitcast i8* %1 to %struct.fbcon_ops*, !dbg !6295
  store %struct.fbcon_ops* %2, %struct.fbcon_ops** %ops, align 8, !dbg !6294
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6297, metadata !DIExpression()), !dbg !6298
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6299
  %4 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6300
  %var = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %4, i32 0, i32 7, !dbg !6301
  %call = call i32 @fb_pan_display(%struct.fb_info* %3, %struct.fb_var_screeninfo* %var) #6, !dbg !6302
  store i32 %call, i32* %err, align 4, !dbg !6303
  %5 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6304
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 6, !dbg !6305
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var1, i32 0, i32 4, !dbg !6306
  %6 = load i32, i32* %xoffset, align 8, !dbg !6306
  %7 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6307
  %var2 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %7, i32 0, i32 7, !dbg !6308
  %xoffset3 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var2, i32 0, i32 4, !dbg !6309
  store i32 %6, i32* %xoffset3, align 8, !dbg !6310
  %8 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6311
  %var4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 6, !dbg !6312
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var4, i32 0, i32 5, !dbg !6313
  %9 = load i32, i32* %yoffset, align 4, !dbg !6313
  %10 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6314
  %var5 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %10, i32 0, i32 7, !dbg !6315
  %yoffset6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var5, i32 0, i32 5, !dbg !6316
  store i32 %9, i32* %yoffset6, align 4, !dbg !6317
  %11 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6318
  %var7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 6, !dbg !6319
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var7, i32 0, i32 25, !dbg !6320
  %12 = load i32, i32* %vmode, align 4, !dbg !6320
  %13 = load %struct.fbcon_ops*, %struct.fbcon_ops** %ops, align 8, !dbg !6321
  %var8 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %13, i32 0, i32 7, !dbg !6322
  %vmode9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var8, i32 0, i32 25, !dbg !6323
  store i32 %12, i32* %vmode9, align 4, !dbg !6324
  %14 = load i32, i32* %err, align 4, !dbg !6325
  ret i32 %14, !dbg !6326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @attr_col_ec(i32 %shift, %struct.vc_data* %vc, %struct.fb_info* %info, i32 %is_fg) #0 !dbg !6327 {
entry:
  %retval = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %is_fg.addr = alloca i32, align 4
  %is_mono01 = alloca i32, align 4
  %col = alloca i32, align 4
  %fg = alloca i32, align 4
  %bg = alloca i32, align 4
  store i32 %shift, i32* %shift.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  store i32 %is_fg, i32* %is_fg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_fg.addr, metadata !6336, metadata !DIExpression()), !dbg !6337
  call void @llvm.dbg.declare(metadata i32* %is_mono01, metadata !6338, metadata !DIExpression()), !dbg !6339
  call void @llvm.dbg.declare(metadata i32* %col, metadata !6340, metadata !DIExpression()), !dbg !6341
  call void @llvm.dbg.declare(metadata i32* %fg, metadata !6342, metadata !DIExpression()), !dbg !6343
  call void @llvm.dbg.declare(metadata i32* %bg, metadata !6344, metadata !DIExpression()), !dbg !6345
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6346
  %tobool = icmp ne %struct.vc_data* %0, null, !dbg !6346
  br i1 %tobool, label %if.end, label %if.then, !dbg !6348

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6349
  br label %return, !dbg !6349

if.end:                                           ; preds = %entry
  %1 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6350
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i32 0, i32 36, !dbg !6352
  %bf.load = load i16, i16* %vc_can_do_color, align 8, !dbg !6352
  %bf.lshr = lshr i16 %bf.load, 11, !dbg !6352
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6352
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6352
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !6350
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !6353

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %is_fg.addr, align 4, !dbg !6354
  %tobool3 = icmp ne i32 %2, 0, !dbg !6354
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !6354

cond.true:                                        ; preds = %if.then2
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6355
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 28, !dbg !6355
  %4 = load i16, i16* %vc_video_erase_char, align 8, !dbg !6355
  %conv = zext i16 %4 to i32, !dbg !6355
  %5 = load i32, i32* %shift.addr, align 4, !dbg !6355
  %shr = ashr i32 %conv, %5, !dbg !6355
  %and = and i32 %shr, 15, !dbg !6355
  br label %cond.end, !dbg !6354

cond.false:                                       ; preds = %if.then2
  %6 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6356
  %vc_video_erase_char4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 28, !dbg !6356
  %7 = load i16, i16* %vc_video_erase_char4, align 8, !dbg !6356
  %conv5 = zext i16 %7 to i32, !dbg !6356
  %8 = load i32, i32* %shift.addr, align 4, !dbg !6356
  %shr6 = ashr i32 %conv5, %8, !dbg !6356
  %and7 = and i32 %shr6, 15, !dbg !6356
  br label %cond.end, !dbg !6354

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %and7, %cond.false ], !dbg !6354
  store i32 %cond, i32* %retval, align 4, !dbg !6357
  br label %return, !dbg !6357

if.end8:                                          ; preds = %if.end
  %9 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6358
  %tobool9 = icmp ne %struct.fb_info* %9, null, !dbg !6358
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6360

if.then10:                                        ; preds = %if.end8
  store i32 0, i32* %retval, align 4, !dbg !6361
  br label %return, !dbg !6361

if.end11:                                         ; preds = %if.end8
  %10 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6362
  %call = call i32 @mono_col(%struct.fb_info* %10) #6, !dbg !6363
  store i32 %call, i32* %col, align 4, !dbg !6364
  %11 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6365
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 7, !dbg !6366
  %visual = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 5, !dbg !6367
  %12 = load i32, i32* %visual, align 4, !dbg !6367
  %cmp = icmp eq i32 %12, 0, !dbg !6368
  %conv12 = zext i1 %cmp to i32, !dbg !6368
  store i32 %conv12, i32* %is_mono01, align 4, !dbg !6369
  %13 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6370
  %vc_video_erase_char13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 28, !dbg !6370
  %14 = load i16, i16* %vc_video_erase_char13, align 8, !dbg !6370
  %conv14 = zext i16 %14 to i32, !dbg !6370
  %and15 = and i32 %conv14, 2048, !dbg !6370
  %tobool16 = icmp ne i32 %and15, 0, !dbg !6370
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !6372

if.then17:                                        ; preds = %if.end11
  %15 = load i32, i32* %is_mono01, align 4, !dbg !6373
  %tobool18 = icmp ne i32 %15, 0, !dbg !6373
  br i1 %tobool18, label %cond.true19, label %cond.false20, !dbg !6373

cond.true19:                                      ; preds = %if.then17
  %16 = load i32, i32* %col, align 4, !dbg !6375
  br label %cond.end21, !dbg !6373

cond.false20:                                     ; preds = %if.then17
  br label %cond.end21, !dbg !6373

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %16, %cond.true19 ], [ 0, %cond.false20 ], !dbg !6373
  store i32 %cond22, i32* %fg, align 4, !dbg !6376
  %17 = load i32, i32* %is_mono01, align 4, !dbg !6377
  %tobool23 = icmp ne i32 %17, 0, !dbg !6377
  br i1 %tobool23, label %cond.true24, label %cond.false25, !dbg !6377

cond.true24:                                      ; preds = %cond.end21
  br label %cond.end26, !dbg !6377

cond.false25:                                     ; preds = %cond.end21
  %18 = load i32, i32* %col, align 4, !dbg !6378
  br label %cond.end26, !dbg !6377

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond27 = phi i32 [ 0, %cond.true24 ], [ %18, %cond.false25 ], !dbg !6377
  store i32 %cond27, i32* %bg, align 4, !dbg !6379
  br label %if.end38, !dbg !6380

if.else:                                          ; preds = %if.end11
  %19 = load i32, i32* %is_mono01, align 4, !dbg !6381
  %tobool28 = icmp ne i32 %19, 0, !dbg !6381
  br i1 %tobool28, label %cond.true29, label %cond.false30, !dbg !6381

cond.true29:                                      ; preds = %if.else
  br label %cond.end31, !dbg !6381

cond.false30:                                     ; preds = %if.else
  %20 = load i32, i32* %col, align 4, !dbg !6383
  br label %cond.end31, !dbg !6381

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ 0, %cond.true29 ], [ %20, %cond.false30 ], !dbg !6381
  store i32 %cond32, i32* %fg, align 4, !dbg !6384
  %21 = load i32, i32* %is_mono01, align 4, !dbg !6385
  %tobool33 = icmp ne i32 %21, 0, !dbg !6385
  br i1 %tobool33, label %cond.true34, label %cond.false35, !dbg !6385

cond.true34:                                      ; preds = %cond.end31
  %22 = load i32, i32* %col, align 4, !dbg !6386
  br label %cond.end36, !dbg !6385

cond.false35:                                     ; preds = %cond.end31
  br label %cond.end36, !dbg !6385

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i32 [ %22, %cond.true34 ], [ 0, %cond.false35 ], !dbg !6385
  store i32 %cond37, i32* %bg, align 4, !dbg !6387
  br label %if.end38

if.end38:                                         ; preds = %cond.end36, %cond.end26
  %23 = load i32, i32* %is_fg.addr, align 4, !dbg !6388
  %tobool39 = icmp ne i32 %23, 0, !dbg !6388
  br i1 %tobool39, label %cond.true40, label %cond.false41, !dbg !6388

cond.true40:                                      ; preds = %if.end38
  %24 = load i32, i32* %fg, align 4, !dbg !6389
  br label %cond.end42, !dbg !6388

cond.false41:                                     ; preds = %if.end38
  %25 = load i32, i32* %bg, align 4, !dbg !6390
  br label %cond.end42, !dbg !6388

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i32 [ %24, %cond.true40 ], [ %25, %cond.false41 ], !dbg !6388
  store i32 %cond43, i32* %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

return:                                           ; preds = %cond.end42, %if.then10, %cond.end, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !6392
  ret i32 %26, !dbg !6392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mono_col(%struct.fb_info* %info) #0 !dbg !6393 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %max_len = alloca i32, align 4
  %__UNIQUE_ID___x241 = alloca i32, align 4
  %__UNIQUE_ID___y242 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x243 = alloca i32, align 4
  %__UNIQUE_ID___y244 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  call void @llvm.dbg.declare(metadata i32* %max_len, metadata !6400, metadata !DIExpression()), !dbg !6401
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x241, metadata !6402, metadata !DIExpression()), !dbg !6405
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6405
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 6, !dbg !6405
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 9, !dbg !6405
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green, i32 0, i32 1, !dbg !6405
  %1 = load i32, i32* %length, align 4, !dbg !6405
  store i32 %1, i32* %__UNIQUE_ID___x241, align 4, !dbg !6405
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y242, metadata !6406, metadata !DIExpression()), !dbg !6405
  %2 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6405
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 6, !dbg !6405
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var1, i32 0, i32 8, !dbg !6405
  %length2 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red, i32 0, i32 1, !dbg !6405
  %3 = load i32, i32* %length2, align 4, !dbg !6405
  store i32 %3, i32* %__UNIQUE_ID___y242, align 4, !dbg !6405
  %4 = load i32, i32* %__UNIQUE_ID___x241, align 4, !dbg !6405
  %5 = load i32, i32* %__UNIQUE_ID___y242, align 4, !dbg !6405
  %cmp = icmp ugt i32 %4, %5, !dbg !6405
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6405

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___x241, align 4, !dbg !6405
  br label %cond.end, !dbg !6405

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %__UNIQUE_ID___y242, align 4, !dbg !6405
  br label %cond.end, !dbg !6405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !6405
  store i32 %cond, i32* %tmp, align 4, !dbg !6405
  %8 = load i32, i32* %tmp, align 4, !dbg !6405
  store i32 %8, i32* %max_len, align 4, !dbg !6407
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x243, metadata !6408, metadata !DIExpression()), !dbg !6410
  %9 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6410
  %var3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 6, !dbg !6410
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var3, i32 0, i32 10, !dbg !6410
  %length4 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue, i32 0, i32 1, !dbg !6410
  %10 = load i32, i32* %length4, align 4, !dbg !6410
  store i32 %10, i32* %__UNIQUE_ID___x243, align 4, !dbg !6410
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y244, metadata !6411, metadata !DIExpression()), !dbg !6410
  %11 = load i32, i32* %max_len, align 4, !dbg !6410
  store i32 %11, i32* %__UNIQUE_ID___y244, align 4, !dbg !6410
  %12 = load i32, i32* %__UNIQUE_ID___x243, align 4, !dbg !6410
  %13 = load i32, i32* %__UNIQUE_ID___y244, align 4, !dbg !6410
  %cmp6 = icmp ugt i32 %12, %13, !dbg !6410
  br i1 %cmp6, label %cond.true7, label %cond.false8, !dbg !6410

cond.true7:                                       ; preds = %cond.end
  %14 = load i32, i32* %__UNIQUE_ID___x243, align 4, !dbg !6410
  br label %cond.end9, !dbg !6410

cond.false8:                                      ; preds = %cond.end
  %15 = load i32, i32* %__UNIQUE_ID___y244, align 4, !dbg !6410
  br label %cond.end9, !dbg !6410

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ %14, %cond.true7 ], [ %15, %cond.false8 ], !dbg !6410
  store i32 %cond10, i32* %tmp5, align 4, !dbg !6410
  %16 = load i32, i32* %tmp5, align 4, !dbg !6410
  store i32 %16, i32* %max_len, align 4, !dbg !6412
  %17 = load i32, i32* %max_len, align 4, !dbg !6413
  %shl = shl i32 4095, %17, !dbg !6414
  %neg = xor i32 %shl, -1, !dbg !6415
  %and = and i32 %neg, 255, !dbg !6416
  ret i32 %and, !dbg !6417
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_attribute(%struct.fb_info* %info, i16 zeroext %c) #0 !dbg !6418 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  %c.addr = alloca i16, align 2
  %attribute = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  store i16 %c, i16* %c.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  call void @llvm.dbg.declare(metadata i32* %attribute, metadata !6425, metadata !DIExpression()), !dbg !6426
  store i32 0, i32* %attribute, align 4, !dbg !6426
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6427
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 6, !dbg !6429
  %1 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6430
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 7, !dbg !6431
  %call = call i32 @fb_get_color_depth(%struct.fb_var_screeninfo* %var, %struct.fb_fix_screeninfo* %fix) #6, !dbg !6432
  %cmp = icmp eq i32 %call, 1, !dbg !6433
  br i1 %cmp, label %if.then, label %if.end14, !dbg !6434

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %c.addr, align 2, !dbg !6435
  %conv = zext i16 %2 to i32, !dbg !6435
  %and = and i32 %conv, 1024, !dbg !6435
  %tobool = icmp ne i32 %and, 0, !dbg !6435
  br i1 %tobool, label %if.then1, label %if.end, !dbg !6438

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %attribute, align 4, !dbg !6439
  %or = or i32 %3, 1, !dbg !6439
  store i32 %or, i32* %attribute, align 4, !dbg !6439
  br label %if.end, !dbg !6440

if.end:                                           ; preds = %if.then1, %if.then
  %4 = load i16, i16* %c.addr, align 2, !dbg !6441
  %conv2 = zext i16 %4 to i32, !dbg !6441
  %and3 = and i32 %conv2, 2048, !dbg !6441
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6441
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6443

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %attribute, align 4, !dbg !6444
  %or6 = or i32 %5, 2, !dbg !6444
  store i32 %or6, i32* %attribute, align 4, !dbg !6444
  br label %if.end7, !dbg !6445

if.end7:                                          ; preds = %if.then5, %if.end
  %6 = load i16, i16* %c.addr, align 2, !dbg !6446
  %conv8 = zext i16 %6 to i32, !dbg !6446
  %and9 = and i32 %conv8, 512, !dbg !6446
  %tobool10 = icmp ne i32 %and9, 0, !dbg !6446
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !6448

if.then11:                                        ; preds = %if.end7
  %7 = load i32, i32* %attribute, align 4, !dbg !6449
  %or12 = or i32 %7, 4, !dbg !6449
  store i32 %or12, i32* %attribute, align 4, !dbg !6449
  br label %if.end13, !dbg !6450

if.end13:                                         ; preds = %if.then11, %if.end7
  br label %if.end14, !dbg !6451

if.end14:                                         ; preds = %if.end13, %entry
  %8 = load i32, i32* %attribute, align 4, !dbg !6452
  ret i32 %8, !dbg !6453
}

; Function Attrs: noredzone
declare dso_local i8* @fb_get_buffer_offset(%struct.fb_info*, %struct.fb_pixmap*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bit_putcs_aligned(%struct.vc_data* %vc, %struct.fb_info* %info, i16* %s, i32 %attr, i32 %cnt, i32 %d_pitch, i32 %s_pitch, i32 %cellsize, %struct.fb_image* %image, i8* %buf, i8* %dst) #0 !dbg !6454 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %s.addr = alloca i16*, align 8
  %attr.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %d_pitch.addr = alloca i32, align 4
  %s_pitch.addr = alloca i32, align 4
  %cellsize.addr = alloca i32, align 4
  %image.addr = alloca %struct.fb_image*, align 8
  %buf.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %charmask = alloca i16, align 2
  %idx = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !6460, metadata !DIExpression()), !dbg !6461
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6462, metadata !DIExpression()), !dbg !6463
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !6464, metadata !DIExpression()), !dbg !6465
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  store i32 %cnt, i32* %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cnt.addr, metadata !6468, metadata !DIExpression()), !dbg !6469
  store i32 %d_pitch, i32* %d_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %d_pitch.addr, metadata !6470, metadata !DIExpression()), !dbg !6471
  store i32 %s_pitch, i32* %s_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s_pitch.addr, metadata !6472, metadata !DIExpression()), !dbg !6473
  store i32 %cellsize, i32* %cellsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cellsize.addr, metadata !6474, metadata !DIExpression()), !dbg !6475
  store %struct.fb_image* %image, %struct.fb_image** %image.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_image** %image.addr, metadata !6476, metadata !DIExpression()), !dbg !6477
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6478, metadata !DIExpression()), !dbg !6479
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !6480, metadata !DIExpression()), !dbg !6481
  call void @llvm.dbg.declare(metadata i16* %charmask, metadata !6482, metadata !DIExpression()), !dbg !6483
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6484
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 26, !dbg !6485
  %1 = load i16, i16* %vc_hi_font_mask, align 8, !dbg !6485
  %conv = zext i16 %1 to i32, !dbg !6484
  %tobool = icmp ne i32 %conv, 0, !dbg !6484
  %2 = zext i1 %tobool to i64, !dbg !6484
  %cond = select i1 %tobool, i32 511, i32 255, !dbg !6484
  %conv1 = trunc i32 %cond to i16, !dbg !6484
  store i16 %conv1, i16* %charmask, align 2, !dbg !6483
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !6486, metadata !DIExpression()), !dbg !6487
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6488
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 27, !dbg !6489
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 0, !dbg !6490
  %4 = load i32, i32* %width, align 8, !dbg !6490
  %shr = lshr i32 %4, 3, !dbg !6491
  store i32 %shr, i32* %idx, align 4, !dbg !6487
  call void @llvm.dbg.declare(metadata i8** %src, metadata !6492, metadata !DIExpression()), !dbg !6493
  br label %while.cond, !dbg !6494

while.cond:                                       ; preds = %if.end13, %entry
  %5 = load i32, i32* %cnt.addr, align 4, !dbg !6495
  %dec = add i32 %5, -1, !dbg !6495
  store i32 %dec, i32* %cnt.addr, align 4, !dbg !6495
  %tobool2 = icmp ne i32 %5, 0, !dbg !6494
  br i1 %tobool2, label %while.body, label %while.end, !dbg !6494

while.body:                                       ; preds = %while.cond
  %6 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6496
  %vc_font3 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 27, !dbg !6498
  %data = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font3, i32 0, i32 3, !dbg !6499
  %7 = load i8*, i8** %data, align 8, !dbg !6499
  %8 = load i16*, i16** %s.addr, align 8, !dbg !6500
  %incdec.ptr = getelementptr i16, i16* %8, i32 1, !dbg !6500
  store i16* %incdec.ptr, i16** %s.addr, align 8, !dbg !6500
  %9 = load i16, i16* %8, align 2, !dbg !6500
  %conv4 = zext i16 %9 to i32, !dbg !6500
  %10 = load i16, i16* %charmask, align 2, !dbg !6501
  %conv5 = zext i16 %10 to i32, !dbg !6501
  %and = and i32 %conv4, %conv5, !dbg !6502
  %11 = load i32, i32* %cellsize.addr, align 4, !dbg !6503
  %mul = mul i32 %and, %11, !dbg !6504
  %idx.ext = zext i32 %mul to i64, !dbg !6505
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !6505
  store i8* %add.ptr, i8** %src, align 8, !dbg !6506
  %12 = load i32, i32* %attr.addr, align 4, !dbg !6507
  %tobool6 = icmp ne i32 %12, 0, !dbg !6507
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6509

if.then:                                          ; preds = %while.body
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !6510
  %14 = load i8*, i8** %src, align 8, !dbg !6512
  %15 = load i32, i32* %attr.addr, align 4, !dbg !6513
  %16 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6514
  call void @update_attr(i8* %13, i8* %14, i32 %15, %struct.vc_data* %16) #6, !dbg !6515
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !6516
  store i8* %17, i8** %src, align 8, !dbg !6517
  br label %if.end, !dbg !6518

if.end:                                           ; preds = %if.then, %while.body
  %18 = load i32, i32* %idx, align 4, !dbg !6519
  %cmp = icmp eq i32 %18, 1, !dbg !6519
  %lnot = xor i1 %cmp, true, !dbg !6519
  %lnot8 = xor i1 %lnot, true, !dbg !6519
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6519
  %conv9 = sext i32 %lnot.ext to i64, !dbg !6519
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !6519
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !6521

if.then11:                                        ; preds = %if.end
  %19 = load i8*, i8** %dst.addr, align 8, !dbg !6522
  %20 = load i32, i32* %d_pitch.addr, align 4, !dbg !6523
  %21 = load i8*, i8** %src, align 8, !dbg !6524
  %22 = load i32, i32* %idx, align 4, !dbg !6525
  %23 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !6526
  %height = getelementptr inbounds %struct.fb_image, %struct.fb_image* %23, i32 0, i32 3, !dbg !6527
  %24 = load i32, i32* %height, align 4, !dbg !6527
  call void @__fb_pad_aligned_buffer(i8* %19, i32 %20, i8* %21, i32 %22, i32 %24) #6, !dbg !6528
  br label %if.end13, !dbg !6528

if.else:                                          ; preds = %if.end
  %25 = load i8*, i8** %dst.addr, align 8, !dbg !6529
  %26 = load i32, i32* %d_pitch.addr, align 4, !dbg !6530
  %27 = load i8*, i8** %src, align 8, !dbg !6531
  %28 = load i32, i32* %idx, align 4, !dbg !6532
  %29 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !6533
  %height12 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %29, i32 0, i32 3, !dbg !6534
  %30 = load i32, i32* %height12, align 4, !dbg !6534
  call void @fb_pad_aligned_buffer(i8* %25, i32 %26, i8* %27, i32 %28, i32 %30) #6, !dbg !6535
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %31 = load i32, i32* %s_pitch.addr, align 4, !dbg !6536
  %32 = load i8*, i8** %dst.addr, align 8, !dbg !6537
  %idx.ext14 = zext i32 %31 to i64, !dbg !6537
  %add.ptr15 = getelementptr i8, i8* %32, i64 %idx.ext14, !dbg !6537
  store i8* %add.ptr15, i8** %dst.addr, align 8, !dbg !6537
  br label %while.cond, !dbg !6494, !llvm.loop !6538

while.end:                                        ; preds = %while.cond
  %33 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6540
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 20, !dbg !6541
  %34 = load %struct.fb_ops*, %struct.fb_ops** %fbops, align 8, !dbg !6541
  %fb_imageblit = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %34, i32 0, i32 13, !dbg !6542
  %35 = load void (%struct.fb_info*, %struct.fb_image*)*, void (%struct.fb_info*, %struct.fb_image*)** %fb_imageblit, align 8, !dbg !6542
  %36 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6543
  %37 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !6544
  call void %35(%struct.fb_info* %36, %struct.fb_image* %37) #6, !dbg !6540
  ret void, !dbg !6545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bit_putcs_unaligned(%struct.vc_data* %vc, %struct.fb_info* %info, i16* %s, i32 %attr, i32 %cnt, i32 %d_pitch, i32 %s_pitch, i32 %cellsize, %struct.fb_image* %image, i8* %buf, i8* %dst) #0 !dbg !6546 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %s.addr = alloca i16*, align 8
  %attr.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %d_pitch.addr = alloca i32, align 4
  %s_pitch.addr = alloca i32, align 4
  %cellsize.addr = alloca i32, align 4
  %image.addr = alloca %struct.fb_image*, align 8
  %buf.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %charmask = alloca i16, align 2
  %shift_low = alloca i32, align 4
  %mod = alloca i32, align 4
  %shift_high = alloca i32, align 4
  %idx = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !6549, metadata !DIExpression()), !dbg !6550
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !6551, metadata !DIExpression()), !dbg !6552
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !6553, metadata !DIExpression()), !dbg !6554
  store i32 %cnt, i32* %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cnt.addr, metadata !6555, metadata !DIExpression()), !dbg !6556
  store i32 %d_pitch, i32* %d_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %d_pitch.addr, metadata !6557, metadata !DIExpression()), !dbg !6558
  store i32 %s_pitch, i32* %s_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s_pitch.addr, metadata !6559, metadata !DIExpression()), !dbg !6560
  store i32 %cellsize, i32* %cellsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cellsize.addr, metadata !6561, metadata !DIExpression()), !dbg !6562
  store %struct.fb_image* %image, %struct.fb_image** %image.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_image** %image.addr, metadata !6563, metadata !DIExpression()), !dbg !6564
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6565, metadata !DIExpression()), !dbg !6566
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !6567, metadata !DIExpression()), !dbg !6568
  call void @llvm.dbg.declare(metadata i16* %charmask, metadata !6569, metadata !DIExpression()), !dbg !6570
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6571
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 26, !dbg !6572
  %1 = load i16, i16* %vc_hi_font_mask, align 8, !dbg !6572
  %conv = zext i16 %1 to i32, !dbg !6571
  %tobool = icmp ne i32 %conv, 0, !dbg !6571
  %2 = zext i1 %tobool to i64, !dbg !6571
  %cond = select i1 %tobool, i32 511, i32 255, !dbg !6571
  %conv1 = trunc i32 %cond to i16, !dbg !6571
  store i16 %conv1, i16* %charmask, align 2, !dbg !6570
  call void @llvm.dbg.declare(metadata i32* %shift_low, metadata !6573, metadata !DIExpression()), !dbg !6574
  store i32 0, i32* %shift_low, align 4, !dbg !6574
  call void @llvm.dbg.declare(metadata i32* %mod, metadata !6575, metadata !DIExpression()), !dbg !6576
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6577
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 27, !dbg !6578
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 0, !dbg !6579
  %4 = load i32, i32* %width, align 8, !dbg !6579
  %rem = urem i32 %4, 8, !dbg !6580
  store i32 %rem, i32* %mod, align 4, !dbg !6576
  call void @llvm.dbg.declare(metadata i32* %shift_high, metadata !6581, metadata !DIExpression()), !dbg !6582
  store i32 8, i32* %shift_high, align 4, !dbg !6582
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !6583, metadata !DIExpression()), !dbg !6584
  %5 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6585
  %vc_font2 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 27, !dbg !6586
  %width3 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font2, i32 0, i32 0, !dbg !6587
  %6 = load i32, i32* %width3, align 8, !dbg !6587
  %shr = lshr i32 %6, 3, !dbg !6588
  store i32 %shr, i32* %idx, align 4, !dbg !6584
  call void @llvm.dbg.declare(metadata i8** %src, metadata !6589, metadata !DIExpression()), !dbg !6590
  br label %while.cond, !dbg !6591

while.cond:                                       ; preds = %cond.end, %entry
  %7 = load i32, i32* %cnt.addr, align 4, !dbg !6592
  %dec = add i32 %7, -1, !dbg !6592
  store i32 %dec, i32* %cnt.addr, align 4, !dbg !6592
  %tobool4 = icmp ne i32 %7, 0, !dbg !6591
  br i1 %tobool4, label %while.body, label %while.end, !dbg !6591

while.body:                                       ; preds = %while.cond
  %8 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6593
  %vc_font5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 27, !dbg !6595
  %data = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font5, i32 0, i32 3, !dbg !6596
  %9 = load i8*, i8** %data, align 8, !dbg !6596
  %10 = load i16*, i16** %s.addr, align 8, !dbg !6597
  %incdec.ptr = getelementptr i16, i16* %10, i32 1, !dbg !6597
  store i16* %incdec.ptr, i16** %s.addr, align 8, !dbg !6597
  %11 = load i16, i16* %10, align 2, !dbg !6597
  %conv6 = zext i16 %11 to i32, !dbg !6597
  %12 = load i16, i16* %charmask, align 2, !dbg !6598
  %conv7 = zext i16 %12 to i32, !dbg !6598
  %and = and i32 %conv6, %conv7, !dbg !6599
  %13 = load i32, i32* %cellsize.addr, align 4, !dbg !6600
  %mul = mul i32 %and, %13, !dbg !6601
  %idx.ext = zext i32 %mul to i64, !dbg !6602
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !6602
  store i8* %add.ptr, i8** %src, align 8, !dbg !6603
  %14 = load i32, i32* %attr.addr, align 4, !dbg !6604
  %tobool8 = icmp ne i32 %14, 0, !dbg !6604
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6606

if.then:                                          ; preds = %while.body
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !6607
  %16 = load i8*, i8** %src, align 8, !dbg !6609
  %17 = load i32, i32* %attr.addr, align 4, !dbg !6610
  %18 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6611
  call void @update_attr(i8* %15, i8* %16, i32 %17, %struct.vc_data* %18) #6, !dbg !6612
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !6613
  store i8* %19, i8** %src, align 8, !dbg !6614
  br label %if.end, !dbg !6615

if.end:                                           ; preds = %if.then, %while.body
  %20 = load i8*, i8** %dst.addr, align 8, !dbg !6616
  %21 = load i32, i32* %d_pitch.addr, align 4, !dbg !6617
  %22 = load i8*, i8** %src, align 8, !dbg !6618
  %23 = load i32, i32* %idx, align 4, !dbg !6619
  %24 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !6620
  %height = getelementptr inbounds %struct.fb_image, %struct.fb_image* %24, i32 0, i32 3, !dbg !6621
  %25 = load i32, i32* %height, align 4, !dbg !6621
  %26 = load i32, i32* %shift_high, align 4, !dbg !6622
  %27 = load i32, i32* %shift_low, align 4, !dbg !6623
  %28 = load i32, i32* %mod, align 4, !dbg !6624
  call void @fb_pad_unaligned_buffer(i8* %20, i32 %21, i8* %22, i32 %23, i32 %25, i32 %26, i32 %27, i32 %28) #6, !dbg !6625
  %29 = load i32, i32* %mod, align 4, !dbg !6626
  %30 = load i32, i32* %shift_low, align 4, !dbg !6627
  %add = add i32 %30, %29, !dbg !6627
  store i32 %add, i32* %shift_low, align 4, !dbg !6627
  %31 = load i32, i32* %shift_low, align 4, !dbg !6628
  %cmp = icmp uge i32 %31, 8, !dbg !6629
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6630

cond.true:                                        ; preds = %if.end
  %32 = load i32, i32* %s_pitch.addr, align 4, !dbg !6631
  br label %cond.end, !dbg !6630

cond.false:                                       ; preds = %if.end
  %33 = load i32, i32* %s_pitch.addr, align 4, !dbg !6632
  %sub = sub i32 %33, 1, !dbg !6633
  br label %cond.end, !dbg !6630

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ %32, %cond.true ], [ %sub, %cond.false ], !dbg !6630
  %34 = load i8*, i8** %dst.addr, align 8, !dbg !6634
  %idx.ext11 = zext i32 %cond10 to i64, !dbg !6634
  %add.ptr12 = getelementptr i8, i8* %34, i64 %idx.ext11, !dbg !6634
  store i8* %add.ptr12, i8** %dst.addr, align 8, !dbg !6634
  %35 = load i32, i32* %shift_low, align 4, !dbg !6635
  %and13 = and i32 %35, 7, !dbg !6635
  store i32 %and13, i32* %shift_low, align 4, !dbg !6635
  %36 = load i32, i32* %shift_low, align 4, !dbg !6636
  %sub14 = sub i32 8, %36, !dbg !6637
  store i32 %sub14, i32* %shift_high, align 4, !dbg !6638
  br label %while.cond, !dbg !6591, !llvm.loop !6639

while.end:                                        ; preds = %while.cond
  %37 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6641
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 20, !dbg !6642
  %38 = load %struct.fb_ops*, %struct.fb_ops** %fbops, align 8, !dbg !6642
  %fb_imageblit = getelementptr inbounds %struct.fb_ops, %struct.fb_ops* %38, i32 0, i32 13, !dbg !6643
  %39 = load void (%struct.fb_info*, %struct.fb_image*)*, void (%struct.fb_info*, %struct.fb_image*)** %fb_imageblit, align 8, !dbg !6643
  %40 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !6644
  %41 = load %struct.fb_image*, %struct.fb_image** %image.addr, align 8, !dbg !6645
  call void %39(%struct.fb_info* %40, %struct.fb_image* %41) #6, !dbg !6641
  ret void, !dbg !6646
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @fb_get_color_depth(%struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !6647 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6651, metadata !DIExpression()), !dbg !6656
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6658, metadata !DIExpression()), !dbg !6659
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6660, metadata !DIExpression()), !dbg !6661
  %0 = load i64, i64* %size.addr, align 8, !dbg !6662
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6664
  br i1 %1, label %if.then, label %if.end447, !dbg !6665

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6666
  %tobool = icmp ne i64 %2, 0, !dbg !6666
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6669

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6670
  br label %return, !dbg !6670

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6671
  %cmp = icmp ult i64 %3, 4096, !dbg !6673
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6674

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6675
  br label %return, !dbg !6675

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub = sub i64 %4, 1, !dbg !6676
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6676
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6676

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub4 = sub i64 %6, 1, !dbg !6676
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6676
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6676

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub6 = sub i64 %8, 1, !dbg !6676
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6676
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6676

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6676

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub9 = sub i64 %9, 1, !dbg !6676
  %and = and i64 %sub9, -9223372036854775808, !dbg !6676
  %tobool10 = icmp ne i64 %and, 0, !dbg !6676
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6676

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6676

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub13 = sub i64 %10, 1, !dbg !6676
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6676
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6676
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6676

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6676

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub18 = sub i64 %11, 1, !dbg !6676
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6676
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6676
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6676

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6676

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub23 = sub i64 %12, 1, !dbg !6676
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6676
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6676
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6676

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6676

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub28 = sub i64 %13, 1, !dbg !6676
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6676
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6676
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6676

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6676

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub33 = sub i64 %14, 1, !dbg !6676
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6676
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6676
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6676

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6676

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub38 = sub i64 %15, 1, !dbg !6676
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6676
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6676
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6676

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6676

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub43 = sub i64 %16, 1, !dbg !6676
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6676
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6676
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6676

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6676

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub48 = sub i64 %17, 1, !dbg !6676
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6676
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6676
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6676

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6676

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub53 = sub i64 %18, 1, !dbg !6676
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6676
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6676
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6676

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6676

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub58 = sub i64 %19, 1, !dbg !6676
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6676
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6676
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6676

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6676

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub63 = sub i64 %20, 1, !dbg !6676
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6676
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6676
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6676

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6676

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub68 = sub i64 %21, 1, !dbg !6676
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6676
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6676
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6676

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6676

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub73 = sub i64 %22, 1, !dbg !6676
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6676
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6676
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6676

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6676

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub78 = sub i64 %23, 1, !dbg !6676
  %and79 = and i64 %sub78, 562949953421312, !dbg !6676
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6676
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6676

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6676

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub83 = sub i64 %24, 1, !dbg !6676
  %and84 = and i64 %sub83, 281474976710656, !dbg !6676
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6676
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6676

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6676

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub88 = sub i64 %25, 1, !dbg !6676
  %and89 = and i64 %sub88, 140737488355328, !dbg !6676
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6676
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6676

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6676

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub93 = sub i64 %26, 1, !dbg !6676
  %and94 = and i64 %sub93, 70368744177664, !dbg !6676
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6676
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6676

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6676

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub98 = sub i64 %27, 1, !dbg !6676
  %and99 = and i64 %sub98, 35184372088832, !dbg !6676
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6676
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6676

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6676

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub103 = sub i64 %28, 1, !dbg !6676
  %and104 = and i64 %sub103, 17592186044416, !dbg !6676
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6676
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6676

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6676

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub108 = sub i64 %29, 1, !dbg !6676
  %and109 = and i64 %sub108, 8796093022208, !dbg !6676
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6676
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6676

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6676

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub113 = sub i64 %30, 1, !dbg !6676
  %and114 = and i64 %sub113, 4398046511104, !dbg !6676
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6676
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6676

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6676

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub118 = sub i64 %31, 1, !dbg !6676
  %and119 = and i64 %sub118, 2199023255552, !dbg !6676
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6676
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6676

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6676

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub123 = sub i64 %32, 1, !dbg !6676
  %and124 = and i64 %sub123, 1099511627776, !dbg !6676
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6676
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6676

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6676

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub128 = sub i64 %33, 1, !dbg !6676
  %and129 = and i64 %sub128, 549755813888, !dbg !6676
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6676
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6676

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6676

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub133 = sub i64 %34, 1, !dbg !6676
  %and134 = and i64 %sub133, 274877906944, !dbg !6676
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6676
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6676

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6676

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub138 = sub i64 %35, 1, !dbg !6676
  %and139 = and i64 %sub138, 137438953472, !dbg !6676
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6676
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6676

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6676

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub143 = sub i64 %36, 1, !dbg !6676
  %and144 = and i64 %sub143, 68719476736, !dbg !6676
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6676
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6676

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6676

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub148 = sub i64 %37, 1, !dbg !6676
  %and149 = and i64 %sub148, 34359738368, !dbg !6676
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6676
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6676

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6676

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub153 = sub i64 %38, 1, !dbg !6676
  %and154 = and i64 %sub153, 17179869184, !dbg !6676
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6676
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6676

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6676

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub158 = sub i64 %39, 1, !dbg !6676
  %and159 = and i64 %sub158, 8589934592, !dbg !6676
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6676
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6676

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6676

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub163 = sub i64 %40, 1, !dbg !6676
  %and164 = and i64 %sub163, 4294967296, !dbg !6676
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6676
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6676

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6676

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub168 = sub i64 %41, 1, !dbg !6676
  %and169 = and i64 %sub168, 2147483648, !dbg !6676
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6676
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6676

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6676

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub173 = sub i64 %42, 1, !dbg !6676
  %and174 = and i64 %sub173, 1073741824, !dbg !6676
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6676
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6676

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6676

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub178 = sub i64 %43, 1, !dbg !6676
  %and179 = and i64 %sub178, 536870912, !dbg !6676
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6676
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6676

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6676

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub183 = sub i64 %44, 1, !dbg !6676
  %and184 = and i64 %sub183, 268435456, !dbg !6676
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6676
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6676

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6676

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub188 = sub i64 %45, 1, !dbg !6676
  %and189 = and i64 %sub188, 134217728, !dbg !6676
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6676
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6676

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6676

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub193 = sub i64 %46, 1, !dbg !6676
  %and194 = and i64 %sub193, 67108864, !dbg !6676
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6676
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6676

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6676

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub198 = sub i64 %47, 1, !dbg !6676
  %and199 = and i64 %sub198, 33554432, !dbg !6676
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6676
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6676

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6676

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub203 = sub i64 %48, 1, !dbg !6676
  %and204 = and i64 %sub203, 16777216, !dbg !6676
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6676
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6676

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6676

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub208 = sub i64 %49, 1, !dbg !6676
  %and209 = and i64 %sub208, 8388608, !dbg !6676
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6676
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6676

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6676

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub213 = sub i64 %50, 1, !dbg !6676
  %and214 = and i64 %sub213, 4194304, !dbg !6676
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6676
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6676

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6676

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub218 = sub i64 %51, 1, !dbg !6676
  %and219 = and i64 %sub218, 2097152, !dbg !6676
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6676
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6676

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6676

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub223 = sub i64 %52, 1, !dbg !6676
  %and224 = and i64 %sub223, 1048576, !dbg !6676
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6676
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6676

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6676

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub228 = sub i64 %53, 1, !dbg !6676
  %and229 = and i64 %sub228, 524288, !dbg !6676
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6676
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6676

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6676

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub233 = sub i64 %54, 1, !dbg !6676
  %and234 = and i64 %sub233, 262144, !dbg !6676
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6676
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6676

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6676

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub238 = sub i64 %55, 1, !dbg !6676
  %and239 = and i64 %sub238, 131072, !dbg !6676
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6676
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6676

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6676

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub243 = sub i64 %56, 1, !dbg !6676
  %and244 = and i64 %sub243, 65536, !dbg !6676
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6676
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6676

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6676

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub248 = sub i64 %57, 1, !dbg !6676
  %and249 = and i64 %sub248, 32768, !dbg !6676
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6676
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6676

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6676

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub253 = sub i64 %58, 1, !dbg !6676
  %and254 = and i64 %sub253, 16384, !dbg !6676
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6676
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6676

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6676

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub258 = sub i64 %59, 1, !dbg !6676
  %and259 = and i64 %sub258, 8192, !dbg !6676
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6676
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6676

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6676

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub263 = sub i64 %60, 1, !dbg !6676
  %and264 = and i64 %sub263, 4096, !dbg !6676
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6676
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6676

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6676

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub268 = sub i64 %61, 1, !dbg !6676
  %and269 = and i64 %sub268, 2048, !dbg !6676
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6676
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6676

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6676

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub273 = sub i64 %62, 1, !dbg !6676
  %and274 = and i64 %sub273, 1024, !dbg !6676
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6676
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6676

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6676

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub278 = sub i64 %63, 1, !dbg !6676
  %and279 = and i64 %sub278, 512, !dbg !6676
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6676
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6676

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6676

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub283 = sub i64 %64, 1, !dbg !6676
  %and284 = and i64 %sub283, 256, !dbg !6676
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6676
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6676

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6676

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub288 = sub i64 %65, 1, !dbg !6676
  %and289 = and i64 %sub288, 128, !dbg !6676
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6676
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6676

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6676

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub293 = sub i64 %66, 1, !dbg !6676
  %and294 = and i64 %sub293, 64, !dbg !6676
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6676
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6676

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6676

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub298 = sub i64 %67, 1, !dbg !6676
  %and299 = and i64 %sub298, 32, !dbg !6676
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6676
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6676

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6676

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub303 = sub i64 %68, 1, !dbg !6676
  %and304 = and i64 %sub303, 16, !dbg !6676
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6676
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6676

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6676

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub308 = sub i64 %69, 1, !dbg !6676
  %and309 = and i64 %sub308, 8, !dbg !6676
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6676
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6676

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6676

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub313 = sub i64 %70, 1, !dbg !6676
  %and314 = and i64 %sub313, 4, !dbg !6676
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6676
  %71 = zext i1 %tobool315 to i64, !dbg !6676
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6676
  br label %cond.end, !dbg !6676

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6676
  br label %cond.end317, !dbg !6676

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6676
  br label %cond.end319, !dbg !6676

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6676
  br label %cond.end321, !dbg !6676

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6676
  br label %cond.end323, !dbg !6676

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6676
  br label %cond.end325, !dbg !6676

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6676
  br label %cond.end327, !dbg !6676

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6676
  br label %cond.end329, !dbg !6676

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6676
  br label %cond.end331, !dbg !6676

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6676
  br label %cond.end333, !dbg !6676

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6676
  br label %cond.end335, !dbg !6676

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6676
  br label %cond.end337, !dbg !6676

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6676
  br label %cond.end339, !dbg !6676

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6676
  br label %cond.end341, !dbg !6676

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6676
  br label %cond.end343, !dbg !6676

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6676
  br label %cond.end345, !dbg !6676

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6676
  br label %cond.end347, !dbg !6676

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6676
  br label %cond.end349, !dbg !6676

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6676
  br label %cond.end351, !dbg !6676

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6676
  br label %cond.end353, !dbg !6676

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6676
  br label %cond.end355, !dbg !6676

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6676
  br label %cond.end357, !dbg !6676

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6676
  br label %cond.end359, !dbg !6676

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6676
  br label %cond.end361, !dbg !6676

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6676
  br label %cond.end363, !dbg !6676

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6676
  br label %cond.end365, !dbg !6676

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6676
  br label %cond.end367, !dbg !6676

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6676
  br label %cond.end369, !dbg !6676

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6676
  br label %cond.end371, !dbg !6676

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6676
  br label %cond.end373, !dbg !6676

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6676
  br label %cond.end375, !dbg !6676

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6676
  br label %cond.end377, !dbg !6676

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6676
  br label %cond.end379, !dbg !6676

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6676
  br label %cond.end381, !dbg !6676

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6676
  br label %cond.end383, !dbg !6676

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6676
  br label %cond.end385, !dbg !6676

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6676
  br label %cond.end387, !dbg !6676

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6676
  br label %cond.end389, !dbg !6676

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6676
  br label %cond.end391, !dbg !6676

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6676
  br label %cond.end393, !dbg !6676

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6676
  br label %cond.end395, !dbg !6676

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6676
  br label %cond.end397, !dbg !6676

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6676
  br label %cond.end399, !dbg !6676

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6676
  br label %cond.end401, !dbg !6676

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6676
  br label %cond.end403, !dbg !6676

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6676
  br label %cond.end405, !dbg !6676

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6676
  br label %cond.end407, !dbg !6676

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6676
  br label %cond.end409, !dbg !6676

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6676
  br label %cond.end411, !dbg !6676

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6676
  br label %cond.end413, !dbg !6676

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6676
  br label %cond.end415, !dbg !6676

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6676
  br label %cond.end417, !dbg !6676

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6676
  br label %cond.end419, !dbg !6676

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6676
  br label %cond.end421, !dbg !6676

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6676
  br label %cond.end423, !dbg !6676

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6676
  br label %cond.end425, !dbg !6676

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6676
  br label %cond.end427, !dbg !6676

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6676
  br label %cond.end429, !dbg !6676

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6676
  br label %cond.end431, !dbg !6676

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6676
  br label %cond.end433, !dbg !6676

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6676
  br label %cond.end435, !dbg !6676

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6676
  br label %cond.end437, !dbg !6676

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6676
  br label %cond.end440, !dbg !6676

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6676

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6676
  br label %cond.end444, !dbg !6676

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6676
  %sub443 = sub i64 %72, 1, !dbg !6676
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !6676
  br label %cond.end444, !dbg !6676

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6676
  %sub446 = sub i32 %cond445, 12, !dbg !6677
  %add = add i32 %sub446, 1, !dbg !6678
  store i32 %add, i32* %retval, align 4, !dbg !6679
  br label %return, !dbg !6679

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6680
  %dec = add i64 %73, -1, !dbg !6680
  store i64 %dec, i64* %size.addr, align 8, !dbg !6680
  %74 = load i64, i64* %size.addr, align 8, !dbg !6681
  %shr = lshr i64 %74, 12, !dbg !6681
  store i64 %shr, i64* %size.addr, align 8, !dbg !6681
  %75 = load i64, i64* %size.addr, align 8, !dbg !6682
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6659
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6683
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6684
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !6683, !srcloc !6685
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6683
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6686
  %add.i = add i32 %79, 1, !dbg !6687
  store i32 %add.i, i32* %retval, align 4, !dbg !6688
  br label %return, !dbg !6688

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6689
  ret i32 %80, !dbg !6689
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !6690 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6651, metadata !DIExpression()), !dbg !6694
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6658, metadata !DIExpression()), !dbg !6696
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6697, metadata !DIExpression()), !dbg !6698
  %0 = load i64, i64* %n.addr, align 8, !dbg !6699
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6696
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6700
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6701
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !6700, !srcloc !6685
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6700
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6702
  %add.i = add i32 %4, 1, !dbg !6703
  %sub = sub i32 %add.i, 1, !dbg !6704
  ret i32 %sub, !dbg !6705
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6706 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6710, metadata !DIExpression()), !dbg !6711
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6712, metadata !DIExpression()), !dbg !6713
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6716, metadata !DIExpression()), !dbg !6717
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6718
  ret i8* %0, !dbg !6719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @update_attr(i8* %dst, i8* %src, i32 %attribute, %struct.vc_data* %vc) #0 !dbg !6720 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %attribute.addr = alloca i32, align 4
  %vc.addr = alloca %struct.vc_data*, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %width = alloca i32, align 4
  %cellsize = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !6723, metadata !DIExpression()), !dbg !6724
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !6725, metadata !DIExpression()), !dbg !6726
  store i32 %attribute, i32* %attribute.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attribute.addr, metadata !6727, metadata !DIExpression()), !dbg !6728
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !6729, metadata !DIExpression()), !dbg !6730
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6731, metadata !DIExpression()), !dbg !6732
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !6733, metadata !DIExpression()), !dbg !6734
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6735
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 27, !dbg !6736
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !6737
  %1 = load i32, i32* %height, align 4, !dbg !6737
  %cmp = icmp ult i32 %1, 10, !dbg !6738
  %2 = zext i1 %cmp to i64, !dbg !6739
  %cond = select i1 %cmp, i32 1, i32 2, !dbg !6739
  store i32 %cond, i32* %offset, align 4, !dbg !6734
  call void @llvm.dbg.declare(metadata i32* %width, metadata !6740, metadata !DIExpression()), !dbg !6741
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6742
  %vc_font1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 27, !dbg !6742
  %width2 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font1, i32 0, i32 0, !dbg !6742
  %4 = load i32, i32* %width2, align 8, !dbg !6742
  %add = add i32 %4, 8, !dbg !6742
  %sub = sub i32 %add, 1, !dbg !6742
  %div = udiv i32 %sub, 8, !dbg !6742
  store i32 %div, i32* %width, align 4, !dbg !6741
  call void @llvm.dbg.declare(metadata i32* %cellsize, metadata !6743, metadata !DIExpression()), !dbg !6744
  %5 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6745
  %vc_font3 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 27, !dbg !6746
  %height4 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font3, i32 0, i32 1, !dbg !6747
  %6 = load i32, i32* %height4, align 4, !dbg !6747
  %7 = load i32, i32* %width, align 4, !dbg !6748
  %mul = mul i32 %6, %7, !dbg !6749
  store i32 %mul, i32* %cellsize, align 4, !dbg !6744
  call void @llvm.dbg.declare(metadata i8* %c, metadata !6750, metadata !DIExpression()), !dbg !6751
  %8 = load i32, i32* %cellsize, align 4, !dbg !6752
  %9 = load i32, i32* %offset, align 4, !dbg !6753
  %10 = load i32, i32* %width, align 4, !dbg !6754
  %mul5 = mul i32 %9, %10, !dbg !6755
  %sub6 = sub i32 %8, %mul5, !dbg !6756
  store i32 %sub6, i32* %offset, align 4, !dbg !6757
  store i32 0, i32* %i, align 4, !dbg !6758
  br label %for.cond, !dbg !6760

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !dbg !6761
  %12 = load i32, i32* %cellsize, align 4, !dbg !6763
  %cmp7 = icmp ult i32 %11, %12, !dbg !6764
  br i1 %cmp7, label %for.body, label %for.end, !dbg !6765

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %src.addr, align 8, !dbg !6766
  %14 = load i32, i32* %i, align 4, !dbg !6768
  %idxprom = sext i32 %14 to i64, !dbg !6766
  %arrayidx = getelementptr i8, i8* %13, i64 %idxprom, !dbg !6766
  %15 = load i8, i8* %arrayidx, align 1, !dbg !6766
  store i8 %15, i8* %c, align 1, !dbg !6769
  %16 = load i32, i32* %attribute.addr, align 4, !dbg !6770
  %and = and i32 %16, 1, !dbg !6772
  %tobool = icmp ne i32 %and, 0, !dbg !6772
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6773

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !6774
  %18 = load i32, i32* %offset, align 4, !dbg !6775
  %cmp8 = icmp sge i32 %17, %18, !dbg !6776
  br i1 %cmp8, label %if.then, label %if.end, !dbg !6777

if.then:                                          ; preds = %land.lhs.true
  store i8 -1, i8* %c, align 1, !dbg !6778
  br label %if.end, !dbg !6779

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %19 = load i32, i32* %attribute.addr, align 4, !dbg !6780
  %and9 = and i32 %19, 4, !dbg !6782
  %tobool10 = icmp ne i32 %and9, 0, !dbg !6782
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !6783

if.then11:                                        ; preds = %if.end
  %20 = load i8, i8* %c, align 1, !dbg !6784
  %conv = zext i8 %20 to i32, !dbg !6784
  %shr = ashr i32 %conv, 1, !dbg !6785
  %21 = load i8, i8* %c, align 1, !dbg !6786
  %conv12 = zext i8 %21 to i32, !dbg !6786
  %or = or i32 %conv12, %shr, !dbg !6786
  %conv13 = trunc i32 %or to i8, !dbg !6786
  store i8 %conv13, i8* %c, align 1, !dbg !6786
  br label %if.end14, !dbg !6787

if.end14:                                         ; preds = %if.then11, %if.end
  %22 = load i32, i32* %attribute.addr, align 4, !dbg !6788
  %and15 = and i32 %22, 2, !dbg !6790
  %tobool16 = icmp ne i32 %and15, 0, !dbg !6790
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !6791

if.then17:                                        ; preds = %if.end14
  %23 = load i8, i8* %c, align 1, !dbg !6792
  %conv18 = zext i8 %23 to i32, !dbg !6792
  %neg = xor i32 %conv18, -1, !dbg !6793
  %conv19 = trunc i32 %neg to i8, !dbg !6793
  store i8 %conv19, i8* %c, align 1, !dbg !6794
  br label %if.end20, !dbg !6795

if.end20:                                         ; preds = %if.then17, %if.end14
  %24 = load i8, i8* %c, align 1, !dbg !6796
  %25 = load i8*, i8** %dst.addr, align 8, !dbg !6797
  %26 = load i32, i32* %i, align 4, !dbg !6798
  %idxprom21 = sext i32 %26 to i64, !dbg !6797
  %arrayidx22 = getelementptr i8, i8* %25, i64 %idxprom21, !dbg !6797
  store i8 %24, i8* %arrayidx22, align 1, !dbg !6799
  br label %for.inc, !dbg !6800

for.inc:                                          ; preds = %if.end20
  %27 = load i32, i32* %i, align 4, !dbg !6801
  %inc = add i32 %27, 1, !dbg !6801
  store i32 %inc, i32* %i, align 4, !dbg !6801
  br label %for.cond, !dbg !6802, !llvm.loop !6803

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__fb_pad_aligned_buffer(i8* %dst, i32 %d_pitch, i8* %src, i32 %s_pitch, i32 %height) #0 !dbg !6806 {
entry:
  %dst.addr = alloca i8*, align 8
  %d_pitch.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %s_pitch.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !6809, metadata !DIExpression()), !dbg !6810
  store i32 %d_pitch, i32* %d_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %d_pitch.addr, metadata !6811, metadata !DIExpression()), !dbg !6812
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !6813, metadata !DIExpression()), !dbg !6814
  store i32 %s_pitch, i32* %s_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s_pitch.addr, metadata !6815, metadata !DIExpression()), !dbg !6816
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !6817, metadata !DIExpression()), !dbg !6818
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6819, metadata !DIExpression()), !dbg !6820
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6821, metadata !DIExpression()), !dbg !6822
  %0 = load i32, i32* %s_pitch.addr, align 4, !dbg !6823
  %1 = load i32, i32* %d_pitch.addr, align 4, !dbg !6824
  %sub = sub i32 %1, %0, !dbg !6824
  store i32 %sub, i32* %d_pitch.addr, align 4, !dbg !6824
  %2 = load i32, i32* %height.addr, align 4, !dbg !6825
  store i32 %2, i32* %i, align 4, !dbg !6827
  br label %for.cond, !dbg !6828

for.cond:                                         ; preds = %for.end, %entry
  %3 = load i32, i32* %i, align 4, !dbg !6829
  %dec = add i32 %3, -1, !dbg !6829
  store i32 %dec, i32* %i, align 4, !dbg !6829
  %tobool = icmp ne i32 %3, 0, !dbg !6831
  br i1 %tobool, label %for.body, label %for.end4, !dbg !6831

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !6832
  br label %for.cond1, !dbg !6835

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !dbg !6836
  %5 = load i32, i32* %s_pitch.addr, align 4, !dbg !6838
  %cmp = icmp ult i32 %4, %5, !dbg !6839
  br i1 %cmp, label %for.body2, label %for.end, !dbg !6840

for.body2:                                        ; preds = %for.cond1
  %6 = load i8*, i8** %src.addr, align 8, !dbg !6841
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !6841
  store i8* %incdec.ptr, i8** %src.addr, align 8, !dbg !6841
  %7 = load i8, i8* %6, align 1, !dbg !6842
  %8 = load i8*, i8** %dst.addr, align 8, !dbg !6843
  %incdec.ptr3 = getelementptr i8, i8* %8, i32 1, !dbg !6843
  store i8* %incdec.ptr3, i8** %dst.addr, align 8, !dbg !6843
  store i8 %7, i8* %8, align 1, !dbg !6844
  br label %for.inc, !dbg !6845

for.inc:                                          ; preds = %for.body2
  %9 = load i32, i32* %j, align 4, !dbg !6846
  %inc = add i32 %9, 1, !dbg !6846
  store i32 %inc, i32* %j, align 4, !dbg !6846
  br label %for.cond1, !dbg !6847, !llvm.loop !6848

for.end:                                          ; preds = %for.cond1
  %10 = load i32, i32* %d_pitch.addr, align 4, !dbg !6850
  %11 = load i8*, i8** %dst.addr, align 8, !dbg !6851
  %idx.ext = zext i32 %10 to i64, !dbg !6851
  %add.ptr = getelementptr i8, i8* %11, i64 %idx.ext, !dbg !6851
  store i8* %add.ptr, i8** %dst.addr, align 8, !dbg !6851
  br label %for.cond, !dbg !6852, !llvm.loop !6853

for.end4:                                         ; preds = %for.cond
  ret void, !dbg !6855
}

; Function Attrs: noredzone
declare dso_local void @fb_pad_aligned_buffer(i8*, i32, i8*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @fb_pad_unaligned_buffer(i8*, i32, i8*, i32, i32, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @real_y(%struct.fbcon_display* %p, i32 %ypos) #0 !dbg !6856 {
entry:
  %p.addr = alloca %struct.fbcon_display*, align 8
  %ypos.addr = alloca i32, align 4
  %rows = alloca i32, align 4
  store %struct.fbcon_display* %p, %struct.fbcon_display** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fbcon_display** %p.addr, metadata !6859, metadata !DIExpression()), !dbg !6860
  store i32 %ypos, i32* %ypos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ypos.addr, metadata !6861, metadata !DIExpression()), !dbg !6862
  call void @llvm.dbg.declare(metadata i32* %rows, metadata !6863, metadata !DIExpression()), !dbg !6864
  %0 = load %struct.fbcon_display*, %struct.fbcon_display** %p.addr, align 8, !dbg !6865
  %vrows = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %0, i32 0, i32 5, !dbg !6866
  %1 = load i32, i32* %vrows, align 4, !dbg !6866
  store i32 %1, i32* %rows, align 4, !dbg !6864
  %2 = load %struct.fbcon_display*, %struct.fbcon_display** %p.addr, align 8, !dbg !6867
  %yscroll = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %2, i32 0, i32 4, !dbg !6868
  %3 = load i16, i16* %yscroll, align 8, !dbg !6868
  %conv = sext i16 %3 to i32, !dbg !6867
  %4 = load i32, i32* %ypos.addr, align 4, !dbg !6869
  %add = add i32 %4, %conv, !dbg !6869
  store i32 %add, i32* %ypos.addr, align 4, !dbg !6869
  %5 = load i32, i32* %ypos.addr, align 4, !dbg !6870
  %6 = load i32, i32* %rows, align 4, !dbg !6871
  %cmp = icmp slt i32 %5, %6, !dbg !6872
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6870

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %ypos.addr, align 4, !dbg !6873
  br label %cond.end, !dbg !6870

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %ypos.addr, align 4, !dbg !6874
  %9 = load i32, i32* %rows, align 4, !dbg !6875
  %sub = sub i32 %8, %9, !dbg !6876
  br label %cond.end, !dbg !6870

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %sub, %cond.false ], !dbg !6870
  ret i32 %cond, !dbg !6877
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !6878 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5208, metadata !DIExpression()), !dbg !6881
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5222, metadata !DIExpression()), !dbg !6885
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5224, metadata !DIExpression()), !dbg !6886
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5226, metadata !DIExpression()), !dbg !6887
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5228, metadata !DIExpression()), !dbg !6888
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5234, metadata !DIExpression()), !dbg !6890
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5240, metadata !DIExpression()), !dbg !6892
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5249, metadata !DIExpression()), !dbg !6895
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5251, metadata !DIExpression()), !dbg !6896
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5253, metadata !DIExpression()), !dbg !6897
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5255, metadata !DIExpression()), !dbg !6898
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5257, metadata !DIExpression()), !dbg !6899
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5259, metadata !DIExpression()), !dbg !6900
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5261, metadata !DIExpression()), !dbg !6901
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5263, metadata !DIExpression()), !dbg !6902
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6903, metadata !DIExpression()), !dbg !6904
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6905, metadata !DIExpression()), !dbg !6906
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6907, metadata !DIExpression()), !dbg !6908
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !6909, metadata !DIExpression()), !dbg !6910
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !6911, metadata !DIExpression()), !dbg !6914
  %0 = load i64, i64* %n.addr, align 8, !dbg !6914
  store i64 %0, i64* %__a, align 8, !dbg !6914
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !6915, metadata !DIExpression()), !dbg !6914
  %1 = load i64, i64* %size.addr, align 8, !dbg !6914
  store i64 %1, i64* %__b, align 8, !dbg !6914
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !6916, metadata !DIExpression()), !dbg !6914
  store i64* %bytes, i64** %__d, align 8, !dbg !6914
  %cmp = icmp eq i64* %__a, %__b, !dbg !6914
  %conv = zext i1 %cmp to i32, !dbg !6914
  %2 = load i64*, i64** %__d, align 8, !dbg !6914
  %cmp1 = icmp eq i64* %__a, %2, !dbg !6914
  %conv2 = zext i1 %cmp1 to i32, !dbg !6914
  %3 = load i64, i64* %__a, align 8, !dbg !6914
  %4 = load i64, i64* %__b, align 8, !dbg !6914
  %5 = load i64*, i64** %__d, align 8, !dbg !6914
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !6914
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !6914
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !6914
  store i64 %8, i64* %5, align 8, !dbg !6914
  %frombool = zext i1 %7 to i8, !dbg !6914
  store i8 %frombool, i8* %tmp, align 1, !dbg !6914
  %9 = load i8, i8* %tmp, align 1, !dbg !6914
  %tobool = trunc i8 %9 to i1, !dbg !6914
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !6918
  %lnot = xor i1 %call, true, !dbg !6918
  %lnot3 = xor i1 %lnot, true, !dbg !6918
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6918
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6918
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !6918
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6919

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !6920
  br label %return, !dbg !6920

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !6921
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6922
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !6923

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !6924
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6925
  br i1 %13, label %if.then6, label %if.end8, !dbg !6926

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !6927
  %15 = load i32, i32* %flags.addr, align 4, !dbg !6928
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !6929
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !6930
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !6931

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !6932
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !6933
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6934

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !6935
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !6936
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !6937
  %call.i.i = call i32 @get_order(i64 %21) #8, !dbg !6938
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6899
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !6939
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6940
  %24 = load i32, i32* %order.i.i, align 4, !dbg !6941
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6942
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6943
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6944
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #9, !dbg !6945
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6945
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6945
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6945
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !6945
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6946
  br label %kmalloc.exit, !dbg !6946

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !6947
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6948
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !6948
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6949

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6950
  br label %kmalloc_index.exit.i, !dbg !6950

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6951
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !6952
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6953

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6954
  br label %kmalloc_index.exit.i, !dbg !6954

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6955
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !6956
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6957

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6958
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !6959
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6960

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6961
  br label %kmalloc_index.exit.i, !dbg !6961

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6962
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !6963
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6964

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6965
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !6966
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6967

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6968
  br label %kmalloc_index.exit.i, !dbg !6968

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6969
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !6970
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6971

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6972
  br label %kmalloc_index.exit.i, !dbg !6972

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6973
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !6974
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6975

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6976
  br label %kmalloc_index.exit.i, !dbg !6976

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6977
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !6978
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6979

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6980
  br label %kmalloc_index.exit.i, !dbg !6980

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6981
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !6982
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6983

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6984
  br label %kmalloc_index.exit.i, !dbg !6984

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6985
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !6986
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6987

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6988
  br label %kmalloc_index.exit.i, !dbg !6988

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6989
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !6990
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6991

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6992
  br label %kmalloc_index.exit.i, !dbg !6992

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6993
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !6994
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6995

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6996
  br label %kmalloc_index.exit.i, !dbg !6996

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6997
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !6998
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6999

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !7000
  br label %kmalloc_index.exit.i, !dbg !7000

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7001
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !7002
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !7003

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !7004
  br label %kmalloc_index.exit.i, !dbg !7004

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7005
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !7006
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !7007

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !7008
  br label %kmalloc_index.exit.i, !dbg !7008

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7009
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !7010
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !7011

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !7012
  br label %kmalloc_index.exit.i, !dbg !7012

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7013
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !7014
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !7015

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !7016
  br label %kmalloc_index.exit.i, !dbg !7016

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7017
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !7018
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !7019

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !7020
  br label %kmalloc_index.exit.i, !dbg !7020

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7021
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !7022
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !7023

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !7024
  br label %kmalloc_index.exit.i, !dbg !7024

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7025
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !7026
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !7027

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !7028
  br label %kmalloc_index.exit.i, !dbg !7028

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7029
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !7030
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !7031

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !7032
  br label %kmalloc_index.exit.i, !dbg !7032

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7033
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !7034
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !7035

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !7036
  br label %kmalloc_index.exit.i, !dbg !7036

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7037
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !7038
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !7039

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !7040
  br label %kmalloc_index.exit.i, !dbg !7040

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7041
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !7042
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !7043

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !7044
  br label %kmalloc_index.exit.i, !dbg !7044

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7045
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !7046
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !7047

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !7048
  br label %kmalloc_index.exit.i, !dbg !7048

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7049
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !7050
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !7051

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !7052
  br label %kmalloc_index.exit.i, !dbg !7052

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7053
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !7054
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !7055

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !7056
  br label %kmalloc_index.exit.i, !dbg !7056

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7057
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !7058
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !7059

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !7060
  br label %kmalloc_index.exit.i, !dbg !7060

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !7061
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !7062
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !7063

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !7064
  br label %kmalloc_index.exit.i, !dbg !7064

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !7065, !srcloc !5530
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !7066, !srcloc !5534
  unreachable, !dbg !7067

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !7068
  store i32 %59, i32* %index.i, align 4, !dbg !7069
  %60 = load i32, i32* %index.i, align 4, !dbg !7070
  %tobool.i = icmp ne i32 %60, 0, !dbg !7070
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !7071

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !7072
  br label %kmalloc.exit, !dbg !7072

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !7073
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !7074
  %and.i.i = and i32 %62, 17, !dbg !7074
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !7074
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !7074
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !7074
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !7074
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !7075

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !7076
  br label %kmalloc_type.exit.i, !dbg !7076

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !7077
  %and2.i.i = and i32 %63, 1, !dbg !7078
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !7077
  %64 = zext i1 %tobool3.i.i to i64, !dbg !7077
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !7077
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !7079
  br label %kmalloc_type.exit.i, !dbg !7079

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !7080
  %idxprom.i = zext i32 %65 to i64, !dbg !7081
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !7081
  %66 = load i32, i32* %index.i, align 4, !dbg !7082
  %idxprom6.i = zext i32 %66 to i64, !dbg !7081
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !7081
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !7081
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !7083
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !7084
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !7085
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !7086
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #9, !dbg !7087
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !7087
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !7087
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !7087
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !7087
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6887
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !7088
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !7089
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !7090
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !7091
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #9, !dbg !7092
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !7093
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !7094
  store i8* %76, i8** %retval.i, align 8, !dbg !7095
  br label %kmalloc.exit, !dbg !7095

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !7096
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !7097
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #9, !dbg !7098
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !7098
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !7098
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !7098
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !7098
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !7099
  br label %kmalloc.exit, !dbg !7099

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !7100
  store i8* %79, i8** %retval, align 8, !dbg !7101
  br label %return, !dbg !7101

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !7102
  %81 = load i32, i32* %flags.addr, align 4, !dbg !7103
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #6, !dbg !7104
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !7104
  %maskedptr = and i64 %ptrint, 7, !dbg !7104
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !7104
  call void @llvm.assume(i1 %maskcond), !dbg !7104
  store i8* %call9, i8** %retval, align 8, !dbg !7105
  br label %return, !dbg !7105

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !7106
  ret i8* %82, !dbg !7106
}

; Function Attrs: noredzone
declare dso_local i32 @soft_cursor(%struct.fb_info*, %struct.fb_cursor*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !7107 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !7111, metadata !DIExpression()), !dbg !7112
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !7113
  %tobool = trunc i8 %0 to i1, !dbg !7113
  %lnot = xor i1 %tobool, true, !dbg !7113
  %lnot1 = xor i1 %lnot, true, !dbg !7113
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7113
  %conv = sext i32 %lnot.ext to i64, !dbg !7113
  %tobool2 = icmp ne i64 %conv, 0, !dbg !7113
  ret i1 %tobool2, !dbg !7114
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @fb_pan_display(%struct.fb_info*, %struct.fb_var_screeninfo*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !136, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/video/fbdev/core/bitblit.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !105, !112, !117, !124, !129}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !92, line: 76, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!94 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vc_intensity", file: !106, line: 26, baseType: !5, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/console_struct.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "VCI_HALF_BRIGHT", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "VCI_NORMAL", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "VCI_BOLD", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "VCI_MASK", value: 3, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "con_scroll", file: !113, line: 27, baseType: !5, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/console.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "SM_UP", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "SM_DOWN", value: 1, isUnsigned: true)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !118, line: 40, baseType: !5, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/lizy2001/genbc/linux")
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3, isUnsigned: true)
!123 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !118, line: 90, baseType: !5, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !130, line: 305, baseType: !5, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!134 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!136 = !{!137, !139, !140, !141}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !138, line: 148, baseType: !5)
!138 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !143, line: 19, baseType: !144)
!143 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !145, line: 24, baseType: !146)
!145 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !{i32 7, !"Dwarf Version", i32 4}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"Code Model", i32 2}
!151 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!152 = distinct !DISubprogram(name: "fbcon_set_bitops", scope: !1, file: !1, line: 394, type: !153, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcon_ops", file: !157, line: 54, size: 3648, elements: !158)
!157 = !DIFile(filename: "drivers/video/fbdev/core/fbcon.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !4979, !4983, !4987, !4991, !4995, !4996, !5000, !5001, !5002, !5003, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bmove", scope: !156, file: !157, line: 55, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163, !4515, !140, !140, !140, !140, !140, !140}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_data", file: !106, line: 94, size: 5952, elements: !165)
!165 = !{!166, !4322, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4448, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4468, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4496, !4500, !4501, !4502, !4503, !4504, !4505, !4507, !4510, !4512}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !164, file: !106, line: 95, baseType: !167, size: 2432)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !168, line: 230, size: 2432, elements: !169)
!168 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !258, !4272, !4273, !4295, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !167, file: !168, line: 231, baseType: !171, size: 1024)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !168, line: 85, size: 1024, elements: !172)
!172 = !{!173, !197, !223, !245, !250, !251, !255, !256, !257}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !171, file: !168, line: 86, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !168, line: 58, size: 256, elements: !176)
!176 = !{!177, !187, !188, !189, !190, !191, !192}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !168, line: 59, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !168, line: 59, size: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !168, line: 60, baseType: !174, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !178, file: !168, line: 61, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !183, line: 58, size: 64, elements: !184)
!183 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !183, line: 59, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !175, file: !168, line: 63, baseType: !140, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !175, file: !168, line: 64, baseType: !140, size: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !175, file: !168, line: 65, baseType: !140, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !175, file: !168, line: 66, baseType: !140, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !168, line: 67, baseType: !140, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !175, file: !168, line: 69, baseType: !193, offset: 256)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !195)
!194 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!195 = !{!196}
!196 = !DISubrange(count: -1)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !171, file: !168, line: 87, baseType: !198, size: 256, offset: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !199, line: 102, size: 256, elements: !200)
!199 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!200 = !{!201, !211, !217}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !198, file: !199, line: 103, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !203, line: 13, baseType: !204)
!203 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !138, line: 175, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 173, size: 64, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !205, file: !138, line: 174, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !143, line: 22, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !145, line: 30, baseType: !210)
!210 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !198, file: !199, line: 104, baseType: !212, size: 128, offset: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !138, line: 178, size: 128, elements: !213)
!213 = !{!214, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !138, line: 179, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !138, line: 179, baseType: !215, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !198, file: !199, line: 105, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !199, line: 21, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !171, file: !168, line: 88, baseType: !224, size: 192, offset: 320)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !225, line: 53, size: 192, elements: !226)
!225 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !228, !244}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !224, file: !225, line: 54, baseType: !202, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !224, file: !225, line: 55, baseType: !229, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !230, line: 83, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !230, line: 71, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !230, line: 72, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 72, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !234, file: !230, line: 73, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 20, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !230, line: 21, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 25, baseType: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 25, elements: !243)
!243 = !{}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !224, file: !225, line: 59, baseType: !212, size: 128, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !171, file: !168, line: 89, baseType: !246, size: 32, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !138, line: 168, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 166, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !247, file: !138, line: 167, baseType: !140, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !171, file: !168, line: 90, baseType: !175, size: 256, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !171, file: !168, line: 91, baseType: !252, size: 64, offset: 832)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !183, line: 54, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !252, file: !183, line: 55, baseType: !186, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !171, file: !168, line: 92, baseType: !246, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !171, file: !168, line: 93, baseType: !140, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !171, file: !168, line: 94, baseType: !174, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !167, file: !168, line: 232, baseType: !259, size: 64, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !168, line: 285, size: 5056, elements: !261)
!261 = !{!262, !263, !273, !3993, !4170, !4171, !4172, !4181, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !260, file: !168, line: 286, baseType: !140, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !260, file: !168, line: 287, baseType: !264, size: 32, offset: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !265, line: 19, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !264, file: !265, line: 20, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !269, line: 113, baseType: !270)
!269 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !269, line: 111, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !270, file: !269, line: 112, baseType: !246, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !260, file: !168, line: 288, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !276)
!276 = !{!277, !3447, !3448, !3451, !3452, !3503, !3594, !3595, !3596, !3597, !3598, !3607, !3712, !3725, !3920, !3921, !3925, !3927, !3928, !3929, !3933, !3939, !3940, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3981, !3982, !3983, !3986, !3989, !3990, !3991, !3992}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !275, file: !71, line: 462, baseType: !278, size: 512)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !279, line: 64, size: 512, elements: !280)
!279 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !285, !286, !288, !333, !3320, !3441, !3442, !3443, !3444, !3445, !3446}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !279, line: 65, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !278, file: !279, line: 66, baseType: !212, size: 128, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !278, file: !279, line: 67, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !278, file: !279, line: 68, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !279, line: 192, size: 704, elements: !291)
!291 = !{!292, !293, !294, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !290, file: !279, line: 193, baseType: !212, size: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !290, file: !279, line: 194, baseType: !229, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !290, file: !279, line: 195, baseType: !278, size: 512, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !290, file: !279, line: 196, baseType: !296, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !279, line: 156, size: 192, elements: !299)
!299 = !{!300, !305, !310}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !298, file: !279, line: 157, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!140, !289, !287}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !279, line: 158, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!282, !289, !287}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !298, file: !279, line: 159, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!140, !289, !287, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !279, line: 148, size: 20736, elements: !317)
!317 = !{!318, !323, !327, !328, !332}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !316, file: !279, line: 149, baseType: !319, size: 192)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 192, elements: !321)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!321 = !{!322}
!322 = !DISubrange(count: 3)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !316, file: !279, line: 150, baseType: !324, size: 4096, offset: 192)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 4096, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !316, file: !279, line: 151, baseType: !140, size: 32, offset: 4288)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !316, file: !279, line: 152, baseType: !329, size: 16384, offset: 4320)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 16384, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 2048)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !316, file: !279, line: 153, baseType: !140, size: 32, offset: 20704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !278, file: !279, line: 69, baseType: !334, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !279, line: 138, size: 448, elements: !336)
!336 = !{!337, !341, !369, !371, !3282, !3310, !3314}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !335, file: !279, line: 139, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !287}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !335, file: !279, line: 140, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !345, line: 230, size: 128, elements: !346)
!345 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!346 = !{!347, !362}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !344, file: !345, line: 231, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !287, !356, !320}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !138, line: 60, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !353, line: 73, baseType: !354)
!353 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !353, line: 15, baseType: !355)
!355 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !345, line: 30, size: 128, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !345, line: 31, baseType: !282, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !357, file: !345, line: 32, baseType: !361, size: 16, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !138, line: 19, baseType: !146)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !344, file: !345, line: 232, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!351, !287, !356, !282, !366}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 55, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !353, line: 72, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !353, line: 16, baseType: !194)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !335, file: !279, line: 141, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !335, file: !279, line: 142, baseType: !372, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !345, line: 84, size: 320, elements: !376)
!376 = !{!377, !378, !382, !3279, !3280}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !345, line: 85, baseType: !282, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !375, file: !345, line: 86, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!361, !287, !356, !140}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !375, file: !345, line: 88, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!361, !287, !386, !140}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !345, line: 168, size: 448, elements: !388)
!388 = !{!389, !390, !391, !392, !3274, !3275}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !387, file: !345, line: 169, baseType: !357, size: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !387, file: !345, line: 170, baseType: !366, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !387, file: !345, line: 171, baseType: !139, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !387, file: !345, line: 172, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!351, !396, !287, !386, !320, !568, !366}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !398)
!398 = !{!399, !412, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3257, !3258, !3267, !3268, !3269, !3270, !3271, !3272, !3273}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !397, file: !42, line: 920, baseType: !400, size: 128)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !42, line: 917, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !400, file: !42, line: 918, baseType: !182, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !400, file: !42, line: 919, baseType: !404, size: 128, align: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !138, line: 216, size: 128, align: 64, elements: !405)
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !138, line: 217, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !404, file: !138, line: 218, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !407}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !397, file: !42, line: 921, baseType: !413, size: 128, offset: 128)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !414, line: 8, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !413, file: !414, line: 9, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !419, line: 18, flags: DIFlagFwdDecl)
!419 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !413, file: !414, line: 10, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !419, line: 89, size: 1536, elements: !423)
!423 = !{!424, !425, !435, !443, !444, !465, !3207, !3209, !3221, !3222, !3223, !3224, !3225, !3231, !3232, !3233}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !422, file: !419, line: 91, baseType: !5, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !422, file: !419, line: 92, baseType: !426, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !427, line: 277, baseType: !428)
!427 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !427, line: 277, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !428, file: !427, line: 277, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !427, line: 70, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !427, line: 65, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !432, file: !427, line: 66, baseType: !5, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !422, file: !419, line: 93, baseType: !436, size: 128, offset: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !437, line: 38, size: 128, elements: !438)
!437 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !437, line: 39, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !436, file: !437, line: 39, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !422, file: !419, line: 94, baseType: !421, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !422, file: !419, line: 95, baseType: !445, size: 128, offset: 256)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !419, line: 47, size: 128, elements: !446)
!446 = !{!447, !461}
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !419, line: 48, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !419, line: 48, size: 64, elements: !449)
!449 = !{!450, !457}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !419, line: 49, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !419, line: 49, size: 64, elements: !452)
!452 = !{!453, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !451, file: !419, line: 50, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !143, line: 21, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !145, line: 27, baseType: !5)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !451, file: !419, line: 50, baseType: !454, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !448, file: !419, line: 52, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !143, line: 23, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !145, line: 31, baseType: !460)
!460 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !419, line: 54, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !422, file: !419, line: 96, baseType: !466, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !468)
!468 = !{!469, !470, !471, !479, !486, !487, !633, !2911, !2912, !2913, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !3175, !3183, !3184, !3185, !3203, !3204, !3205, !3206}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !467, file: !42, line: 611, baseType: !361, size: 16)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !467, file: !42, line: 612, baseType: !146, size: 16, offset: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !467, file: !42, line: 613, baseType: !472, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !473, line: 23, baseType: !474)
!473 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 21, size: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !474, file: !473, line: 22, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !138, line: 32, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !353, line: 49, baseType: !5)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !467, file: !42, line: 614, baseType: !480, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !473, line: 28, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 26, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !481, file: !473, line: 27, baseType: !484, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !138, line: 33, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !353, line: 50, baseType: !5)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !467, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !467, file: !42, line: 622, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !491)
!491 = !{!492, !496, !509, !513, !519, !523, !529, !533, !537, !541, !545, !546, !552, !556, !580, !609, !613, !619, !624, !628, !629}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !490, file: !42, line: 1865, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!421, !466, !421, !5}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !490, file: !42, line: 1866, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!282, !421, !466, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !502, line: 10, size: 128, elements: !503)
!502 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !501, file: !502, line: 11, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !139}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !501, file: !502, line: 12, baseType: !139, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !490, file: !42, line: 1867, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!140, !466, !140}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !490, file: !42, line: 1868, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !466, !140}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !490, file: !42, line: 1870, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!140, !421, !320, !140}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !490, file: !42, line: 1872, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!140, !466, !421, !361, !527}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !138, line: 30, baseType: !528)
!528 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !490, file: !42, line: 1873, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!140, !421, !466, !421}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !490, file: !42, line: 1874, baseType: !534, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!140, !466, !421}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !490, file: !42, line: 1875, baseType: !538, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!140, !466, !421, !282}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !490, file: !42, line: 1876, baseType: !542, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!140, !466, !421, !361}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !490, file: !42, line: 1877, baseType: !534, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !490, file: !42, line: 1878, baseType: !547, size: 64, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!140, !466, !421, !361, !550}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !138, line: 16, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !138, line: 13, baseType: !454)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !490, file: !42, line: 1879, baseType: !553, size: 64, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!140, !466, !421, !466, !421, !5}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !490, file: !42, line: 1881, baseType: !557, size: 64, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!140, !421, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !570, !577, !578, !579}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !561, file: !42, line: 220, baseType: !5, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !561, file: !42, line: 221, baseType: !361, size: 16, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !561, file: !42, line: 222, baseType: !472, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !561, file: !42, line: 223, baseType: !480, size: 32, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !561, file: !42, line: 224, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !138, line: 46, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !353, line: 88, baseType: !210)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !561, file: !42, line: 225, baseType: !571, size: 128, offset: 192)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !572, line: 13, size: 128, elements: !573)
!572 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!573 = !{!574, !576}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !571, file: !572, line: 14, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !572, line: 8, baseType: !209)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !571, file: !572, line: 15, baseType: !355, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !561, file: !42, line: 226, baseType: !571, size: 128, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !561, file: !42, line: 227, baseType: !571, size: 128, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !561, file: !42, line: 234, baseType: !396, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !490, file: !42, line: 1882, baseType: !581, size: 64, offset: 896)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!140, !584, !586, !454, !5}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !588, line: 22, size: 1152, elements: !589)
!588 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !591, !592, !593, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !587, file: !588, line: 23, baseType: !454, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !587, file: !588, line: 24, baseType: !361, size: 16, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !587, file: !588, line: 25, baseType: !5, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !587, file: !588, line: 26, baseType: !594, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 104, baseType: !454)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !587, file: !588, line: 27, baseType: !458, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !587, file: !588, line: 28, baseType: !458, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !587, file: !588, line: 37, baseType: !458, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !587, file: !588, line: 38, baseType: !550, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !587, file: !588, line: 39, baseType: !550, size: 32, offset: 352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !587, file: !588, line: 40, baseType: !472, size: 32, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !587, file: !588, line: 41, baseType: !480, size: 32, offset: 416)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !587, file: !588, line: 42, baseType: !568, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !587, file: !588, line: 43, baseType: !571, size: 128, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !587, file: !588, line: 44, baseType: !571, size: 128, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !587, file: !588, line: 45, baseType: !571, size: 128, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !587, file: !588, line: 46, baseType: !571, size: 128, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !587, file: !588, line: 47, baseType: !458, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !587, file: !588, line: 48, baseType: !458, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !490, file: !42, line: 1883, baseType: !610, size: 64, offset: 960)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!351, !421, !320, !366}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !490, file: !42, line: 1884, baseType: !614, size: 64, offset: 1024)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!140, !466, !617, !458, !458}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !490, file: !42, line: 1886, baseType: !620, size: 64, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!140, !466, !623, !140}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !490, file: !42, line: 1887, baseType: !625, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!140, !466, !421, !396, !5, !361}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !490, file: !42, line: 1890, baseType: !542, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !490, file: !42, line: 1891, baseType: !630, size: 64, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!140, !466, !517, !140}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !467, file: !42, line: 623, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !692, !2518, !2600, !2683, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2699, !2703, !2704, !2707, !2708, !2711, !2712, !2713, !2754, !2781, !2782, !2783, !2784, !2785, !2786, !2789, !2791, !2798, !2799, !2801, !2802, !2803, !2862, !2863, !2878, !2879, !2880, !2881, !2882, !2885, !2886, !2887, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !635, file: !42, line: 1417, baseType: !212, size: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !635, file: !42, line: 1418, baseType: !550, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !635, file: !42, line: 1419, baseType: !464, size: 8, offset: 160)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !635, file: !42, line: 1420, baseType: !194, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !635, file: !42, line: 1421, baseType: !568, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !635, file: !42, line: 1422, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !645)
!645 = !{!646, !647, !648, !655, !659, !663, !667, !671, !672, !682, !685, !686, !687, !689, !690, !691}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !42, line: 2229, baseType: !282, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !644, file: !42, line: 2230, baseType: !140, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !644, file: !42, line: 2238, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!140, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !654, line: 28, flags: DIFlagFwdDecl)
!654 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !644, file: !42, line: 2239, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !644, file: !42, line: 2240, baseType: !660, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!421, !643, !140, !282, !139}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !644, file: !42, line: 2242, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !634}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !644, file: !42, line: 2243, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !670, line: 76, flags: DIFlagFwdDecl)
!670 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !42, line: 2244, baseType: !643, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !644, file: !42, line: 2245, baseType: !673, size: 64, offset: 512)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !138, line: 182, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !673, file: !138, line: 183, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !138, line: 186, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !138, line: 187, baseType: !676, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !677, file: !138, line: 187, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !644, file: !42, line: 2247, baseType: !683, offset: 576)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !684, line: 187, elements: !243)
!684 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !644, file: !42, line: 2248, baseType: !683, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !644, file: !42, line: 2249, baseType: !683, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !644, file: !42, line: 2250, baseType: !688, offset: 576)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, elements: !321)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !644, file: !42, line: 2252, baseType: !683, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !644, file: !42, line: 2253, baseType: !683, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !644, file: !42, line: 2254, baseType: !683, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !635, file: !42, line: 1423, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !696)
!696 = !{!697, !701, !705, !706, !710, !716, !720, !721, !722, !726, !730, !731, !732, !733, !739, !744, !745, !788, !789, !790, !791, !2502, !2517}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !695, file: !42, line: 1936, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!466, !634}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !695, file: !42, line: 1937, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !466}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !695, file: !42, line: 1938, baseType: !702, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !695, file: !42, line: 1940, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !466, !140}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !695, file: !42, line: 1941, baseType: !711, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!140, !466, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !695, file: !42, line: 1942, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!140, !466}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !695, file: !42, line: 1943, baseType: !702, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !695, file: !42, line: 1944, baseType: !664, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !695, file: !42, line: 1945, baseType: !723, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!140, !634, !140}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !695, file: !42, line: 1946, baseType: !727, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!140, !634}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !695, file: !42, line: 1947, baseType: !727, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !695, file: !42, line: 1948, baseType: !727, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !695, file: !42, line: 1949, baseType: !727, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !695, file: !42, line: 1950, baseType: !734, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!140, !421, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !695, file: !42, line: 1951, baseType: !740, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!140, !634, !743, !320}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !695, file: !42, line: 1952, baseType: !664, size: 64, offset: 960)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !695, file: !42, line: 1954, baseType: !746, size: 64, offset: 1024)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!140, !749, !421}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !751, line: 16, size: 896, elements: !752)
!751 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !783, !784, !787}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !750, file: !751, line: 17, baseType: !320, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !750, file: !751, line: 18, baseType: !366, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !750, file: !751, line: 19, baseType: !366, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !750, file: !751, line: 20, baseType: !366, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !750, file: !751, line: 21, baseType: !366, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !750, file: !751, line: 22, baseType: !568, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !750, file: !751, line: 23, baseType: !568, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !750, file: !751, line: 24, baseType: !224, size: 192, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !750, file: !751, line: 25, baseType: !762, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !751, line: 31, size: 256, elements: !765)
!765 = !{!766, !771, !775, !779}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !764, file: !751, line: 32, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!139, !749, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !764, file: !751, line: 33, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !749, !139}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !751, line: 34, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!139, !749, !139, !770}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !764, file: !751, line: 35, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!140, !749, !139}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !750, file: !751, line: 26, baseType: !140, size: 32, offset: 704)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !750, file: !751, line: 27, baseType: !785, size: 64, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !750, file: !751, line: 28, baseType: !139, size: 64, offset: 832)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !695, file: !42, line: 1955, baseType: !746, size: 64, offset: 1088)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !695, file: !42, line: 1956, baseType: !746, size: 64, offset: 1152)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !695, file: !42, line: 1957, baseType: !746, size: 64, offset: 1216)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !695, file: !42, line: 1963, baseType: !792, size: 64, offset: 1280)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!140, !634, !795, !137}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !797, line: 68, size: 512, align: 128, elements: !798)
!797 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !800, !2494, !2501}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !797, line: 69, baseType: !194, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 77, baseType: !801, size: 320, offset: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 77, size: 320, elements: !802)
!802 = !{!803, !977, !982, !1010, !1018, !1024, !2425, !2493}
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 78, baseType: !804, size: 320)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 78, size: 320, elements: !805)
!805 = !{!806, !807, !975, !976}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !804, file: !797, line: 84, baseType: !212, size: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !804, file: !797, line: 86, baseType: !808, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !810)
!810 = !{!811, !812, !819, !820, !821, !836, !845, !846, !847, !848, !968, !969, !972, !973, !974}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !809, file: !42, line: 452, baseType: !466, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !809, file: !42, line: 453, baseType: !813, size: 128, offset: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !814, line: 292, size: 128, elements: !815)
!814 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !813, file: !814, line: 293, baseType: !229)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !813, file: !814, line: 295, baseType: !137, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !813, file: !814, line: 296, baseType: !139, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !809, file: !42, line: 454, baseType: !137, size: 32, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !809, file: !42, line: 455, baseType: !246, size: 32, offset: 224)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !809, file: !42, line: 460, baseType: !822, size: 128, offset: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !823, line: 125, size: 128, elements: !824)
!823 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !835}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !822, file: !823, line: 126, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !823, line: 31, size: 64, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !826, file: !823, line: 32, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !823, line: 24, size: 192, align: 64, elements: !831)
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !830, file: !823, line: 25, baseType: !194, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !830, file: !823, line: 26, baseType: !829, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !830, file: !823, line: 27, baseType: !829, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !822, file: !823, line: 127, baseType: !829, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !809, file: !42, line: 461, baseType: !837, size: 256, offset: 384)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !838, line: 35, size: 256, elements: !839)
!838 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!839 = !{!840, !841, !842, !844}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !837, file: !838, line: 36, baseType: !202, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !837, file: !838, line: 42, baseType: !202, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !837, file: !838, line: 46, baseType: !843, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 29, baseType: !237)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !837, file: !838, line: 47, baseType: !212, size: 128, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !809, file: !42, line: 462, baseType: !194, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !809, file: !42, line: 463, baseType: !194, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !809, file: !42, line: 464, baseType: !194, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !809, file: !42, line: 465, baseType: !849, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !852)
!852 = !{!853, !857, !861, !865, !869, !873, !879, !885, !889, !894, !898, !902, !906, !932, !936, !942, !943, !944, !948, !953, !957, !964}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !851, file: !42, line: 368, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!140, !795, !714}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !851, file: !42, line: 369, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!140, !396, !795}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !851, file: !42, line: 372, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!140, !808, !714}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !851, file: !42, line: 375, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!140, !795}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !851, file: !42, line: 381, baseType: !870, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!140, !396, !808, !215, !5}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !851, file: !42, line: 383, baseType: !874, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !851, file: !42, line: 385, baseType: !880, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!140, !396, !808, !568, !5, !5, !883, !884}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !851, file: !42, line: 388, baseType: !886, size: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!140, !396, !808, !568, !5, !5, !795, !139}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !851, file: !42, line: 393, baseType: !890, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!893, !808, !893}
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !138, line: 125, baseType: !458)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !851, file: !42, line: 394, baseType: !895, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !795, !5, !5}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !851, file: !42, line: 395, baseType: !899, size: 64, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!140, !795, !137}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !851, file: !42, line: 396, baseType: !903, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !795}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !851, file: !42, line: 397, baseType: !907, size: 64, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!351, !910, !930}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !912)
!912 = !{!913, !914, !915, !919, !920, !921, !922, !923}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !911, file: !42, line: 321, baseType: !396, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !911, file: !42, line: 326, baseType: !568, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !911, file: !42, line: 327, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !910, !355, !355}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !911, file: !42, line: 328, baseType: !139, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !911, file: !42, line: 329, baseType: !140, size: 32, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !911, file: !42, line: 330, baseType: !142, size: 16, offset: 288)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !911, file: !42, line: 331, baseType: !142, size: 16, offset: 304)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !42, line: 332, baseType: !924, size: 64, offset: 320)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !911, file: !42, line: 332, size: 64, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !924, file: !42, line: 333, baseType: !5, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !924, file: !42, line: 334, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !851, file: !42, line: 402, baseType: !933, size: 64, offset: 832)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!140, !808, !795, !795, !3}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !851, file: !42, line: 404, baseType: !937, size: 64, offset: 896)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!527, !795, !940}
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !941, line: 305, baseType: !5)
!941 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!942 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !851, file: !42, line: 405, baseType: !903, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !851, file: !42, line: 406, baseType: !866, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !851, file: !42, line: 407, baseType: !945, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!140, !795, !194, !194}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !851, file: !42, line: 409, baseType: !949, size: 64, offset: 1152)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !795, !952, !952}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !851, file: !42, line: 410, baseType: !954, size: 64, offset: 1216)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!140, !808, !795}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !851, file: !42, line: 413, baseType: !958, size: 64, offset: 1280)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!140, !961, !396, !963}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !851, file: !42, line: 415, baseType: !965, size: 64, offset: 1344)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !396}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !42, line: 466, baseType: !194, size: 64, offset: 896)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !809, file: !42, line: 467, baseType: !970, size: 32, offset: 960)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !971, line: 8, baseType: !454)
!971 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!972 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !809, file: !42, line: 468, baseType: !229, offset: 992)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !809, file: !42, line: 469, baseType: !212, size: 128, offset: 1024)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !809, file: !42, line: 470, baseType: !139, size: 64, offset: 1152)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !804, file: !797, line: 87, baseType: !194, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !804, file: !797, line: 94, baseType: !194, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 96, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 96, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !978, file: !797, line: 101, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !138, line: 143, baseType: !458)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 103, baseType: !983, size: 320)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 103, size: 320, elements: !984)
!984 = !{!985, !995, !998, !999}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !797, line: 104, baseType: !986, size: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !797, line: 104, size: 128, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !986, file: !797, line: 105, baseType: !212, size: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !797, line: 106, baseType: !990, size: 128)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !797, line: 106, size: 128, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !990, file: !797, line: 107, baseType: !795, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !990, file: !797, line: 109, baseType: !140, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !990, file: !797, line: 110, baseType: !140, size: 32, offset: 96)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !983, file: !797, line: 117, baseType: !996, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !797, line: 117, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !983, file: !797, line: 119, baseType: !139, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !797, line: 120, baseType: !1000, size: 64, offset: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !797, line: 120, size: 64, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1000, file: !797, line: 121, baseType: !139, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1000, file: !797, line: 122, baseType: !194, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !797, line: 123, baseType: !1005, size: 32)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !797, line: 123, size: 32, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1005, file: !797, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1005, file: !797, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1005, file: !797, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 130, baseType: !1011, size: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 130, size: 192, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1011, file: !797, line: 131, baseType: !194, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1011, file: !797, line: 134, baseType: !464, size: 8, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1011, file: !797, line: 135, baseType: !464, size: 8, offset: 72)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1011, file: !797, line: 136, baseType: !246, size: 32, offset: 96)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1011, file: !797, line: 137, baseType: !5, size: 32, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 139, baseType: !1019, size: 256)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 139, size: 256, elements: !1020)
!1020 = !{!1021, !1022, !1023}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1019, file: !797, line: 140, baseType: !194, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1019, file: !797, line: 141, baseType: !246, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1019, file: !797, line: 143, baseType: !212, size: 128, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 145, baseType: !1025, size: 256)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 145, size: 256, elements: !1026)
!1026 = !{!1027, !1028, !1031, !1032, !2424}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1025, file: !797, line: 146, baseType: !194, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1025, file: !797, line: 147, baseType: !1029, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1030, line: 509, baseType: !795)
!1030 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1025, file: !797, line: 148, baseType: !194, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !797, line: 149, baseType: !1033, size: 64, offset: 192)
!1033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1025, file: !797, line: 149, size: 64, elements: !1034)
!1034 = !{!1035, !2423}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1033, file: !797, line: 150, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !797, line: 388, size: 7296, elements: !1038)
!1038 = !{!1039, !2422}
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !797, line: 389, baseType: !1040, size: 7296)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !797, line: 389, size: 7296, elements: !1041)
!1041 = !{!1042, !1160, !1161, !1162, !1166, !1167, !1168, !1169, !1170, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1211, !1219, !1222, !1262, !1263, !2406, !2407, !2410, !2411, !2412, !2415, !2416, !2417, !2420, !2421}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1040, file: !797, line: 390, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !797, line: 305, size: 1472, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1060, !1061, !1066, !1067, !1070, !1154, !1155, !1156, !1157, !1158}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1044, file: !797, line: 308, baseType: !194, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1044, file: !797, line: 309, baseType: !194, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1044, file: !797, line: 313, baseType: !1043, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1044, file: !797, line: 313, baseType: !1043, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1044, file: !797, line: 315, baseType: !830, size: 192, align: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1044, file: !797, line: 323, baseType: !194, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1044, file: !797, line: 327, baseType: !1036, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1044, file: !797, line: 333, baseType: !1054, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1030, line: 284, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1030, line: 284, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1055, file: !1030, line: 284, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1059, line: 19, baseType: !194)
!1059 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1044, file: !797, line: 334, baseType: !194, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1044, file: !797, line: 343, baseType: !1062, size: 256, offset: 704)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1044, file: !797, line: 340, size: 256, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1062, file: !797, line: 341, baseType: !830, size: 192, align: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1062, file: !797, line: 342, baseType: !194, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1044, file: !797, line: 351, baseType: !212, size: 128, offset: 960)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1044, file: !797, line: 353, baseType: !1068, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !797, line: 353, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1044, file: !797, line: 356, baseType: !1071, size: 64, offset: 1152)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1074)
!1074 = !{!1075, !1079, !1080, !1084, !1088, !1128, !1132, !1136, !1140, !1141, !1142, !1146, !1150}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1073, file: !12, line: 558, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1043}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1073, file: !12, line: 559, baseType: !1076, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1073, file: !12, line: 560, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!140, !1043, !194}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1073, file: !12, line: 561, baseType: !1085, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!140, !1043}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1073, file: !12, line: 562, baseType: !1089, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !797, line: 682, baseType: !5)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1108, !1115, !1121, !1122, !1123, !1125, !1127}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1094, file: !12, line: 509, baseType: !1043, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1094, file: !12, line: 511, baseType: !137, size: 32, offset: 96)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1094, file: !12, line: 512, baseType: !194, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1094, file: !12, line: 513, baseType: !194, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1094, file: !12, line: 514, baseType: !1102, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1030, line: 385, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1030, line: 385, size: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1104, file: !1030, line: 385, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1059, line: 15, baseType: !194)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1094, file: !12, line: 516, baseType: !1109, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1030, line: 359, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1030, line: 359, size: 64, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1111, file: !1030, line: 359, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1059, line: 16, baseType: !194)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1094, file: !12, line: 519, baseType: !1116, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1059, line: 21, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1059, line: 21, size: 64, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1117, file: !1059, line: 21, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1059, line: 14, baseType: !194)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1094, file: !12, line: 521, baseType: !795, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1094, file: !12, line: 522, baseType: !795, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1094, file: !12, line: 528, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1094, file: !12, line: 532, baseType: !1126, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1094, file: !12, line: 536, baseType: !1029, size: 64, offset: 704)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1073, file: !12, line: 563, baseType: !1129, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!1092, !1093, !11}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1073, file: !12, line: 565, baseType: !1133, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !1093, !194, !194}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1073, file: !12, line: 567, baseType: !1137, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!194, !1043}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1073, file: !12, line: 571, baseType: !1089, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1073, file: !12, line: 574, baseType: !1089, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1073, file: !12, line: 579, baseType: !1143, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!140, !1043, !194, !139, !140, !140}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1073, file: !12, line: 585, baseType: !1147, size: 64, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!282, !1043}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1073, file: !12, line: 615, baseType: !1151, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!795, !1043, !194}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1044, file: !797, line: 359, baseType: !194, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1044, file: !797, line: 361, baseType: !396, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1044, file: !797, line: 362, baseType: !139, size: 64, offset: 1344)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1044, file: !797, line: 365, baseType: !202, size: 64, offset: 1408)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1044, file: !797, line: 373, baseType: !1159, offset: 1472)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !797, line: 296, elements: !243)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1040, file: !797, line: 391, baseType: !826, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1040, file: !797, line: 392, baseType: !458, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1040, file: !797, line: 394, baseType: !1163, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!194, !396, !194, !194, !194, !194}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1040, file: !797, line: 398, baseType: !194, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1040, file: !797, line: 399, baseType: !194, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1040, file: !797, line: 405, baseType: !194, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1040, file: !797, line: 406, baseType: !194, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1040, file: !797, line: 407, baseType: !1171, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1030, line: 286, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1030, line: 286, size: 64, elements: !1174)
!1174 = !{!1175}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1173, file: !1030, line: 286, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1059, line: 18, baseType: !194)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1040, file: !797, line: 416, baseType: !246, size: 32, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1040, file: !797, line: 428, baseType: !246, size: 32, offset: 608)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1040, file: !797, line: 437, baseType: !246, size: 32, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1040, file: !797, line: 447, baseType: !246, size: 32, offset: 672)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1040, file: !797, line: 450, baseType: !202, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1040, file: !797, line: 452, baseType: !140, size: 32, offset: 768)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1040, file: !797, line: 454, baseType: !229, offset: 800)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1040, file: !797, line: 457, baseType: !837, size: 256, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1040, file: !797, line: 459, baseType: !212, size: 128, offset: 1088)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1040, file: !797, line: 466, baseType: !194, size: 64, offset: 1216)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1040, file: !797, line: 467, baseType: !194, size: 64, offset: 1280)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1040, file: !797, line: 469, baseType: !194, size: 64, offset: 1344)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1040, file: !797, line: 470, baseType: !194, size: 64, offset: 1408)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1040, file: !797, line: 471, baseType: !204, size: 64, offset: 1472)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1040, file: !797, line: 472, baseType: !194, size: 64, offset: 1536)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1040, file: !797, line: 473, baseType: !194, size: 64, offset: 1600)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1040, file: !797, line: 474, baseType: !194, size: 64, offset: 1664)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1040, file: !797, line: 475, baseType: !194, size: 64, offset: 1728)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1040, file: !797, line: 477, baseType: !229, offset: 1792)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1040, file: !797, line: 478, baseType: !194, size: 64, offset: 1792)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1040, file: !797, line: 478, baseType: !194, size: 64, offset: 1856)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1040, file: !797, line: 478, baseType: !194, size: 64, offset: 1920)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1040, file: !797, line: 478, baseType: !194, size: 64, offset: 1984)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1040, file: !797, line: 479, baseType: !194, size: 64, offset: 2048)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1040, file: !797, line: 479, baseType: !194, size: 64, offset: 2112)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1040, file: !797, line: 479, baseType: !194, size: 64, offset: 2176)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1040, file: !797, line: 480, baseType: !194, size: 64, offset: 2240)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1040, file: !797, line: 480, baseType: !194, size: 64, offset: 2304)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1040, file: !797, line: 480, baseType: !194, size: 64, offset: 2368)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1040, file: !797, line: 480, baseType: !194, size: 64, offset: 2432)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1040, file: !797, line: 482, baseType: !1208, size: 2816, offset: 2496)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 2816, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 44)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1040, file: !797, line: 488, baseType: !1212, size: 256, offset: 5312)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1213, line: 60, size: 256, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1212, file: !1213, line: 61, baseType: !1216, size: 256)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 4)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1040, file: !797, line: 490, baseType: !1220, size: 64, offset: 5568)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !797, line: 490, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1040, file: !797, line: 493, baseType: !1223, size: 896, offset: 5632)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1224, line: 53, baseType: !1225)
!1224 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1224, line: 13, size: 896, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1233, !1234, !1235, !1236, !1256, !1257, !1258}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1225, file: !1224, line: 18, baseType: !458, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1225, file: !1224, line: 28, baseType: !204, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1225, file: !1224, line: 31, baseType: !837, size: 256, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1225, file: !1224, line: 32, baseType: !1231, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1224, line: 32, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1225, file: !1224, line: 37, baseType: !146, size: 16, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1225, file: !1224, line: 40, baseType: !224, size: 192, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1225, file: !1224, line: 41, baseType: !139, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1225, file: !1224, line: 42, baseType: !1237, size: 64, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1240, line: 13, size: 896, elements: !1241)
!1240 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1239, file: !1240, line: 14, baseType: !139, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1239, file: !1240, line: 15, baseType: !194, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1239, file: !1240, line: 17, baseType: !194, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1239, file: !1240, line: 17, baseType: !194, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1239, file: !1240, line: 19, baseType: !355, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1239, file: !1240, line: 21, baseType: !355, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1239, file: !1240, line: 22, baseType: !355, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1239, file: !1240, line: 23, baseType: !355, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1239, file: !1240, line: 24, baseType: !355, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1239, file: !1240, line: 25, baseType: !355, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1239, file: !1240, line: 26, baseType: !355, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1239, file: !1240, line: 27, baseType: !355, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1239, file: !1240, line: 28, baseType: !355, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1239, file: !1240, line: 29, baseType: !355, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1225, file: !1224, line: 44, baseType: !246, size: 32, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1225, file: !1224, line: 50, baseType: !142, size: 16, offset: 864)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1225, file: !1224, line: 51, baseType: !1259, size: 16, offset: 880)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !143, line: 18, baseType: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !145, line: 23, baseType: !1261)
!1261 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1040, file: !797, line: 495, baseType: !194, size: 64, offset: 6528)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1040, file: !797, line: 497, baseType: !1264, size: 64, offset: 6592)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !797, line: 381, size: 384, elements: !1266)
!1266 = !{!1267, !1268, !2405}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1265, file: !797, line: 382, baseType: !246, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1265, file: !797, line: 383, baseType: !1269, size: 128, offset: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !797, line: 376, size: 128, elements: !1270)
!1270 = !{!1271, !2403}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1269, file: !797, line: 377, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1274, line: 640, size: 48640, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !{!1276, !1282, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1297, !1315, !1326, !1411, !1412, !1413, !1424, !1425, !1427, !1428, !1429, !1430, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1509, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1580, !1582, !1583, !1584, !1596, !1597, !1598, !1599, !1600, !1601, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1625, !1630, !1812, !1813, !1814, !1815, !1819, !1822, !1825, !1828, !1831, !1857, !1956, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !2002, !2003, !2004, !2005, !2006, !2011, !2012, !2013, !2016, !2017, !2020, !2023, !2026, !2029, !2061, !2064, !2065, !2144, !2145, !2148, !2149, !2152, !2153, !2154, !2158, !2159, !2160, !2173, !2174, !2175, !2185, !2190, !2193, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1273, file: !1274, line: 646, baseType: !1277, size: 128)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1278, line: 56, size: 128, elements: !1279)
!1278 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1278, line: 57, baseType: !194, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1277, file: !1278, line: 58, baseType: !454, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1273, file: !1274, line: 649, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !355)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1273, file: !1274, line: 657, baseType: !139, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1273, file: !1274, line: 658, baseType: !268, size: 32, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !1274, line: 660, baseType: !5, size: 32, offset: 288)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1273, file: !1274, line: 661, baseType: !5, size: 32, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1273, file: !1274, line: 684, baseType: !140, size: 32, offset: 352)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1273, file: !1274, line: 686, baseType: !140, size: 32, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1273, file: !1274, line: 687, baseType: !140, size: 32, offset: 416)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1273, file: !1274, line: 688, baseType: !140, size: 32, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1273, file: !1274, line: 689, baseType: !5, size: 32, offset: 480)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1273, file: !1274, line: 691, baseType: !1294, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1274, line: 691, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1273, file: !1274, line: 692, baseType: !1298, size: 832, offset: 576)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1274, line: 451, size: 832, elements: !1299)
!1299 = !{!1300, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1298, file: !1274, line: 453, baseType: !1301, size: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1274, line: 325, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1301, file: !1274, line: 326, baseType: !194, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1301, file: !1274, line: 327, baseType: !454, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1298, file: !1274, line: 454, baseType: !830, size: 192, align: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1298, file: !1274, line: 455, baseType: !212, size: 128, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1298, file: !1274, line: 456, baseType: !5, size: 32, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1298, file: !1274, line: 458, baseType: !458, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1298, file: !1274, line: 459, baseType: !458, size: 64, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1298, file: !1274, line: 460, baseType: !458, size: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1298, file: !1274, line: 461, baseType: !458, size: 64, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1298, file: !1274, line: 463, baseType: !458, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1298, file: !1274, line: 465, baseType: !1314, offset: 832)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1274, line: 415, elements: !243)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1273, file: !1274, line: 693, baseType: !1316, size: 384, offset: 1408)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1274, line: 489, size: 384, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1316, file: !1274, line: 490, baseType: !212, size: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1316, file: !1274, line: 491, baseType: !194, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1316, file: !1274, line: 492, baseType: !194, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1316, file: !1274, line: 493, baseType: !5, size: 32, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1316, file: !1274, line: 494, baseType: !146, size: 16, offset: 288)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1316, file: !1274, line: 495, baseType: !146, size: 16, offset: 304)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1316, file: !1274, line: 497, baseType: !1325, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1273, file: !1274, line: 697, baseType: !1327, size: 1792, offset: 1792)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1274, line: 507, size: 1792, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1408, !1409}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1327, file: !1274, line: 508, baseType: !830, size: 192, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1327, file: !1274, line: 515, baseType: !458, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1327, file: !1274, line: 516, baseType: !458, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1327, file: !1274, line: 517, baseType: !458, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1327, file: !1274, line: 518, baseType: !458, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1327, file: !1274, line: 519, baseType: !458, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1327, file: !1274, line: 526, baseType: !208, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1327, file: !1274, line: 527, baseType: !458, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1327, file: !1274, line: 528, baseType: !5, size: 32, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1327, file: !1274, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1327, file: !1274, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1327, file: !1274, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1327, file: !1274, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1327, file: !1274, line: 563, baseType: !1343, size: 512, offset: 704)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1344)
!1344 = !{!1345, !1353, !1354, !1359, !1402, !1405, !1406, !1407}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1343, file: !18, line: 119, baseType: !1346, size: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1347, line: 9, size: 256, elements: !1348)
!1347 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1346, file: !1347, line: 10, baseType: !830, size: 192, align: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1346, file: !1347, line: 11, baseType: !1351, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1352, line: 29, baseType: !208)
!1352 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1343, file: !18, line: 120, baseType: !1351, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1343, file: !18, line: 121, baseType: !1355, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!17, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1343, file: !18, line: 122, baseType: !1360, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1362)
!1362 = !{!1363, !1383, !1384, !1387, !1392, !1393, !1397, !1401}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1361, file: !18, line: 160, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1365, file: !18, line: 215, baseType: !843)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1365, file: !18, line: 216, baseType: !5, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1365, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1365, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1365, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1365, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1365, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1365, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1365, file: !18, line: 233, baseType: !1351, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1365, file: !18, line: 234, baseType: !1358, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1365, file: !18, line: 235, baseType: !1351, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1365, file: !18, line: 236, baseType: !1358, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1365, file: !18, line: 237, baseType: !1380, size: 4096, offset: 512)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 4096, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 8)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1361, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1361, file: !18, line: 162, baseType: !1385, size: 32, offset: 96)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !138, line: 27, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !353, line: 96, baseType: !140)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1361, file: !18, line: 163, baseType: !1388, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !427, line: 276, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !427, line: 276, size: 32, elements: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1389, file: !427, line: 276, baseType: !431, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1361, file: !18, line: 164, baseType: !1358, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1361, file: !18, line: 165, baseType: !1394, size: 128, offset: 256)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1347, line: 14, size: 128, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1394, file: !1347, line: 15, baseType: !822, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1361, file: !18, line: 166, baseType: !1398, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1351}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1361, file: !18, line: 167, baseType: !1351, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1343, file: !18, line: 123, baseType: !1403, size: 8, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !143, line: 17, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !145, line: 21, baseType: !464)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1343, file: !18, line: 124, baseType: !1403, size: 8, offset: 456)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1343, file: !18, line: 125, baseType: !1403, size: 8, offset: 464)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1343, file: !18, line: 126, baseType: !1403, size: 8, offset: 472)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1327, file: !1274, line: 572, baseType: !1343, size: 512, offset: 1216)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1327, file: !1274, line: 580, baseType: !1410, size: 64, offset: 1728)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1273, file: !1274, line: 721, baseType: !5, size: 32, offset: 3584)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1273, file: !1274, line: 722, baseType: !140, size: 32, offset: 3616)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1273, file: !1274, line: 723, baseType: !1414, size: 64, offset: 3648)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1417, line: 17, baseType: !1418)
!1417 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1417, line: 17, size: 64, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1418, file: !1417, line: 17, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !1422)
!1422 = !{!1423}
!1423 = !DISubrange(count: 1)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1273, file: !1274, line: 724, baseType: !1416, size: 64, offset: 3712)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1273, file: !1274, line: 749, baseType: !1426, offset: 3776)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1274, line: 290, elements: !243)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1273, file: !1274, line: 751, baseType: !212, size: 128, offset: 3776)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1273, file: !1274, line: 757, baseType: !1036, size: 64, offset: 3904)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1273, file: !1274, line: 758, baseType: !1036, size: 64, offset: 3968)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1273, file: !1274, line: 761, baseType: !1431, size: 320, offset: 4032)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1213, line: 34, size: 320, elements: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1431, file: !1213, line: 35, baseType: !458, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1431, file: !1213, line: 36, baseType: !1435, size: 256, offset: 64)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 256, elements: !1217)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1273, file: !1274, line: 766, baseType: !140, size: 32, offset: 4352)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1273, file: !1274, line: 767, baseType: !140, size: 32, offset: 4384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1273, file: !1274, line: 768, baseType: !140, size: 32, offset: 4416)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1273, file: !1274, line: 770, baseType: !140, size: 32, offset: 4448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1273, file: !1274, line: 772, baseType: !194, size: 64, offset: 4480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1273, file: !1274, line: 775, baseType: !5, size: 32, offset: 4544)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1273, file: !1274, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1273, file: !1274, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1273, file: !1274, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1273, file: !1274, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1273, file: !1274, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1273, file: !1274, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1273, file: !1274, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1273, file: !1274, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1273, file: !1274, line: 831, baseType: !194, size: 64, offset: 4672)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1273, file: !1274, line: 833, baseType: !1452, size: 384, offset: 4736)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1453)
!1453 = !{!1454, !1459}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1452, file: !23, line: 26, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!355, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !23, line: 27, baseType: !1460, size: 320, offset: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !23, line: 27, size: 320, elements: !1461)
!1461 = !{!1462, !1472, !1499}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1460, file: !23, line: 36, baseType: !1463, size: 320)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1460, file: !23, line: 29, size: 320, elements: !1464)
!1464 = !{!1465, !1467, !1468, !1469, !1470, !1471}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1463, file: !23, line: 30, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1463, file: !23, line: 31, baseType: !454, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !23, line: 32, baseType: !454, size: 32, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1463, file: !23, line: 33, baseType: !454, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1463, file: !23, line: 34, baseType: !458, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1463, file: !23, line: 35, baseType: !1466, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1460, file: !23, line: 46, baseType: !1473, size: 192)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1460, file: !23, line: 38, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1498}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1473, file: !23, line: 39, baseType: !1385, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1473, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !23, line: 41, baseType: !1478, size: 64, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1473, file: !23, line: 41, size: 64, elements: !1479)
!1479 = !{!1480, !1488}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1478, file: !23, line: 42, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1483, line: 7, size: 128, elements: !1484)
!1483 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !{!1485, !1487}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1482, file: !1483, line: 8, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !353, line: 93, baseType: !210)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1482, file: !1483, line: 9, baseType: !210, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1478, file: !23, line: 43, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1491, line: 7, size: 64, elements: !1492)
!1491 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1492 = !{!1493, !1497}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1490, file: !1491, line: 8, baseType: !1494, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1491, line: 5, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !143, line: 20, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !145, line: 26, baseType: !140)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1490, file: !1491, line: 9, baseType: !1495, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1473, file: !23, line: 45, baseType: !458, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1460, file: !23, line: 54, baseType: !1500, size: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1460, file: !23, line: 48, size: 256, elements: !1501)
!1501 = !{!1502, !1505, !1506, !1507, !1508}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1500, file: !23, line: 49, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1500, file: !23, line: 50, baseType: !140, size: 32, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1500, file: !23, line: 51, baseType: !140, size: 32, offset: 96)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1500, file: !23, line: 52, baseType: !194, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1500, file: !23, line: 53, baseType: !194, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1273, file: !1274, line: 835, baseType: !1510, size: 32, offset: 5120)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !138, line: 22, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !353, line: 28, baseType: !140)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1273, file: !1274, line: 836, baseType: !1510, size: 32, offset: 5152)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1273, file: !1274, line: 840, baseType: !194, size: 64, offset: 5184)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1273, file: !1274, line: 849, baseType: !1272, size: 64, offset: 5248)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1273, file: !1274, line: 852, baseType: !1272, size: 64, offset: 5312)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1273, file: !1274, line: 857, baseType: !212, size: 128, offset: 5376)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1273, file: !1274, line: 858, baseType: !212, size: 128, offset: 5504)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1273, file: !1274, line: 859, baseType: !1272, size: 64, offset: 5632)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1273, file: !1274, line: 867, baseType: !212, size: 128, offset: 5696)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1273, file: !1274, line: 868, baseType: !212, size: 128, offset: 5824)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1273, file: !1274, line: 871, baseType: !1522, size: 64, offset: 5952)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1530, !1531, !1538, !1539}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1523, file: !51, line: 61, baseType: !268, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1523, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1523, file: !51, line: 63, baseType: !229, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1523, file: !51, line: 65, baseType: !1529, size: 256, offset: 64)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 256, elements: !1217)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1523, file: !51, line: 66, baseType: !673, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1523, file: !51, line: 68, baseType: !1532, size: 128, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1533, line: 40, baseType: !1534)
!1533 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1533, line: 36, size: 128, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1533, line: 37, baseType: !229)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1534, file: !1533, line: 38, baseType: !212, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1523, file: !51, line: 69, baseType: !404, size: 128, align: 64, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1523, file: !51, line: 70, baseType: !1540, size: 128, offset: 640)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1541, size: 128, elements: !1422)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1541, file: !51, line: 55, baseType: !140, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1541, file: !51, line: 56, baseType: !1545, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1547, line: 20, size: 1088, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !{!1549, !1550, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1566, !1569, !1570}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1546, file: !1547, line: 21, baseType: !264, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1546, file: !1547, line: 22, baseType: !1551, size: 192, offset: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1552, line: 19, size: 192, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1551, file: !1552, line: 20, baseType: !813, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1551, file: !1552, line: 21, baseType: !5, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1551, file: !1552, line: 22, baseType: !5, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1546, file: !1547, line: 23, baseType: !404, size: 128, align: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1546, file: !1547, line: 24, baseType: !5, size: 32, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1546, file: !1547, line: 25, baseType: !1272, size: 64, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1546, file: !1547, line: 26, baseType: !996, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1546, file: !1547, line: 27, baseType: !5, size: 32, offset: 576)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1546, file: !1547, line: 28, baseType: !1545, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1546, file: !1547, line: 32, baseType: !1564, size: 64, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !473, line: 18, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1546, file: !1547, line: 33, baseType: !1567, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1547, line: 33, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1546, file: !1547, line: 34, baseType: !140, size: 32, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1546, file: !1547, line: 35, baseType: !1571, size: 192, offset: 896)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1572, line: 7, size: 192, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1575, !1579}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1571, file: !1572, line: 8, baseType: !202, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1571, file: !1572, line: 9, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1572, line: 5, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1571, file: !1572, line: 10, baseType: !5, size: 32, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1273, file: !1274, line: 872, baseType: !1581, size: 512, offset: 6016)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 512, elements: !1217)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1273, file: !1274, line: 873, baseType: !212, size: 128, offset: 6528)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1273, file: !1274, line: 874, baseType: !212, size: 128, offset: 6656)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1273, file: !1274, line: 876, baseType: !1585, size: 64, offset: 6784)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1587, line: 26, size: 192, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1586, file: !1587, line: 27, baseType: !5, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1586, file: !1587, line: 28, baseType: !1591, size: 128, offset: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1592, line: 43, size: 128, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1591, file: !1592, line: 44, baseType: !843)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1591, file: !1592, line: 45, baseType: !212, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1273, file: !1274, line: 879, baseType: !743, size: 64, offset: 6848)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1273, file: !1274, line: 882, baseType: !743, size: 64, offset: 6912)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1273, file: !1274, line: 884, baseType: !458, size: 64, offset: 6976)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1273, file: !1274, line: 885, baseType: !458, size: 64, offset: 7040)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1273, file: !1274, line: 890, baseType: !458, size: 64, offset: 7104)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1273, file: !1274, line: 891, baseType: !1602, size: 128, offset: 7168)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1274, line: 242, size: 128, elements: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1602, file: !1274, line: 244, baseType: !458, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1602, file: !1274, line: 245, baseType: !458, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1602, file: !1274, line: 246, baseType: !843, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1273, file: !1274, line: 900, baseType: !194, size: 64, offset: 7296)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1273, file: !1274, line: 901, baseType: !194, size: 64, offset: 7360)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1273, file: !1274, line: 904, baseType: !458, size: 64, offset: 7424)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1273, file: !1274, line: 907, baseType: !458, size: 64, offset: 7488)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1273, file: !1274, line: 910, baseType: !194, size: 64, offset: 7552)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1273, file: !1274, line: 911, baseType: !194, size: 64, offset: 7616)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1273, file: !1274, line: 914, baseType: !1614, size: 640, offset: 7680)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1615, line: 123, size: 640, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1623, !1624}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1614, file: !1615, line: 124, baseType: !1618, size: 576)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1619, size: 576, elements: !321)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1615, line: 108, size: 192, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1619, file: !1615, line: 109, baseType: !458, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1619, file: !1615, line: 110, baseType: !1394, size: 128, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1614, file: !1615, line: 125, baseType: !5, size: 32, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1614, file: !1615, line: 126, baseType: !5, size: 32, offset: 608)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1273, file: !1274, line: 917, baseType: !1626, size: 192, offset: 8320)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1615, line: 134, size: 192, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1626, file: !1615, line: 135, baseType: !404, size: 128, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1626, file: !1615, line: 136, baseType: !5, size: 32, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1273, file: !1274, line: 923, baseType: !1631, size: 64, offset: 8512)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1634, line: 111, size: 1280, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1655, !1656, !1657, !1658, !1659, !1660, !1767, !1768, !1769, !1770, !1796, !1797, !1807}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1633, file: !1634, line: 112, baseType: !246, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1633, file: !1634, line: 120, baseType: !472, size: 32, offset: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1633, file: !1634, line: 121, baseType: !480, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1633, file: !1634, line: 122, baseType: !472, size: 32, offset: 96)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1633, file: !1634, line: 123, baseType: !480, size: 32, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1633, file: !1634, line: 124, baseType: !472, size: 32, offset: 160)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1633, file: !1634, line: 125, baseType: !480, size: 32, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1633, file: !1634, line: 126, baseType: !472, size: 32, offset: 224)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1633, file: !1634, line: 127, baseType: !480, size: 32, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1633, file: !1634, line: 128, baseType: !5, size: 32, offset: 288)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1633, file: !1634, line: 129, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1648, line: 26, baseType: !1649)
!1648 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1648, line: 24, size: 64, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1649, file: !1648, line: 25, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 2)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1633, file: !1634, line: 130, baseType: !1647, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1633, file: !1634, line: 131, baseType: !1647, size: 64, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1633, file: !1634, line: 132, baseType: !1647, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1633, file: !1634, line: 133, baseType: !1647, size: 64, offset: 576)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1633, file: !1634, line: 135, baseType: !464, size: 8, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1633, file: !1634, line: 137, baseType: !1661, size: 64, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1663, line: 189, size: 1664, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666, !1669, !1674, !1675, !1678, !1679, !1684, !1685, !1686, !1687, !1689, !1690, !1691, !1692, !1693, !1731, !1752}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1662, file: !1663, line: 190, baseType: !268, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1662, file: !1663, line: 191, baseType: !1667, size: 32, offset: 32)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1663, line: 28, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 98, baseType: !1495)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1663, line: 192, baseType: !1670, size: 192, offset: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1663, line: 192, size: 192, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1670, file: !1663, line: 193, baseType: !212, size: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1670, file: !1663, line: 194, baseType: !830, size: 192, align: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1662, file: !1663, line: 199, baseType: !837, size: 256, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1662, file: !1663, line: 200, baseType: !1676, size: 64, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1663, line: 200, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1662, file: !1663, line: 201, baseType: !139, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1663, line: 202, baseType: !1680, size: 64, offset: 640)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1663, line: 202, size: 64, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1680, file: !1663, line: 203, baseType: !575, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1680, file: !1663, line: 204, baseType: !575, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1662, file: !1663, line: 206, baseType: !575, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1662, file: !1663, line: 207, baseType: !472, size: 32, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1662, file: !1663, line: 208, baseType: !480, size: 32, offset: 800)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1662, file: !1663, line: 209, baseType: !1688, size: 32, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1663, line: 31, baseType: !594)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1662, file: !1663, line: 210, baseType: !146, size: 16, offset: 864)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1662, file: !1663, line: 211, baseType: !146, size: 16, offset: 880)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1662, file: !1663, line: 215, baseType: !1261, size: 16, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1662, file: !1663, line: 222, baseType: !194, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1663, line: 239, baseType: !1694, size: 320, offset: 1024)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1663, line: 239, size: 320, elements: !1695)
!1695 = !{!1696, !1723}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1694, file: !1663, line: 240, baseType: !1697, size: 320)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1663, line: 108, size: 320, elements: !1698)
!1698 = !{!1699, !1700, !1712, !1715, !1722}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1697, file: !1663, line: 110, baseType: !194, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1663, line: 111, baseType: !1701, size: 64, offset: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1697, file: !1663, line: 111, size: 64, elements: !1702)
!1702 = !{!1703, !1711}
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !1663, line: 112, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !1663, line: 112, size: 64, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1704, file: !1663, line: 114, baseType: !142, size: 16)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1704, file: !1663, line: 115, baseType: !1708, size: 48, offset: 16)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 48, elements: !1709)
!1709 = !{!1710}
!1710 = !DISubrange(count: 6)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1701, file: !1663, line: 121, baseType: !194, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1697, file: !1663, line: 123, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1663, line: 96, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1697, file: !1663, line: 124, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1663, line: 102, size: 192, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1717, file: !1663, line: 103, baseType: !404, size: 128, align: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1717, file: !1663, line: 104, baseType: !268, size: 32, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1717, file: !1663, line: 105, baseType: !527, size: 8, offset: 160)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1697, file: !1663, line: 125, baseType: !282, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1663, line: 241, baseType: !1724, size: 320)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !1663, line: 241, size: 320, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1724, file: !1663, line: 242, baseType: !194, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1724, file: !1663, line: 243, baseType: !194, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1724, file: !1663, line: 244, baseType: !1713, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1724, file: !1663, line: 245, baseType: !1716, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1724, file: !1663, line: 246, baseType: !320, size: 64, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1663, line: 254, baseType: !1732, size: 256, offset: 1344)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1663, line: 254, size: 256, elements: !1733)
!1733 = !{!1734, !1740}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1732, file: !1663, line: 255, baseType: !1735, size: 256)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1663, line: 128, size: 256, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1735, file: !1663, line: 129, baseType: !139, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1735, file: !1663, line: 130, baseType: !1739, size: 256)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !1217)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1663, line: 256, baseType: !1741, size: 256)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !1663, line: 256, size: 256, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1741, file: !1663, line: 258, baseType: !212, size: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1741, file: !1663, line: 259, baseType: !1745, size: 128, offset: 128)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1746, line: 22, size: 128, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !{!1748, !1751}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1745, file: !1746, line: 23, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1746, line: 23, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1745, file: !1746, line: 24, baseType: !194, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1662, file: !1663, line: 274, baseType: !1753, size: 64, offset: 1600)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1663, line: 170, size: 192, elements: !1755)
!1755 = !{!1756, !1765, !1766}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1754, file: !1663, line: 171, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1663, line: 165, baseType: !1758)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!140, !1661, !1761, !1763, !1661}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1754, file: !1663, line: 172, baseType: !1661, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1754, file: !1663, line: 173, baseType: !1713, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1633, file: !1634, line: 138, baseType: !1661, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1633, file: !1634, line: 139, baseType: !1661, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1633, file: !1634, line: 140, baseType: !1661, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1633, file: !1634, line: 145, baseType: !1771, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1773, line: 13, size: 896, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1772, file: !1773, line: 14, baseType: !268, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1772, file: !1773, line: 15, baseType: !246, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1772, file: !1773, line: 16, baseType: !246, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1772, file: !1773, line: 21, baseType: !202, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1772, file: !1773, line: 27, baseType: !194, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1772, file: !1773, line: 28, baseType: !194, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1772, file: !1773, line: 29, baseType: !202, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1772, file: !1773, line: 32, baseType: !677, size: 128, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1772, file: !1773, line: 33, baseType: !472, size: 32, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1772, file: !1773, line: 37, baseType: !202, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1772, file: !1773, line: 44, baseType: !1786, size: 256, offset: 640)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1787, line: 15, size: 256, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !1787, line: 16, baseType: !843)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1786, file: !1787, line: 18, baseType: !140, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1786, file: !1787, line: 19, baseType: !140, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1786, file: !1787, line: 20, baseType: !140, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1786, file: !1787, line: 21, baseType: !140, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1786, file: !1787, line: 22, baseType: !194, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !1787, line: 23, baseType: !194, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1633, file: !1634, line: 146, baseType: !1564, size: 64, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1633, file: !1634, line: 147, baseType: !1798, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1634, line: 25, size: 64, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1799, file: !1634, line: 26, baseType: !246, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1799, file: !1634, line: 27, baseType: !140, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1799, file: !1634, line: 28, baseType: !1804, offset: 64)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, elements: !1805)
!1805 = !{!1806}
!1806 = !DISubrange(count: 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !1634, line: 149, baseType: !1808, size: 128, offset: 1152)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !1634, line: 149, size: 128, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1808, file: !1634, line: 150, baseType: !140, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1808, file: !1634, line: 151, baseType: !404, size: 128, align: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1273, file: !1274, line: 926, baseType: !1631, size: 64, offset: 8576)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1273, file: !1274, line: 929, baseType: !1631, size: 64, offset: 8640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1273, file: !1274, line: 933, baseType: !1661, size: 64, offset: 8704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1273, file: !1274, line: 943, baseType: !1816, size: 128, offset: 8768)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, elements: !1817)
!1817 = !{!1818}
!1818 = !DISubrange(count: 16)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1273, file: !1274, line: 945, baseType: !1820, size: 64, offset: 8896)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1274, line: 49, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1273, file: !1274, line: 956, baseType: !1823, size: 64, offset: 8960)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1274, line: 45, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1273, file: !1274, line: 959, baseType: !1826, size: 64, offset: 9024)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1274, line: 959, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1273, file: !1274, line: 962, baseType: !1829, size: 64, offset: 9088)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1274, line: 66, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1273, file: !1274, line: 966, baseType: !1832, size: 64, offset: 9152)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1834, line: 31, size: 576, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !{!1836, !1837, !1840, !1843, !1846, !1847, !1850, !1853, !1854}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1833, file: !1834, line: 32, baseType: !246, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1833, file: !1834, line: 33, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1834, line: 9, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1833, file: !1834, line: 34, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1834, line: 10, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1833, file: !1834, line: 35, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1834, line: 8, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1833, file: !1834, line: 36, baseType: !1545, size: 64, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1833, file: !1834, line: 37, baseType: !1848, size: 64, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1663, line: 34, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1833, file: !1834, line: 38, baseType: !1851, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1834, line: 38, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1833, file: !1834, line: 39, baseType: !1851, size: 64, offset: 448)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1833, file: !1834, line: 40, baseType: !1855, size: 64, offset: 512)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1834, line: 12, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1273, file: !1274, line: 969, baseType: !1858, size: 64, offset: 9216)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1860, line: 82, size: 7296, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1897, !1906, !1907, !1909, !1910, !1911, !1912, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1942, !1943, !1950, !1951, !1952, !1953, !1954, !1955}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1859, file: !1860, line: 83, baseType: !268, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1859, file: !1860, line: 84, baseType: !246, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1859, file: !1860, line: 85, baseType: !140, size: 32, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1859, file: !1860, line: 86, baseType: !212, size: 128, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1859, file: !1860, line: 88, baseType: !1532, size: 128, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1859, file: !1860, line: 91, baseType: !1272, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1859, file: !1860, line: 94, baseType: !1869, size: 192, offset: 448)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1870, line: 30, size: 192, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1869, file: !1870, line: 31, baseType: !212, size: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1869, file: !1870, line: 32, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1875, line: 25, baseType: !1876)
!1875 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1875, line: 23, size: 64, elements: !1877)
!1877 = !{!1878}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1876, file: !1875, line: 24, baseType: !1421, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1859, file: !1860, line: 97, baseType: !673, size: 64, offset: 640)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1859, file: !1860, line: 100, baseType: !140, size: 32, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1859, file: !1860, line: 106, baseType: !140, size: 32, offset: 736)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1859, file: !1860, line: 107, baseType: !1272, size: 64, offset: 768)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1859, file: !1860, line: 110, baseType: !140, size: 32, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1860, line: 111, baseType: !5, size: 32, offset: 864)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1859, file: !1860, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1859, file: !1860, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1859, file: !1860, line: 128, baseType: !140, size: 32, offset: 928)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1859, file: !1860, line: 129, baseType: !212, size: 128, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1859, file: !1860, line: 132, baseType: !1343, size: 512, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1859, file: !1860, line: 133, baseType: !1351, size: 64, offset: 1600)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1859, file: !1860, line: 140, baseType: !1892, size: 256, offset: 1664)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1893, size: 256, elements: !1653)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1860, line: 38, size: 128, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1893, file: !1860, line: 39, baseType: !458, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1893, file: !1860, line: 40, baseType: !458, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1859, file: !1860, line: 146, baseType: !1898, size: 192, offset: 1920)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1860, line: 66, size: 192, elements: !1899)
!1899 = !{!1900}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1898, file: !1860, line: 67, baseType: !1901, size: 192)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1860, line: 47, size: 192, elements: !1902)
!1902 = !{!1903, !1904, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1901, file: !1860, line: 48, baseType: !204, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1901, file: !1860, line: 49, baseType: !204, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1901, file: !1860, line: 50, baseType: !204, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1859, file: !1860, line: 150, baseType: !1614, size: 640, offset: 2112)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1859, file: !1860, line: 153, baseType: !1908, size: 256, offset: 2752)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1522, size: 256, elements: !1217)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1859, file: !1860, line: 159, baseType: !1522, size: 64, offset: 3008)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1859, file: !1860, line: 162, baseType: !140, size: 32, offset: 3072)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1859, file: !1860, line: 164, baseType: !259, size: 64, offset: 3136)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1859, file: !1860, line: 175, baseType: !1913, size: 32, offset: 3200)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !427, line: 805, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 798, size: 32, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1914, file: !427, line: 803, baseType: !426, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1914, file: !427, line: 804, baseType: !229, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1859, file: !1860, line: 176, baseType: !458, size: 64, offset: 3264)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1859, file: !1860, line: 176, baseType: !458, size: 64, offset: 3328)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1859, file: !1860, line: 176, baseType: !458, size: 64, offset: 3392)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1859, file: !1860, line: 176, baseType: !458, size: 64, offset: 3456)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1859, file: !1860, line: 177, baseType: !458, size: 64, offset: 3520)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1859, file: !1860, line: 178, baseType: !458, size: 64, offset: 3584)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1859, file: !1860, line: 179, baseType: !1602, size: 128, offset: 3648)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1859, file: !1860, line: 180, baseType: !194, size: 64, offset: 3776)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1859, file: !1860, line: 180, baseType: !194, size: 64, offset: 3840)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1859, file: !1860, line: 180, baseType: !194, size: 64, offset: 3904)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1859, file: !1860, line: 180, baseType: !194, size: 64, offset: 3968)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1859, file: !1860, line: 181, baseType: !194, size: 64, offset: 4032)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1859, file: !1860, line: 181, baseType: !194, size: 64, offset: 4096)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1859, file: !1860, line: 181, baseType: !194, size: 64, offset: 4160)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1859, file: !1860, line: 181, baseType: !194, size: 64, offset: 4224)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1859, file: !1860, line: 182, baseType: !194, size: 64, offset: 4288)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1859, file: !1860, line: 182, baseType: !194, size: 64, offset: 4352)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1859, file: !1860, line: 182, baseType: !194, size: 64, offset: 4416)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1859, file: !1860, line: 182, baseType: !194, size: 64, offset: 4480)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1859, file: !1860, line: 183, baseType: !194, size: 64, offset: 4544)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1859, file: !1860, line: 183, baseType: !194, size: 64, offset: 4608)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1859, file: !1860, line: 184, baseType: !1940, offset: 4672)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1941, line: 12, elements: !243)
!1941 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1859, file: !1860, line: 192, baseType: !460, size: 64, offset: 4672)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1859, file: !1860, line: 203, baseType: !1944, size: 2048, offset: 4736)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1945, size: 2048, elements: !1817)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1946, line: 43, size: 128, elements: !1947)
!1946 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1945, file: !1946, line: 44, baseType: !368, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1945, file: !1946, line: 45, baseType: !368, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1859, file: !1860, line: 220, baseType: !527, size: 8, offset: 6784)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1859, file: !1860, line: 221, baseType: !1261, size: 16, offset: 6800)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1859, file: !1860, line: 222, baseType: !1261, size: 16, offset: 6816)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1859, file: !1860, line: 224, baseType: !1036, size: 64, offset: 6848)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1859, file: !1860, line: 227, baseType: !224, size: 192, offset: 6912)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1859, file: !1860, line: 233, baseType: !224, size: 192, offset: 7104)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1273, file: !1274, line: 970, baseType: !1957, size: 64, offset: 9280)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1860, line: 20, size: 16576, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1958, file: !1860, line: 21, baseType: !229)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1958, file: !1860, line: 22, baseType: !268, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1958, file: !1860, line: 23, baseType: !1532, size: 128, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1958, file: !1860, line: 24, baseType: !1964, size: 16384, offset: 192)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1965, size: 16384, elements: !325)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1870, line: 49, size: 256, elements: !1966)
!1966 = !{!1967}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1965, file: !1870, line: 50, baseType: !1968, size: 256)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1870, line: 35, size: 256, elements: !1969)
!1969 = !{!1970, !1977, !1978, !1984}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1968, file: !1870, line: 37, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1972, line: 19, baseType: !1973)
!1972 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1972, line: 18, baseType: !1975)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !140}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1968, file: !1870, line: 38, baseType: !194, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1968, file: !1870, line: 44, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1972, line: 22, baseType: !1980)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1972, line: 21, baseType: !1982)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1968, file: !1870, line: 46, baseType: !1874, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1273, file: !1274, line: 971, baseType: !1874, size: 64, offset: 9344)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1273, file: !1274, line: 972, baseType: !1874, size: 64, offset: 9408)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1273, file: !1274, line: 974, baseType: !1874, size: 64, offset: 9472)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1273, file: !1274, line: 975, baseType: !1869, size: 192, offset: 9536)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1273, file: !1274, line: 976, baseType: !194, size: 64, offset: 9728)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1273, file: !1274, line: 977, baseType: !366, size: 64, offset: 9792)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1273, file: !1274, line: 978, baseType: !5, size: 32, offset: 9856)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1273, file: !1274, line: 980, baseType: !407, size: 64, offset: 9920)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1273, file: !1274, line: 989, baseType: !1994, size: 128, offset: 9984)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1995, line: 35, size: 128, elements: !1996)
!1995 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !1998, !1999}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1994, file: !1995, line: 36, baseType: !140, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1994, file: !1995, line: 37, baseType: !246, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1994, file: !1995, line: 38, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1995, line: 23, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1273, file: !1274, line: 992, baseType: !458, size: 64, offset: 10112)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1273, file: !1274, line: 993, baseType: !458, size: 64, offset: 10176)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1273, file: !1274, line: 996, baseType: !229, offset: 10240)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1273, file: !1274, line: 999, baseType: !843, offset: 10240)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1273, file: !1274, line: 1001, baseType: !2007, size: 64, offset: 10240)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1274, line: 636, size: 64, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2007, file: !1274, line: 637, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1273, file: !1274, line: 1005, baseType: !822, size: 128, offset: 10304)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1273, file: !1274, line: 1007, baseType: !1272, size: 64, offset: 10432)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1273, file: !1274, line: 1009, baseType: !2014, size: 64, offset: 10496)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1274, line: 1009, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1273, file: !1274, line: 1043, baseType: !139, size: 64, offset: 10560)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1273, file: !1274, line: 1046, baseType: !2018, size: 64, offset: 10624)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1274, line: 41, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1273, file: !1274, line: 1050, baseType: !2021, size: 64, offset: 10688)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1274, line: 42, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1273, file: !1274, line: 1054, baseType: !2024, size: 64, offset: 10752)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1274, line: 55, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1273, file: !1274, line: 1056, baseType: !2027, size: 64, offset: 10816)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1274, line: 40, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1273, file: !1274, line: 1058, baseType: !2030, size: 64, offset: 10880)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2032, line: 99, size: 704, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040, !2059, !2060}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2031, file: !2032, line: 100, baseType: !202, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2031, file: !2032, line: 101, baseType: !246, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2031, file: !2032, line: 102, baseType: !246, size: 32, offset: 96)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2031, file: !2032, line: 105, baseType: !229, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2031, file: !2032, line: 107, baseType: !146, size: 16, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2031, file: !2032, line: 109, baseType: !813, size: 128, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2031, file: !2032, line: 110, baseType: !2041, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2032, line: 73, size: 448, elements: !2043)
!2043 = !{!2044, !2047, !2048, !2053, !2058}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2042, file: !2032, line: 74, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2032, line: 74, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2042, file: !2032, line: 75, baseType: !2030, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2032, line: 83, baseType: !2049, size: 128, offset: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2032, line: 83, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2049, file: !2032, line: 84, baseType: !212, size: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2049, file: !2032, line: 85, baseType: !996, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2032, line: 87, baseType: !2054, size: 128, offset: 256)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2032, line: 87, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2054, file: !2032, line: 88, baseType: !677, size: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2054, file: !2032, line: 89, baseType: !404, size: 128, align: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !2032, line: 92, baseType: !5, size: 32, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2031, file: !2032, line: 111, baseType: !673, size: 64, offset: 384)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2031, file: !2032, line: 113, baseType: !198, size: 256, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1273, file: !1274, line: 1061, baseType: !2062, size: 64, offset: 10944)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1274, line: 43, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1273, file: !1274, line: 1064, baseType: !194, size: 64, offset: 11008)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1273, file: !1274, line: 1065, baseType: !2066, size: 64, offset: 11072)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1870, line: 14, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1870, line: 12, size: 384, elements: !2069)
!2069 = !{!2070}
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !1870, line: 13, baseType: !2071, size: 384)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !1870, line: 13, size: 384, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2071, file: !1870, line: 13, baseType: !140, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2071, file: !1870, line: 13, baseType: !140, size: 32, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2071, file: !1870, line: 13, baseType: !140, size: 32, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2071, file: !1870, line: 13, baseType: !2077, size: 256, offset: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2078, line: 32, size: 256, elements: !2079)
!2078 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2085, !2098, !2104, !2113, !2133, !2138}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2077, file: !2078, line: 37, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2078, line: 34, size: 64, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2081, file: !2078, line: 35, baseType: !1511, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2081, file: !2078, line: 36, baseType: !478, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2077, file: !2078, line: 45, baseType: !2086, size: 192)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2078, line: 40, size: 192, elements: !2087)
!2087 = !{!2088, !2090, !2091, !2097}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2086, file: !2078, line: 41, baseType: !2089, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !353, line: 95, baseType: !140)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2086, file: !2078, line: 42, baseType: !140, size: 32, offset: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2086, file: !2078, line: 43, baseType: !2092, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2078, line: 11, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2078, line: 8, size: 64, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2093, file: !2078, line: 9, baseType: !140, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2093, file: !2078, line: 10, baseType: !139, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2086, file: !2078, line: 44, baseType: !140, size: 32, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2077, file: !2078, line: 52, baseType: !2099, size: 128)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2078, line: 48, size: 128, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2099, file: !2078, line: 49, baseType: !1511, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2099, file: !2078, line: 50, baseType: !478, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2099, file: !2078, line: 51, baseType: !2092, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2077, file: !2078, line: 61, baseType: !2105, size: 256)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2078, line: 55, size: 256, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2112}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2105, file: !2078, line: 56, baseType: !1511, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2105, file: !2078, line: 57, baseType: !478, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2105, file: !2078, line: 58, baseType: !140, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2105, file: !2078, line: 59, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !353, line: 94, baseType: !354)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2105, file: !2078, line: 60, baseType: !2111, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2077, file: !2078, line: 95, baseType: !2114, size: 256)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2078, line: 64, size: 256, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2114, file: !2078, line: 65, baseType: !139, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !2078, line: 77, baseType: !2118, size: 192, offset: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !2078, line: 77, size: 192, elements: !2119)
!2119 = !{!2120, !2121, !2128}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2118, file: !2078, line: 82, baseType: !1261, size: 16)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2118, file: !2078, line: 88, baseType: !2122, size: 192)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2118, file: !2078, line: 84, size: 192, elements: !2123)
!2123 = !{!2124, !2126, !2127}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2122, file: !2078, line: 85, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 64, elements: !1381)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2122, file: !2078, line: 86, baseType: !139, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2122, file: !2078, line: 87, baseType: !139, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2118, file: !2078, line: 93, baseType: !2129, size: 96)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2118, file: !2078, line: 90, size: 96, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2129, file: !2078, line: 91, baseType: !2125, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2129, file: !2078, line: 92, baseType: !455, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2077, file: !2078, line: 101, baseType: !2134, size: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2078, line: 98, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2134, file: !2078, line: 99, baseType: !355, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2134, file: !2078, line: 100, baseType: !140, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2077, file: !2078, line: 108, baseType: !2139, size: 128)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2078, line: 104, size: 128, elements: !2140)
!2140 = !{!2141, !2142, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2139, file: !2078, line: 105, baseType: !139, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2139, file: !2078, line: 106, baseType: !140, size: 32, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2139, file: !2078, line: 107, baseType: !5, size: 32, offset: 96)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1273, file: !1274, line: 1067, baseType: !1940, offset: 11136)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1273, file: !1274, line: 1099, baseType: !2146, size: 64, offset: 11136)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1274, line: 56, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1273, file: !1274, line: 1103, baseType: !212, size: 128, offset: 11200)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1273, file: !1274, line: 1104, baseType: !2150, size: 64, offset: 11328)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1274, line: 46, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1273, file: !1274, line: 1105, baseType: !224, size: 192, offset: 11392)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1273, file: !1274, line: 1106, baseType: !5, size: 32, offset: 11584)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1273, file: !1274, line: 1109, baseType: !2155, size: 128, offset: 11648)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2156, size: 128, elements: !1653)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1274, line: 51, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1273, file: !1274, line: 1110, baseType: !224, size: 192, offset: 11776)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1273, file: !1274, line: 1111, baseType: !212, size: 128, offset: 11968)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1273, file: !1274, line: 1173, baseType: !2161, size: 64, offset: 12096)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2163, line: 62, size: 256, align: 256, elements: !2164)
!2163 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !{!2165, !2166, !2167, !2172}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2162, file: !2163, line: 75, baseType: !455, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2162, file: !2163, line: 90, baseType: !455, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2162, file: !2163, line: 124, baseType: !2168, size: 64, offset: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !2163, line: 109, size: 64, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2168, file: !2163, line: 110, baseType: !459, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2168, file: !2163, line: 112, baseType: !459, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2162, file: !2163, line: 144, baseType: !455, size: 32, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1273, file: !1274, line: 1174, baseType: !454, size: 32, offset: 12160)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1273, file: !1274, line: 1179, baseType: !194, size: 64, offset: 12224)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1273, file: !1274, line: 1182, baseType: !2176, size: 128, offset: 12288)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1213, line: 76, size: 128, elements: !2177)
!2177 = !{!2178, !2183, !2184}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2176, file: !1213, line: 85, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2180, line: 7, size: 64, elements: !2181)
!2180 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2179, file: !2180, line: 12, baseType: !1418, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2176, file: !1213, line: 88, baseType: !527, size: 8, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2176, file: !1213, line: 95, baseType: !527, size: 8, offset: 72)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1274, line: 1184, baseType: !2186, size: 128, offset: 12416)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !1274, line: 1184, size: 128, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2186, file: !1274, line: 1185, baseType: !268, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2186, file: !1274, line: 1186, baseType: !404, size: 128, align: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1273, file: !1274, line: 1190, baseType: !2191, size: 64, offset: 12544)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1274, line: 53, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1273, file: !1274, line: 1192, baseType: !2194, size: 128, offset: 12608)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1213, line: 64, size: 128, elements: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2194, file: !1213, line: 65, baseType: !795, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2194, file: !1213, line: 67, baseType: !455, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2194, file: !1213, line: 68, baseType: !455, size: 32, offset: 96)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1273, file: !1274, line: 1206, baseType: !140, size: 32, offset: 12736)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1273, file: !1274, line: 1207, baseType: !140, size: 32, offset: 12768)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1273, file: !1274, line: 1209, baseType: !194, size: 64, offset: 12800)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1273, file: !1274, line: 1219, baseType: !458, size: 64, offset: 12864)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1273, file: !1274, line: 1220, baseType: !458, size: 64, offset: 12928)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1273, file: !1274, line: 1317, baseType: !140, size: 32, offset: 12992)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1273, file: !1274, line: 1319, baseType: !1272, size: 64, offset: 13056)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1273, file: !1274, line: 1322, baseType: !2207, size: 64, offset: 13120)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2209, line: 56, size: 512, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2219}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2208, file: !2209, line: 57, baseType: !2207, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2208, file: !2209, line: 58, baseType: !139, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2208, file: !2209, line: 59, baseType: !194, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2208, file: !2209, line: 60, baseType: !194, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2208, file: !2209, line: 61, baseType: !883, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2208, file: !2209, line: 62, baseType: !5, size: 32, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2208, file: !2209, line: 63, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !138, line: 153, baseType: !458)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2208, file: !2209, line: 64, baseType: !2220, size: 64, offset: 448)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1273, file: !1274, line: 1326, baseType: !268, size: 32, offset: 13184)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1273, file: !1274, line: 1342, baseType: !139, size: 64, offset: 13248)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1273, file: !1274, line: 1343, baseType: !459, size: 64, offset: 13312)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1273, file: !1274, line: 1344, baseType: !458, size: 64, offset: 13376)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1273, file: !1274, line: 1345, baseType: !459, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1273, file: !1274, line: 1346, baseType: !459, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1273, file: !1274, line: 1347, baseType: !459, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1273, file: !1274, line: 1348, baseType: !404, size: 128, align: 64, offset: 13504)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1273, file: !1274, line: 1358, baseType: !2231, size: 34816, offset: 13824)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2232, line: 485, size: 34816, elements: !2233)
!2232 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2233 = !{!2234, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2263, !2264, !2265, !2266, !2267, !2268, !2271, !2272, !2273}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2231, file: !2232, line: 487, baseType: !2235, size: 192)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2236, size: 192, elements: !321)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2237, line: 16, size: 64, elements: !2238)
!2237 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2236, file: !2237, line: 17, baseType: !142, size: 16)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2236, file: !2237, line: 18, baseType: !142, size: 16, offset: 16)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2236, file: !2237, line: 19, baseType: !142, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2236, file: !2237, line: 19, baseType: !142, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2236, file: !2237, line: 19, baseType: !142, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2236, file: !2237, line: 19, baseType: !142, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2236, file: !2237, line: 19, baseType: !142, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2236, file: !2237, line: 20, baseType: !142, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2236, file: !2237, line: 20, baseType: !142, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2236, file: !2237, line: 20, baseType: !142, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2236, file: !2237, line: 20, baseType: !142, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2236, file: !2237, line: 20, baseType: !142, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2236, file: !2237, line: 20, baseType: !142, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2231, file: !2232, line: 491, baseType: !194, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2231, file: !2232, line: 495, baseType: !146, size: 16, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2231, file: !2232, line: 496, baseType: !146, size: 16, offset: 272)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2231, file: !2232, line: 497, baseType: !146, size: 16, offset: 288)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2231, file: !2232, line: 498, baseType: !146, size: 16, offset: 304)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2231, file: !2232, line: 502, baseType: !194, size: 64, offset: 320)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2231, file: !2232, line: 503, baseType: !194, size: 64, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2231, file: !2232, line: 514, baseType: !2260, size: 256, offset: 448)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2261, size: 256, elements: !1217)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2232, line: 483, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2231, file: !2232, line: 516, baseType: !194, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2231, file: !2232, line: 518, baseType: !194, size: 64, offset: 768)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2231, file: !2232, line: 520, baseType: !194, size: 64, offset: 832)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2231, file: !2232, line: 521, baseType: !194, size: 64, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2231, file: !2232, line: 522, baseType: !194, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2231, file: !2232, line: 528, baseType: !2269, size: 64, offset: 1024)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2232, line: 10, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2231, file: !2232, line: 535, baseType: !194, size: 64, offset: 1088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2231, file: !2232, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2231, file: !2232, line: 540, baseType: !2274, size: 33280, offset: 1536)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2275, line: 317, size: 33280, elements: !2276)
!2275 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2276 = !{!2277, !2278, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2274, file: !2275, line: 330, baseType: !5, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2274, file: !2275, line: 337, baseType: !194, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2274, file: !2275, line: 348, baseType: !2280, size: 32768, offset: 512)
!2280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2275, line: 304, size: 32768, elements: !2281)
!2281 = !{!2282, !2297, !2336, !2386, !2399}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2280, file: !2275, line: 305, baseType: !2283, size: 896)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2275, line: 12, size: 896, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2296}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2283, file: !2275, line: 13, baseType: !454, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2283, file: !2275, line: 14, baseType: !454, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2283, file: !2275, line: 15, baseType: !454, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2283, file: !2275, line: 16, baseType: !454, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2283, file: !2275, line: 17, baseType: !454, size: 32, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2283, file: !2275, line: 18, baseType: !454, size: 32, offset: 160)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2283, file: !2275, line: 19, baseType: !454, size: 32, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2283, file: !2275, line: 22, baseType: !2293, size: 640, offset: 224)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 640, elements: !2294)
!2294 = !{!2295}
!2295 = !DISubrange(count: 20)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2283, file: !2275, line: 25, baseType: !454, size: 32, offset: 864)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2280, file: !2275, line: 306, baseType: !2298, size: 4096, align: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2275, line: 34, size: 4096, align: 128, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2319, !2320, !2321, !2325, !2327, !2331}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2298, file: !2275, line: 35, baseType: !142, size: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2298, file: !2275, line: 36, baseType: !142, size: 16, offset: 16)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2298, file: !2275, line: 37, baseType: !142, size: 16, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2298, file: !2275, line: 38, baseType: !142, size: 16, offset: 48)
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !2275, line: 39, baseType: !2305, size: 128, offset: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2298, file: !2275, line: 39, size: 128, elements: !2306)
!2306 = !{!2307, !2312}
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !2275, line: 40, baseType: !2308, size: 128)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2275, line: 40, size: 128, elements: !2309)
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2308, file: !2275, line: 41, baseType: !458, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2308, file: !2275, line: 42, baseType: !458, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !2275, line: 44, baseType: !2313, size: 128)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2275, line: 44, size: 128, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2313, file: !2275, line: 45, baseType: !454, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2313, file: !2275, line: 46, baseType: !454, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2313, file: !2275, line: 47, baseType: !454, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2313, file: !2275, line: 48, baseType: !454, size: 32, offset: 96)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2298, file: !2275, line: 51, baseType: !454, size: 32, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2298, file: !2275, line: 52, baseType: !454, size: 32, offset: 224)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2298, file: !2275, line: 55, baseType: !2322, size: 1024, offset: 256)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 1024, elements: !2323)
!2323 = !{!2324}
!2324 = !DISubrange(count: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2298, file: !2275, line: 58, baseType: !2326, size: 2048, offset: 1280)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 2048, elements: !325)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2298, file: !2275, line: 60, baseType: !2328, size: 384, offset: 3328)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 384, elements: !2329)
!2329 = !{!2330}
!2330 = !DISubrange(count: 12)
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !2275, line: 62, baseType: !2332, size: 384, offset: 3712)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2298, file: !2275, line: 62, size: 384, elements: !2333)
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2332, file: !2275, line: 63, baseType: !2328, size: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2332, file: !2275, line: 64, baseType: !2328, size: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2280, file: !2275, line: 307, baseType: !2337, size: 1088)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2275, line: 79, size: 1088, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2385}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2337, file: !2275, line: 80, baseType: !454, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2337, file: !2275, line: 81, baseType: !454, size: 32, offset: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2337, file: !2275, line: 82, baseType: !454, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2337, file: !2275, line: 83, baseType: !454, size: 32, offset: 96)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2337, file: !2275, line: 84, baseType: !454, size: 32, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2337, file: !2275, line: 85, baseType: !454, size: 32, offset: 160)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2337, file: !2275, line: 86, baseType: !454, size: 32, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2337, file: !2275, line: 88, baseType: !2293, size: 640, offset: 224)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2337, file: !2275, line: 89, baseType: !1403, size: 8, offset: 864)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2337, file: !2275, line: 90, baseType: !1403, size: 8, offset: 872)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2337, file: !2275, line: 91, baseType: !1403, size: 8, offset: 880)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2337, file: !2275, line: 92, baseType: !1403, size: 8, offset: 888)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2337, file: !2275, line: 93, baseType: !1403, size: 8, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2337, file: !2275, line: 94, baseType: !1403, size: 8, offset: 904)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2337, file: !2275, line: 95, baseType: !2354, size: 64, offset: 960)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2356, line: 11, size: 128, elements: !2357)
!2356 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2355, file: !2356, line: 12, baseType: !355, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2355, file: !2356, line: 13, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2362, line: 56, size: 1344, elements: !2363)
!2362 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2361, file: !2362, line: 61, baseType: !194, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2361, file: !2362, line: 62, baseType: !194, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2361, file: !2362, line: 63, baseType: !194, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2361, file: !2362, line: 64, baseType: !194, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2361, file: !2362, line: 65, baseType: !194, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2361, file: !2362, line: 66, baseType: !194, size: 64, offset: 320)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2361, file: !2362, line: 68, baseType: !194, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2361, file: !2362, line: 69, baseType: !194, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2361, file: !2362, line: 70, baseType: !194, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2361, file: !2362, line: 71, baseType: !194, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2361, file: !2362, line: 72, baseType: !194, size: 64, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2361, file: !2362, line: 73, baseType: !194, size: 64, offset: 704)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2361, file: !2362, line: 74, baseType: !194, size: 64, offset: 768)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2361, file: !2362, line: 75, baseType: !194, size: 64, offset: 832)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2361, file: !2362, line: 76, baseType: !194, size: 64, offset: 896)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2361, file: !2362, line: 81, baseType: !194, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2361, file: !2362, line: 83, baseType: !194, size: 64, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2361, file: !2362, line: 84, baseType: !194, size: 64, offset: 1088)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2361, file: !2362, line: 85, baseType: !194, size: 64, offset: 1152)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2361, file: !2362, line: 86, baseType: !194, size: 64, offset: 1216)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2361, file: !2362, line: 87, baseType: !194, size: 64, offset: 1280)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2337, file: !2275, line: 96, baseType: !454, size: 32, offset: 1024)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2280, file: !2275, line: 308, baseType: !2387, size: 4608, align: 512)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2275, line: 289, size: 4608, align: 512, elements: !2388)
!2388 = !{!2389, !2390, !2397}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2387, file: !2275, line: 290, baseType: !2298, size: 4096, align: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2387, file: !2275, line: 291, baseType: !2391, size: 512, offset: 4096)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2275, line: 268, size: 512, elements: !2392)
!2392 = !{!2393, !2394, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2391, file: !2275, line: 269, baseType: !458, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2391, file: !2275, line: 270, baseType: !458, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2391, file: !2275, line: 271, baseType: !2396, size: 384, offset: 128)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 384, elements: !1709)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2387, file: !2275, line: 292, baseType: !2398, offset: 4608)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1403, elements: !1805)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2280, file: !2275, line: 309, baseType: !2400, size: 32768)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1403, size: 32768, elements: !2401)
!2401 = !{!2402}
!2402 = !DISubrange(count: 4096)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1269, file: !797, line: 378, baseType: !2404, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1265, file: !797, line: 384, baseType: !1586, size: 192, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1040, file: !797, line: 500, baseType: !229, offset: 6656)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1040, file: !797, line: 501, baseType: !2408, size: 64, offset: 6656)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !797, line: 387, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1040, file: !797, line: 516, baseType: !1564, size: 64, offset: 6720)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1040, file: !797, line: 519, baseType: !396, size: 64, offset: 6784)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1040, file: !797, line: 521, baseType: !2413, size: 64, offset: 6848)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !797, line: 521, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1040, file: !797, line: 545, baseType: !246, size: 32, offset: 6912)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1040, file: !797, line: 548, baseType: !527, size: 8, offset: 6944)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1040, file: !797, line: 550, baseType: !2418, offset: 6952)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2419, line: 142, elements: !243)
!2419 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1040, file: !797, line: 554, baseType: !198, size: 256, offset: 6976)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1040, file: !797, line: 557, baseType: !454, size: 32, offset: 7232)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1037, file: !797, line: 565, baseType: !193, offset: 7296)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1033, file: !797, line: 151, baseType: !246, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1025, file: !797, line: 156, baseType: !229, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 159, baseType: !2426, size: 128)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 159, size: 128, elements: !2427)
!2427 = !{!2428, !2492}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2426, file: !797, line: 161, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2431)
!2431 = !{!2432, !2442, !2463, !2464, !2465, !2466, !2467, !2479, !2480, !2481}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2430, file: !29, line: 111, baseType: !2433, size: 384)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2434)
!2434 = !{!2435, !2437, !2438, !2439, !2440, !2441}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2433, file: !29, line: 20, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2433, file: !29, line: 21, baseType: !2436, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2433, file: !29, line: 22, baseType: !2436, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2433, file: !29, line: 23, baseType: !194, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2433, file: !29, line: 24, baseType: !194, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2433, file: !29, line: 25, baseType: !194, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2430, file: !29, line: 112, baseType: !2443, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2445, line: 105, size: 128, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !{!2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2444, file: !2445, line: 110, baseType: !194, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2444, file: !2445, line: 118, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2445, line: 95, size: 448, elements: !2451)
!2451 = !{!2452, !2453, !2458, !2459, !2460, !2461, !2462}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2450, file: !2445, line: 96, baseType: !202, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2450, file: !2445, line: 97, baseType: !2454, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2445, line: 60, baseType: !2456)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{null, !2443}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2450, file: !2445, line: 98, baseType: !2454, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2450, file: !2445, line: 99, baseType: !527, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2450, file: !2445, line: 100, baseType: !527, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2450, file: !2445, line: 101, baseType: !404, size: 128, align: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2450, file: !2445, line: 102, baseType: !2443, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2430, file: !29, line: 113, baseType: !2444, size: 128, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2430, file: !29, line: 114, baseType: !1586, size: 192, offset: 576)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2430, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2430, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2430, file: !29, line: 117, baseType: !2468, size: 64, offset: 832)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2471)
!2471 = !{!2472, !2473, !2477, !2478}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2470, file: !29, line: 73, baseType: !903, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2470, file: !29, line: 78, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2429}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2470, file: !29, line: 83, baseType: !2474, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2470, file: !29, line: 89, baseType: !1089, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2430, file: !29, line: 118, baseType: !139, size: 64, offset: 896)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2430, file: !29, line: 119, baseType: !140, size: 32, offset: 960)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2430, file: !29, line: 120, baseType: !2482, size: 128, offset: 1024)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2430, file: !29, line: 120, size: 128, elements: !2483)
!2483 = !{!2484, !2490}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2482, file: !29, line: 121, baseType: !2485, size: 128)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2486, line: 6, size: 128, elements: !2487)
!2486 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2485, file: !2486, line: 7, baseType: !458, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2485, file: !2486, line: 8, baseType: !458, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2482, file: !29, line: 122, baseType: !2491)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2485, elements: !1805)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2426, file: !797, line: 162, baseType: !139, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !801, file: !797, line: 176, baseType: !404, size: 128, align: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 179, baseType: !2495, size: 32, offset: 384)
!2495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 179, size: 32, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2495, file: !797, line: 184, baseType: !246, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2495, file: !797, line: 192, baseType: !5, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2495, file: !797, line: 194, baseType: !5, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2495, file: !797, line: 195, baseType: !140, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !796, file: !797, line: 199, baseType: !246, size: 32, offset: 416)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !695, file: !42, line: 1964, baseType: !2503, size: 64, offset: 1344)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!355, !634, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2508, line: 12, size: 256, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2509 = !{!2510, !2511, !2512, !2513, !2514}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2507, file: !2508, line: 13, baseType: !137, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2507, file: !2508, line: 16, baseType: !140, size: 32, offset: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2507, file: !2508, line: 23, baseType: !194, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2507, file: !2508, line: 30, baseType: !194, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2507, file: !2508, line: 33, baseType: !2515, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !797, line: 27, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !695, file: !42, line: 1966, baseType: !2503, size: 64, offset: 1408)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !635, file: !42, line: 1424, baseType: !2519, size: 64, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2521)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2522)
!2522 = !{!2523, !2569, !2573, !2577, !2578, !2579, !2580, !2581, !2586, !2591, !2595}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2521, file: !36, line: 323, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!140, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2554, !2555, !2556}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2528, file: !36, line: 295, baseType: !677, size: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2528, file: !36, line: 296, baseType: !212, size: 128, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2528, file: !36, line: 297, baseType: !212, size: 128, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2528, file: !36, line: 298, baseType: !212, size: 128, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2528, file: !36, line: 299, baseType: !224, size: 192, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2528, file: !36, line: 300, baseType: !229, offset: 704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2528, file: !36, line: 301, baseType: !246, size: 32, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2528, file: !36, line: 302, baseType: !634, size: 64, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2528, file: !36, line: 303, baseType: !2539, size: 64, offset: 832)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2540)
!2540 = !{!2541, !2553}
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2539, file: !36, line: 69, baseType: !2542, size: 32)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2539, file: !36, line: 69, size: 32, elements: !2543)
!2543 = !{!2544, !2545, !2546}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2542, file: !36, line: 70, baseType: !472, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2542, file: !36, line: 71, baseType: !480, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2542, file: !36, line: 72, baseType: !2547, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2548, line: 24, baseType: !2549)
!2548 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2548, line: 22, size: 32, elements: !2550)
!2550 = !{!2551}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2549, file: !2548, line: 23, baseType: !2552, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2548, line: 20, baseType: !478)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2539, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2528, file: !36, line: 304, baseType: !568, size: 64, offset: 896)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2528, file: !36, line: 305, baseType: !194, size: 64, offset: 960)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2528, file: !36, line: 306, baseType: !2557, size: 576, offset: 1024)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2558)
!2558 = !{!2559, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2557, file: !36, line: 206, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !210)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2557, file: !36, line: 207, baseType: !2560, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2557, file: !36, line: 208, baseType: !2560, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2557, file: !36, line: 209, baseType: !2560, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2557, file: !36, line: 210, baseType: !2560, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2557, file: !36, line: 211, baseType: !2560, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2557, file: !36, line: 212, baseType: !2560, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2557, file: !36, line: 213, baseType: !575, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2557, file: !36, line: 214, baseType: !575, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2521, file: !36, line: 324, baseType: !2570, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2527, !634, !140}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2521, file: !36, line: 325, baseType: !2574, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2527}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2521, file: !36, line: 326, baseType: !2524, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2521, file: !36, line: 327, baseType: !2524, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2521, file: !36, line: 328, baseType: !2524, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2521, file: !36, line: 329, baseType: !723, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2521, file: !36, line: 332, baseType: !2582, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!2585, !466}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2521, file: !36, line: 333, baseType: !2587, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!140, !466, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2521, file: !36, line: 335, baseType: !2592, size: 64, offset: 576)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!140, !466, !2585}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2521, file: !36, line: 337, baseType: !2596, size: 64, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!140, !634, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !635, file: !42, line: 1425, baseType: !2601, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2604)
!2604 = !{!2605, !2609, !2610, !2614, !2615, !2616, !2631, !2654, !2658, !2659, !2682}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2603, file: !36, line: 429, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!140, !634, !140, !140, !584}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2603, file: !36, line: 430, baseType: !723, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2603, file: !36, line: 431, baseType: !2611, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!140, !634, !5}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2603, file: !36, line: 432, baseType: !2611, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2603, file: !36, line: 433, baseType: !723, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2603, file: !36, line: 434, baseType: !2617, size: 64, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!140, !634, !140, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2621, file: !36, line: 416, baseType: !140, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2621, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2621, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2621, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2621, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2621, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2621, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2621, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2603, file: !36, line: 435, baseType: !2632, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!140, !634, !2539, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2636, file: !36, line: 344, baseType: !140, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2636, file: !36, line: 345, baseType: !458, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2636, file: !36, line: 346, baseType: !458, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2636, file: !36, line: 347, baseType: !458, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2636, file: !36, line: 348, baseType: !458, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2636, file: !36, line: 349, baseType: !458, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2636, file: !36, line: 350, baseType: !458, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2636, file: !36, line: 351, baseType: !208, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2636, file: !36, line: 353, baseType: !208, size: 64, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2636, file: !36, line: 354, baseType: !140, size: 32, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2636, file: !36, line: 355, baseType: !140, size: 32, offset: 608)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2636, file: !36, line: 356, baseType: !458, size: 64, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2636, file: !36, line: 357, baseType: !458, size: 64, offset: 704)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2636, file: !36, line: 358, baseType: !458, size: 64, offset: 768)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2636, file: !36, line: 359, baseType: !208, size: 64, offset: 832)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2636, file: !36, line: 360, baseType: !140, size: 32, offset: 896)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2603, file: !36, line: 436, baseType: !2655, size: 64, offset: 448)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!140, !634, !2599, !2635}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2603, file: !36, line: 438, baseType: !2632, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2603, file: !36, line: 439, baseType: !2660, size: 64, offset: 576)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!140, !634, !2663}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2665)
!2665 = !{!2666, !2667}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2664, file: !36, line: 410, baseType: !5, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2664, file: !36, line: 411, baseType: !2668, size: 1344, offset: 64)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2669, size: 1344, elements: !321)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2681}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2669, file: !36, line: 396, baseType: !5, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2669, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2669, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2669, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2669, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2669, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2669, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2669, file: !36, line: 404, baseType: !460, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2669, file: !36, line: 405, baseType: !2680, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !138, line: 126, baseType: !458)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2669, file: !36, line: 406, baseType: !2680, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2603, file: !36, line: 440, baseType: !2611, size: 64, offset: 640)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !635, file: !42, line: 1426, baseType: !2684, size: 64, offset: 576)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !635, file: !42, line: 1427, baseType: !194, size: 64, offset: 640)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !635, file: !42, line: 1428, baseType: !194, size: 64, offset: 704)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !635, file: !42, line: 1429, baseType: !194, size: 64, offset: 768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !635, file: !42, line: 1430, baseType: !421, size: 64, offset: 832)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !635, file: !42, line: 1431, baseType: !837, size: 256, offset: 896)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !635, file: !42, line: 1432, baseType: !140, size: 32, offset: 1152)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !635, file: !42, line: 1433, baseType: !246, size: 32, offset: 1184)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !635, file: !42, line: 1437, baseType: !2695, size: 64, offset: 1216)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !635, file: !42, line: 1449, baseType: !2700, size: 64, offset: 1280)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !437, line: 34, size: 64, elements: !2701)
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2700, file: !437, line: 35, baseType: !440, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !635, file: !42, line: 1450, baseType: !212, size: 128, offset: 1344)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !635, file: !42, line: 1451, baseType: !2705, size: 64, offset: 1472)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !635, file: !42, line: 1452, baseType: !2027, size: 64, offset: 1536)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !635, file: !42, line: 1453, baseType: !2709, size: 64, offset: 1600)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !635, file: !42, line: 1454, baseType: !677, size: 128, offset: 1664)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !635, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !635, file: !42, line: 1456, baseType: !2714, size: 2432, offset: 1856)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2715)
!2715 = !{!2716, !2717, !2718, !2720, !2752}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2714, file: !36, line: 519, baseType: !5, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2714, file: !36, line: 520, baseType: !837, size: 256, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2714, file: !36, line: 521, baseType: !2719, size: 192, offset: 320)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 192, elements: !321)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2714, file: !36, line: 522, baseType: !2721, size: 1728, offset: 512)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2722, size: 1728, elements: !321)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2723)
!2723 = !{!2724, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2722, file: !36, line: 223, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2727)
!2727 = !{!2728, !2729, !2742, !2743}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2726, file: !36, line: 444, baseType: !140, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2726, file: !36, line: 445, baseType: !2730, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2733)
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2732, file: !36, line: 311, baseType: !723, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2732, file: !36, line: 312, baseType: !723, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2732, file: !36, line: 313, baseType: !723, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2732, file: !36, line: 314, baseType: !723, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2732, file: !36, line: 315, baseType: !2524, size: 64, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2732, file: !36, line: 316, baseType: !2524, size: 64, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2732, file: !36, line: 317, baseType: !2524, size: 64, offset: 384)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2732, file: !36, line: 318, baseType: !2596, size: 64, offset: 448)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2726, file: !36, line: 446, baseType: !668, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2726, file: !36, line: 447, baseType: !2725, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2722, file: !36, line: 224, baseType: !140, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2722, file: !36, line: 226, baseType: !212, size: 128, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2722, file: !36, line: 227, baseType: !194, size: 64, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2722, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2722, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2722, file: !36, line: 230, baseType: !2560, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2722, file: !36, line: 231, baseType: !2560, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2722, file: !36, line: 232, baseType: !139, size: 64, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2714, file: !36, line: 523, baseType: !2753, size: 192, offset: 2240)
!2753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2730, size: 192, elements: !321)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !635, file: !42, line: 1458, baseType: !2755, size: 2112, offset: 4288)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2756)
!2756 = !{!2757, !2758, !2759}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2755, file: !42, line: 1411, baseType: !140, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2755, file: !42, line: 1412, baseType: !1532, size: 128, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2755, file: !42, line: 1413, baseType: !2760, size: 1920, offset: 192)
!2760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2761, size: 1920, elements: !321)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2762, line: 12, size: 640, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2763 = !{!2764, !2772, !2774, !2779, !2780}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2761, file: !2762, line: 13, baseType: !2765, size: 320)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2766, line: 17, size: 320, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2767 = !{!2768, !2769, !2770, !2771}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2765, file: !2766, line: 18, baseType: !140, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2765, file: !2766, line: 19, baseType: !140, size: 32, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2765, file: !2766, line: 20, baseType: !1532, size: 128, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2765, file: !2766, line: 22, baseType: !404, size: 128, align: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2761, file: !2762, line: 14, baseType: !2773, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2761, file: !2762, line: 15, baseType: !2775, size: 64, offset: 384)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2776, line: 16, size: 64, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2775, file: !2776, line: 17, baseType: !1272, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2761, file: !2762, line: 16, baseType: !1532, size: 128, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2761, file: !2762, line: 17, baseType: !246, size: 32, offset: 576)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !635, file: !42, line: 1465, baseType: !139, size: 64, offset: 6400)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !635, file: !42, line: 1468, baseType: !454, size: 32, offset: 6464)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !635, file: !42, line: 1470, baseType: !575, size: 64, offset: 6528)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !635, file: !42, line: 1471, baseType: !575, size: 64, offset: 6592)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !635, file: !42, line: 1473, baseType: !455, size: 32, offset: 6656)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !635, file: !42, line: 1474, baseType: !2787, size: 64, offset: 6720)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !635, file: !42, line: 1477, baseType: !2790, size: 256, offset: 6784)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, elements: !2323)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !635, file: !42, line: 1478, baseType: !2792, size: 128, offset: 7040)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2793, line: 18, baseType: !2794)
!2793 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2793, line: 16, size: 128, elements: !2795)
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2794, file: !2793, line: 17, baseType: !2797, size: 128)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 128, elements: !1817)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !635, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !635, file: !42, line: 1481, baseType: !2800, size: 32, offset: 7200)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !138, line: 150, baseType: !5)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !635, file: !42, line: 1487, baseType: !224, size: 192, offset: 7232)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !635, file: !42, line: 1493, baseType: !282, size: 64, offset: 7424)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !635, file: !42, line: 1495, baseType: !2804, size: 64, offset: 7488)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !419, line: 135, size: 1024, align: 512, elements: !2807)
!2807 = !{!2808, !2812, !2813, !2820, !2826, !2830, !2834, !2838, !2839, !2843, !2847, !2852, !2856}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2806, file: !419, line: 136, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!140, !421, !5}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2806, file: !419, line: 137, baseType: !2809, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2806, file: !419, line: 138, baseType: !2814, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!140, !2817, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2806, file: !419, line: 139, baseType: !2821, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!140, !2817, !5, !282, !2824}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2806, file: !419, line: 141, baseType: !2827, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!140, !2817}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2806, file: !419, line: 142, baseType: !2831, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!140, !421}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2806, file: !419, line: 143, baseType: !2835, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !421}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2806, file: !419, line: 144, baseType: !2835, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2806, file: !419, line: 145, baseType: !2840, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !421, !466}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2806, file: !419, line: 146, baseType: !2844, size: 64, offset: 576)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!320, !421, !320, !140}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2806, file: !419, line: 147, baseType: !2848, size: 64, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!417, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2806, file: !419, line: 148, baseType: !2853, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!140, !584, !527}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2806, file: !419, line: 149, baseType: !2857, size: 64, offset: 768)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!421, !421, !2860}
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !635, file: !42, line: 1500, baseType: !140, size: 32, offset: 7552)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !635, file: !42, line: 1502, baseType: !2864, size: 448, offset: 7616)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2508, line: 60, size: 448, elements: !2865)
!2865 = !{!2866, !2871, !2872, !2873, !2874, !2875, !2876}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2864, file: !2508, line: 61, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!194, !2870, !2506}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2864, file: !2508, line: 63, baseType: !2867, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2864, file: !2508, line: 66, baseType: !355, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2864, file: !2508, line: 67, baseType: !140, size: 32, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2864, file: !2508, line: 68, baseType: !5, size: 32, offset: 224)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2864, file: !2508, line: 71, baseType: !212, size: 128, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2864, file: !2508, line: 77, baseType: !2877, size: 64, offset: 384)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !635, file: !42, line: 1505, baseType: !202, size: 64, offset: 8064)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !635, file: !42, line: 1508, baseType: !202, size: 64, offset: 8128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !635, file: !42, line: 1511, baseType: !140, size: 32, offset: 8192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !635, file: !42, line: 1514, baseType: !970, size: 32, offset: 8224)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !635, file: !42, line: 1517, baseType: !2883, size: 64, offset: 8256)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !199, line: 18, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !635, file: !42, line: 1518, baseType: !673, size: 64, offset: 8320)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !635, file: !42, line: 1525, baseType: !1564, size: 64, offset: 8384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !635, file: !42, line: 1532, baseType: !2888, size: 64, offset: 8448)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2889, line: 52, size: 64, elements: !2890)
!2889 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2890 = !{!2891}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2888, file: !2889, line: 53, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2889, line: 40, size: 256, elements: !2894)
!2894 = !{!2895, !2896, !2901}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2893, file: !2889, line: 42, baseType: !229)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2893, file: !2889, line: 44, baseType: !2897, size: 192)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2889, line: 28, size: 192, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2897, file: !2889, line: 29, baseType: !212, size: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2897, file: !2889, line: 31, baseType: !355, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2893, file: !2889, line: 49, baseType: !355, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !635, file: !42, line: 1533, baseType: !2888, size: 64, offset: 8512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !635, file: !42, line: 1534, baseType: !404, size: 128, align: 64, offset: 8576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !635, file: !42, line: 1535, baseType: !198, size: 256, offset: 8704)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !635, file: !42, line: 1537, baseType: !224, size: 192, offset: 8960)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !635, file: !42, line: 1542, baseType: !140, size: 32, offset: 9152)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !635, file: !42, line: 1545, baseType: !229, offset: 9184)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !635, file: !42, line: 1546, baseType: !212, size: 128, offset: 9216)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !635, file: !42, line: 1548, baseType: !229, offset: 9344)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !635, file: !42, line: 1549, baseType: !212, size: 128, offset: 9344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !467, file: !42, line: 624, baseType: !808, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !467, file: !42, line: 631, baseType: !194, size: 64, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !42, line: 639, baseType: !2914, size: 32, offset: 384)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !42, line: 639, size: 32, elements: !2915)
!2915 = !{!2916, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2914, file: !42, line: 640, baseType: !2917, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2914, file: !42, line: 641, baseType: !5, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !467, file: !42, line: 643, baseType: !550, size: 32, offset: 416)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !467, file: !42, line: 644, baseType: !568, size: 64, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !467, file: !42, line: 645, baseType: !571, size: 128, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !467, file: !42, line: 646, baseType: !571, size: 128, offset: 640)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !467, file: !42, line: 647, baseType: !571, size: 128, offset: 768)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !467, file: !42, line: 648, baseType: !229, offset: 896)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !467, file: !42, line: 649, baseType: !146, size: 16, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !467, file: !42, line: 650, baseType: !1403, size: 8, offset: 912)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !467, file: !42, line: 651, baseType: !1403, size: 8, offset: 920)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !467, file: !42, line: 652, baseType: !2680, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !467, file: !42, line: 659, baseType: !194, size: 64, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !467, file: !42, line: 660, baseType: !837, size: 256, offset: 1088)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !467, file: !42, line: 662, baseType: !194, size: 64, offset: 1344)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !467, file: !42, line: 663, baseType: !194, size: 64, offset: 1408)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !467, file: !42, line: 665, baseType: !677, size: 128, offset: 1472)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !467, file: !42, line: 666, baseType: !212, size: 128, offset: 1600)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !467, file: !42, line: 675, baseType: !212, size: 128, offset: 1728)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !467, file: !42, line: 676, baseType: !212, size: 128, offset: 1856)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !467, file: !42, line: 677, baseType: !212, size: 128, offset: 1984)
!2938 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !42, line: 678, baseType: !2939, size: 128, offset: 2112)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !42, line: 678, size: 128, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2939, file: !42, line: 679, baseType: !673, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2939, file: !42, line: 680, baseType: !404, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !467, file: !42, line: 682, baseType: !204, size: 64, offset: 2240)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !467, file: !42, line: 683, baseType: !204, size: 64, offset: 2304)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !467, file: !42, line: 684, baseType: !246, size: 32, offset: 2368)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !467, file: !42, line: 685, baseType: !246, size: 32, offset: 2400)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !467, file: !42, line: 686, baseType: !246, size: 32, offset: 2432)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !467, file: !42, line: 688, baseType: !246, size: 32, offset: 2464)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !42, line: 690, baseType: !2950, size: 64, offset: 2496)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !42, line: 690, size: 64, elements: !2951)
!2951 = !{!2952, !3174}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2950, file: !42, line: 691, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2956)
!2956 = !{!2957, !2958, !2962, !2966, !2970, !2971, !2972, !2976, !2989, !2990, !2998, !3002, !3003, !3007, !3008, !3012, !3017, !3018, !3022, !3026, !3134, !3138, !3139, !3143, !3144, !3148, !3152, !3157, !3161, !3165, !3169, !3173}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2955, file: !42, line: 1823, baseType: !668, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2955, file: !42, line: 1824, baseType: !2959, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!568, !396, !568, !140}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2955, file: !42, line: 1825, baseType: !2963, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!351, !396, !320, !366, !770}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2955, file: !42, line: 1826, baseType: !2967, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!351, !396, !282, !366, !770}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2955, file: !42, line: 1827, baseType: !907, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2955, file: !42, line: 1828, baseType: !907, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2955, file: !42, line: 1829, baseType: !2973, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!140, !910, !527}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2955, file: !42, line: 1830, baseType: !2977, size: 64, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!140, !396, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !2982)
!2982 = !{!2983, !2988}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2981, file: !42, line: 1777, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !2985)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!140, !2980, !282, !140, !568, !458, !5}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2981, file: !42, line: 1778, baseType: !568, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2955, file: !42, line: 1831, baseType: !2977, size: 64, offset: 512)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2955, file: !42, line: 1832, baseType: !2991, size: 64, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!2994, !396, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2995, line: 52, baseType: !5)
!2995 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !654, line: 27, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2955, file: !42, line: 1833, baseType: !2999, size: 64, offset: 640)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!355, !396, !5, !194}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2955, file: !42, line: 1834, baseType: !2999, size: 64, offset: 704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2955, file: !42, line: 1835, baseType: !3004, size: 64, offset: 768)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!140, !396, !1043}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2955, file: !42, line: 1836, baseType: !194, size: 64, offset: 832)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2955, file: !42, line: 1837, baseType: !3009, size: 64, offset: 896)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!140, !466, !396}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2955, file: !42, line: 1838, baseType: !3013, size: 64, offset: 960)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!140, !396, !3016}
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !139)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2955, file: !42, line: 1839, baseType: !3009, size: 64, offset: 1024)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2955, file: !42, line: 1840, baseType: !3019, size: 64, offset: 1088)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!140, !396, !568, !568, !140}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2955, file: !42, line: 1841, baseType: !3023, size: 64, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!140, !140, !396, !140}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2955, file: !42, line: 1842, baseType: !3027, size: 64, offset: 1216)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!140, !396, !140, !3030}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3064, !3065, !3066, !3079, !3110}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3031, file: !42, line: 1063, baseType: !3030, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3031, file: !42, line: 1064, baseType: !212, size: 128, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3031, file: !42, line: 1065, baseType: !677, size: 128, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3031, file: !42, line: 1066, baseType: !212, size: 128, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3031, file: !42, line: 1069, baseType: !212, size: 128, offset: 448)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3031, file: !42, line: 1072, baseType: !3016, size: 64, offset: 576)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3031, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3031, file: !42, line: 1074, baseType: !464, size: 8, offset: 672)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3031, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3031, file: !42, line: 1076, baseType: !140, size: 32, offset: 736)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3031, file: !42, line: 1077, baseType: !1532, size: 128, offset: 768)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3031, file: !42, line: 1078, baseType: !396, size: 64, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3031, file: !42, line: 1079, baseType: !568, size: 64, offset: 960)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3031, file: !42, line: 1080, baseType: !568, size: 64, offset: 1024)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3031, file: !42, line: 1082, baseType: !3048, size: 64, offset: 1088)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !3050)
!3050 = !{!3051, !3059, !3060, !3061, !3062, !3063}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3049, file: !42, line: 1315, baseType: !3052)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3053, line: 20, baseType: !3054)
!3053 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3053, line: 11, elements: !3055)
!3055 = !{!3056}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3054, file: !3053, line: 12, baseType: !3057)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !241, line: 33, baseType: !3058)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 31, elements: !243)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3049, file: !42, line: 1316, baseType: !140, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3049, file: !42, line: 1317, baseType: !140, size: 32, offset: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3049, file: !42, line: 1318, baseType: !3048, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3049, file: !42, line: 1319, baseType: !396, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3049, file: !42, line: 1320, baseType: !404, size: 128, align: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3031, file: !42, line: 1084, baseType: !194, size: 64, offset: 1152)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3031, file: !42, line: 1085, baseType: !194, size: 64, offset: 1216)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3031, file: !42, line: 1087, baseType: !3067, size: 64, offset: 1280)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3069)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !3070)
!3070 = !{!3071, !3075}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3069, file: !42, line: 1012, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !3030, !3030}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3069, file: !42, line: 1013, baseType: !3076, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3030}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3031, file: !42, line: 1088, baseType: !3080, size: 64, offset: 1344)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3083)
!3083 = !{!3084, !3088, !3092, !3093, !3097, !3101, !3105, !3109}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3082, file: !42, line: 1017, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!3016, !3016}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3082, file: !42, line: 1018, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3016}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3082, file: !42, line: 1019, baseType: !3076, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3082, file: !42, line: 1020, baseType: !3094, size: 64, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!140, !3030, !140}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3082, file: !42, line: 1021, baseType: !3098, size: 64, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!527, !3030}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3082, file: !42, line: 1022, baseType: !3102, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!140, !3030, !140, !215}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3082, file: !42, line: 1023, baseType: !3106, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !3030, !884}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3082, file: !42, line: 1024, baseType: !3098, size: 64, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3031, file: !42, line: 1097, baseType: !3111, size: 256, offset: 1408)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !42, line: 1089, size: 256, elements: !3112)
!3112 = !{!3113, !3122, !3128}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3111, file: !42, line: 1090, baseType: !3114, size: 256)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3115, line: 10, size: 256, elements: !3116)
!3115 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3116 = !{!3117, !3118, !3121}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3114, file: !3115, line: 11, baseType: !454, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3114, file: !3115, line: 12, baseType: !3119, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3115, line: 5, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3114, file: !3115, line: 13, baseType: !212, size: 128, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3111, file: !42, line: 1091, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3115, line: 17, size: 64, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3123, file: !3115, line: 18, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3115, line: 16, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3111, file: !42, line: 1096, baseType: !3129, size: 192)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !42, line: 1092, size: 192, elements: !3130)
!3130 = !{!3131, !3132, !3133}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3129, file: !42, line: 1093, baseType: !212, size: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3129, file: !42, line: 1094, baseType: !140, size: 32, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3129, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2955, file: !42, line: 1843, baseType: !3135, size: 64, offset: 1280)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!351, !396, !795, !140, !366, !770, !140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2955, file: !42, line: 1844, baseType: !1163, size: 64, offset: 1344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2955, file: !42, line: 1845, baseType: !3140, size: 64, offset: 1408)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!140, !140}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2955, file: !42, line: 1846, baseType: !3027, size: 64, offset: 1472)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2955, file: !42, line: 1847, baseType: !3145, size: 64, offset: 1536)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!351, !2191, !396, !770, !366, !5}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2955, file: !42, line: 1848, baseType: !3149, size: 64, offset: 1600)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!351, !396, !770, !2191, !366, !5}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2955, file: !42, line: 1849, baseType: !3153, size: 64, offset: 1664)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!140, !396, !355, !3156, !884}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2955, file: !42, line: 1850, baseType: !3158, size: 64, offset: 1728)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!355, !396, !140, !568, !568}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2955, file: !42, line: 1852, baseType: !3162, size: 64, offset: 1792)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{null, !749, !396}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2955, file: !42, line: 1856, baseType: !3166, size: 64, offset: 1856)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!351, !396, !568, !396, !568, !366, !5}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2955, file: !42, line: 1858, baseType: !3170, size: 64, offset: 1920)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!568, !396, !568, !396, !568, !568, !5}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2955, file: !42, line: 1861, baseType: !3019, size: 64, offset: 1984)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2950, file: !42, line: 692, baseType: !702, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !467, file: !42, line: 694, baseType: !3176, size: 64, offset: 2560)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3177, file: !42, line: 1101, baseType: !229)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3177, file: !42, line: 1102, baseType: !212, size: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3177, file: !42, line: 1103, baseType: !212, size: 128, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3177, file: !42, line: 1104, baseType: !212, size: 128, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !467, file: !42, line: 695, baseType: !809, size: 1216, align: 64, offset: 2624)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !467, file: !42, line: 696, baseType: !212, size: 128, offset: 3840)
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !42, line: 697, baseType: !3186, size: 64, offset: 3968)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !42, line: 697, size: 64, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3201, !3202}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3186, file: !42, line: 698, baseType: !2191, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3186, file: !42, line: 699, baseType: !2705, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3186, file: !42, line: 700, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3193, line: 14, size: 832, elements: !3194)
!3193 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3192, file: !3193, line: 15, baseType: !278, size: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3192, file: !3193, line: 16, baseType: !668, size: 64, offset: 512)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3192, file: !3193, line: 17, baseType: !2953, size: 64, offset: 576)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3192, file: !3193, line: 18, baseType: !212, size: 128, offset: 640)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3192, file: !3193, line: 19, baseType: !550, size: 32, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3192, file: !3193, line: 20, baseType: !5, size: 32, offset: 800)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3186, file: !42, line: 701, baseType: !320, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3186, file: !42, line: 702, baseType: !5, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !467, file: !42, line: 705, baseType: !455, size: 32, offset: 4032)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !467, file: !42, line: 708, baseType: !455, size: 32, offset: 4064)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !467, file: !42, line: 709, baseType: !2787, size: 64, offset: 4096)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !467, file: !42, line: 720, baseType: !139, size: 64, offset: 4160)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !422, file: !419, line: 98, baseType: !3208, size: 256, offset: 448)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 256, elements: !2323)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !422, file: !419, line: 101, baseType: !3210, size: 32, offset: 704)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3211, line: 25, size: 32, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3212 = !{!3213}
!3213 = !DIDerivedType(tag: DW_TAG_member, scope: !3210, file: !3211, line: 26, baseType: !3214, size: 32)
!3214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3210, file: !3211, line: 26, size: 32, elements: !3215)
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !3211, line: 30, baseType: !3217, size: 32)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !3211, line: 30, size: 32, elements: !3218)
!3218 = !{!3219, !3220}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3217, file: !3211, line: 31, baseType: !229)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3217, file: !3211, line: 32, baseType: !140, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !422, file: !419, line: 102, baseType: !2804, size: 64, offset: 768)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !422, file: !419, line: 103, baseType: !634, size: 64, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !422, file: !419, line: 104, baseType: !194, size: 64, offset: 896)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !422, file: !419, line: 105, baseType: !139, size: 64, offset: 960)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !419, line: 107, baseType: !3226, size: 128, offset: 1024)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !419, line: 107, size: 128, elements: !3227)
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3226, file: !419, line: 108, baseType: !212, size: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3226, file: !419, line: 109, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !422, file: !419, line: 111, baseType: !212, size: 128, offset: 1152)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !422, file: !419, line: 112, baseType: !212, size: 128, offset: 1280)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !422, file: !419, line: 120, baseType: !3234, size: 128, offset: 1408)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !419, line: 116, size: 128, elements: !3235)
!3235 = !{!3236, !3237, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3234, file: !419, line: 117, baseType: !677, size: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3234, file: !419, line: 118, baseType: !436, size: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3234, file: !419, line: 119, baseType: !404, size: 128, align: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !397, file: !42, line: 922, baseType: !466, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !397, file: !42, line: 923, baseType: !2953, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !397, file: !42, line: 929, baseType: !229, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !397, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !397, file: !42, line: 931, baseType: !202, size: 64, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !397, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !397, file: !42, line: 933, baseType: !2800, size: 32, offset: 544)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !397, file: !42, line: 934, baseType: !224, size: 192, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !397, file: !42, line: 935, baseType: !568, size: 64, offset: 768)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !397, file: !42, line: 936, baseType: !3249, size: 192, offset: 832)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3249, file: !42, line: 886, baseType: !3052)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3249, file: !42, line: 887, baseType: !1522, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3249, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3249, file: !42, line: 889, baseType: !472, size: 32, offset: 96)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3249, file: !42, line: 889, baseType: !472, size: 32, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3249, file: !42, line: 890, baseType: !140, size: 32, offset: 160)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !397, file: !42, line: 937, baseType: !1631, size: 64, offset: 1024)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !397, file: !42, line: 938, baseType: !3259, size: 256, offset: 1088)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3259, file: !42, line: 897, baseType: !194, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3259, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3259, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3259, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3259, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3259, file: !42, line: 904, baseType: !568, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !397, file: !42, line: 940, baseType: !458, size: 64, offset: 1344)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !397, file: !42, line: 945, baseType: !139, size: 64, offset: 1408)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !397, file: !42, line: 949, baseType: !212, size: 128, offset: 1472)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !397, file: !42, line: 950, baseType: !212, size: 128, offset: 1600)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !397, file: !42, line: 952, baseType: !808, size: 64, offset: 1728)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !397, file: !42, line: 953, baseType: !970, size: 32, offset: 1792)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !397, file: !42, line: 954, baseType: !970, size: 32, offset: 1824)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !387, file: !345, line: 174, baseType: !393, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !387, file: !345, line: 176, baseType: !3276, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!140, !396, !287, !386, !1043}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !375, file: !345, line: 90, baseType: !370, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !375, file: !345, line: 91, baseType: !3281, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !335, file: !279, line: 143, baseType: !3283, size: 64, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!3286, !287}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3289)
!3289 = !{!3290, !3291, !3295, !3299, !3305, !3309}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3288, file: !59, line: 40, baseType: !58, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3288, file: !59, line: 41, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!527}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3288, file: !59, line: 42, baseType: !3296, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!139}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3288, file: !59, line: 43, baseType: !3300, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!2220, !3303}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3288, file: !59, line: 44, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!2220}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3288, file: !59, line: 45, baseType: !505, size: 64, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !335, file: !279, line: 144, baseType: !3311, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!2220, !287}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !335, file: !279, line: 145, baseType: !3315, size: 64, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !287, !3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !278, file: !279, line: 70, baseType: !3321, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !654, line: 123, size: 1024, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3434, !3435, !3436, !3437, !3438}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3322, file: !654, line: 124, baseType: !246, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3322, file: !654, line: 125, baseType: !246, size: 32, offset: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3322, file: !654, line: 135, baseType: !3321, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3322, file: !654, line: 136, baseType: !282, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3322, file: !654, line: 138, baseType: !830, size: 192, align: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3322, file: !654, line: 140, baseType: !2220, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3322, file: !654, line: 141, baseType: !5, size: 32, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_member, scope: !3322, file: !654, line: 142, baseType: !3332, size: 256, offset: 512)
!3332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3322, file: !654, line: 142, size: 256, elements: !3333)
!3333 = !{!3334, !3374, !3378}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3332, file: !654, line: 143, baseType: !3335, size: 192)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !654, line: 91, size: 192, elements: !3336)
!3336 = !{!3337, !3338, !3339}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3335, file: !654, line: 92, baseType: !194, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3335, file: !654, line: 94, baseType: !826, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3335, file: !654, line: 100, baseType: !3340, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !654, line: 180, size: 704, elements: !3342)
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3372, !3373}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3341, file: !654, line: 182, baseType: !3321, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3341, file: !654, line: 183, baseType: !5, size: 32, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3341, file: !654, line: 186, baseType: !1551, size: 192, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3341, file: !654, line: 187, baseType: !454, size: 32, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3341, file: !654, line: 188, baseType: !454, size: 32, offset: 352)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3341, file: !654, line: 189, baseType: !3349, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !654, line: 168, size: 320, elements: !3351)
!3351 = !{!3352, !3356, !3360, !3364, !3368}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3350, file: !654, line: 169, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!140, !749, !3340}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3350, file: !654, line: 171, baseType: !3357, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!140, !3321, !282, !361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3350, file: !654, line: 173, baseType: !3361, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!140, !3321}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3350, file: !654, line: 174, baseType: !3365, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!140, !3321, !3321, !282}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3350, file: !654, line: 176, baseType: !3369, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!140, !749, !3321, !3340}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3341, file: !654, line: 192, baseType: !212, size: 128, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3341, file: !654, line: 194, baseType: !1532, size: 128, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3332, file: !654, line: 144, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !654, line: 103, size: 64, elements: !3376)
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3375, file: !654, line: 104, baseType: !3321, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3332, file: !654, line: 145, baseType: !3379, size: 256)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !654, line: 107, size: 256, elements: !3380)
!3380 = !{!3381, !3429, !3432, !3433}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3379, file: !654, line: 108, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !654, line: 217, size: 768, elements: !3385)
!3385 = !{!3386, !3406, !3410, !3411, !3412, !3413, !3414, !3418, !3419, !3420, !3421, !3425}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3384, file: !654, line: 222, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!140, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !654, line: 197, size: 1088, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3391, file: !654, line: 199, baseType: !3321, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3391, file: !654, line: 200, baseType: !396, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3391, file: !654, line: 201, baseType: !749, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3391, file: !654, line: 202, baseType: !139, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3391, file: !654, line: 205, baseType: !224, size: 192, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3391, file: !654, line: 206, baseType: !224, size: 192, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3391, file: !654, line: 207, baseType: !140, size: 32, offset: 640)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3391, file: !654, line: 208, baseType: !212, size: 128, offset: 704)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3391, file: !654, line: 209, baseType: !320, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3391, file: !654, line: 211, baseType: !366, size: 64, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3391, file: !654, line: 212, baseType: !527, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3391, file: !654, line: 213, baseType: !527, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3391, file: !654, line: 214, baseType: !1071, size: 64, offset: 1024)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3384, file: !654, line: 223, baseType: !3407, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !3390}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3384, file: !654, line: 236, baseType: !780, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3384, file: !654, line: 238, baseType: !767, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3384, file: !654, line: 239, baseType: !776, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3384, file: !654, line: 240, baseType: !772, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3384, file: !654, line: 242, baseType: !3415, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!351, !3390, !320, !366, !568}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3384, file: !654, line: 252, baseType: !366, size: 64, offset: 448)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3384, file: !654, line: 259, baseType: !527, size: 8, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3384, file: !654, line: 260, baseType: !3415, size: 64, offset: 576)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3384, file: !654, line: 263, baseType: !3422, size: 64, offset: 640)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!2994, !3390, !2996}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3384, file: !654, line: 266, baseType: !3426, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!140, !3390, !1043}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3379, file: !654, line: 109, baseType: !3430, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !654, line: 31, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3379, file: !654, line: 110, baseType: !568, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3379, file: !654, line: 111, baseType: !3321, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3322, file: !654, line: 148, baseType: !139, size: 64, offset: 768)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3322, file: !654, line: 154, baseType: !458, size: 64, offset: 832)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3322, file: !654, line: 156, baseType: !146, size: 16, offset: 896)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3322, file: !654, line: 157, baseType: !361, size: 16, offset: 912)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3322, file: !654, line: 158, baseType: !3439, size: 64, offset: 960)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !654, line: 32, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !278, file: !279, line: 71, baseType: !264, size: 32, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !278, file: !279, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !278, file: !279, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !278, file: !279, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !278, file: !279, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !278, file: !279, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !275, file: !71, line: 463, baseType: !274, size: 64, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !275, file: !71, line: 465, baseType: !3449, size: 64, offset: 576)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !275, file: !71, line: 467, baseType: !282, size: 64, offset: 640)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !275, file: !71, line: 468, baseType: !3453, size: 64, offset: 704)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3463, !3468, !3472}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3455, file: !71, line: 88, baseType: !282, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3455, file: !71, line: 89, baseType: !372, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3455, file: !71, line: 90, baseType: !3460, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!140, !274, !315}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3455, file: !71, line: 91, baseType: !3464, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!320, !274, !3467, !3318, !3319}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3455, file: !71, line: 93, baseType: !3469, size: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !274}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3455, file: !71, line: 95, baseType: !3473, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3476)
!3476 = !{!3477, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3475, file: !78, line: 279, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!140, !274}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3475, file: !78, line: 280, baseType: !3469, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3475, file: !78, line: 281, baseType: !3478, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3475, file: !78, line: 282, baseType: !3478, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3475, file: !78, line: 283, baseType: !3478, size: 64, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3475, file: !78, line: 284, baseType: !3478, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3475, file: !78, line: 285, baseType: !3478, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3475, file: !78, line: 286, baseType: !3478, size: 64, offset: 448)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3475, file: !78, line: 287, baseType: !3478, size: 64, offset: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3475, file: !78, line: 288, baseType: !3478, size: 64, offset: 576)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3475, file: !78, line: 289, baseType: !3478, size: 64, offset: 640)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3475, file: !78, line: 290, baseType: !3478, size: 64, offset: 704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3475, file: !78, line: 291, baseType: !3478, size: 64, offset: 768)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3475, file: !78, line: 292, baseType: !3478, size: 64, offset: 832)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3475, file: !78, line: 293, baseType: !3478, size: 64, offset: 896)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3475, file: !78, line: 294, baseType: !3478, size: 64, offset: 960)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3475, file: !78, line: 295, baseType: !3478, size: 64, offset: 1024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3475, file: !78, line: 296, baseType: !3478, size: 64, offset: 1088)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3475, file: !78, line: 297, baseType: !3478, size: 64, offset: 1152)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3475, file: !78, line: 298, baseType: !3478, size: 64, offset: 1216)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3475, file: !78, line: 299, baseType: !3478, size: 64, offset: 1280)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3475, file: !78, line: 300, baseType: !3478, size: 64, offset: 1344)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3475, file: !78, line: 301, baseType: !3478, size: 64, offset: 1408)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !275, file: !71, line: 470, baseType: !3504, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3506, line: 82, size: 1408, elements: !3507)
!3506 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513, !3514, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3589, !3592, !3593}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3505, file: !3506, line: 83, baseType: !282, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3505, file: !3506, line: 84, baseType: !282, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3505, file: !3506, line: 85, baseType: !274, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3505, file: !3506, line: 86, baseType: !372, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3505, file: !3506, line: 87, baseType: !372, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3505, file: !3506, line: 88, baseType: !372, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3505, file: !3506, line: 90, baseType: !3515, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!140, !274, !3518}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3540, !3553, !3554, !3555, !3556, !3557, !3565, !3566, !3567, !3568, !3569, !3570}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3519, file: !65, line: 96, baseType: !282, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3519, file: !65, line: 97, baseType: !3504, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3519, file: !65, line: 99, baseType: !668, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3519, file: !65, line: 100, baseType: !282, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3519, file: !65, line: 102, baseType: !527, size: 8, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3519, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3519, file: !65, line: 105, baseType: !3528, size: 64, offset: 320)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3530)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3531, line: 262, size: 1600, elements: !3532)
!3531 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3532 = !{!3533, !3534, !3535, !3539}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3530, file: !3531, line: 263, baseType: !2790, size: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3530, file: !3531, line: 264, baseType: !2790, size: 256, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3530, file: !3531, line: 265, baseType: !3536, size: 1024, offset: 512)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1024, elements: !3537)
!3537 = !{!3538}
!3538 = !DISubrange(count: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3530, file: !3531, line: 266, baseType: !2220, size: 64, offset: 1536)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3519, file: !65, line: 106, baseType: !3541, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3531, line: 210, size: 256, elements: !3544)
!3544 = !{!3545, !3549, !3551, !3552}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3543, file: !3531, line: 211, baseType: !3546, size: 72)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 72, elements: !3547)
!3547 = !{!3548}
!3548 = !DISubrange(count: 9)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3543, file: !3531, line: 212, baseType: !3550, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3531, line: 14, baseType: !194)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3543, file: !3531, line: 213, baseType: !455, size: 32, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3543, file: !3531, line: 214, baseType: !455, size: 32, offset: 224)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3519, file: !65, line: 108, baseType: !3478, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3519, file: !65, line: 109, baseType: !3469, size: 64, offset: 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3519, file: !65, line: 110, baseType: !3478, size: 64, offset: 576)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3519, file: !65, line: 111, baseType: !3469, size: 64, offset: 640)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3519, file: !65, line: 112, baseType: !3558, size: 64, offset: 704)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!140, !274, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3562)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3563)
!3563 = !{!3564}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3562, file: !78, line: 51, baseType: !140, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3519, file: !65, line: 113, baseType: !3478, size: 64, offset: 768)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3519, file: !65, line: 114, baseType: !372, size: 64, offset: 832)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3519, file: !65, line: 115, baseType: !372, size: 64, offset: 896)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3519, file: !65, line: 117, baseType: !3473, size: 64, offset: 960)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3519, file: !65, line: 118, baseType: !3469, size: 64, offset: 1024)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3519, file: !65, line: 120, baseType: !3571, size: 64, offset: 1088)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3505, file: !3506, line: 91, baseType: !3460, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3505, file: !3506, line: 92, baseType: !3478, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3505, file: !3506, line: 93, baseType: !3469, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3505, file: !3506, line: 94, baseType: !3478, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3505, file: !3506, line: 95, baseType: !3469, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3505, file: !3506, line: 97, baseType: !3478, size: 64, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3505, file: !3506, line: 98, baseType: !3478, size: 64, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3505, file: !3506, line: 100, baseType: !3558, size: 64, offset: 896)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3505, file: !3506, line: 101, baseType: !3478, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3505, file: !3506, line: 103, baseType: !3478, size: 64, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3505, file: !3506, line: 105, baseType: !3478, size: 64, offset: 1088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3505, file: !3506, line: 107, baseType: !3473, size: 64, offset: 1152)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3505, file: !3506, line: 109, baseType: !3586, size: 64, offset: 1216)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3588)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3506, line: 109, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3505, file: !3506, line: 111, baseType: !3590, size: 64, offset: 1280)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3506, line: 111, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3505, file: !3506, line: 112, baseType: !683, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3505, file: !3506, line: 114, baseType: !527, size: 8, offset: 1344)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !275, file: !71, line: 471, baseType: !3518, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !275, file: !71, line: 473, baseType: !139, size: 64, offset: 896)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !275, file: !71, line: 475, baseType: !139, size: 64, offset: 960)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !275, file: !71, line: 480, baseType: !224, size: 192, offset: 1024)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !275, file: !71, line: 484, baseType: !3599, size: 576, offset: 1216)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3599, file: !71, line: 362, baseType: !212, size: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3599, file: !71, line: 363, baseType: !212, size: 128, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3599, file: !71, line: 364, baseType: !212, size: 128, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3599, file: !71, line: 365, baseType: !212, size: 128, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3599, file: !71, line: 366, baseType: !527, size: 8, offset: 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3599, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !275, file: !71, line: 485, baseType: !3608, size: 2304, offset: 1792)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3705, !3709}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3608, file: !78, line: 566, baseType: !3561, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3608, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3608, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3608, file: !78, line: 569, baseType: !527, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3608, file: !78, line: 570, baseType: !527, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3608, file: !78, line: 571, baseType: !527, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3608, file: !78, line: 572, baseType: !527, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3608, file: !78, line: 573, baseType: !527, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3608, file: !78, line: 574, baseType: !527, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3608, file: !78, line: 575, baseType: !527, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3608, file: !78, line: 576, baseType: !527, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3608, file: !78, line: 577, baseType: !454, size: 32, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3608, file: !78, line: 578, baseType: !229, offset: 96)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3608, file: !78, line: 580, baseType: !212, size: 128, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3608, file: !78, line: 581, baseType: !1586, size: 192, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3608, file: !78, line: 582, baseType: !3626, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3628, line: 43, size: 1472, elements: !3629)
!3628 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3637, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3627, file: !3628, line: 44, baseType: !282, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3627, file: !3628, line: 45, baseType: !140, size: 32, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3627, file: !3628, line: 46, baseType: !212, size: 128, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3627, file: !3628, line: 47, baseType: !229, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3627, file: !3628, line: 48, baseType: !3635, size: 64, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3627, file: !3628, line: 49, baseType: !3638, size: 320, offset: 320)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3639, line: 11, size: 320, elements: !3640)
!3639 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3640 = !{!3641, !3642, !3643, !3648}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3638, file: !3639, line: 16, baseType: !677, size: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3638, file: !3639, line: 17, baseType: !194, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3638, file: !3639, line: 18, baseType: !3644, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3638, file: !3639, line: 19, baseType: !454, size: 32, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3627, file: !3628, line: 50, baseType: !194, size: 64, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3627, file: !3628, line: 51, baseType: !1351, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3627, file: !3628, line: 52, baseType: !1351, size: 64, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3627, file: !3628, line: 53, baseType: !1351, size: 64, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3627, file: !3628, line: 54, baseType: !1351, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3627, file: !3628, line: 55, baseType: !1351, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3627, file: !3628, line: 56, baseType: !194, size: 64, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3627, file: !3628, line: 57, baseType: !194, size: 64, offset: 1088)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3627, file: !3628, line: 58, baseType: !194, size: 64, offset: 1152)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3627, file: !3628, line: 59, baseType: !194, size: 64, offset: 1216)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3627, file: !3628, line: 60, baseType: !194, size: 64, offset: 1280)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3627, file: !3628, line: 61, baseType: !274, size: 64, offset: 1344)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3627, file: !3628, line: 62, baseType: !527, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3627, file: !3628, line: 63, baseType: !527, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3608, file: !78, line: 583, baseType: !527, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3608, file: !78, line: 584, baseType: !527, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3608, file: !78, line: 585, baseType: !527, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3608, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3608, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3608, file: !78, line: 592, baseType: !1343, size: 512, offset: 576)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3608, file: !78, line: 593, baseType: !458, size: 64, offset: 1088)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3608, file: !78, line: 594, baseType: !198, size: 256, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3608, file: !78, line: 595, baseType: !1532, size: 128, offset: 1408)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3608, file: !78, line: 596, baseType: !3635, size: 64, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3608, file: !78, line: 597, baseType: !246, size: 32, offset: 1600)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3608, file: !78, line: 598, baseType: !246, size: 32, offset: 1632)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3608, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3608, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3608, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3608, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3608, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3608, file: !78, line: 604, baseType: !527, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3608, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3608, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3608, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3608, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3608, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3608, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3608, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3608, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3608, file: !78, line: 613, baseType: !140, size: 32, offset: 1792)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3608, file: !78, line: 614, baseType: !140, size: 32, offset: 1824)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3608, file: !78, line: 615, baseType: !458, size: 64, offset: 1856)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3608, file: !78, line: 616, baseType: !458, size: 64, offset: 1920)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3608, file: !78, line: 617, baseType: !458, size: 64, offset: 1984)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3608, file: !78, line: 618, baseType: !458, size: 64, offset: 2048)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3608, file: !78, line: 620, baseType: !3696, size: 64, offset: 2112)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3697, file: !78, line: 537, baseType: !229)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3697, file: !78, line: 538, baseType: !5, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3697, file: !78, line: 540, baseType: !212, size: 128, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3697, file: !78, line: 543, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3608, file: !78, line: 621, baseType: !3706, size: 64, offset: 2176)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !274, !1495}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3608, file: !78, line: 622, baseType: !3710, size: 64, offset: 2240)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !275, file: !71, line: 486, baseType: !3713, size: 64, offset: 4096)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3722, !3723, !3724}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3714, file: !78, line: 643, baseType: !3475, size: 1472)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3714, file: !78, line: 644, baseType: !3478, size: 64, offset: 1472)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3714, file: !78, line: 645, baseType: !3719, size: 64, offset: 1536)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !274, !527}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3714, file: !78, line: 646, baseType: !3478, size: 64, offset: 1600)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3714, file: !78, line: 647, baseType: !3469, size: 64, offset: 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3714, file: !78, line: 648, baseType: !3469, size: 64, offset: 1728)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !275, file: !71, line: 493, baseType: !3726, size: 64, offset: 4160)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !92, line: 162, size: 1088, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3904, !3905, !3906, !3907, !3908, !3909, !3912, !3913, !3914, !3915, !3916, !3917, !3918}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3727, file: !92, line: 163, baseType: !212, size: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3727, file: !92, line: 164, baseType: !282, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3727, file: !92, line: 165, baseType: !3732, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3734)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !92, line: 105, size: 640, elements: !3735)
!3735 = !{!3736, !3854, !3865, !3870, !3874, !3881, !3885, !3889, !3896, !3900}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3734, file: !92, line: 106, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!140, !3726, !3740, !91}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3742, line: 51, size: 1344, elements: !3743)
!3742 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3743 = !{!3744, !3745, !3747, !3748, !3838, !3847, !3848, !3849, !3850, !3851, !3852, !3853}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3741, file: !3742, line: 52, baseType: !282, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3741, file: !3742, line: 53, baseType: !3746, size: 32, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3742, line: 28, baseType: !454)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3741, file: !3742, line: 54, baseType: !282, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3741, file: !3742, line: 55, baseType: !3749, size: 192, offset: 192)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3750, line: 17, size: 192, elements: !3751)
!3750 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3751 = !{!3752, !3754, !3837}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3749, file: !3750, line: 18, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3749, file: !3750, line: 19, baseType: !3755, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3750, line: 110, size: 1152, elements: !3758)
!3758 = !{!3759, !3763, !3767, !3773, !3779, !3783, !3787, !3792, !3796, !3797, !3801, !3805, !3809, !3820, !3821, !3822, !3823, !3833}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3757, file: !3750, line: 111, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!3753, !3753}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3757, file: !3750, line: 112, baseType: !3764, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3753}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3757, file: !3750, line: 113, baseType: !3768, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!527, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3749)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3757, file: !3750, line: 114, baseType: !3774, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!2220, !3771, !3777}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3757, file: !3750, line: 116, baseType: !3780, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!527, !3771, !282}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3757, file: !3750, line: 118, baseType: !3784, size: 64, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!140, !3771, !282, !5, !139, !366}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3757, file: !3750, line: 123, baseType: !3788, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!140, !3771, !282, !3791, !366}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3757, file: !3750, line: 126, baseType: !3793, size: 64, offset: 448)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!282, !3771}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3757, file: !3750, line: 127, baseType: !3793, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3757, file: !3750, line: 128, baseType: !3798, size: 64, offset: 576)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3753, !3771}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3757, file: !3750, line: 130, baseType: !3802, size: 64, offset: 640)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!3753, !3771, !3753}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3757, file: !3750, line: 133, baseType: !3806, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!3753, !3771, !282}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3757, file: !3750, line: 135, baseType: !3810, size: 64, offset: 768)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!140, !3771, !282, !282, !5, !5, !3813}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3750, line: 43, size: 640, elements: !3815)
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3814, file: !3750, line: 44, baseType: !3753, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3814, file: !3750, line: 45, baseType: !5, size: 32, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3814, file: !3750, line: 46, baseType: !3819, size: 512, offset: 128)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 512, elements: !1381)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3757, file: !3750, line: 140, baseType: !3802, size: 64, offset: 832)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3757, file: !3750, line: 143, baseType: !3798, size: 64, offset: 896)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3757, file: !3750, line: 145, baseType: !3760, size: 64, offset: 960)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3757, file: !3750, line: 146, baseType: !3824, size: 64, offset: 1024)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!140, !3771, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3750, line: 29, size: 128, elements: !3829)
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3828, file: !3750, line: 30, baseType: !5, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3828, file: !3750, line: 31, baseType: !5, size: 32, offset: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3828, file: !3750, line: 32, baseType: !3771, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3757, file: !3750, line: 148, baseType: !3834, size: 64, offset: 1088)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!140, !3771, !274}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3749, file: !3750, line: 20, baseType: !274, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3741, file: !3742, line: 57, baseType: !3839, size: 64, offset: 384)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3742, line: 31, size: 704, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3840, file: !3742, line: 32, baseType: !320, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3840, file: !3742, line: 33, baseType: !140, size: 32, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3840, file: !3742, line: 34, baseType: !139, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3840, file: !3742, line: 35, baseType: !3839, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3840, file: !3742, line: 43, baseType: !387, size: 448, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3741, file: !3742, line: 58, baseType: !3839, size: 64, offset: 448)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3741, file: !3742, line: 59, baseType: !3740, size: 64, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3741, file: !3742, line: 60, baseType: !3740, size: 64, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3741, file: !3742, line: 61, baseType: !3740, size: 64, offset: 640)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3741, file: !3742, line: 63, baseType: !278, size: 512, offset: 704)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3741, file: !3742, line: 65, baseType: !194, size: 64, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3741, file: !3742, line: 66, baseType: !139, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3734, file: !92, line: 108, baseType: !3855, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!140, !3726, !3858, !91}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !92, line: 63, size: 640, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3859, file: !92, line: 64, baseType: !3753, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3859, file: !92, line: 65, baseType: !140, size: 32, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3859, file: !92, line: 66, baseType: !3864, size: 512, offset: 96)
!3864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 512, elements: !1817)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3734, file: !92, line: 110, baseType: !3866, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!140, !3726, !5, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !138, line: 164, baseType: !194)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3734, file: !92, line: 111, baseType: !3871, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3726, !5}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3734, file: !92, line: 112, baseType: !3875, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!140, !3726, !3740, !3878, !5, !3880, !2773}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3734, file: !92, line: 117, baseType: !3882, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!140, !3726, !5, !5, !139}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3734, file: !92, line: 119, baseType: !3886, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3726, !5, !5}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3734, file: !92, line: 121, baseType: !3890, size: 64, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!140, !3726, !3893, !527}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3895, line: 11, flags: DIFlagFwdDecl)
!3895 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3734, file: !92, line: 122, baseType: !3897, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3726, !3893}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3734, file: !92, line: 123, baseType: !3901, size: 64, offset: 576)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!140, !3726, !3858, !3880, !2773}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3727, file: !92, line: 166, baseType: !139, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3727, file: !92, line: 167, baseType: !5, size: 32, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3727, file: !92, line: 168, baseType: !5, size: 32, offset: 352)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3727, file: !92, line: 171, baseType: !3753, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3727, file: !92, line: 172, baseType: !91, size: 32, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3727, file: !92, line: 173, baseType: !3910, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !92, line: 134, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3727, file: !92, line: 175, baseType: !3726, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3727, file: !92, line: 182, baseType: !3869, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3727, file: !92, line: 183, baseType: !5, size: 32, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3727, file: !92, line: 184, baseType: !5, size: 32, offset: 736)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3727, file: !92, line: 185, baseType: !813, size: 128, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3727, file: !92, line: 186, baseType: !224, size: 192, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3727, file: !92, line: 187, baseType: !3919, offset: 1088)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !195)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !275, file: !71, line: 499, baseType: !212, size: 128, offset: 4224)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !275, file: !71, line: 502, baseType: !3922, size: 64, offset: 4352)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !275, file: !71, line: 504, baseType: !3926, size: 64, offset: 4416)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !275, file: !71, line: 505, baseType: !458, size: 64, offset: 4480)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !275, file: !71, line: 510, baseType: !458, size: 64, offset: 4544)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !275, file: !71, line: 511, baseType: !3930, size: 64, offset: 4608)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3932)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !275, file: !71, line: 513, baseType: !3934, size: 64, offset: 4672)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3935, file: !71, line: 293, baseType: !5, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3935, file: !71, line: 294, baseType: !194, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !275, file: !71, line: 515, baseType: !212, size: 128, offset: 4736)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !275, file: !71, line: 526, baseType: !3941, offset: 4864)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3942, line: 5, elements: !243)
!3942 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !275, file: !71, line: 528, baseType: !3740, size: 64, offset: 4864)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !275, file: !71, line: 529, baseType: !3753, size: 64, offset: 4928)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !275, file: !71, line: 534, baseType: !550, size: 32, offset: 4992)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !275, file: !71, line: 535, baseType: !454, size: 32, offset: 5024)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !275, file: !71, line: 537, baseType: !229, offset: 5056)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !275, file: !71, line: 538, baseType: !212, size: 128, offset: 5056)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !275, file: !71, line: 540, baseType: !3950, size: 64, offset: 5184)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3952, line: 54, size: 960, elements: !3953)
!3952 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3964, !3968, !3969, !3970, !3971, !3975, !3979, !3980}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3951, file: !3952, line: 55, baseType: !282, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3951, file: !3952, line: 56, baseType: !668, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3951, file: !3952, line: 58, baseType: !372, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3951, file: !3952, line: 59, baseType: !372, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3951, file: !3952, line: 60, baseType: !287, size: 64, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3951, file: !3952, line: 62, baseType: !3460, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3951, file: !3952, line: 63, baseType: !3961, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!320, !274, !3467}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3951, file: !3952, line: 65, baseType: !3965, size: 64, offset: 448)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{null, !3950}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3951, file: !3952, line: 66, baseType: !3469, size: 64, offset: 512)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3951, file: !3952, line: 68, baseType: !3478, size: 64, offset: 576)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3951, file: !3952, line: 70, baseType: !3286, size: 64, offset: 640)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3951, file: !3952, line: 71, baseType: !3972, size: 64, offset: 704)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!2220, !274}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3951, file: !3952, line: 73, baseType: !3976, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !274, !3318, !3319}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3951, file: !3952, line: 75, baseType: !3473, size: 64, offset: 832)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3951, file: !3952, line: 77, baseType: !3590, size: 64, offset: 896)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !275, file: !71, line: 541, baseType: !372, size: 64, offset: 5248)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !275, file: !71, line: 543, baseType: !3469, size: 64, offset: 5312)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !275, file: !71, line: 544, baseType: !3984, size: 64, offset: 5376)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !275, file: !71, line: 545, baseType: !3987, size: 64, offset: 5440)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !275, file: !71, line: 547, baseType: !527, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !275, file: !71, line: 548, baseType: !527, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !275, file: !71, line: 549, baseType: !527, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !275, file: !71, line: 550, baseType: !527, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !260, file: !168, line: 289, baseType: !3994, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3996, line: 302, size: 1472, elements: !3997)
!3996 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!3997 = !{!3998, !3999, !4000, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4029, !4030, !4034, !4035, !4037, !4040, !4043, !4044, !4169}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3995, file: !3996, line: 303, baseType: !140, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3995, file: !3996, line: 304, baseType: !264, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3995, file: !3996, line: 305, baseType: !4001, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3995, file: !3996, line: 306, baseType: !668, size: 64, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3995, file: !3996, line: 307, baseType: !282, size: 64, offset: 192)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3995, file: !3996, line: 308, baseType: !282, size: 64, offset: 256)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3995, file: !3996, line: 309, baseType: !140, size: 32, offset: 320)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3995, file: !3996, line: 310, baseType: !140, size: 32, offset: 352)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3995, file: !3996, line: 311, baseType: !140, size: 32, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3995, file: !3996, line: 312, baseType: !5, size: 32, offset: 416)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3995, file: !3996, line: 313, baseType: !1261, size: 16, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3995, file: !3996, line: 314, baseType: !1261, size: 16, offset: 464)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3995, file: !3996, line: 315, baseType: !4012, size: 352, offset: 480)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !4013, line: 32, size: 352, elements: !4014)
!4013 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!4014 = !{!4015, !4017, !4018, !4019, !4020, !4022, !4026, !4028}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !4012, file: !4013, line: 33, baseType: !4016, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !4013, line: 9, baseType: !5)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !4012, file: !4013, line: 34, baseType: !4016, size: 32, offset: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !4012, file: !4013, line: 35, baseType: !4016, size: 32, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !4012, file: !4013, line: 36, baseType: !4016, size: 32, offset: 96)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !4012, file: !4013, line: 37, baseType: !4021, size: 8, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !4013, line: 7, baseType: !464)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !4012, file: !4013, line: 38, baseType: !4023, size: 152, offset: 136)
!4023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4021, size: 152, elements: !4024)
!4024 = !{!4025}
!4025 = !DISubrange(count: 19)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !4012, file: !4013, line: 39, baseType: !4027, size: 32, offset: 288)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !4013, line: 8, baseType: !5)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !4012, file: !4013, line: 40, baseType: !4027, size: 32, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3995, file: !3996, line: 316, baseType: !194, size: 64, offset: 832)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3995, file: !3996, line: 317, baseType: !4031, size: 64, offset: 896)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4033, line: 84, flags: DIFlagFwdDecl)
!4033 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3995, file: !3996, line: 318, baseType: !3994, size: 64, offset: 960)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3995, file: !3996, line: 323, baseType: !4036, size: 64, offset: 1024)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3995, file: !3996, line: 324, baseType: !4038, size: 64, offset: 1088)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3995, file: !3996, line: 325, baseType: !4041, size: 64, offset: 1152)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3995, file: !3996, line: 326, baseType: !139, size: 64, offset: 1216)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3995, file: !3996, line: 332, baseType: !4045, size: 64, offset: 1280)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3996, line: 254, size: 2176, elements: !4048)
!4048 = !{!4049, !4053, !4057, !4061, !4065, !4069, !4073, !4074, !4078, !4082, !4083, !4087, !4088, !4092, !4096, !4100, !4101, !4102, !4103, !4104, !4105, !4109, !4110, !4111, !4115, !4119, !4120, !4124, !4136, !4151, !4157, !4163, !4164, !4168}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4047, file: !3996, line: 255, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!259, !3994, !396, !140}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4047, file: !3996, line: 257, baseType: !4054, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!140, !3994, !259}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4047, file: !3996, line: 258, baseType: !4058, size: 64, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !3994, !259}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4047, file: !3996, line: 259, baseType: !4062, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!140, !259, !396}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4047, file: !3996, line: 260, baseType: !4066, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !259, !396}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4047, file: !3996, line: 261, baseType: !4070, size: 64, offset: 320)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !259}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4047, file: !3996, line: 262, baseType: !4070, size: 64, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4047, file: !3996, line: 263, baseType: !4075, size: 64, offset: 448)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!140, !259, !462, !140}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4047, file: !3996, line: 265, baseType: !4079, size: 64, offset: 512)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!140, !259, !464}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4047, file: !3996, line: 266, baseType: !4070, size: 64, offset: 576)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4047, file: !3996, line: 267, baseType: !4084, size: 64, offset: 640)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!140, !259}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4047, file: !3996, line: 268, baseType: !4084, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4047, file: !3996, line: 269, baseType: !4089, size: 64, offset: 768)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!140, !259, !5, !194}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4047, file: !3996, line: 271, baseType: !4093, size: 64, offset: 832)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!355, !259, !5, !194}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4047, file: !3996, line: 273, baseType: !4097, size: 64, offset: 896)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !259, !4042}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4047, file: !3996, line: 274, baseType: !4070, size: 64, offset: 960)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4047, file: !3996, line: 275, baseType: !4070, size: 64, offset: 1024)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4047, file: !3996, line: 276, baseType: !4070, size: 64, offset: 1088)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4047, file: !3996, line: 277, baseType: !4070, size: 64, offset: 1152)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4047, file: !3996, line: 278, baseType: !4070, size: 64, offset: 1216)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4047, file: !3996, line: 279, baseType: !4106, size: 64, offset: 1280)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!140, !259, !140}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4047, file: !3996, line: 280, baseType: !4070, size: 64, offset: 1344)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4047, file: !3996, line: 281, baseType: !4070, size: 64, offset: 1408)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4047, file: !3996, line: 282, baseType: !4112, size: 64, offset: 1472)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !259, !140}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4047, file: !3996, line: 283, baseType: !4116, size: 64, offset: 1536)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !259, !284}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4047, file: !3996, line: 284, baseType: !4084, size: 64, offset: 1600)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4047, file: !3996, line: 285, baseType: !4121, size: 64, offset: 1664)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!140, !259, !5, !5}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4047, file: !3996, line: 287, baseType: !4125, size: 64, offset: 1728)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!140, !259, !4128}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4130, line: 15, size: 64, elements: !4131)
!4130 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!4131 = !{!4132, !4133, !4134, !4135}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4129, file: !4130, line: 16, baseType: !146, size: 16)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4129, file: !4130, line: 17, baseType: !146, size: 16, offset: 16)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4129, file: !4130, line: 18, baseType: !146, size: 16, offset: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4129, file: !4130, line: 19, baseType: !146, size: 16, offset: 48)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !4047, file: !3996, line: 288, baseType: !4137, size: 64, offset: 1792)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!140, !259, !4140}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !4142, line: 10, size: 128, elements: !4143)
!4142 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!4143 = !{!4144, !4145, !4146, !4150}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !4141, file: !4142, line: 12, baseType: !144, size: 16)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !4141, file: !4142, line: 13, baseType: !144, size: 16, offset: 16)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !4141, file: !4142, line: 14, baseType: !4147, size: 80, offset: 32)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 80, elements: !4148)
!4148 = !{!4149}
!4149 = !DISubrange(count: 5)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !4141, file: !4142, line: 15, baseType: !144, size: 16, offset: 112)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4047, file: !3996, line: 289, baseType: !4152, size: 64, offset: 1856)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!140, !259, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3996, line: 251, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4047, file: !3996, line: 291, baseType: !4158, size: 64, offset: 1920)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!140, !259, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3996, line: 252, flags: DIFlagFwdDecl)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4047, file: !3996, line: 292, baseType: !4158, size: 64, offset: 1984)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4047, file: !3996, line: 293, baseType: !4165, size: 64, offset: 2048)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !259, !749}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4047, file: !3996, line: 299, baseType: !780, size: 64, offset: 2112)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3995, file: !3996, line: 333, baseType: !212, size: 128, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !260, file: !168, line: 290, baseType: !4045, size: 64, offset: 192)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !260, file: !168, line: 291, baseType: !140, size: 32, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !260, file: !168, line: 294, baseType: !4173, size: 384, offset: 320)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4174, line: 133, size: 384, elements: !4175)
!4174 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!4175 = !{!4176, !4177, !4178, !4179, !4180}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4173, file: !4174, line: 134, baseType: !202, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4173, file: !4174, line: 135, baseType: !843, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4173, file: !4174, line: 136, baseType: !5, size: 32, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4173, file: !4174, line: 137, baseType: !212, size: 128, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4173, file: !4174, line: 138, baseType: !212, size: 128, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !260, file: !168, line: 295, baseType: !4182, size: 64, offset: 704)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4174, line: 215, size: 128, elements: !4184)
!4184 = !{!4185, !4231}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4183, file: !4174, line: 216, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4174, line: 175, size: 1216, elements: !4188)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4201, !4205, !4209, !4210, !4211, !4215, !4216, !4220, !4221, !4225, !4229, !4230}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4187, file: !4174, line: 176, baseType: !140, size: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4187, file: !4174, line: 177, baseType: !320, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4187, file: !4174, line: 178, baseType: !140, size: 32, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4187, file: !4174, line: 179, baseType: !140, size: 32, offset: 160)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4187, file: !4174, line: 184, baseType: !4084, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4187, file: !4174, line: 185, baseType: !4070, size: 64, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4187, file: !4174, line: 186, baseType: !4070, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4187, file: !4174, line: 187, baseType: !4197, size: 64, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!351, !259, !396, !4200, !366}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4187, file: !4174, line: 189, baseType: !4202, size: 64, offset: 448)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!351, !259, !396, !462, !366}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4187, file: !4174, line: 191, baseType: !4206, size: 64, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!140, !259, !396, !5, !194}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4187, file: !4174, line: 193, baseType: !4206, size: 64, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4187, file: !4174, line: 195, baseType: !4097, size: 64, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4187, file: !4174, line: 196, baseType: !4212, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!2994, !259, !396, !2996}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4187, file: !4174, line: 198, baseType: !4084, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4187, file: !4174, line: 203, baseType: !4217, size: 64, offset: 832)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{null, !259, !462, !320, !140}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4187, file: !4174, line: 205, baseType: !4070, size: 64, offset: 896)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4187, file: !4174, line: 206, baseType: !4222, size: 64, offset: 960)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{null, !259, !5}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4187, file: !4174, line: 207, baseType: !4226, size: 64, offset: 1024)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!140, !259, !462, !320, !140}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4187, file: !4174, line: 210, baseType: !668, size: 64, offset: 1088)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4187, file: !4174, line: 212, baseType: !140, size: 32, offset: 1152)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4183, file: !4174, line: 217, baseType: !259, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !260, file: !168, line: 297, baseType: !224, size: 192, offset: 768)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !260, file: !168, line: 298, baseType: !224, size: 192, offset: 960)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !260, file: !168, line: 299, baseType: !224, size: 192, offset: 1152)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !260, file: !168, line: 300, baseType: !837, size: 256, offset: 1344)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !260, file: !168, line: 301, baseType: !224, size: 192, offset: 1600)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !260, file: !168, line: 302, baseType: !229, offset: 1792)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !260, file: !168, line: 303, baseType: !229, offset: 1792)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !260, file: !168, line: 305, baseType: !4012, size: 352, offset: 1792)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !260, file: !168, line: 305, baseType: !4012, size: 352, offset: 2144)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !260, file: !168, line: 306, baseType: !4140, size: 64, offset: 2496)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !168, line: 307, baseType: !4243, size: 512, offset: 2560)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 512, elements: !325)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !260, file: !168, line: 308, baseType: !1522, size: 64, offset: 3072)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !260, file: !168, line: 313, baseType: !1522, size: 64, offset: 3136)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !168, line: 314, baseType: !194, size: 64, offset: 3200)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !260, file: !168, line: 315, baseType: !140, size: 32, offset: 3264)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !260, file: !168, line: 316, baseType: !4129, size: 64, offset: 3296)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !260, file: !168, line: 317, baseType: !194, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !260, file: !168, line: 318, baseType: !194, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !260, file: !168, line: 319, baseType: !194, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !260, file: !168, line: 320, baseType: !140, size: 32, offset: 3456)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !260, file: !168, line: 321, baseType: !194, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !260, file: !168, line: 322, baseType: !194, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !260, file: !168, line: 323, baseType: !194, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !260, file: !168, line: 324, baseType: !5, size: 32, offset: 3584)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !260, file: !168, line: 325, baseType: !140, size: 32, offset: 3616)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !260, file: !168, line: 327, baseType: !259, size: 64, offset: 3648)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !260, file: !168, line: 328, baseType: !3048, size: 64, offset: 3712)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !260, file: !168, line: 329, baseType: !1532, size: 128, offset: 3776)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !260, file: !168, line: 330, baseType: !1532, size: 128, offset: 3904)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !260, file: !168, line: 331, baseType: !198, size: 256, offset: 4032)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !260, file: !168, line: 332, baseType: !139, size: 64, offset: 4288)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !260, file: !168, line: 333, baseType: !139, size: 64, offset: 4352)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !260, file: !168, line: 334, baseType: !229, offset: 4416)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !260, file: !168, line: 335, baseType: !212, size: 128, offset: 4416)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !260, file: !168, line: 339, baseType: !140, size: 32, offset: 4544)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !260, file: !168, line: 340, baseType: !4200, size: 64, offset: 4608)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !260, file: !168, line: 341, baseType: !140, size: 32, offset: 4672)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !260, file: !168, line: 343, baseType: !198, size: 256, offset: 4736)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !260, file: !168, line: 344, baseType: !4039, size: 64, offset: 4992)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !167, file: !168, line: 233, baseType: !259, size: 64, offset: 1088)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !167, file: !168, line: 234, baseType: !4274, size: 64, offset: 1152)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !168, line: 205, size: 320, elements: !4277)
!4277 = !{!4278, !4282, !4286, !4290, !4294}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4276, file: !168, line: 207, baseType: !4279, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!140, !4039}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4276, file: !168, line: 209, baseType: !4283, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !4039, !140}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4276, file: !168, line: 213, baseType: !4287, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{null, !4039}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4276, file: !168, line: 218, baseType: !4291, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!140, !4039, !259}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4276, file: !168, line: 220, baseType: !4287, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !167, file: !168, line: 235, baseType: !4296, size: 64, offset: 1216)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4298)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !168, line: 223, size: 128, elements: !4299)
!4299 = !{!4300, !4304}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4298, file: !168, line: 224, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!140, !4039, !462, !462, !366}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4298, file: !168, line: 225, baseType: !4287, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !167, file: !168, line: 236, baseType: !229, offset: 1280)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !167, file: !168, line: 237, baseType: !140, size: 32, offset: 1280)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !167, file: !168, line: 238, baseType: !140, size: 32, offset: 1312)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !167, file: !168, line: 239, baseType: !1532, size: 128, offset: 1344)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !167, file: !168, line: 240, baseType: !1532, size: 128, offset: 1472)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !168, line: 241, baseType: !194, size: 64, offset: 1600)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !167, file: !168, line: 242, baseType: !194, size: 64, offset: 1664)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !167, file: !168, line: 243, baseType: !464, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !167, file: !168, line: 244, baseType: !464, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !167, file: !168, line: 245, baseType: !224, size: 192, offset: 1792)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !167, file: !168, line: 246, baseType: !224, size: 192, offset: 1984)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !167, file: !168, line: 247, baseType: !4200, size: 64, offset: 2176)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !167, file: !168, line: 248, baseType: !5, size: 32, offset: 2240)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !167, file: !168, line: 249, baseType: !5, size: 32, offset: 2272)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !167, file: !168, line: 250, baseType: !140, size: 32, offset: 2304)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !167, file: !168, line: 253, baseType: !264, size: 32, offset: 2336)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !167, file: !168, line: 254, baseType: !139, size: 64, offset: 2368)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !164, file: !106, line: 97, baseType: !4323, size: 160, offset: 2432)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_state", file: !106, line: 46, size: 160, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4330, !4331, !4332, !4333, !4334, !4335}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4323, file: !106, line: 47, baseType: !5, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4323, file: !106, line: 47, baseType: !5, size: 32, offset: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4323, file: !106, line: 49, baseType: !464, size: 8, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "Gx_charset", scope: !4323, file: !106, line: 51, baseType: !4329, size: 16, offset: 72)
!4329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 16, elements: !1653)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4323, file: !106, line: 52, baseType: !5, size: 1, offset: 88, flags: DIFlagBitField, extraData: i64 88)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !4323, file: !106, line: 55, baseType: !105, size: 32, offset: 96)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "italic", scope: !4323, file: !106, line: 56, baseType: !527, size: 8, offset: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "underline", scope: !4323, file: !106, line: 57, baseType: !527, size: 8, offset: 136)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "blink", scope: !4323, file: !106, line: 58, baseType: !527, size: 8, offset: 144)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !4323, file: !106, line: 59, baseType: !527, size: 8, offset: 152)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "saved_state", scope: !164, file: !106, line: 97, baseType: !4323, size: 160, offset: 2592)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "vc_num", scope: !164, file: !106, line: 99, baseType: !146, size: 16, offset: 2752)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cols", scope: !164, file: !106, line: 100, baseType: !5, size: 32, offset: 2784)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "vc_rows", scope: !164, file: !106, line: 101, baseType: !5, size: 32, offset: 2816)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "vc_size_row", scope: !164, file: !106, line: 102, baseType: !5, size: 32, offset: 2848)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scan_lines", scope: !164, file: !106, line: 103, baseType: !5, size: 32, offset: 2880)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "vc_origin", scope: !164, file: !106, line: 104, baseType: !194, size: 64, offset: 2944)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scr_end", scope: !164, file: !106, line: 105, baseType: !194, size: 64, offset: 3008)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "vc_visible_origin", scope: !164, file: !106, line: 106, baseType: !194, size: 64, offset: 3072)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "vc_top", scope: !164, file: !106, line: 107, baseType: !5, size: 32, offset: 3136)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bottom", scope: !164, file: !106, line: 107, baseType: !5, size: 32, offset: 3168)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "vc_sw", scope: !164, file: !106, line: 108, baseType: !4348, size: 64, offset: 3200)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4350)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "consw", file: !113, line: 44, size: 1728, elements: !4351)
!4351 = !{!4352, !4353, !4357, !4361, !4365, !4369, !4373, !4379, !4380, !4384, !4388, !4392, !4404, !4408, !4412, !4416, !4420, !4424, !4425, !4426, !4427, !4431, !4435, !4441, !4445, !4446, !4447}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4350, file: !113, line: 45, baseType: !668, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "con_startup", scope: !4350, file: !113, line: 46, baseType: !4354, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!282}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "con_init", scope: !4350, file: !113, line: 47, baseType: !4358, size: 64, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !163, !140}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "con_deinit", scope: !4350, file: !113, line: 48, baseType: !4362, size: 64, offset: 192)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !163}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "con_clear", scope: !4350, file: !113, line: 49, baseType: !4366, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !163, !140, !140, !140, !140}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "con_putc", scope: !4350, file: !113, line: 51, baseType: !4370, size: 64, offset: 320)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{null, !163, !140, !140, !140}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "con_putcs", scope: !4350, file: !113, line: 52, baseType: !4374, size: 64, offset: 384)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !163, !4377, !140, !140, !140}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "con_cursor", scope: !4350, file: !113, line: 54, baseType: !4358, size: 64, offset: 448)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "con_scroll", scope: !4350, file: !113, line: 55, baseType: !4381, size: 64, offset: 512)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!527, !163, !5, !5, !112, !5}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "con_switch", scope: !4350, file: !113, line: 58, baseType: !4385, size: 64, offset: 576)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!140, !163}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "con_blank", scope: !4350, file: !113, line: 59, baseType: !4389, size: 64, offset: 640)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!140, !163, !140, !140}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_set", scope: !4350, file: !113, line: 60, baseType: !4393, size: 64, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!140, !163, !4396, !5}
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console_font", file: !4398, line: 167, size: 192, elements: !4399)
!4398 = !DIFile(filename: "./include/uapi/linux/kd.h", directory: "/home/lizy2001/genbc/linux")
!4399 = !{!4400, !4401, !4402, !4403}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4397, file: !4398, line: 168, baseType: !5, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4397, file: !4398, line: 168, baseType: !5, size: 32, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "charcount", scope: !4397, file: !4398, line: 169, baseType: !5, size: 32, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4397, file: !4398, line: 170, baseType: !4200, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_get", scope: !4350, file: !113, line: 62, baseType: !4405, size: 64, offset: 768)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!140, !163, !4396}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_default", scope: !4350, file: !113, line: 63, baseType: !4409, size: 64, offset: 832)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!140, !163, !4396, !320}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_copy", scope: !4350, file: !113, line: 65, baseType: !4413, size: 64, offset: 896)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!140, !163, !140}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "con_resize", scope: !4350, file: !113, line: 66, baseType: !4417, size: 64, offset: 960)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!140, !163, !5, !5, !5}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_palette", scope: !4350, file: !113, line: 68, baseType: !4421, size: 64, offset: 1024)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{null, !163, !462}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "con_scrolldelta", scope: !4350, file: !113, line: 70, baseType: !4358, size: 64, offset: 1088)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_origin", scope: !4350, file: !113, line: 71, baseType: !4385, size: 64, offset: 1152)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "con_save_screen", scope: !4350, file: !113, line: 72, baseType: !4362, size: 64, offset: 1216)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "con_build_attr", scope: !4350, file: !113, line: 73, baseType: !4428, size: 64, offset: 1280)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!1403, !163, !1403, !105, !527, !527, !527, !527}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "con_invert_region", scope: !4350, file: !113, line: 76, baseType: !4432, size: 64, offset: 1344)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !163, !141, !140}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "con_screen_pos", scope: !4350, file: !113, line: 77, baseType: !4436, size: 64, offset: 1408)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!141, !4439, !140}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "con_getxy", scope: !4350, file: !113, line: 78, baseType: !4442, size: 64, offset: 1472)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!194, !163, !194, !743, !743}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "con_flush_scrollback", scope: !4350, file: !113, line: 83, baseType: !4362, size: 64, offset: 1536)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_enter", scope: !4350, file: !113, line: 89, baseType: !4385, size: 64, offset: 1600)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_leave", scope: !4350, file: !113, line: 93, baseType: !4385, size: 64, offset: 1664)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf", scope: !164, file: !106, line: 109, baseType: !4449, size: 64, offset: 3264)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf_size", scope: !164, file: !106, line: 110, baseType: !5, size: 32, offset: 3328)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "vc_mode", scope: !164, file: !106, line: 111, baseType: !464, size: 8, offset: 3360)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "vc_attr", scope: !164, file: !106, line: 113, baseType: !464, size: 8, offset: 3368)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "vc_def_color", scope: !164, file: !106, line: 114, baseType: !464, size: 8, offset: 3376)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "vc_ulcolor", scope: !164, file: !106, line: 115, baseType: !464, size: 8, offset: 3384)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "vc_itcolor", scope: !164, file: !106, line: 116, baseType: !464, size: 8, offset: 3392)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "vc_halfcolor", scope: !164, file: !106, line: 117, baseType: !464, size: 8, offset: 3400)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cursor_type", scope: !164, file: !106, line: 119, baseType: !5, size: 32, offset: 3424)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "vc_complement_mask", scope: !164, file: !106, line: 120, baseType: !146, size: 16, offset: 3456)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "vc_s_complement_mask", scope: !164, file: !106, line: 121, baseType: !146, size: 16, offset: 3472)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "vc_pos", scope: !164, file: !106, line: 122, baseType: !194, size: 64, offset: 3520)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "vc_hi_font_mask", scope: !164, file: !106, line: 124, baseType: !146, size: 16, offset: 3584)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "vc_font", scope: !164, file: !106, line: 125, baseType: !4397, size: 192, offset: 3648)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "vc_video_erase_char", scope: !164, file: !106, line: 126, baseType: !146, size: 16, offset: 3840)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "vc_state", scope: !164, file: !106, line: 128, baseType: !5, size: 32, offset: 3872)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "vc_npar", scope: !164, file: !106, line: 129, baseType: !5, size: 32, offset: 3904)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "vc_par", scope: !164, file: !106, line: 129, baseType: !4467, size: 512, offset: 3936)
!4467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !1817)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "vt_mode", scope: !164, file: !106, line: 131, baseType: !4469, size: 64, offset: 4448)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt_mode", file: !4470, line: 19, size: 64, elements: !4471)
!4470 = !DIFile(filename: "./include/uapi/linux/vt.h", directory: "/home/lizy2001/genbc/linux")
!4471 = !{!4472, !4473, !4474, !4475, !4476}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4469, file: !4470, line: 20, baseType: !284, size: 8)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "waitv", scope: !4469, file: !4470, line: 21, baseType: !284, size: 8, offset: 8)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "relsig", scope: !4469, file: !4470, line: 22, baseType: !1261, size: 16, offset: 16)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "acqsig", scope: !4469, file: !4470, line: 23, baseType: !1261, size: 16, offset: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "frsig", scope: !4469, file: !4470, line: 24, baseType: !1261, size: 16, offset: 48)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "vt_pid", scope: !164, file: !106, line: 132, baseType: !1522, size: 64, offset: 4544)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "vt_newvt", scope: !164, file: !106, line: 133, baseType: !140, size: 32, offset: 4608)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "paste_wait", scope: !164, file: !106, line: 134, baseType: !1532, size: 128, offset: 4672)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "vc_disp_ctrl", scope: !164, file: !106, line: 136, baseType: !5, size: 1, offset: 4800, flags: DIFlagBitField, extraData: i64 4800)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "vc_toggle_meta", scope: !164, file: !106, line: 137, baseType: !5, size: 1, offset: 4801, flags: DIFlagBitField, extraData: i64 4800)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decscnm", scope: !164, file: !106, line: 138, baseType: !5, size: 1, offset: 4802, flags: DIFlagBitField, extraData: i64 4800)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decom", scope: !164, file: !106, line: 139, baseType: !5, size: 1, offset: 4803, flags: DIFlagBitField, extraData: i64 4800)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decawm", scope: !164, file: !106, line: 140, baseType: !5, size: 1, offset: 4804, flags: DIFlagBitField, extraData: i64 4800)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "vc_deccm", scope: !164, file: !106, line: 141, baseType: !5, size: 1, offset: 4805, flags: DIFlagBitField, extraData: i64 4800)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decim", scope: !164, file: !106, line: 142, baseType: !5, size: 1, offset: 4806, flags: DIFlagBitField, extraData: i64 4800)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "vc_priv", scope: !164, file: !106, line: 144, baseType: !5, size: 3, offset: 4807, flags: DIFlagBitField, extraData: i64 4800)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "vc_need_wrap", scope: !164, file: !106, line: 145, baseType: !5, size: 1, offset: 4810, flags: DIFlagBitField, extraData: i64 4800)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "vc_can_do_color", scope: !164, file: !106, line: 146, baseType: !5, size: 1, offset: 4811, flags: DIFlagBitField, extraData: i64 4800)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "vc_report_mouse", scope: !164, file: !106, line: 147, baseType: !5, size: 2, offset: 4812, flags: DIFlagBitField, extraData: i64 4800)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf", scope: !164, file: !106, line: 148, baseType: !464, size: 1, offset: 4814, flags: DIFlagBitField, extraData: i64 4800)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_count", scope: !164, file: !106, line: 149, baseType: !464, size: 8, offset: 4816)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_char", scope: !164, file: !106, line: 150, baseType: !140, size: 32, offset: 4832)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "vc_tab_stop", scope: !164, file: !106, line: 151, baseType: !4495, size: 256, offset: 4864)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !1217)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "vc_palette", scope: !164, file: !106, line: 152, baseType: !4497, size: 384, offset: 5120)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !4498)
!4498 = !{!4499}
!4499 = !DISubrange(count: 48)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "vc_translate", scope: !164, file: !106, line: 153, baseType: !4449, size: 64, offset: 5504)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "vc_resize_user", scope: !164, file: !106, line: 154, baseType: !5, size: 32, offset: 5568)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_pitch", scope: !164, file: !106, line: 155, baseType: !5, size: 32, offset: 5600)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_duration", scope: !164, file: !106, line: 156, baseType: !5, size: 32, offset: 5632)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cur_blink_ms", scope: !164, file: !106, line: 157, baseType: !146, size: 16, offset: 5664)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "vc_display_fg", scope: !164, file: !106, line: 158, baseType: !4506, size: 64, offset: 5696)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_pagedir", scope: !164, file: !106, line: 159, baseType: !4508, size: 64, offset: 5760)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_pagedir", file: !106, line: 20, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_pagedir_loc", scope: !164, file: !106, line: 160, baseType: !4511, size: 64, offset: 5824)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_screen", scope: !164, file: !106, line: 161, baseType: !4513, size: 64, offset: 5888)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_screen", file: !106, line: 21, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !4517, line: 437, size: 8128, elements: !4518)
!4517 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4518 = !{!4519, !4520, !4521, !4522, !4523, !4524, !4525, !4564, !4583, !4644, !4645, !4663, !4664, !4674, !4675, !4676, !4724, !4725, !4727, !4734, !4749, !4877, !4878, !4879, !4880, !4956, !4961, !4962, !4963, !4964, !4965, !4966, !4978}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4516, file: !4517, line: 438, baseType: !246, size: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4516, file: !4517, line: 439, baseType: !140, size: 32, offset: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4516, file: !4517, line: 440, baseType: !140, size: 32, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !4516, file: !4517, line: 445, baseType: !140, size: 32, offset: 96)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4516, file: !4517, line: 446, baseType: !224, size: 192, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !4516, file: !4517, line: 447, baseType: !224, size: 192, offset: 320)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4516, file: !4517, line: 448, baseType: !4526, size: 1280, offset: 512)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !4527, line: 242, size: 1280, elements: !4528)
!4527 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4526, file: !4527, line: 243, baseType: !455, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4526, file: !4527, line: 244, baseType: !455, size: 32, offset: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !4526, file: !4527, line: 245, baseType: !455, size: 32, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !4526, file: !4527, line: 246, baseType: !455, size: 32, offset: 96)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !4526, file: !4527, line: 247, baseType: !455, size: 32, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !4526, file: !4527, line: 248, baseType: !455, size: 32, offset: 160)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !4526, file: !4527, line: 250, baseType: !455, size: 32, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !4526, file: !4527, line: 251, baseType: !455, size: 32, offset: 224)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4526, file: !4527, line: 253, baseType: !4538, size: 96, offset: 256)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !4527, line: 188, size: 96, elements: !4539)
!4539 = !{!4540, !4541, !4542}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4538, file: !4527, line: 189, baseType: !455, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4538, file: !4527, line: 190, baseType: !455, size: 32, offset: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !4538, file: !4527, line: 191, baseType: !455, size: 32, offset: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4526, file: !4527, line: 254, baseType: !4538, size: 96, offset: 352)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4526, file: !4527, line: 255, baseType: !4538, size: 96, offset: 448)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4526, file: !4527, line: 256, baseType: !4538, size: 96, offset: 544)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !4526, file: !4527, line: 258, baseType: !455, size: 32, offset: 640)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4526, file: !4527, line: 260, baseType: !455, size: 32, offset: 672)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4526, file: !4527, line: 262, baseType: !455, size: 32, offset: 704)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4526, file: !4527, line: 263, baseType: !455, size: 32, offset: 736)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !4526, file: !4527, line: 265, baseType: !455, size: 32, offset: 768)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4526, file: !4527, line: 268, baseType: !455, size: 32, offset: 800)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4526, file: !4527, line: 269, baseType: !455, size: 32, offset: 832)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4526, file: !4527, line: 270, baseType: !455, size: 32, offset: 864)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4526, file: !4527, line: 271, baseType: !455, size: 32, offset: 896)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4526, file: !4527, line: 272, baseType: !455, size: 32, offset: 928)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4526, file: !4527, line: 273, baseType: !455, size: 32, offset: 960)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4526, file: !4527, line: 274, baseType: !455, size: 32, offset: 992)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4526, file: !4527, line: 275, baseType: !455, size: 32, offset: 1024)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4526, file: !4527, line: 276, baseType: !455, size: 32, offset: 1056)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !4526, file: !4527, line: 277, baseType: !455, size: 32, offset: 1088)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4526, file: !4527, line: 278, baseType: !455, size: 32, offset: 1120)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4526, file: !4527, line: 279, baseType: !4563, size: 128, offset: 1152)
!4563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 128, elements: !1217)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !4516, file: !4517, line: 449, baseType: !4565, size: 640, offset: 1792)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !4527, line: 157, size: 640, elements: !4566)
!4566 = !{!4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4565, file: !4527, line: 158, baseType: !1816, size: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !4565, file: !4527, line: 159, baseType: !194, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !4565, file: !4527, line: 161, baseType: !455, size: 32, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4565, file: !4527, line: 162, baseType: !455, size: 32, offset: 224)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !4565, file: !4527, line: 163, baseType: !455, size: 32, offset: 256)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !4565, file: !4527, line: 164, baseType: !455, size: 32, offset: 288)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !4565, file: !4527, line: 165, baseType: !144, size: 16, offset: 320)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !4565, file: !4527, line: 166, baseType: !144, size: 16, offset: 336)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !4565, file: !4527, line: 167, baseType: !144, size: 16, offset: 352)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !4565, file: !4527, line: 168, baseType: !455, size: 32, offset: 384)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !4565, file: !4527, line: 169, baseType: !194, size: 64, offset: 448)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !4565, file: !4527, line: 171, baseType: !455, size: 32, offset: 512)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4565, file: !4527, line: 172, baseType: !455, size: 32, offset: 544)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4565, file: !4527, line: 174, baseType: !144, size: 16, offset: 576)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4565, file: !4527, line: 175, baseType: !4582, size: 32, offset: 592)
!4582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 32, elements: !1653)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !4516, file: !4517, line: 450, baseType: !4584, size: 1152, offset: 2432)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !4517, line: 63, size: 1152, elements: !4585)
!4585 = !{!4586, !4597, !4615, !4617, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !4584, file: !4517, line: 64, baseType: !4587, size: 256)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !4517, line: 52, size: 256, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !4587, file: !4517, line: 53, baseType: !455, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !4587, file: !4517, line: 54, baseType: !455, size: 32, offset: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !4587, file: !4517, line: 55, baseType: !455, size: 32, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !4587, file: !4517, line: 56, baseType: !455, size: 32, offset: 96)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !4587, file: !4517, line: 57, baseType: !455, size: 32, offset: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !4587, file: !4517, line: 58, baseType: !455, size: 32, offset: 160)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !4587, file: !4517, line: 59, baseType: !455, size: 32, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !4587, file: !4517, line: 60, baseType: !455, size: 32, offset: 224)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !4584, file: !4517, line: 65, baseType: !4598, size: 64, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !4517, line: 766, size: 512, elements: !4600)
!4600 = !{!4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4599, file: !4517, line: 767, baseType: !282, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !4599, file: !4517, line: 768, baseType: !454, size: 32, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4599, file: !4517, line: 769, baseType: !454, size: 32, offset: 96)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4599, file: !4517, line: 770, baseType: !454, size: 32, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4599, file: !4517, line: 771, baseType: !454, size: 32, offset: 160)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4599, file: !4517, line: 772, baseType: !454, size: 32, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4599, file: !4517, line: 773, baseType: !454, size: 32, offset: 224)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4599, file: !4517, line: 774, baseType: !454, size: 32, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4599, file: !4517, line: 775, baseType: !454, size: 32, offset: 288)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4599, file: !4517, line: 776, baseType: !454, size: 32, offset: 320)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4599, file: !4517, line: 777, baseType: !454, size: 32, offset: 352)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4599, file: !4517, line: 778, baseType: !454, size: 32, offset: 384)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4599, file: !4517, line: 779, baseType: !454, size: 32, offset: 416)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !4599, file: !4517, line: 780, baseType: !454, size: 32, offset: 448)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4584, file: !4517, line: 66, baseType: !4616, size: 32, offset: 320)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 32, elements: !1217)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !4584, file: !4517, line: 67, baseType: !4618, size: 112, offset: 352)
!4618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 112, elements: !4619)
!4619 = !{!4620}
!4620 = !DISubrange(count: 14)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !4584, file: !4517, line: 68, baseType: !4618, size: 112, offset: 464)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !4584, file: !4517, line: 69, baseType: !4618, size: 112, offset: 576)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !4584, file: !4517, line: 70, baseType: !455, size: 32, offset: 704)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4584, file: !4517, line: 71, baseType: !455, size: 32, offset: 736)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4584, file: !4517, line: 72, baseType: !455, size: 32, offset: 768)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !4584, file: !4517, line: 73, baseType: !455, size: 32, offset: 800)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !4584, file: !4517, line: 74, baseType: !455, size: 32, offset: 832)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !4584, file: !4517, line: 75, baseType: !455, size: 32, offset: 864)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !4584, file: !4517, line: 76, baseType: !455, size: 32, offset: 896)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !4584, file: !4517, line: 77, baseType: !455, size: 32, offset: 928)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !4584, file: !4517, line: 78, baseType: !455, size: 32, offset: 960)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4584, file: !4517, line: 79, baseType: !144, size: 16, offset: 992)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4584, file: !4517, line: 80, baseType: !144, size: 16, offset: 1008)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4584, file: !4517, line: 81, baseType: !144, size: 16, offset: 1024)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !4584, file: !4517, line: 82, baseType: !144, size: 16, offset: 1040)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !4584, file: !4517, line: 83, baseType: !144, size: 16, offset: 1056)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !4584, file: !4517, line: 84, baseType: !144, size: 16, offset: 1072)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !4584, file: !4517, line: 85, baseType: !144, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !4584, file: !4517, line: 86, baseType: !144, size: 16, offset: 1104)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4584, file: !4517, line: 87, baseType: !1404, size: 8, offset: 1120)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4584, file: !4517, line: 88, baseType: !1404, size: 8, offset: 1128)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !4584, file: !4517, line: 89, baseType: !1404, size: 8, offset: 1136)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !4584, file: !4517, line: 90, baseType: !1404, size: 8, offset: 1144)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4516, file: !4517, line: 451, baseType: !198, size: 256, offset: 3584)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !4516, file: !4517, line: 452, baseType: !4646, size: 448, offset: 3840)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !4517, line: 185, size: 448, elements: !4647)
!4647 = !{!4648, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4662}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4646, file: !4517, line: 186, baseType: !4649, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4646, file: !4517, line: 187, baseType: !454, size: 32, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4646, file: !4517, line: 188, baseType: !454, size: 32, offset: 96)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !4646, file: !4517, line: 189, baseType: !454, size: 32, offset: 128)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !4646, file: !4517, line: 190, baseType: !454, size: 32, offset: 160)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !4646, file: !4517, line: 191, baseType: !454, size: 32, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4646, file: !4517, line: 192, baseType: !454, size: 32, offset: 224)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !4646, file: !4517, line: 193, baseType: !454, size: 32, offset: 256)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !4646, file: !4517, line: 194, baseType: !454, size: 32, offset: 288)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !4646, file: !4517, line: 198, baseType: !4659, size: 64, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !4515, !139, !139, !5}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !4646, file: !4517, line: 199, baseType: !4659, size: 64, offset: 384)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !4516, file: !4517, line: 453, baseType: !4646, size: 448, offset: 4288)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4516, file: !4517, line: 454, baseType: !4665, size: 320, offset: 4736)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !4527, line: 282, size: 320, elements: !4666)
!4666 = !{!4667, !4668, !4669, !4671, !4672, !4673}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4665, file: !4527, line: 283, baseType: !455, size: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4665, file: !4527, line: 284, baseType: !455, size: 32, offset: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4665, file: !4527, line: 285, baseType: !4670, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4665, file: !4527, line: 286, baseType: !4670, size: 64, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4665, file: !4527, line: 287, baseType: !4670, size: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4665, file: !4527, line: 288, baseType: !4670, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !4516, file: !4517, line: 455, baseType: !212, size: 128, offset: 5056)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4516, file: !4517, line: 456, baseType: !4598, size: 64, offset: 5184)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !4516, file: !4517, line: 462, baseType: !4677, size: 64, offset: 5248)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !118, line: 280, size: 6912, elements: !4679)
!4679 = !{!4680, !4690, !4691, !4692, !4707, !4719, !4720, !4721, !4723}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !4678, file: !118, line: 284, baseType: !4681, size: 224)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !118, line: 182, size: 224, elements: !4682)
!4682 = !{!4683, !4684, !4685, !4686, !4687, !4688, !4689}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4681, file: !118, line: 194, baseType: !140, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4681, file: !118, line: 203, baseType: !140, size: 32, offset: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4681, file: !118, line: 219, baseType: !140, size: 32, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4681, file: !118, line: 238, baseType: !140, size: 32, offset: 96)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4681, file: !118, line: 249, baseType: !117, size: 32, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4681, file: !118, line: 264, baseType: !5, size: 32, offset: 160)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4681, file: !118, line: 272, baseType: !124, size: 32, offset: 192)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4678, file: !118, line: 294, baseType: !224, size: 192, offset: 256)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !4678, file: !118, line: 303, baseType: !224, size: 192, offset: 448)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4678, file: !118, line: 312, baseType: !4693, size: 64, offset: 640)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4695)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !118, line: 120, size: 256, elements: !4696)
!4696 = !{!4697, !4698, !4702, !4703}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4695, file: !118, line: 128, baseType: !5, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !4695, file: !118, line: 146, baseType: !4699, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!140, !4677}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !4695, file: !118, line: 160, baseType: !4699, size: 64, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !4695, file: !118, line: 174, baseType: !4704, size: 64, offset: 192)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!140, !4677, !4515}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !4678, file: !118, line: 317, baseType: !4708, size: 192, offset: 704)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4709, line: 54, size: 192, elements: !4710)
!4709 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4710 = !{!4711, !4717, !4718}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4708, file: !4709, line: 55, baseType: !4712, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4709, line: 51, baseType: !4713)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!140, !4716, !194, !139}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4708, file: !4709, line: 56, baseType: !4716, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4708, file: !4709, line: 57, baseType: !140, size: 32, offset: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4678, file: !118, line: 322, baseType: !212, size: 128, offset: 896)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4678, file: !118, line: 327, baseType: !275, size: 5568, offset: 1024)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !4678, file: !118, line: 335, baseType: !4722, size: 256, offset: 6592)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 256, elements: !2323)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4678, file: !118, line: 340, baseType: !140, size: 32, offset: 6848)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !4516, file: !4517, line: 465, baseType: !224, size: 192, offset: 5312)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !4516, file: !4517, line: 466, baseType: !4726, size: 1024, offset: 5504)
!4726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1403, size: 1024, elements: !3537)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !4516, file: !4517, line: 469, baseType: !4728, size: 704, offset: 6528)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !199, line: 115, size: 704, elements: !4729)
!4729 = !{!4730, !4731, !4732, !4733}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4728, file: !199, line: 116, baseType: !198, size: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4728, file: !199, line: 117, baseType: !3638, size: 320, offset: 256)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4728, file: !199, line: 120, baseType: !2883, size: 64, offset: 576)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4728, file: !199, line: 121, baseType: !140, size: 32, offset: 640)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !4516, file: !4517, line: 470, baseType: !4735, size: 64, offset: 7232)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !4517, line: 203, size: 512, elements: !4737)
!4737 = !{!4738, !4739, !4740, !4741, !4745}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4736, file: !4517, line: 205, baseType: !194, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4736, file: !4517, line: 206, baseType: !224, size: 192, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4736, file: !4517, line: 207, baseType: !212, size: 128, offset: 256)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4736, file: !4517, line: 209, baseType: !4742, size: 64, offset: 384)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{null, !4515}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4736, file: !4517, line: 210, baseType: !4746, size: 64, offset: 448)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{null, !4515, !215}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !4516, file: !4517, line: 473, baseType: !4750, size: 64, offset: 7296)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4752)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !4517, line: 228, size: 1472, elements: !4753)
!4753 = !{!4754, !4755, !4759, !4760, !4764, !4768, !4773, !4777, !4781, !4786, !4790, !4791, !4805, !4819, !4836, !4853, !4854, !4858, !4859, !4863, !4874, !4875, !4876}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4752, file: !4517, line: 230, baseType: !668, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4752, file: !4517, line: 231, baseType: !4756, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!140, !4515, !140}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4752, file: !4517, line: 232, baseType: !4756, size: 64, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4752, file: !4517, line: 237, baseType: !4761, size: 64, offset: 192)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!351, !4515, !320, !366, !770}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4752, file: !4517, line: 239, baseType: !4765, size: 64, offset: 256)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!351, !4515, !282, !366, !770}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4752, file: !4517, line: 244, baseType: !4769, size: 64, offset: 320)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!140, !4772, !4515}
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4752, file: !4517, line: 247, baseType: !4774, size: 64, offset: 384)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!140, !4515}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4752, file: !4517, line: 250, baseType: !4778, size: 64, offset: 448)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!140, !5, !5, !5, !5, !5, !4515}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4752, file: !4517, line: 254, baseType: !4782, size: 64, offset: 512)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!140, !4785, !4515}
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4752, file: !4517, line: 257, baseType: !4787, size: 64, offset: 576)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!140, !140, !4515}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4752, file: !4517, line: 260, baseType: !4769, size: 64, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4752, file: !4517, line: 263, baseType: !4792, size: 64, offset: 704)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{null, !4515, !4795}
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4797)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !4527, line: 351, size: 192, elements: !4798)
!4798 = !{!4799, !4800, !4801, !4802, !4803, !4804}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4797, file: !4527, line: 352, baseType: !455, size: 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4797, file: !4527, line: 353, baseType: !455, size: 32, offset: 32)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4797, file: !4527, line: 354, baseType: !455, size: 32, offset: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4797, file: !4527, line: 355, baseType: !455, size: 32, offset: 96)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4797, file: !4527, line: 356, baseType: !455, size: 32, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4797, file: !4527, line: 357, baseType: !455, size: 32, offset: 160)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4752, file: !4517, line: 265, baseType: !4806, size: 64, offset: 768)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !4515, !4809}
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4811)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !4527, line: 342, size: 192, elements: !4812)
!4812 = !{!4813, !4814, !4815, !4816, !4817, !4818}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4811, file: !4527, line: 343, baseType: !455, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4811, file: !4527, line: 344, baseType: !455, size: 32, offset: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4811, file: !4527, line: 345, baseType: !455, size: 32, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4811, file: !4527, line: 346, baseType: !455, size: 32, offset: 96)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4811, file: !4527, line: 347, baseType: !455, size: 32, offset: 128)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4811, file: !4527, line: 348, baseType: !455, size: 32, offset: 160)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4752, file: !4517, line: 267, baseType: !4820, size: 64, offset: 832)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !4515, !4823}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4825)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !4527, line: 360, size: 640, elements: !4826)
!4826 = !{!4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4825, file: !4527, line: 361, baseType: !455, size: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4825, file: !4527, line: 362, baseType: !455, size: 32, offset: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4825, file: !4527, line: 363, baseType: !455, size: 32, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4825, file: !4527, line: 364, baseType: !455, size: 32, offset: 96)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4825, file: !4527, line: 365, baseType: !455, size: 32, offset: 128)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4825, file: !4527, line: 366, baseType: !455, size: 32, offset: 160)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4825, file: !4527, line: 367, baseType: !1404, size: 8, offset: 192)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4825, file: !4527, line: 368, baseType: !282, size: 64, offset: 256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4825, file: !4527, line: 369, baseType: !4665, size: 320, offset: 320)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4752, file: !4517, line: 270, baseType: !4837, size: 64, offset: 896)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!140, !4515, !4840}
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !4527, line: 388, size: 832, elements: !4842)
!4842 = !{!4843, !4844, !4845, !4846, !4847, !4852}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4841, file: !4527, line: 389, baseType: !144, size: 16)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4841, file: !4527, line: 390, baseType: !144, size: 16, offset: 16)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4841, file: !4527, line: 391, baseType: !144, size: 16, offset: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4841, file: !4527, line: 392, baseType: !282, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4841, file: !4527, line: 393, baseType: !4848, size: 32, offset: 128)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !4527, line: 384, size: 32, elements: !4849)
!4849 = !{!4850, !4851}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4848, file: !4527, line: 385, baseType: !144, size: 16)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4848, file: !4527, line: 385, baseType: !144, size: 16, offset: 16)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4841, file: !4527, line: 394, baseType: !4825, size: 640, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4752, file: !4517, line: 273, baseType: !4774, size: 64, offset: 960)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4752, file: !4517, line: 276, baseType: !4855, size: 64, offset: 1024)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!140, !4515, !5, !194}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4752, file: !4517, line: 280, baseType: !4855, size: 64, offset: 1088)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4752, file: !4517, line: 284, baseType: !4860, size: 64, offset: 1152)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!140, !4515, !1043}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4752, file: !4517, line: 287, baseType: !4864, size: 64, offset: 1216)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{null, !4515, !4867, !4772}
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !4517, line: 144, size: 128, elements: !4869)
!4869 = !{!4870, !4871, !4872, !4873}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4868, file: !4517, line: 145, baseType: !454, size: 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4868, file: !4517, line: 146, baseType: !454, size: 32, offset: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4868, file: !4517, line: 147, baseType: !454, size: 32, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4868, file: !4517, line: 148, baseType: !454, size: 32, offset: 96)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4752, file: !4517, line: 291, baseType: !4742, size: 64, offset: 1280)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4752, file: !4517, line: 294, baseType: !4774, size: 64, offset: 1344)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4752, file: !4517, line: 295, baseType: !4774, size: 64, offset: 1408)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4516, file: !4517, line: 474, baseType: !274, size: 64, offset: 7360)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4516, file: !4517, line: 475, baseType: !274, size: 64, offset: 7424)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !4516, file: !4517, line: 476, baseType: !140, size: 32, offset: 7488)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !4516, file: !4517, line: 478, baseType: !4881, size: 64, offset: 7552)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !4517, line: 355, size: 384, elements: !4883)
!4883 = !{!4884, !4898, !4911, !4926, !4942, !4955}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4882, file: !4517, line: 357, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{null, !4515, !4888}
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !4517, line: 306, size: 192, elements: !4890)
!4890 = !{!4891, !4892, !4893, !4894, !4895}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4889, file: !4517, line: 307, baseType: !455, size: 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4889, file: !4517, line: 308, baseType: !455, size: 32, offset: 32)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4889, file: !4517, line: 309, baseType: !455, size: 32, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4889, file: !4517, line: 310, baseType: !455, size: 32, offset: 96)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4889, file: !4517, line: 311, baseType: !4896, size: 64, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4882, file: !4517, line: 362, baseType: !4899, size: 64, offset: 64)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{null, !4515, !4902}
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !4517, line: 326, size: 192, elements: !4904)
!4904 = !{!4905, !4906, !4907, !4908, !4909, !4910}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4903, file: !4517, line: 327, baseType: !455, size: 32)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4903, file: !4517, line: 328, baseType: !455, size: 32, offset: 32)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4903, file: !4517, line: 329, baseType: !455, size: 32, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4903, file: !4517, line: 330, baseType: !455, size: 32, offset: 96)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4903, file: !4517, line: 331, baseType: !455, size: 32, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4903, file: !4517, line: 332, baseType: !455, size: 32, offset: 160)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4882, file: !4517, line: 364, baseType: !4912, size: 64, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{null, !4515, !4915}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !4517, line: 315, size: 256, elements: !4917)
!4917 = !{!4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4916, file: !4517, line: 316, baseType: !455, size: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4916, file: !4517, line: 317, baseType: !455, size: 32, offset: 32)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4916, file: !4517, line: 318, baseType: !455, size: 32, offset: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4916, file: !4517, line: 319, baseType: !455, size: 32, offset: 96)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4916, file: !4517, line: 320, baseType: !455, size: 32, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4916, file: !4517, line: 321, baseType: !455, size: 32, offset: 160)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4916, file: !4517, line: 322, baseType: !455, size: 32, offset: 192)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4916, file: !4517, line: 323, baseType: !455, size: 32, offset: 224)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4882, file: !4517, line: 366, baseType: !4927, size: 64, offset: 192)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{null, !4515, !4930}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !4517, line: 335, size: 320, elements: !4932)
!4932 = !{!4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4931, file: !4517, line: 336, baseType: !455, size: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4931, file: !4517, line: 337, baseType: !455, size: 32, offset: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4931, file: !4517, line: 338, baseType: !455, size: 32, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4931, file: !4517, line: 339, baseType: !455, size: 32, offset: 96)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4931, file: !4517, line: 340, baseType: !455, size: 32, offset: 128)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4931, file: !4517, line: 341, baseType: !455, size: 32, offset: 160)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4931, file: !4517, line: 342, baseType: !455, size: 32, offset: 192)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4931, file: !4517, line: 343, baseType: !4941, size: 64, offset: 256)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4882, file: !4517, line: 368, baseType: !4943, size: 64, offset: 256)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{null, !4515, !4946}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !4517, line: 346, size: 192, elements: !4948)
!4948 = !{!4949, !4950, !4951, !4952, !4953, !4954}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4947, file: !4517, line: 347, baseType: !455, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4947, file: !4517, line: 348, baseType: !455, size: 32, offset: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4947, file: !4517, line: 349, baseType: !455, size: 32, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4947, file: !4517, line: 350, baseType: !455, size: 32, offset: 96)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4947, file: !4517, line: 351, baseType: !455, size: 32, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4947, file: !4517, line: 352, baseType: !455, size: 32, offset: 160)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4882, file: !4517, line: 371, baseType: !4774, size: 64, offset: 320)
!4956 = !DIDerivedType(tag: DW_TAG_member, scope: !4516, file: !4517, line: 480, baseType: !4957, size: 64, offset: 7616)
!4957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4516, file: !4517, line: 480, size: 64, elements: !4958)
!4958 = !{!4959, !4960}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4957, file: !4517, line: 481, baseType: !320, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4957, file: !4517, line: 482, baseType: !320, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !4516, file: !4517, line: 484, baseType: !194, size: 64, offset: 7680)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !4516, file: !4517, line: 485, baseType: !139, size: 64, offset: 7744)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4516, file: !4517, line: 488, baseType: !454, size: 32, offset: 7808)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !4516, file: !4517, line: 489, baseType: !139, size: 64, offset: 7872)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !4516, file: !4517, line: 491, baseType: !139, size: 64, offset: 7936)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !4516, file: !4517, line: 501, baseType: !4967, size: 64, offset: 8000)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !4517, line: 495, size: 64, elements: !4969)
!4969 = !{!4970, !4971}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4968, file: !4517, line: 496, baseType: !5, size: 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4968, file: !4517, line: 500, baseType: !4972, offset: 64)
!4972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4973, elements: !1805)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !4517, line: 497, size: 128, elements: !4974)
!4974 = !{!4975, !4977}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4973, file: !4517, line: 498, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !138, line: 158, baseType: !2218)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4973, file: !4517, line: 499, baseType: !4976, size: 64, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !4516, file: !4517, line: 503, baseType: !527, size: 8, offset: 8064)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !156, file: !157, line: 57, baseType: !4980, size: 64, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !163, !4515, !140, !140, !140, !140}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "putcs", scope: !156, file: !157, line: 59, baseType: !4984, size: 64, offset: 128)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !163, !4515, !4377, !140, !140, !140, !140, !140}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "clear_margins", scope: !156, file: !157, line: 62, baseType: !4988, size: 64, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !163, !4515, !140, !140}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !156, file: !157, line: 64, baseType: !4992, size: 64, offset: 256)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{null, !163, !4515, !140, !140, !140}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "update_start", scope: !156, file: !157, line: 66, baseType: !4774, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_font", scope: !156, file: !157, line: 67, baseType: !4997, size: 64, offset: 384)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!140, !4515, !163}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !156, file: !157, line: 68, baseType: !4526, size: 1280, offset: 448)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_timer", scope: !156, file: !157, line: 69, baseType: !3638, size: 320, offset: 1728)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_state", scope: !156, file: !157, line: 70, baseType: !4841, size: 832, offset: 2048)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !156, file: !157, line: 71, baseType: !5004, size: 64, offset: 2880)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcon_display", file: !157, line: 28, size: 1024, elements: !5006)
!5006 = !{!5007, !5011, !5012, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "fontdata", scope: !5005, file: !157, line: 30, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5010)
!5010 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !138, line: 79, baseType: !464)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "userfont", scope: !5005, file: !157, line: 31, baseType: !140, size: 32, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "scrollmode", scope: !5005, file: !157, line: 32, baseType: !5013, size: 16, offset: 96)
!5013 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !138, line: 80, baseType: !146)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "inverse", scope: !5005, file: !157, line: 33, baseType: !5013, size: 16, offset: 112)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "yscroll", scope: !5005, file: !157, line: 34, baseType: !1261, size: 16, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "vrows", scope: !5005, file: !157, line: 35, baseType: !140, size: 32, offset: 160)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_shape", scope: !5005, file: !157, line: 36, baseType: !140, size: 32, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "con_rotate", scope: !5005, file: !157, line: 37, baseType: !140, size: 32, offset: 224)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !5005, file: !157, line: 38, baseType: !454, size: 32, offset: 256)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !5005, file: !157, line: 39, baseType: !454, size: 32, offset: 288)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5005, file: !157, line: 40, baseType: !454, size: 32, offset: 320)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5005, file: !157, line: 41, baseType: !454, size: 32, offset: 352)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !5005, file: !157, line: 42, baseType: !454, size: 32, offset: 384)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !5005, file: !157, line: 43, baseType: !454, size: 32, offset: 416)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !5005, file: !157, line: 44, baseType: !454, size: 32, offset: 448)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !5005, file: !157, line: 45, baseType: !454, size: 32, offset: 480)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !5005, file: !157, line: 46, baseType: !454, size: 32, offset: 512)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !5005, file: !157, line: 47, baseType: !4538, size: 96, offset: 544)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !5005, file: !157, line: 48, baseType: !4538, size: 96, offset: 640)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !5005, file: !157, line: 49, baseType: !4538, size: 96, offset: 736)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !5005, file: !157, line: 50, baseType: !4538, size: 96, offset: 832)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5005, file: !157, line: 51, baseType: !5033, size: 64, offset: 960)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4599)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !156, file: !157, line: 72, baseType: !4515, size: 64, offset: 2944)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "currcon", scope: !156, file: !157, line: 73, baseType: !140, size: 32, offset: 3008)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "cur_blink_jiffies", scope: !156, file: !157, line: 74, baseType: !140, size: 32, offset: 3040)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_flash", scope: !156, file: !157, line: 75, baseType: !140, size: 32, offset: 3072)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_reset", scope: !156, file: !157, line: 76, baseType: !140, size: 32, offset: 3104)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "blank_state", scope: !156, file: !157, line: 77, baseType: !140, size: 32, offset: 3136)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "graphics", scope: !156, file: !157, line: 78, baseType: !140, size: 32, offset: 3168)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "save_graphics", scope: !156, file: !157, line: 79, baseType: !140, size: 32, offset: 3200)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !157, line: 80, baseType: !140, size: 32, offset: 3232)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !156, file: !157, line: 81, baseType: !140, size: 32, offset: 3264)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "cur_rotate", scope: !156, file: !157, line: 82, baseType: !140, size: 32, offset: 3296)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_data", scope: !156, file: !157, line: 83, baseType: !320, size: 64, offset: 3328)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "fontbuffer", scope: !156, file: !157, line: 84, baseType: !4649, size: 64, offset: 3392)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "fontdata", scope: !156, file: !157, line: 85, baseType: !4649, size: 64, offset: 3456)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_src", scope: !156, file: !157, line: 86, baseType: !4649, size: 64, offset: 3520)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_size", scope: !156, file: !157, line: 87, baseType: !454, size: 32, offset: 3584)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "fd_size", scope: !156, file: !157, line: 88, baseType: !454, size: 32, offset: 3616)
!5052 = !DILocalVariable(name: "ops", arg: 1, scope: !152, file: !1, line: 394, type: !155)
!5053 = !DILocation(line: 394, column: 41, scope: !152)
!5054 = !DILocation(line: 396, column: 2, scope: !152)
!5055 = !DILocation(line: 396, column: 7, scope: !152)
!5056 = !DILocation(line: 396, column: 13, scope: !152)
!5057 = !DILocation(line: 397, column: 2, scope: !152)
!5058 = !DILocation(line: 397, column: 7, scope: !152)
!5059 = !DILocation(line: 397, column: 13, scope: !152)
!5060 = !DILocation(line: 398, column: 2, scope: !152)
!5061 = !DILocation(line: 398, column: 7, scope: !152)
!5062 = !DILocation(line: 398, column: 13, scope: !152)
!5063 = !DILocation(line: 399, column: 2, scope: !152)
!5064 = !DILocation(line: 399, column: 7, scope: !152)
!5065 = !DILocation(line: 399, column: 21, scope: !152)
!5066 = !DILocation(line: 400, column: 2, scope: !152)
!5067 = !DILocation(line: 400, column: 7, scope: !152)
!5068 = !DILocation(line: 400, column: 14, scope: !152)
!5069 = !DILocation(line: 401, column: 2, scope: !152)
!5070 = !DILocation(line: 401, column: 7, scope: !152)
!5071 = !DILocation(line: 401, column: 20, scope: !152)
!5072 = !DILocation(line: 402, column: 2, scope: !152)
!5073 = !DILocation(line: 402, column: 7, scope: !152)
!5074 = !DILocation(line: 402, column: 19, scope: !152)
!5075 = !DILocation(line: 404, column: 6, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !152, file: !1, line: 404, column: 6)
!5077 = !DILocation(line: 404, column: 11, scope: !5076)
!5078 = !DILocation(line: 404, column: 6, scope: !152)
!5079 = !DILocation(line: 405, column: 3, scope: !5076)
!5080 = !DILocation(line: 405, column: 3, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5076, file: !1, line: 405, column: 3)
!5082 = !DILocation(line: 406, column: 1, scope: !152)
!5083 = distinct !DISubprogram(name: "bit_bmove", scope: !1, file: !1, line: 46, type: !161, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5084 = !DILocalVariable(name: "vc", arg: 1, scope: !5083, file: !1, line: 46, type: !163)
!5085 = !DILocation(line: 46, column: 39, scope: !5083)
!5086 = !DILocalVariable(name: "info", arg: 2, scope: !5083, file: !1, line: 46, type: !4515)
!5087 = !DILocation(line: 46, column: 59, scope: !5083)
!5088 = !DILocalVariable(name: "sy", arg: 3, scope: !5083, file: !1, line: 46, type: !140)
!5089 = !DILocation(line: 46, column: 69, scope: !5083)
!5090 = !DILocalVariable(name: "sx", arg: 4, scope: !5083, file: !1, line: 47, type: !140)
!5091 = !DILocation(line: 47, column: 13, scope: !5083)
!5092 = !DILocalVariable(name: "dy", arg: 5, scope: !5083, file: !1, line: 47, type: !140)
!5093 = !DILocation(line: 47, column: 21, scope: !5083)
!5094 = !DILocalVariable(name: "dx", arg: 6, scope: !5083, file: !1, line: 47, type: !140)
!5095 = !DILocation(line: 47, column: 29, scope: !5083)
!5096 = !DILocalVariable(name: "height", arg: 7, scope: !5083, file: !1, line: 47, type: !140)
!5097 = !DILocation(line: 47, column: 37, scope: !5083)
!5098 = !DILocalVariable(name: "width", arg: 8, scope: !5083, file: !1, line: 47, type: !140)
!5099 = !DILocation(line: 47, column: 49, scope: !5083)
!5100 = !DILocalVariable(name: "area", scope: !5083, file: !1, line: 49, type: !4811)
!5101 = !DILocation(line: 49, column: 21, scope: !5083)
!5102 = !DILocation(line: 51, column: 12, scope: !5083)
!5103 = !DILocation(line: 51, column: 17, scope: !5083)
!5104 = !DILocation(line: 51, column: 21, scope: !5083)
!5105 = !DILocation(line: 51, column: 29, scope: !5083)
!5106 = !DILocation(line: 51, column: 15, scope: !5083)
!5107 = !DILocation(line: 51, column: 7, scope: !5083)
!5108 = !DILocation(line: 51, column: 10, scope: !5083)
!5109 = !DILocation(line: 52, column: 12, scope: !5083)
!5110 = !DILocation(line: 52, column: 17, scope: !5083)
!5111 = !DILocation(line: 52, column: 21, scope: !5083)
!5112 = !DILocation(line: 52, column: 29, scope: !5083)
!5113 = !DILocation(line: 52, column: 15, scope: !5083)
!5114 = !DILocation(line: 52, column: 7, scope: !5083)
!5115 = !DILocation(line: 52, column: 10, scope: !5083)
!5116 = !DILocation(line: 53, column: 12, scope: !5083)
!5117 = !DILocation(line: 53, column: 17, scope: !5083)
!5118 = !DILocation(line: 53, column: 21, scope: !5083)
!5119 = !DILocation(line: 53, column: 29, scope: !5083)
!5120 = !DILocation(line: 53, column: 15, scope: !5083)
!5121 = !DILocation(line: 53, column: 7, scope: !5083)
!5122 = !DILocation(line: 53, column: 10, scope: !5083)
!5123 = !DILocation(line: 54, column: 12, scope: !5083)
!5124 = !DILocation(line: 54, column: 17, scope: !5083)
!5125 = !DILocation(line: 54, column: 21, scope: !5083)
!5126 = !DILocation(line: 54, column: 29, scope: !5083)
!5127 = !DILocation(line: 54, column: 15, scope: !5083)
!5128 = !DILocation(line: 54, column: 7, scope: !5083)
!5129 = !DILocation(line: 54, column: 10, scope: !5083)
!5130 = !DILocation(line: 55, column: 16, scope: !5083)
!5131 = !DILocation(line: 55, column: 25, scope: !5083)
!5132 = !DILocation(line: 55, column: 29, scope: !5083)
!5133 = !DILocation(line: 55, column: 37, scope: !5083)
!5134 = !DILocation(line: 55, column: 23, scope: !5083)
!5135 = !DILocation(line: 55, column: 7, scope: !5083)
!5136 = !DILocation(line: 55, column: 14, scope: !5083)
!5137 = !DILocation(line: 56, column: 15, scope: !5083)
!5138 = !DILocation(line: 56, column: 23, scope: !5083)
!5139 = !DILocation(line: 56, column: 27, scope: !5083)
!5140 = !DILocation(line: 56, column: 35, scope: !5083)
!5141 = !DILocation(line: 56, column: 21, scope: !5083)
!5142 = !DILocation(line: 56, column: 7, scope: !5083)
!5143 = !DILocation(line: 56, column: 13, scope: !5083)
!5144 = !DILocation(line: 58, column: 2, scope: !5083)
!5145 = !DILocation(line: 58, column: 8, scope: !5083)
!5146 = !DILocation(line: 58, column: 15, scope: !5083)
!5147 = !DILocation(line: 58, column: 27, scope: !5083)
!5148 = !DILocation(line: 59, column: 1, scope: !5083)
!5149 = distinct !DISubprogram(name: "bit_clear", scope: !1, file: !1, line: 61, type: !4981, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5150 = !DILocalVariable(name: "vc", arg: 1, scope: !5149, file: !1, line: 61, type: !163)
!5151 = !DILocation(line: 61, column: 39, scope: !5149)
!5152 = !DILocalVariable(name: "info", arg: 2, scope: !5149, file: !1, line: 61, type: !4515)
!5153 = !DILocation(line: 61, column: 59, scope: !5149)
!5154 = !DILocalVariable(name: "sy", arg: 3, scope: !5149, file: !1, line: 61, type: !140)
!5155 = !DILocation(line: 61, column: 69, scope: !5149)
!5156 = !DILocalVariable(name: "sx", arg: 4, scope: !5149, file: !1, line: 62, type: !140)
!5157 = !DILocation(line: 62, column: 13, scope: !5149)
!5158 = !DILocalVariable(name: "height", arg: 5, scope: !5149, file: !1, line: 62, type: !140)
!5159 = !DILocation(line: 62, column: 21, scope: !5149)
!5160 = !DILocalVariable(name: "width", arg: 6, scope: !5149, file: !1, line: 62, type: !140)
!5161 = !DILocation(line: 62, column: 33, scope: !5149)
!5162 = !DILocalVariable(name: "bgshift", scope: !5149, file: !1, line: 64, type: !140)
!5163 = !DILocation(line: 64, column: 6, scope: !5149)
!5164 = !DILocation(line: 64, column: 17, scope: !5149)
!5165 = !DILocation(line: 64, column: 21, scope: !5149)
!5166 = !DILocation(line: 64, column: 16, scope: !5149)
!5167 = !DILocalVariable(name: "region", scope: !5149, file: !1, line: 65, type: !4797)
!5168 = !DILocation(line: 65, column: 21, scope: !5149)
!5169 = !DILocation(line: 67, column: 17, scope: !5149)
!5170 = !DILocation(line: 67, column: 9, scope: !5149)
!5171 = !DILocation(line: 67, column: 15, scope: !5149)
!5172 = !DILocation(line: 68, column: 14, scope: !5149)
!5173 = !DILocation(line: 68, column: 19, scope: !5149)
!5174 = !DILocation(line: 68, column: 23, scope: !5149)
!5175 = !DILocation(line: 68, column: 31, scope: !5149)
!5176 = !DILocation(line: 68, column: 17, scope: !5149)
!5177 = !DILocation(line: 68, column: 9, scope: !5149)
!5178 = !DILocation(line: 68, column: 12, scope: !5149)
!5179 = !DILocation(line: 69, column: 14, scope: !5149)
!5180 = !DILocation(line: 69, column: 19, scope: !5149)
!5181 = !DILocation(line: 69, column: 23, scope: !5149)
!5182 = !DILocation(line: 69, column: 31, scope: !5149)
!5183 = !DILocation(line: 69, column: 17, scope: !5149)
!5184 = !DILocation(line: 69, column: 9, scope: !5149)
!5185 = !DILocation(line: 69, column: 12, scope: !5149)
!5186 = !DILocation(line: 70, column: 17, scope: !5149)
!5187 = !DILocation(line: 70, column: 25, scope: !5149)
!5188 = !DILocation(line: 70, column: 29, scope: !5149)
!5189 = !DILocation(line: 70, column: 37, scope: !5149)
!5190 = !DILocation(line: 70, column: 23, scope: !5149)
!5191 = !DILocation(line: 70, column: 9, scope: !5149)
!5192 = !DILocation(line: 70, column: 15, scope: !5149)
!5193 = !DILocation(line: 71, column: 18, scope: !5149)
!5194 = !DILocation(line: 71, column: 27, scope: !5149)
!5195 = !DILocation(line: 71, column: 31, scope: !5149)
!5196 = !DILocation(line: 71, column: 39, scope: !5149)
!5197 = !DILocation(line: 71, column: 25, scope: !5149)
!5198 = !DILocation(line: 71, column: 9, scope: !5149)
!5199 = !DILocation(line: 71, column: 16, scope: !5149)
!5200 = !DILocation(line: 72, column: 9, scope: !5149)
!5201 = !DILocation(line: 72, column: 13, scope: !5149)
!5202 = !DILocation(line: 74, column: 2, scope: !5149)
!5203 = !DILocation(line: 74, column: 8, scope: !5149)
!5204 = !DILocation(line: 74, column: 15, scope: !5149)
!5205 = !DILocation(line: 74, column: 27, scope: !5149)
!5206 = !DILocation(line: 75, column: 1, scope: !5149)
!5207 = distinct !DISubprogram(name: "bit_putcs", scope: !1, file: !1, line: 143, type: !4985, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5208 = !DILocalVariable(name: "s", arg: 1, scope: !5209, file: !130, line: 445, type: !996)
!5209 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !130, file: !130, line: 445, type: !5210, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!139, !996, !137, !366}
!5212 = !DILocation(line: 445, column: 72, scope: !5209, inlinedAt: !5213)
!5213 = distinct !DILocation(line: 552, column: 10, scope: !5214, inlinedAt: !5219)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !130, line: 540, column: 34)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !130, line: 540, column: 6)
!5216 = distinct !DISubprogram(name: "kmalloc", scope: !130, file: !130, line: 538, type: !5217, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!139, !366, !137}
!5219 = distinct !DILocation(line: 165, column: 9, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !1, line: 164, column: 17)
!5221 = distinct !DILexicalBlock(scope: !5207, file: !1, line: 164, column: 6)
!5222 = !DILocalVariable(name: "flags", arg: 2, scope: !5209, file: !130, line: 446, type: !137)
!5223 = !DILocation(line: 446, column: 9, scope: !5209, inlinedAt: !5213)
!5224 = !DILocalVariable(name: "size", arg: 3, scope: !5209, file: !130, line: 446, type: !366)
!5225 = !DILocation(line: 446, column: 23, scope: !5209, inlinedAt: !5213)
!5226 = !DILocalVariable(name: "ret", scope: !5209, file: !130, line: 448, type: !139)
!5227 = !DILocation(line: 448, column: 8, scope: !5209, inlinedAt: !5213)
!5228 = !DILocalVariable(name: "flags", arg: 1, scope: !5229, file: !130, line: 318, type: !137)
!5229 = distinct !DISubprogram(name: "kmalloc_type", scope: !130, file: !130, line: 318, type: !5230, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!129, !137}
!5232 = !DILocation(line: 318, column: 67, scope: !5229, inlinedAt: !5233)
!5233 = distinct !DILocation(line: 553, column: 20, scope: !5214, inlinedAt: !5219)
!5234 = !DILocalVariable(name: "size", arg: 1, scope: !5235, file: !130, line: 346, type: !366)
!5235 = distinct !DISubprogram(name: "kmalloc_index", scope: !130, file: !130, line: 346, type: !5236, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!5, !366}
!5238 = !DILocation(line: 346, column: 58, scope: !5235, inlinedAt: !5239)
!5239 = distinct !DILocation(line: 547, column: 11, scope: !5214, inlinedAt: !5219)
!5240 = !DILocalVariable(name: "size", arg: 1, scope: !5241, file: !130, line: 472, type: !366)
!5241 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !130, file: !130, line: 472, type: !5242, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!139, !366, !137, !5}
!5244 = !DILocation(line: 472, column: 28, scope: !5241, inlinedAt: !5245)
!5245 = distinct !DILocation(line: 481, column: 9, scope: !5246, inlinedAt: !5247)
!5246 = distinct !DISubprogram(name: "kmalloc_large", scope: !130, file: !130, line: 478, type: !5217, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5247 = distinct !DILocation(line: 545, column: 11, scope: !5248, inlinedAt: !5219)
!5248 = distinct !DILexicalBlock(scope: !5214, file: !130, line: 544, column: 7)
!5249 = !DILocalVariable(name: "flags", arg: 2, scope: !5241, file: !130, line: 472, type: !137)
!5250 = !DILocation(line: 472, column: 40, scope: !5241, inlinedAt: !5245)
!5251 = !DILocalVariable(name: "order", arg: 3, scope: !5241, file: !130, line: 472, type: !5)
!5252 = !DILocation(line: 472, column: 60, scope: !5241, inlinedAt: !5245)
!5253 = !DILocalVariable(name: "size", arg: 1, scope: !5246, file: !130, line: 478, type: !366)
!5254 = !DILocation(line: 478, column: 51, scope: !5246, inlinedAt: !5247)
!5255 = !DILocalVariable(name: "flags", arg: 2, scope: !5246, file: !130, line: 478, type: !137)
!5256 = !DILocation(line: 478, column: 63, scope: !5246, inlinedAt: !5247)
!5257 = !DILocalVariable(name: "order", scope: !5246, file: !130, line: 480, type: !5)
!5258 = !DILocation(line: 480, column: 15, scope: !5246, inlinedAt: !5247)
!5259 = !DILocalVariable(name: "size", arg: 1, scope: !5216, file: !130, line: 538, type: !366)
!5260 = !DILocation(line: 538, column: 45, scope: !5216, inlinedAt: !5219)
!5261 = !DILocalVariable(name: "flags", arg: 2, scope: !5216, file: !130, line: 538, type: !137)
!5262 = !DILocation(line: 538, column: 57, scope: !5216, inlinedAt: !5219)
!5263 = !DILocalVariable(name: "index", scope: !5214, file: !130, line: 542, type: !5)
!5264 = !DILocation(line: 542, column: 16, scope: !5214, inlinedAt: !5219)
!5265 = !DILocalVariable(name: "vc", arg: 1, scope: !5207, file: !1, line: 143, type: !163)
!5266 = !DILocation(line: 143, column: 39, scope: !5207)
!5267 = !DILocalVariable(name: "info", arg: 2, scope: !5207, file: !1, line: 143, type: !4515)
!5268 = !DILocation(line: 143, column: 59, scope: !5207)
!5269 = !DILocalVariable(name: "s", arg: 3, scope: !5207, file: !1, line: 144, type: !4377)
!5270 = !DILocation(line: 144, column: 31, scope: !5207)
!5271 = !DILocalVariable(name: "count", arg: 4, scope: !5207, file: !1, line: 144, type: !140)
!5272 = !DILocation(line: 144, column: 38, scope: !5207)
!5273 = !DILocalVariable(name: "yy", arg: 5, scope: !5207, file: !1, line: 144, type: !140)
!5274 = !DILocation(line: 144, column: 49, scope: !5207)
!5275 = !DILocalVariable(name: "xx", arg: 6, scope: !5207, file: !1, line: 144, type: !140)
!5276 = !DILocation(line: 144, column: 57, scope: !5207)
!5277 = !DILocalVariable(name: "fg", arg: 7, scope: !5207, file: !1, line: 145, type: !140)
!5278 = !DILocation(line: 145, column: 13, scope: !5207)
!5279 = !DILocalVariable(name: "bg", arg: 8, scope: !5207, file: !1, line: 145, type: !140)
!5280 = !DILocation(line: 145, column: 21, scope: !5207)
!5281 = !DILocalVariable(name: "image", scope: !5207, file: !1, line: 147, type: !4825)
!5282 = !DILocation(line: 147, column: 18, scope: !5207)
!5283 = !DILocalVariable(name: "width", scope: !5207, file: !1, line: 148, type: !454)
!5284 = !DILocation(line: 148, column: 6, scope: !5207)
!5285 = !DILocation(line: 148, column: 14, scope: !5207)
!5286 = !DILocalVariable(name: "cellsize", scope: !5207, file: !1, line: 149, type: !454)
!5287 = !DILocation(line: 149, column: 6, scope: !5207)
!5288 = !DILocation(line: 149, column: 17, scope: !5207)
!5289 = !DILocation(line: 149, column: 25, scope: !5207)
!5290 = !DILocation(line: 149, column: 29, scope: !5207)
!5291 = !DILocation(line: 149, column: 37, scope: !5207)
!5292 = !DILocation(line: 149, column: 23, scope: !5207)
!5293 = !DILocalVariable(name: "maxcnt", scope: !5207, file: !1, line: 150, type: !454)
!5294 = !DILocation(line: 150, column: 6, scope: !5207)
!5295 = !DILocation(line: 150, column: 15, scope: !5207)
!5296 = !DILocation(line: 150, column: 21, scope: !5207)
!5297 = !DILocation(line: 150, column: 28, scope: !5207)
!5298 = !DILocation(line: 150, column: 33, scope: !5207)
!5299 = !DILocation(line: 150, column: 32, scope: !5207)
!5300 = !DILocalVariable(name: "scan_align", scope: !5207, file: !1, line: 151, type: !454)
!5301 = !DILocation(line: 151, column: 6, scope: !5207)
!5302 = !DILocation(line: 151, column: 19, scope: !5207)
!5303 = !DILocation(line: 151, column: 25, scope: !5207)
!5304 = !DILocation(line: 151, column: 32, scope: !5207)
!5305 = !DILocation(line: 151, column: 43, scope: !5207)
!5306 = !DILocalVariable(name: "buf_align", scope: !5207, file: !1, line: 152, type: !454)
!5307 = !DILocation(line: 152, column: 6, scope: !5207)
!5308 = !DILocation(line: 152, column: 18, scope: !5207)
!5309 = !DILocation(line: 152, column: 24, scope: !5207)
!5310 = !DILocation(line: 152, column: 31, scope: !5207)
!5311 = !DILocation(line: 152, column: 41, scope: !5207)
!5312 = !DILocalVariable(name: "mod", scope: !5207, file: !1, line: 153, type: !454)
!5313 = !DILocation(line: 153, column: 6, scope: !5207)
!5314 = !DILocation(line: 153, column: 12, scope: !5207)
!5315 = !DILocation(line: 153, column: 16, scope: !5207)
!5316 = !DILocation(line: 153, column: 24, scope: !5207)
!5317 = !DILocation(line: 153, column: 30, scope: !5207)
!5318 = !DILocalVariable(name: "cnt", scope: !5207, file: !1, line: 153, type: !454)
!5319 = !DILocation(line: 153, column: 35, scope: !5207)
!5320 = !DILocalVariable(name: "pitch", scope: !5207, file: !1, line: 153, type: !454)
!5321 = !DILocation(line: 153, column: 40, scope: !5207)
!5322 = !DILocalVariable(name: "size", scope: !5207, file: !1, line: 153, type: !454)
!5323 = !DILocation(line: 153, column: 47, scope: !5207)
!5324 = !DILocalVariable(name: "attribute", scope: !5207, file: !1, line: 154, type: !454)
!5325 = !DILocation(line: 154, column: 6, scope: !5207)
!5326 = !DILocation(line: 154, column: 32, scope: !5207)
!5327 = !DILocation(line: 154, column: 38, scope: !5207)
!5328 = !DILocation(line: 154, column: 18, scope: !5207)
!5329 = !DILocalVariable(name: "dst", scope: !5207, file: !1, line: 155, type: !4649)
!5330 = !DILocation(line: 155, column: 6, scope: !5207)
!5331 = !DILocalVariable(name: "buf", scope: !5207, file: !1, line: 155, type: !4649)
!5332 = !DILocation(line: 155, column: 12, scope: !5207)
!5333 = !DILocation(line: 157, column: 19, scope: !5207)
!5334 = !DILocation(line: 157, column: 8, scope: !5207)
!5335 = !DILocation(line: 157, column: 17, scope: !5207)
!5336 = !DILocation(line: 158, column: 19, scope: !5207)
!5337 = !DILocation(line: 158, column: 8, scope: !5207)
!5338 = !DILocation(line: 158, column: 17, scope: !5207)
!5339 = !DILocation(line: 159, column: 13, scope: !5207)
!5340 = !DILocation(line: 159, column: 18, scope: !5207)
!5341 = !DILocation(line: 159, column: 22, scope: !5207)
!5342 = !DILocation(line: 159, column: 30, scope: !5207)
!5343 = !DILocation(line: 159, column: 16, scope: !5207)
!5344 = !DILocation(line: 159, column: 8, scope: !5207)
!5345 = !DILocation(line: 159, column: 11, scope: !5207)
!5346 = !DILocation(line: 160, column: 13, scope: !5207)
!5347 = !DILocation(line: 160, column: 18, scope: !5207)
!5348 = !DILocation(line: 160, column: 22, scope: !5207)
!5349 = !DILocation(line: 160, column: 30, scope: !5207)
!5350 = !DILocation(line: 160, column: 16, scope: !5207)
!5351 = !DILocation(line: 160, column: 8, scope: !5207)
!5352 = !DILocation(line: 160, column: 11, scope: !5207)
!5353 = !DILocation(line: 161, column: 17, scope: !5207)
!5354 = !DILocation(line: 161, column: 21, scope: !5207)
!5355 = !DILocation(line: 161, column: 29, scope: !5207)
!5356 = !DILocation(line: 161, column: 8, scope: !5207)
!5357 = !DILocation(line: 161, column: 15, scope: !5207)
!5358 = !DILocation(line: 162, column: 8, scope: !5207)
!5359 = !DILocation(line: 162, column: 14, scope: !5207)
!5360 = !DILocation(line: 164, column: 6, scope: !5221)
!5361 = !DILocation(line: 164, column: 6, scope: !5207)
!5362 = !DILocation(line: 165, column: 17, scope: !5220)
!5363 = !DILocation(line: 540, column: 27, scope: !5215, inlinedAt: !5219)
!5364 = !DILocation(line: 540, column: 6, scope: !5215, inlinedAt: !5219)
!5365 = !DILocation(line: 540, column: 6, scope: !5216, inlinedAt: !5219)
!5366 = !DILocation(line: 544, column: 7, scope: !5248, inlinedAt: !5219)
!5367 = !DILocation(line: 544, column: 12, scope: !5248, inlinedAt: !5219)
!5368 = !DILocation(line: 544, column: 7, scope: !5214, inlinedAt: !5219)
!5369 = !DILocation(line: 545, column: 25, scope: !5248, inlinedAt: !5219)
!5370 = !DILocation(line: 545, column: 31, scope: !5248, inlinedAt: !5219)
!5371 = !DILocation(line: 480, column: 33, scope: !5246, inlinedAt: !5247)
!5372 = !DILocation(line: 480, column: 23, scope: !5246, inlinedAt: !5247)
!5373 = !DILocation(line: 481, column: 29, scope: !5246, inlinedAt: !5247)
!5374 = !DILocation(line: 481, column: 35, scope: !5246, inlinedAt: !5247)
!5375 = !DILocation(line: 481, column: 42, scope: !5246, inlinedAt: !5247)
!5376 = !DILocation(line: 474, column: 23, scope: !5241, inlinedAt: !5245)
!5377 = !DILocation(line: 474, column: 29, scope: !5241, inlinedAt: !5245)
!5378 = !DILocation(line: 474, column: 36, scope: !5241, inlinedAt: !5245)
!5379 = !DILocation(line: 474, column: 9, scope: !5241, inlinedAt: !5245)
!5380 = !DILocation(line: 545, column: 4, scope: !5248, inlinedAt: !5219)
!5381 = !DILocation(line: 547, column: 25, scope: !5214, inlinedAt: !5219)
!5382 = !DILocation(line: 348, column: 7, scope: !5383, inlinedAt: !5239)
!5383 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 348, column: 6)
!5384 = !DILocation(line: 348, column: 6, scope: !5235, inlinedAt: !5239)
!5385 = !DILocation(line: 349, column: 3, scope: !5383, inlinedAt: !5239)
!5386 = !DILocation(line: 351, column: 6, scope: !5387, inlinedAt: !5239)
!5387 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 351, column: 6)
!5388 = !DILocation(line: 351, column: 11, scope: !5387, inlinedAt: !5239)
!5389 = !DILocation(line: 351, column: 6, scope: !5235, inlinedAt: !5239)
!5390 = !DILocation(line: 352, column: 3, scope: !5387, inlinedAt: !5239)
!5391 = !DILocation(line: 354, column: 32, scope: !5392, inlinedAt: !5239)
!5392 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 354, column: 6)
!5393 = !DILocation(line: 354, column: 37, scope: !5392, inlinedAt: !5239)
!5394 = !DILocation(line: 354, column: 42, scope: !5392, inlinedAt: !5239)
!5395 = !DILocation(line: 354, column: 45, scope: !5392, inlinedAt: !5239)
!5396 = !DILocation(line: 354, column: 50, scope: !5392, inlinedAt: !5239)
!5397 = !DILocation(line: 354, column: 6, scope: !5235, inlinedAt: !5239)
!5398 = !DILocation(line: 355, column: 3, scope: !5392, inlinedAt: !5239)
!5399 = !DILocation(line: 356, column: 32, scope: !5400, inlinedAt: !5239)
!5400 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 356, column: 6)
!5401 = !DILocation(line: 356, column: 37, scope: !5400, inlinedAt: !5239)
!5402 = !DILocation(line: 356, column: 43, scope: !5400, inlinedAt: !5239)
!5403 = !DILocation(line: 356, column: 46, scope: !5400, inlinedAt: !5239)
!5404 = !DILocation(line: 356, column: 51, scope: !5400, inlinedAt: !5239)
!5405 = !DILocation(line: 356, column: 6, scope: !5235, inlinedAt: !5239)
!5406 = !DILocation(line: 357, column: 3, scope: !5400, inlinedAt: !5239)
!5407 = !DILocation(line: 358, column: 6, scope: !5408, inlinedAt: !5239)
!5408 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 358, column: 6)
!5409 = !DILocation(line: 358, column: 11, scope: !5408, inlinedAt: !5239)
!5410 = !DILocation(line: 358, column: 6, scope: !5235, inlinedAt: !5239)
!5411 = !DILocation(line: 358, column: 26, scope: !5408, inlinedAt: !5239)
!5412 = !DILocation(line: 359, column: 6, scope: !5413, inlinedAt: !5239)
!5413 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 359, column: 6)
!5414 = !DILocation(line: 359, column: 11, scope: !5413, inlinedAt: !5239)
!5415 = !DILocation(line: 359, column: 6, scope: !5235, inlinedAt: !5239)
!5416 = !DILocation(line: 359, column: 26, scope: !5413, inlinedAt: !5239)
!5417 = !DILocation(line: 360, column: 6, scope: !5418, inlinedAt: !5239)
!5418 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 360, column: 6)
!5419 = !DILocation(line: 360, column: 11, scope: !5418, inlinedAt: !5239)
!5420 = !DILocation(line: 360, column: 6, scope: !5235, inlinedAt: !5239)
!5421 = !DILocation(line: 360, column: 26, scope: !5418, inlinedAt: !5239)
!5422 = !DILocation(line: 361, column: 6, scope: !5423, inlinedAt: !5239)
!5423 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 361, column: 6)
!5424 = !DILocation(line: 361, column: 11, scope: !5423, inlinedAt: !5239)
!5425 = !DILocation(line: 361, column: 6, scope: !5235, inlinedAt: !5239)
!5426 = !DILocation(line: 361, column: 26, scope: !5423, inlinedAt: !5239)
!5427 = !DILocation(line: 362, column: 6, scope: !5428, inlinedAt: !5239)
!5428 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 362, column: 6)
!5429 = !DILocation(line: 362, column: 11, scope: !5428, inlinedAt: !5239)
!5430 = !DILocation(line: 362, column: 6, scope: !5235, inlinedAt: !5239)
!5431 = !DILocation(line: 362, column: 26, scope: !5428, inlinedAt: !5239)
!5432 = !DILocation(line: 363, column: 6, scope: !5433, inlinedAt: !5239)
!5433 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 363, column: 6)
!5434 = !DILocation(line: 363, column: 11, scope: !5433, inlinedAt: !5239)
!5435 = !DILocation(line: 363, column: 6, scope: !5235, inlinedAt: !5239)
!5436 = !DILocation(line: 363, column: 26, scope: !5433, inlinedAt: !5239)
!5437 = !DILocation(line: 364, column: 6, scope: !5438, inlinedAt: !5239)
!5438 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 364, column: 6)
!5439 = !DILocation(line: 364, column: 11, scope: !5438, inlinedAt: !5239)
!5440 = !DILocation(line: 364, column: 6, scope: !5235, inlinedAt: !5239)
!5441 = !DILocation(line: 364, column: 26, scope: !5438, inlinedAt: !5239)
!5442 = !DILocation(line: 365, column: 6, scope: !5443, inlinedAt: !5239)
!5443 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 365, column: 6)
!5444 = !DILocation(line: 365, column: 11, scope: !5443, inlinedAt: !5239)
!5445 = !DILocation(line: 365, column: 6, scope: !5235, inlinedAt: !5239)
!5446 = !DILocation(line: 365, column: 26, scope: !5443, inlinedAt: !5239)
!5447 = !DILocation(line: 366, column: 6, scope: !5448, inlinedAt: !5239)
!5448 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 366, column: 6)
!5449 = !DILocation(line: 366, column: 11, scope: !5448, inlinedAt: !5239)
!5450 = !DILocation(line: 366, column: 6, scope: !5235, inlinedAt: !5239)
!5451 = !DILocation(line: 366, column: 26, scope: !5448, inlinedAt: !5239)
!5452 = !DILocation(line: 367, column: 6, scope: !5453, inlinedAt: !5239)
!5453 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 367, column: 6)
!5454 = !DILocation(line: 367, column: 11, scope: !5453, inlinedAt: !5239)
!5455 = !DILocation(line: 367, column: 6, scope: !5235, inlinedAt: !5239)
!5456 = !DILocation(line: 367, column: 26, scope: !5453, inlinedAt: !5239)
!5457 = !DILocation(line: 368, column: 6, scope: !5458, inlinedAt: !5239)
!5458 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 368, column: 6)
!5459 = !DILocation(line: 368, column: 11, scope: !5458, inlinedAt: !5239)
!5460 = !DILocation(line: 368, column: 6, scope: !5235, inlinedAt: !5239)
!5461 = !DILocation(line: 368, column: 26, scope: !5458, inlinedAt: !5239)
!5462 = !DILocation(line: 369, column: 6, scope: !5463, inlinedAt: !5239)
!5463 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 369, column: 6)
!5464 = !DILocation(line: 369, column: 11, scope: !5463, inlinedAt: !5239)
!5465 = !DILocation(line: 369, column: 6, scope: !5235, inlinedAt: !5239)
!5466 = !DILocation(line: 369, column: 26, scope: !5463, inlinedAt: !5239)
!5467 = !DILocation(line: 370, column: 6, scope: !5468, inlinedAt: !5239)
!5468 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 370, column: 6)
!5469 = !DILocation(line: 370, column: 11, scope: !5468, inlinedAt: !5239)
!5470 = !DILocation(line: 370, column: 6, scope: !5235, inlinedAt: !5239)
!5471 = !DILocation(line: 370, column: 26, scope: !5468, inlinedAt: !5239)
!5472 = !DILocation(line: 371, column: 6, scope: !5473, inlinedAt: !5239)
!5473 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 371, column: 6)
!5474 = !DILocation(line: 371, column: 11, scope: !5473, inlinedAt: !5239)
!5475 = !DILocation(line: 371, column: 6, scope: !5235, inlinedAt: !5239)
!5476 = !DILocation(line: 371, column: 26, scope: !5473, inlinedAt: !5239)
!5477 = !DILocation(line: 372, column: 6, scope: !5478, inlinedAt: !5239)
!5478 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 372, column: 6)
!5479 = !DILocation(line: 372, column: 11, scope: !5478, inlinedAt: !5239)
!5480 = !DILocation(line: 372, column: 6, scope: !5235, inlinedAt: !5239)
!5481 = !DILocation(line: 372, column: 26, scope: !5478, inlinedAt: !5239)
!5482 = !DILocation(line: 373, column: 6, scope: !5483, inlinedAt: !5239)
!5483 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 373, column: 6)
!5484 = !DILocation(line: 373, column: 11, scope: !5483, inlinedAt: !5239)
!5485 = !DILocation(line: 373, column: 6, scope: !5235, inlinedAt: !5239)
!5486 = !DILocation(line: 373, column: 26, scope: !5483, inlinedAt: !5239)
!5487 = !DILocation(line: 374, column: 6, scope: !5488, inlinedAt: !5239)
!5488 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 374, column: 6)
!5489 = !DILocation(line: 374, column: 11, scope: !5488, inlinedAt: !5239)
!5490 = !DILocation(line: 374, column: 6, scope: !5235, inlinedAt: !5239)
!5491 = !DILocation(line: 374, column: 26, scope: !5488, inlinedAt: !5239)
!5492 = !DILocation(line: 375, column: 6, scope: !5493, inlinedAt: !5239)
!5493 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 375, column: 6)
!5494 = !DILocation(line: 375, column: 11, scope: !5493, inlinedAt: !5239)
!5495 = !DILocation(line: 375, column: 6, scope: !5235, inlinedAt: !5239)
!5496 = !DILocation(line: 375, column: 27, scope: !5493, inlinedAt: !5239)
!5497 = !DILocation(line: 376, column: 6, scope: !5498, inlinedAt: !5239)
!5498 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 376, column: 6)
!5499 = !DILocation(line: 376, column: 11, scope: !5498, inlinedAt: !5239)
!5500 = !DILocation(line: 376, column: 6, scope: !5235, inlinedAt: !5239)
!5501 = !DILocation(line: 376, column: 32, scope: !5498, inlinedAt: !5239)
!5502 = !DILocation(line: 377, column: 6, scope: !5503, inlinedAt: !5239)
!5503 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 377, column: 6)
!5504 = !DILocation(line: 377, column: 11, scope: !5503, inlinedAt: !5239)
!5505 = !DILocation(line: 377, column: 6, scope: !5235, inlinedAt: !5239)
!5506 = !DILocation(line: 377, column: 32, scope: !5503, inlinedAt: !5239)
!5507 = !DILocation(line: 378, column: 6, scope: !5508, inlinedAt: !5239)
!5508 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 378, column: 6)
!5509 = !DILocation(line: 378, column: 11, scope: !5508, inlinedAt: !5239)
!5510 = !DILocation(line: 378, column: 6, scope: !5235, inlinedAt: !5239)
!5511 = !DILocation(line: 378, column: 32, scope: !5508, inlinedAt: !5239)
!5512 = !DILocation(line: 379, column: 6, scope: !5513, inlinedAt: !5239)
!5513 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 379, column: 6)
!5514 = !DILocation(line: 379, column: 11, scope: !5513, inlinedAt: !5239)
!5515 = !DILocation(line: 379, column: 6, scope: !5235, inlinedAt: !5239)
!5516 = !DILocation(line: 379, column: 33, scope: !5513, inlinedAt: !5239)
!5517 = !DILocation(line: 380, column: 6, scope: !5518, inlinedAt: !5239)
!5518 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 380, column: 6)
!5519 = !DILocation(line: 380, column: 11, scope: !5518, inlinedAt: !5239)
!5520 = !DILocation(line: 380, column: 6, scope: !5235, inlinedAt: !5239)
!5521 = !DILocation(line: 380, column: 33, scope: !5518, inlinedAt: !5239)
!5522 = !DILocation(line: 381, column: 6, scope: !5523, inlinedAt: !5239)
!5523 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 381, column: 6)
!5524 = !DILocation(line: 381, column: 11, scope: !5523, inlinedAt: !5239)
!5525 = !DILocation(line: 381, column: 6, scope: !5235, inlinedAt: !5239)
!5526 = !DILocation(line: 381, column: 33, scope: !5523, inlinedAt: !5239)
!5527 = !DILocation(line: 382, column: 2, scope: !5528, inlinedAt: !5239)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !130, line: 382, column: 2)
!5529 = distinct !DILexicalBlock(scope: !5235, file: !130, line: 382, column: 2)
!5530 = !{i32 -2144237133, i32 -2144237104, i32 -2144237058, i32 -2144237000, i32 -2144236946, i32 -2144236892, i32 -2144236837, i32 -2144236806}
!5531 = !DILocation(line: 382, column: 2, scope: !5532, inlinedAt: !5239)
!5532 = distinct !DILexicalBlock(scope: !5533, file: !130, line: 382, column: 2)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !130, line: 382, column: 2)
!5534 = !{i32 -2144236363, i32 -2144236356, i32 -2144236302, i32 -2144236271, i32 -2144236241}
!5535 = !DILocation(line: 382, column: 2, scope: !5533, inlinedAt: !5239)
!5536 = !DILocation(line: 386, column: 1, scope: !5235, inlinedAt: !5239)
!5537 = !DILocation(line: 547, column: 9, scope: !5214, inlinedAt: !5219)
!5538 = !DILocation(line: 549, column: 8, scope: !5539, inlinedAt: !5219)
!5539 = distinct !DILexicalBlock(scope: !5214, file: !130, line: 549, column: 7)
!5540 = !DILocation(line: 549, column: 7, scope: !5214, inlinedAt: !5219)
!5541 = !DILocation(line: 550, column: 4, scope: !5539, inlinedAt: !5219)
!5542 = !DILocation(line: 553, column: 33, scope: !5214, inlinedAt: !5219)
!5543 = !DILocation(line: 325, column: 6, scope: !5544, inlinedAt: !5233)
!5544 = distinct !DILexicalBlock(scope: !5229, file: !130, line: 325, column: 6)
!5545 = !DILocation(line: 325, column: 6, scope: !5229, inlinedAt: !5233)
!5546 = !DILocation(line: 326, column: 3, scope: !5544, inlinedAt: !5233)
!5547 = !DILocation(line: 332, column: 9, scope: !5229, inlinedAt: !5233)
!5548 = !DILocation(line: 332, column: 15, scope: !5229, inlinedAt: !5233)
!5549 = !DILocation(line: 332, column: 2, scope: !5229, inlinedAt: !5233)
!5550 = !DILocation(line: 336, column: 1, scope: !5229, inlinedAt: !5233)
!5551 = !DILocation(line: 553, column: 5, scope: !5214, inlinedAt: !5219)
!5552 = !DILocation(line: 553, column: 41, scope: !5214, inlinedAt: !5219)
!5553 = !DILocation(line: 554, column: 5, scope: !5214, inlinedAt: !5219)
!5554 = !DILocation(line: 554, column: 12, scope: !5214, inlinedAt: !5219)
!5555 = !DILocation(line: 448, column: 31, scope: !5209, inlinedAt: !5213)
!5556 = !DILocation(line: 448, column: 34, scope: !5209, inlinedAt: !5213)
!5557 = !DILocation(line: 448, column: 14, scope: !5209, inlinedAt: !5213)
!5558 = !DILocation(line: 450, column: 22, scope: !5209, inlinedAt: !5213)
!5559 = !DILocation(line: 450, column: 25, scope: !5209, inlinedAt: !5213)
!5560 = !DILocation(line: 450, column: 30, scope: !5209, inlinedAt: !5213)
!5561 = !DILocation(line: 450, column: 36, scope: !5209, inlinedAt: !5213)
!5562 = !DILocation(line: 450, column: 8, scope: !5209, inlinedAt: !5213)
!5563 = !DILocation(line: 450, column: 6, scope: !5209, inlinedAt: !5213)
!5564 = !DILocation(line: 451, column: 9, scope: !5209, inlinedAt: !5213)
!5565 = !DILocation(line: 552, column: 3, scope: !5214, inlinedAt: !5219)
!5566 = !DILocation(line: 557, column: 19, scope: !5216, inlinedAt: !5219)
!5567 = !DILocation(line: 557, column: 25, scope: !5216, inlinedAt: !5219)
!5568 = !DILocation(line: 557, column: 9, scope: !5216, inlinedAt: !5219)
!5569 = !DILocation(line: 557, column: 2, scope: !5216, inlinedAt: !5219)
!5570 = !DILocation(line: 558, column: 1, scope: !5216, inlinedAt: !5219)
!5571 = !DILocation(line: 165, column: 7, scope: !5220)
!5572 = !DILocation(line: 166, column: 8, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5220, file: !1, line: 166, column: 7)
!5574 = !DILocation(line: 166, column: 7, scope: !5220)
!5575 = !DILocation(line: 167, column: 4, scope: !5573)
!5576 = !DILocation(line: 168, column: 2, scope: !5220)
!5577 = !DILocation(line: 170, column: 2, scope: !5207)
!5578 = !DILocation(line: 170, column: 9, scope: !5207)
!5579 = !DILocation(line: 171, column: 7, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !1, line: 171, column: 7)
!5581 = distinct !DILexicalBlock(scope: !5207, file: !1, line: 170, column: 16)
!5582 = !DILocation(line: 171, column: 15, scope: !5580)
!5583 = !DILocation(line: 171, column: 13, scope: !5580)
!5584 = !DILocation(line: 171, column: 7, scope: !5581)
!5585 = !DILocation(line: 172, column: 10, scope: !5580)
!5586 = !DILocation(line: 172, column: 8, scope: !5580)
!5587 = !DILocation(line: 172, column: 4, scope: !5580)
!5588 = !DILocation(line: 174, column: 10, scope: !5580)
!5589 = !DILocation(line: 174, column: 8, scope: !5580)
!5590 = !DILocation(line: 176, column: 17, scope: !5581)
!5591 = !DILocation(line: 176, column: 21, scope: !5581)
!5592 = !DILocation(line: 176, column: 29, scope: !5581)
!5593 = !DILocation(line: 176, column: 37, scope: !5581)
!5594 = !DILocation(line: 176, column: 35, scope: !5581)
!5595 = !DILocation(line: 176, column: 9, scope: !5581)
!5596 = !DILocation(line: 176, column: 15, scope: !5581)
!5597 = !DILocation(line: 177, column: 11, scope: !5581)
!5598 = !DILocation(line: 177, column: 42, scope: !5581)
!5599 = !DILocation(line: 177, column: 40, scope: !5581)
!5600 = !DILocation(line: 177, column: 9, scope: !5581)
!5601 = !DILocation(line: 178, column: 13, scope: !5581)
!5602 = !DILocation(line: 178, column: 12, scope: !5581)
!5603 = !DILocation(line: 178, column: 9, scope: !5581)
!5604 = !DILocation(line: 179, column: 10, scope: !5581)
!5605 = !DILocation(line: 179, column: 24, scope: !5581)
!5606 = !DILocation(line: 179, column: 16, scope: !5581)
!5607 = !DILocation(line: 179, column: 33, scope: !5581)
!5608 = !DILocation(line: 179, column: 31, scope: !5581)
!5609 = !DILocation(line: 179, column: 8, scope: !5581)
!5610 = !DILocation(line: 180, column: 12, scope: !5581)
!5611 = !DILocation(line: 180, column: 11, scope: !5581)
!5612 = !DILocation(line: 180, column: 8, scope: !5581)
!5613 = !DILocation(line: 181, column: 30, scope: !5581)
!5614 = !DILocation(line: 181, column: 37, scope: !5581)
!5615 = !DILocation(line: 181, column: 43, scope: !5581)
!5616 = !DILocation(line: 181, column: 51, scope: !5581)
!5617 = !DILocation(line: 181, column: 9, scope: !5581)
!5618 = !DILocation(line: 181, column: 7, scope: !5581)
!5619 = !DILocation(line: 182, column: 16, scope: !5581)
!5620 = !DILocation(line: 182, column: 9, scope: !5581)
!5621 = !DILocation(line: 182, column: 14, scope: !5581)
!5622 = !DILocation(line: 184, column: 8, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5581, file: !1, line: 184, column: 7)
!5624 = !DILocation(line: 184, column: 7, scope: !5581)
!5625 = !DILocation(line: 185, column: 22, scope: !5623)
!5626 = !DILocation(line: 185, column: 26, scope: !5623)
!5627 = !DILocation(line: 185, column: 32, scope: !5623)
!5628 = !DILocation(line: 185, column: 35, scope: !5623)
!5629 = !DILocation(line: 185, column: 46, scope: !5623)
!5630 = !DILocation(line: 185, column: 51, scope: !5623)
!5631 = !DILocation(line: 186, column: 8, scope: !5623)
!5632 = !DILocation(line: 186, column: 15, scope: !5623)
!5633 = !DILocation(line: 186, column: 33, scope: !5623)
!5634 = !DILocation(line: 186, column: 38, scope: !5623)
!5635 = !DILocation(line: 185, column: 4, scope: !5623)
!5636 = !DILocation(line: 188, column: 24, scope: !5623)
!5637 = !DILocation(line: 188, column: 28, scope: !5623)
!5638 = !DILocation(line: 188, column: 34, scope: !5623)
!5639 = !DILocation(line: 188, column: 37, scope: !5623)
!5640 = !DILocation(line: 188, column: 48, scope: !5623)
!5641 = !DILocation(line: 189, column: 10, scope: !5623)
!5642 = !DILocation(line: 189, column: 17, scope: !5623)
!5643 = !DILocation(line: 189, column: 24, scope: !5623)
!5644 = !DILocation(line: 190, column: 10, scope: !5623)
!5645 = !DILocation(line: 190, column: 15, scope: !5623)
!5646 = !DILocation(line: 188, column: 4, scope: !5623)
!5647 = !DILocation(line: 192, column: 15, scope: !5581)
!5648 = !DILocation(line: 192, column: 21, scope: !5581)
!5649 = !DILocation(line: 192, column: 25, scope: !5581)
!5650 = !DILocation(line: 192, column: 33, scope: !5581)
!5651 = !DILocation(line: 192, column: 19, scope: !5581)
!5652 = !DILocation(line: 192, column: 9, scope: !5581)
!5653 = !DILocation(line: 192, column: 12, scope: !5581)
!5654 = !DILocation(line: 193, column: 12, scope: !5581)
!5655 = !DILocation(line: 193, column: 9, scope: !5581)
!5656 = !DILocation(line: 194, column: 8, scope: !5581)
!5657 = !DILocation(line: 194, column: 5, scope: !5581)
!5658 = distinct !{!5658, !5577, !5659}
!5659 = !DILocation(line: 195, column: 2, scope: !5207)
!5660 = !DILocation(line: 200, column: 6, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5207, file: !1, line: 200, column: 6)
!5662 = !DILocation(line: 200, column: 6, scope: !5207)
!5663 = !DILocation(line: 201, column: 9, scope: !5661)
!5664 = !DILocation(line: 201, column: 3, scope: !5661)
!5665 = !DILocation(line: 203, column: 1, scope: !5207)
!5666 = distinct !DISubprogram(name: "bit_clear_margins", scope: !1, file: !1, line: 205, type: !4989, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5667 = !DILocalVariable(name: "vc", arg: 1, scope: !5666, file: !1, line: 205, type: !163)
!5668 = !DILocation(line: 205, column: 47, scope: !5666)
!5669 = !DILocalVariable(name: "info", arg: 2, scope: !5666, file: !1, line: 205, type: !4515)
!5670 = !DILocation(line: 205, column: 67, scope: !5666)
!5671 = !DILocalVariable(name: "color", arg: 3, scope: !5666, file: !1, line: 206, type: !140)
!5672 = !DILocation(line: 206, column: 14, scope: !5666)
!5673 = !DILocalVariable(name: "bottom_only", arg: 4, scope: !5666, file: !1, line: 206, type: !140)
!5674 = !DILocation(line: 206, column: 25, scope: !5666)
!5675 = !DILocalVariable(name: "cw", scope: !5666, file: !1, line: 208, type: !5)
!5676 = !DILocation(line: 208, column: 15, scope: !5666)
!5677 = !DILocation(line: 208, column: 20, scope: !5666)
!5678 = !DILocation(line: 208, column: 24, scope: !5666)
!5679 = !DILocation(line: 208, column: 32, scope: !5666)
!5680 = !DILocalVariable(name: "ch", scope: !5666, file: !1, line: 209, type: !5)
!5681 = !DILocation(line: 209, column: 15, scope: !5666)
!5682 = !DILocation(line: 209, column: 20, scope: !5666)
!5683 = !DILocation(line: 209, column: 24, scope: !5666)
!5684 = !DILocation(line: 209, column: 32, scope: !5666)
!5685 = !DILocalVariable(name: "rw", scope: !5666, file: !1, line: 210, type: !5)
!5686 = !DILocation(line: 210, column: 15, scope: !5666)
!5687 = !DILocation(line: 210, column: 20, scope: !5666)
!5688 = !DILocation(line: 210, column: 26, scope: !5666)
!5689 = !DILocation(line: 210, column: 30, scope: !5666)
!5690 = !DILocation(line: 210, column: 38, scope: !5666)
!5691 = !DILocation(line: 210, column: 42, scope: !5666)
!5692 = !DILocation(line: 210, column: 50, scope: !5666)
!5693 = !DILocation(line: 210, column: 49, scope: !5666)
!5694 = !DILocation(line: 210, column: 35, scope: !5666)
!5695 = !DILocalVariable(name: "bh", scope: !5666, file: !1, line: 211, type: !5)
!5696 = !DILocation(line: 211, column: 15, scope: !5666)
!5697 = !DILocation(line: 211, column: 20, scope: !5666)
!5698 = !DILocation(line: 211, column: 26, scope: !5666)
!5699 = !DILocation(line: 211, column: 30, scope: !5666)
!5700 = !DILocation(line: 211, column: 38, scope: !5666)
!5701 = !DILocation(line: 211, column: 42, scope: !5666)
!5702 = !DILocation(line: 211, column: 50, scope: !5666)
!5703 = !DILocation(line: 211, column: 49, scope: !5666)
!5704 = !DILocation(line: 211, column: 35, scope: !5666)
!5705 = !DILocalVariable(name: "rs", scope: !5666, file: !1, line: 212, type: !5)
!5706 = !DILocation(line: 212, column: 15, scope: !5666)
!5707 = !DILocation(line: 212, column: 20, scope: !5666)
!5708 = !DILocation(line: 212, column: 26, scope: !5666)
!5709 = !DILocation(line: 212, column: 30, scope: !5666)
!5710 = !DILocation(line: 212, column: 37, scope: !5666)
!5711 = !DILocation(line: 212, column: 35, scope: !5666)
!5712 = !DILocalVariable(name: "bs", scope: !5666, file: !1, line: 213, type: !5)
!5713 = !DILocation(line: 213, column: 15, scope: !5666)
!5714 = !DILocation(line: 213, column: 20, scope: !5666)
!5715 = !DILocation(line: 213, column: 26, scope: !5666)
!5716 = !DILocation(line: 213, column: 30, scope: !5666)
!5717 = !DILocation(line: 213, column: 37, scope: !5666)
!5718 = !DILocation(line: 213, column: 35, scope: !5666)
!5719 = !DILocalVariable(name: "region", scope: !5666, file: !1, line: 214, type: !4797)
!5720 = !DILocation(line: 214, column: 21, scope: !5666)
!5721 = !DILocation(line: 216, column: 17, scope: !5666)
!5722 = !DILocation(line: 216, column: 9, scope: !5666)
!5723 = !DILocation(line: 216, column: 15, scope: !5666)
!5724 = !DILocation(line: 217, column: 9, scope: !5666)
!5725 = !DILocation(line: 217, column: 13, scope: !5666)
!5726 = !DILocation(line: 219, column: 12, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5666, file: !1, line: 219, column: 6)
!5728 = !DILocation(line: 219, column: 15, scope: !5727)
!5729 = !DILocation(line: 219, column: 19, scope: !5727)
!5730 = !DILocation(line: 219, column: 23, scope: !5727)
!5731 = !DILocation(line: 219, column: 6, scope: !5666)
!5732 = !DILocation(line: 220, column: 15, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5727, file: !1, line: 219, column: 36)
!5734 = !DILocation(line: 220, column: 21, scope: !5733)
!5735 = !DILocation(line: 220, column: 25, scope: !5733)
!5736 = !DILocation(line: 220, column: 35, scope: !5733)
!5737 = !DILocation(line: 220, column: 33, scope: !5733)
!5738 = !DILocation(line: 220, column: 10, scope: !5733)
!5739 = !DILocation(line: 220, column: 13, scope: !5733)
!5740 = !DILocation(line: 221, column: 10, scope: !5733)
!5741 = !DILocation(line: 221, column: 13, scope: !5733)
!5742 = !DILocation(line: 222, column: 18, scope: !5733)
!5743 = !DILocation(line: 222, column: 10, scope: !5733)
!5744 = !DILocation(line: 222, column: 16, scope: !5733)
!5745 = !DILocation(line: 223, column: 19, scope: !5733)
!5746 = !DILocation(line: 223, column: 25, scope: !5733)
!5747 = !DILocation(line: 223, column: 29, scope: !5733)
!5748 = !DILocation(line: 223, column: 10, scope: !5733)
!5749 = !DILocation(line: 223, column: 17, scope: !5733)
!5750 = !DILocation(line: 224, column: 3, scope: !5733)
!5751 = !DILocation(line: 224, column: 9, scope: !5733)
!5752 = !DILocation(line: 224, column: 16, scope: !5733)
!5753 = !DILocation(line: 224, column: 28, scope: !5733)
!5754 = !DILocation(line: 225, column: 2, scope: !5733)
!5755 = !DILocation(line: 227, column: 12, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5666, file: !1, line: 227, column: 6)
!5757 = !DILocation(line: 227, column: 15, scope: !5756)
!5758 = !DILocation(line: 227, column: 6, scope: !5666)
!5759 = !DILocation(line: 228, column: 15, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5756, file: !1, line: 227, column: 20)
!5761 = !DILocation(line: 228, column: 21, scope: !5760)
!5762 = !DILocation(line: 228, column: 25, scope: !5760)
!5763 = !DILocation(line: 228, column: 10, scope: !5760)
!5764 = !DILocation(line: 228, column: 13, scope: !5760)
!5765 = !DILocation(line: 229, column: 15, scope: !5760)
!5766 = !DILocation(line: 229, column: 21, scope: !5760)
!5767 = !DILocation(line: 229, column: 25, scope: !5760)
!5768 = !DILocation(line: 229, column: 35, scope: !5760)
!5769 = !DILocation(line: 229, column: 33, scope: !5760)
!5770 = !DILocation(line: 229, column: 10, scope: !5760)
!5771 = !DILocation(line: 229, column: 13, scope: !5760)
!5772 = !DILocation(line: 230, column: 18, scope: !5760)
!5773 = !DILocation(line: 230, column: 10, scope: !5760)
!5774 = !DILocation(line: 230, column: 16, scope: !5760)
!5775 = !DILocation(line: 231, column: 19, scope: !5760)
!5776 = !DILocation(line: 231, column: 10, scope: !5760)
!5777 = !DILocation(line: 231, column: 17, scope: !5760)
!5778 = !DILocation(line: 232, column: 3, scope: !5760)
!5779 = !DILocation(line: 232, column: 9, scope: !5760)
!5780 = !DILocation(line: 232, column: 16, scope: !5760)
!5781 = !DILocation(line: 232, column: 28, scope: !5760)
!5782 = !DILocation(line: 233, column: 2, scope: !5760)
!5783 = !DILocation(line: 234, column: 1, scope: !5666)
!5784 = distinct !DISubprogram(name: "bit_cursor", scope: !1, file: !1, line: 236, type: !4993, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!5785 = !DILocalVariable(name: "vc", arg: 1, scope: !5784, file: !1, line: 236, type: !163)
!5786 = !DILocation(line: 236, column: 40, scope: !5784)
!5787 = !DILocalVariable(name: "info", arg: 2, scope: !5784, file: !1, line: 236, type: !4515)
!5788 = !DILocation(line: 236, column: 60, scope: !5784)
!5789 = !DILocalVariable(name: "mode", arg: 3, scope: !5784, file: !1, line: 236, type: !140)
!5790 = !DILocation(line: 236, column: 70, scope: !5784)
!5791 = !DILocalVariable(name: "fg", arg: 4, scope: !5784, file: !1, line: 237, type: !140)
!5792 = !DILocation(line: 237, column: 14, scope: !5784)
!5793 = !DILocalVariable(name: "bg", arg: 5, scope: !5784, file: !1, line: 237, type: !140)
!5794 = !DILocation(line: 237, column: 22, scope: !5784)
!5795 = !DILocalVariable(name: "cursor", scope: !5784, file: !1, line: 239, type: !4841)
!5796 = !DILocation(line: 239, column: 19, scope: !5784)
!5797 = !DILocalVariable(name: "ops", scope: !5784, file: !1, line: 240, type: !155)
!5798 = !DILocation(line: 240, column: 20, scope: !5784)
!5799 = !DILocation(line: 240, column: 26, scope: !5784)
!5800 = !DILocation(line: 240, column: 32, scope: !5784)
!5801 = !DILocalVariable(name: "charmask", scope: !5784, file: !1, line: 241, type: !146)
!5802 = !DILocation(line: 241, column: 17, scope: !5784)
!5803 = !DILocation(line: 241, column: 28, scope: !5784)
!5804 = !DILocation(line: 241, column: 32, scope: !5784)
!5805 = !DILocalVariable(name: "w", scope: !5784, file: !1, line: 242, type: !140)
!5806 = !DILocation(line: 242, column: 6, scope: !5784)
!5807 = !DILocation(line: 242, column: 10, scope: !5784)
!5808 = !DILocalVariable(name: "c", scope: !5784, file: !1, line: 242, type: !140)
!5809 = !DILocation(line: 242, column: 46, scope: !5784)
!5810 = !DILocalVariable(name: "y", scope: !5784, file: !1, line: 243, type: !140)
!5811 = !DILocation(line: 243, column: 6, scope: !5784)
!5812 = !DILocation(line: 243, column: 17, scope: !5784)
!5813 = !DILocation(line: 243, column: 22, scope: !5784)
!5814 = !DILocation(line: 243, column: 25, scope: !5784)
!5815 = !DILocation(line: 243, column: 29, scope: !5784)
!5816 = !DILocation(line: 243, column: 35, scope: !5784)
!5817 = !DILocation(line: 243, column: 10, scope: !5784)
!5818 = !DILocalVariable(name: "attribute", scope: !5784, file: !1, line: 244, type: !140)
!5819 = !DILocation(line: 244, column: 6, scope: !5784)
!5820 = !DILocalVariable(name: "use_sw", scope: !5784, file: !1, line: 244, type: !140)
!5821 = !DILocation(line: 244, column: 17, scope: !5784)
!5822 = !DILocation(line: 244, column: 26, scope: !5784)
!5823 = !DILocation(line: 244, column: 30, scope: !5784)
!5824 = !DILocation(line: 244, column: 45, scope: !5784)
!5825 = !DILocalVariable(name: "err", scope: !5784, file: !1, line: 245, type: !140)
!5826 = !DILocation(line: 245, column: 6, scope: !5784)
!5827 = !DILocalVariable(name: "src", scope: !5784, file: !1, line: 246, type: !320)
!5828 = !DILocation(line: 246, column: 8, scope: !5784)
!5829 = !DILocation(line: 248, column: 9, scope: !5784)
!5830 = !DILocation(line: 248, column: 13, scope: !5784)
!5831 = !DILocation(line: 250, column: 7, scope: !5784)
!5832 = !DILocation(line: 250, column: 5, scope: !5784)
!5833 = !DILocation(line: 251, column: 28, scope: !5784)
!5834 = !DILocation(line: 251, column: 34, scope: !5784)
!5835 = !DILocation(line: 251, column: 14, scope: !5784)
!5836 = !DILocation(line: 251, column: 12, scope: !5784)
!5837 = !DILocation(line: 252, column: 8, scope: !5784)
!5838 = !DILocation(line: 252, column: 12, scope: !5784)
!5839 = !DILocation(line: 252, column: 20, scope: !5784)
!5840 = !DILocation(line: 252, column: 29, scope: !5784)
!5841 = !DILocation(line: 252, column: 33, scope: !5784)
!5842 = !DILocation(line: 252, column: 31, scope: !5784)
!5843 = !DILocation(line: 252, column: 46, scope: !5784)
!5844 = !DILocation(line: 252, column: 50, scope: !5784)
!5845 = !DILocation(line: 252, column: 54, scope: !5784)
!5846 = !DILocation(line: 252, column: 62, scope: !5784)
!5847 = !DILocation(line: 252, column: 48, scope: !5784)
!5848 = !DILocation(line: 252, column: 43, scope: !5784)
!5849 = !DILocation(line: 252, column: 25, scope: !5784)
!5850 = !DILocation(line: 252, column: 6, scope: !5784)
!5851 = !DILocation(line: 254, column: 6, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 254, column: 6)
!5853 = !DILocation(line: 254, column: 11, scope: !5852)
!5854 = !DILocation(line: 254, column: 24, scope: !5852)
!5855 = !DILocation(line: 254, column: 30, scope: !5852)
!5856 = !DILocation(line: 254, column: 38, scope: !5852)
!5857 = !DILocation(line: 254, column: 35, scope: !5852)
!5858 = !DILocation(line: 254, column: 42, scope: !5852)
!5859 = !DILocation(line: 255, column: 6, scope: !5852)
!5860 = !DILocation(line: 255, column: 11, scope: !5852)
!5861 = !DILocation(line: 254, column: 6, scope: !5784)
!5862 = !DILocation(line: 256, column: 37, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 255, column: 25)
!5864 = !DILocation(line: 256, column: 6, scope: !5863)
!5865 = !DILocation(line: 256, column: 11, scope: !5863)
!5866 = !DILocation(line: 256, column: 24, scope: !5863)
!5867 = !DILocation(line: 256, column: 30, scope: !5863)
!5868 = !DILocation(line: 256, column: 35, scope: !5863)
!5869 = !DILocation(line: 257, column: 13, scope: !5863)
!5870 = !DILocation(line: 257, column: 17, scope: !5863)
!5871 = !DILocation(line: 258, column: 2, scope: !5863)
!5872 = !DILocation(line: 260, column: 6, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 260, column: 6)
!5874 = !DILocation(line: 260, column: 6, scope: !5784)
!5875 = !DILocalVariable(name: "dst", scope: !5876, file: !1, line: 261, type: !4649)
!5876 = distinct !DILexicalBlock(scope: !5873, file: !1, line: 260, column: 17)
!5877 = !DILocation(line: 261, column: 7, scope: !5876)
!5878 = !DILocation(line: 263, column: 23, scope: !5876)
!5879 = !DILocation(line: 263, column: 26, scope: !5876)
!5880 = !DILocation(line: 263, column: 30, scope: !5876)
!5881 = !DILocation(line: 263, column: 38, scope: !5876)
!5882 = !DILocation(line: 263, column: 9, scope: !5876)
!5883 = !DILocation(line: 263, column: 7, scope: !5876)
!5884 = !DILocation(line: 264, column: 8, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5876, file: !1, line: 264, column: 7)
!5886 = !DILocation(line: 264, column: 7, scope: !5876)
!5887 = !DILocation(line: 265, column: 4, scope: !5885)
!5888 = !DILocation(line: 266, column: 9, scope: !5876)
!5889 = !DILocation(line: 266, column: 14, scope: !5876)
!5890 = !DILocation(line: 266, column: 3, scope: !5876)
!5891 = !DILocation(line: 267, column: 22, scope: !5876)
!5892 = !DILocation(line: 267, column: 3, scope: !5876)
!5893 = !DILocation(line: 267, column: 8, scope: !5876)
!5894 = !DILocation(line: 267, column: 20, scope: !5876)
!5895 = !DILocation(line: 268, column: 15, scope: !5876)
!5896 = !DILocation(line: 268, column: 20, scope: !5876)
!5897 = !DILocation(line: 268, column: 25, scope: !5876)
!5898 = !DILocation(line: 268, column: 36, scope: !5876)
!5899 = !DILocation(line: 268, column: 3, scope: !5876)
!5900 = !DILocation(line: 269, column: 9, scope: !5876)
!5901 = !DILocation(line: 269, column: 7, scope: !5876)
!5902 = !DILocation(line: 270, column: 2, scope: !5876)
!5903 = !DILocation(line: 272, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 272, column: 6)
!5905 = !DILocation(line: 272, column: 11, scope: !5904)
!5906 = !DILocation(line: 272, column: 24, scope: !5904)
!5907 = !DILocation(line: 272, column: 30, scope: !5904)
!5908 = !DILocation(line: 272, column: 42, scope: !5904)
!5909 = !DILocation(line: 272, column: 39, scope: !5904)
!5910 = !DILocation(line: 272, column: 45, scope: !5904)
!5911 = !DILocation(line: 273, column: 6, scope: !5904)
!5912 = !DILocation(line: 273, column: 11, scope: !5904)
!5913 = !DILocation(line: 273, column: 24, scope: !5904)
!5914 = !DILocation(line: 273, column: 30, scope: !5904)
!5915 = !DILocation(line: 273, column: 42, scope: !5904)
!5916 = !DILocation(line: 273, column: 39, scope: !5904)
!5917 = !DILocation(line: 273, column: 45, scope: !5904)
!5918 = !DILocation(line: 274, column: 6, scope: !5904)
!5919 = !DILocation(line: 274, column: 11, scope: !5904)
!5920 = !DILocation(line: 272, column: 6, scope: !5784)
!5921 = !DILocation(line: 275, column: 38, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5904, file: !1, line: 274, column: 25)
!5923 = !DILocation(line: 275, column: 3, scope: !5922)
!5924 = !DILocation(line: 275, column: 8, scope: !5922)
!5925 = !DILocation(line: 275, column: 21, scope: !5922)
!5926 = !DILocation(line: 275, column: 27, scope: !5922)
!5927 = !DILocation(line: 275, column: 36, scope: !5922)
!5928 = !DILocation(line: 276, column: 38, scope: !5922)
!5929 = !DILocation(line: 276, column: 3, scope: !5922)
!5930 = !DILocation(line: 276, column: 8, scope: !5922)
!5931 = !DILocation(line: 276, column: 21, scope: !5922)
!5932 = !DILocation(line: 276, column: 27, scope: !5922)
!5933 = !DILocation(line: 276, column: 36, scope: !5922)
!5934 = !DILocation(line: 277, column: 10, scope: !5922)
!5935 = !DILocation(line: 277, column: 14, scope: !5922)
!5936 = !DILocation(line: 278, column: 2, scope: !5922)
!5937 = !DILocation(line: 280, column: 7, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 280, column: 6)
!5939 = !DILocation(line: 280, column: 12, scope: !5938)
!5940 = !DILocation(line: 280, column: 25, scope: !5938)
!5941 = !DILocation(line: 280, column: 31, scope: !5938)
!5942 = !DILocation(line: 280, column: 38, scope: !5938)
!5943 = !DILocation(line: 280, column: 42, scope: !5938)
!5944 = !DILocation(line: 280, column: 50, scope: !5938)
!5945 = !DILocation(line: 280, column: 58, scope: !5938)
!5946 = !DILocation(line: 280, column: 62, scope: !5938)
!5947 = !DILocation(line: 280, column: 68, scope: !5938)
!5948 = !DILocation(line: 280, column: 56, scope: !5938)
!5949 = !DILocation(line: 280, column: 34, scope: !5938)
!5950 = !DILocation(line: 280, column: 72, scope: !5938)
!5951 = !DILocation(line: 281, column: 7, scope: !5938)
!5952 = !DILocation(line: 281, column: 12, scope: !5938)
!5953 = !DILocation(line: 281, column: 25, scope: !5938)
!5954 = !DILocation(line: 281, column: 31, scope: !5938)
!5955 = !DILocation(line: 281, column: 38, scope: !5938)
!5956 = !DILocation(line: 281, column: 42, scope: !5938)
!5957 = !DILocation(line: 281, column: 50, scope: !5938)
!5958 = !DILocation(line: 281, column: 59, scope: !5938)
!5959 = !DILocation(line: 281, column: 57, scope: !5938)
!5960 = !DILocation(line: 281, column: 34, scope: !5938)
!5961 = !DILocation(line: 281, column: 63, scope: !5938)
!5962 = !DILocation(line: 282, column: 6, scope: !5938)
!5963 = !DILocation(line: 282, column: 11, scope: !5938)
!5964 = !DILocation(line: 280, column: 6, scope: !5784)
!5965 = !DILocation(line: 283, column: 32, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5938, file: !1, line: 282, column: 25)
!5967 = !DILocation(line: 283, column: 36, scope: !5966)
!5968 = !DILocation(line: 283, column: 44, scope: !5966)
!5969 = !DILocation(line: 283, column: 52, scope: !5966)
!5970 = !DILocation(line: 283, column: 56, scope: !5966)
!5971 = !DILocation(line: 283, column: 62, scope: !5966)
!5972 = !DILocation(line: 283, column: 50, scope: !5966)
!5973 = !DILocation(line: 283, column: 3, scope: !5966)
!5974 = !DILocation(line: 283, column: 8, scope: !5966)
!5975 = !DILocation(line: 283, column: 21, scope: !5966)
!5976 = !DILocation(line: 283, column: 27, scope: !5966)
!5977 = !DILocation(line: 283, column: 30, scope: !5966)
!5978 = !DILocation(line: 284, column: 32, scope: !5966)
!5979 = !DILocation(line: 284, column: 36, scope: !5966)
!5980 = !DILocation(line: 284, column: 44, scope: !5966)
!5981 = !DILocation(line: 284, column: 53, scope: !5966)
!5982 = !DILocation(line: 284, column: 51, scope: !5966)
!5983 = !DILocation(line: 284, column: 3, scope: !5966)
!5984 = !DILocation(line: 284, column: 8, scope: !5966)
!5985 = !DILocation(line: 284, column: 21, scope: !5966)
!5986 = !DILocation(line: 284, column: 27, scope: !5966)
!5987 = !DILocation(line: 284, column: 30, scope: !5966)
!5988 = !DILocation(line: 285, column: 10, scope: !5966)
!5989 = !DILocation(line: 285, column: 14, scope: !5966)
!5990 = !DILocation(line: 286, column: 2, scope: !5966)
!5991 = !DILocation(line: 288, column: 6, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 288, column: 6)
!5993 = !DILocation(line: 288, column: 11, scope: !5992)
!5994 = !DILocation(line: 288, column: 24, scope: !5992)
!5995 = !DILocation(line: 288, column: 30, scope: !5992)
!5996 = !DILocation(line: 288, column: 40, scope: !5992)
!5997 = !DILocation(line: 288, column: 44, scope: !5992)
!5998 = !DILocation(line: 288, column: 52, scope: !5992)
!5999 = !DILocation(line: 288, column: 37, scope: !5992)
!6000 = !DILocation(line: 288, column: 59, scope: !5992)
!6001 = !DILocation(line: 289, column: 6, scope: !5992)
!6002 = !DILocation(line: 289, column: 11, scope: !5992)
!6003 = !DILocation(line: 289, column: 24, scope: !5992)
!6004 = !DILocation(line: 289, column: 30, scope: !5992)
!6005 = !DILocation(line: 289, column: 39, scope: !5992)
!6006 = !DILocation(line: 289, column: 43, scope: !5992)
!6007 = !DILocation(line: 289, column: 51, scope: !5992)
!6008 = !DILocation(line: 289, column: 36, scope: !5992)
!6009 = !DILocation(line: 289, column: 57, scope: !5992)
!6010 = !DILocation(line: 290, column: 6, scope: !5992)
!6011 = !DILocation(line: 290, column: 11, scope: !5992)
!6012 = !DILocation(line: 288, column: 6, scope: !5784)
!6013 = !DILocation(line: 291, column: 36, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5992, file: !1, line: 290, column: 25)
!6015 = !DILocation(line: 291, column: 40, scope: !6014)
!6016 = !DILocation(line: 291, column: 48, scope: !6014)
!6017 = !DILocation(line: 291, column: 3, scope: !6014)
!6018 = !DILocation(line: 291, column: 8, scope: !6014)
!6019 = !DILocation(line: 291, column: 21, scope: !6014)
!6020 = !DILocation(line: 291, column: 27, scope: !6014)
!6021 = !DILocation(line: 291, column: 34, scope: !6014)
!6022 = !DILocation(line: 292, column: 35, scope: !6014)
!6023 = !DILocation(line: 292, column: 39, scope: !6014)
!6024 = !DILocation(line: 292, column: 47, scope: !6014)
!6025 = !DILocation(line: 292, column: 3, scope: !6014)
!6026 = !DILocation(line: 292, column: 8, scope: !6014)
!6027 = !DILocation(line: 292, column: 21, scope: !6014)
!6028 = !DILocation(line: 292, column: 27, scope: !6014)
!6029 = !DILocation(line: 292, column: 33, scope: !6014)
!6030 = !DILocation(line: 293, column: 10, scope: !6014)
!6031 = !DILocation(line: 293, column: 14, scope: !6014)
!6032 = !DILocation(line: 294, column: 2, scope: !6014)
!6033 = !DILocation(line: 296, column: 6, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 296, column: 6)
!6035 = !DILocation(line: 296, column: 11, scope: !6034)
!6036 = !DILocation(line: 296, column: 24, scope: !6034)
!6037 = !DILocation(line: 296, column: 28, scope: !6034)
!6038 = !DILocation(line: 296, column: 30, scope: !6034)
!6039 = !DILocation(line: 296, column: 33, scope: !6034)
!6040 = !DILocation(line: 296, column: 38, scope: !6034)
!6041 = !DILocation(line: 296, column: 51, scope: !6034)
!6042 = !DILocation(line: 296, column: 55, scope: !6034)
!6043 = !DILocation(line: 296, column: 57, scope: !6034)
!6044 = !DILocation(line: 297, column: 6, scope: !6034)
!6045 = !DILocation(line: 297, column: 11, scope: !6034)
!6046 = !DILocation(line: 296, column: 6, scope: !5784)
!6047 = !DILocation(line: 298, column: 36, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6034, file: !1, line: 297, column: 25)
!6049 = !DILocation(line: 298, column: 40, scope: !6048)
!6050 = !DILocation(line: 298, column: 42, scope: !6048)
!6051 = !DILocation(line: 298, column: 3, scope: !6048)
!6052 = !DILocation(line: 298, column: 8, scope: !6048)
!6053 = !DILocation(line: 298, column: 21, scope: !6048)
!6054 = !DILocation(line: 298, column: 25, scope: !6048)
!6055 = !DILocation(line: 298, column: 27, scope: !6048)
!6056 = !DILocation(line: 299, column: 10, scope: !6048)
!6057 = !DILocation(line: 299, column: 14, scope: !6048)
!6058 = !DILocation(line: 300, column: 2, scope: !6048)
!6059 = !DILocation(line: 302, column: 13, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 302, column: 6)
!6061 = !DILocation(line: 302, column: 6, scope: !6060)
!6062 = !DILocation(line: 302, column: 17, scope: !6060)
!6063 = !DILocation(line: 302, column: 34, scope: !6060)
!6064 = !DILocation(line: 303, column: 6, scope: !6060)
!6065 = !DILocation(line: 303, column: 10, scope: !6060)
!6066 = !DILocation(line: 303, column: 28, scope: !6060)
!6067 = !DILocation(line: 303, column: 33, scope: !6060)
!6068 = !DILocation(line: 303, column: 36, scope: !6060)
!6069 = !DILocation(line: 303, column: 25, scope: !6060)
!6070 = !DILocation(line: 303, column: 49, scope: !6060)
!6071 = !DILocation(line: 304, column: 6, scope: !6060)
!6072 = !DILocation(line: 304, column: 11, scope: !6060)
!6073 = !DILocation(line: 304, column: 24, scope: !6060)
!6074 = !DILocation(line: 304, column: 29, scope: !6060)
!6075 = !DILocation(line: 304, column: 37, scope: !6060)
!6076 = !DILocation(line: 305, column: 6, scope: !6060)
!6077 = !DILocation(line: 305, column: 11, scope: !6060)
!6078 = !DILocation(line: 302, column: 6, scope: !5784)
!6079 = !DILocalVariable(name: "mask", scope: !6080, file: !1, line: 306, type: !320)
!6080 = distinct !DILexicalBlock(scope: !6060, file: !1, line: 305, column: 25)
!6081 = !DILocation(line: 306, column: 9, scope: !6080)
!6082 = !DILocation(line: 306, column: 30, scope: !6080)
!6083 = !DILocation(line: 306, column: 33, scope: !6080)
!6084 = !DILocation(line: 306, column: 37, scope: !6080)
!6085 = !DILocation(line: 306, column: 45, scope: !6080)
!6086 = !DILocation(line: 306, column: 16, scope: !6080)
!6087 = !DILocalVariable(name: "cur_height", scope: !6080, file: !1, line: 307, type: !140)
!6088 = !DILocation(line: 307, column: 7, scope: !6080)
!6089 = !DILocalVariable(name: "size", scope: !6080, file: !1, line: 307, type: !140)
!6090 = !DILocation(line: 307, column: 19, scope: !6080)
!6091 = !DILocalVariable(name: "i", scope: !6080, file: !1, line: 307, type: !140)
!6092 = !DILocation(line: 307, column: 25, scope: !6080)
!6093 = !DILocalVariable(name: "msk", scope: !6080, file: !1, line: 308, type: !1403)
!6094 = !DILocation(line: 308, column: 6, scope: !6080)
!6095 = !DILocation(line: 310, column: 8, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6080, file: !1, line: 310, column: 7)
!6097 = !DILocation(line: 310, column: 7, scope: !6080)
!6098 = !DILocation(line: 311, column: 4, scope: !6096)
!6099 = !DILocation(line: 313, column: 9, scope: !6080)
!6100 = !DILocation(line: 313, column: 14, scope: !6080)
!6101 = !DILocation(line: 313, column: 27, scope: !6080)
!6102 = !DILocation(line: 313, column: 3, scope: !6080)
!6103 = !DILocation(line: 314, column: 28, scope: !6080)
!6104 = !DILocation(line: 314, column: 3, scope: !6080)
!6105 = !DILocation(line: 314, column: 8, scope: !6080)
!6106 = !DILocation(line: 314, column: 21, scope: !6080)
!6107 = !DILocation(line: 314, column: 26, scope: !6080)
!6108 = !DILocation(line: 316, column: 26, scope: !6080)
!6109 = !DILocation(line: 316, column: 30, scope: !6080)
!6110 = !DILocation(line: 316, column: 3, scope: !6080)
!6111 = !DILocation(line: 316, column: 8, scope: !6080)
!6112 = !DILocation(line: 316, column: 11, scope: !6080)
!6113 = !DILocation(line: 316, column: 24, scope: !6080)
!6114 = !DILocation(line: 317, column: 10, scope: !6080)
!6115 = !DILocation(line: 317, column: 14, scope: !6080)
!6116 = !DILocation(line: 319, column: 11, scope: !6080)
!6117 = !DILocation(line: 319, column: 3, scope: !6080)
!6118 = !DILocation(line: 321, column: 15, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6080, file: !1, line: 319, column: 43)
!6120 = !DILocation(line: 322, column: 4, scope: !6119)
!6121 = !DILocation(line: 324, column: 18, scope: !6119)
!6122 = !DILocation(line: 324, column: 22, scope: !6119)
!6123 = !DILocation(line: 324, column: 30, scope: !6119)
!6124 = !DILocation(line: 324, column: 37, scope: !6119)
!6125 = !DILocation(line: 324, column: 17, scope: !6119)
!6126 = !DILocation(line: 324, column: 15, scope: !6119)
!6127 = !DILocation(line: 325, column: 4, scope: !6119)
!6128 = !DILocation(line: 327, column: 17, scope: !6119)
!6129 = !DILocation(line: 327, column: 21, scope: !6119)
!6130 = !DILocation(line: 327, column: 29, scope: !6119)
!6131 = !DILocation(line: 327, column: 35, scope: !6119)
!6132 = !DILocation(line: 327, column: 15, scope: !6119)
!6133 = !DILocation(line: 328, column: 4, scope: !6119)
!6134 = !DILocation(line: 330, column: 17, scope: !6119)
!6135 = !DILocation(line: 330, column: 21, scope: !6119)
!6136 = !DILocation(line: 330, column: 29, scope: !6119)
!6137 = !DILocation(line: 330, column: 36, scope: !6119)
!6138 = !DILocation(line: 330, column: 15, scope: !6119)
!6139 = !DILocation(line: 331, column: 4, scope: !6119)
!6140 = !DILocation(line: 333, column: 18, scope: !6119)
!6141 = !DILocation(line: 333, column: 22, scope: !6119)
!6142 = !DILocation(line: 333, column: 30, scope: !6119)
!6143 = !DILocation(line: 333, column: 37, scope: !6119)
!6144 = !DILocation(line: 333, column: 42, scope: !6119)
!6145 = !DILocation(line: 333, column: 15, scope: !6119)
!6146 = !DILocation(line: 334, column: 4, scope: !6119)
!6147 = !DILocation(line: 337, column: 17, scope: !6119)
!6148 = !DILocation(line: 337, column: 21, scope: !6119)
!6149 = !DILocation(line: 337, column: 29, scope: !6119)
!6150 = !DILocation(line: 337, column: 15, scope: !6119)
!6151 = !DILocation(line: 338, column: 4, scope: !6119)
!6152 = !DILocation(line: 340, column: 11, scope: !6080)
!6153 = !DILocation(line: 340, column: 15, scope: !6080)
!6154 = !DILocation(line: 340, column: 23, scope: !6080)
!6155 = !DILocation(line: 340, column: 32, scope: !6080)
!6156 = !DILocation(line: 340, column: 30, scope: !6080)
!6157 = !DILocation(line: 340, column: 46, scope: !6080)
!6158 = !DILocation(line: 340, column: 44, scope: !6080)
!6159 = !DILocation(line: 340, column: 8, scope: !6080)
!6160 = !DILocation(line: 341, column: 3, scope: !6080)
!6161 = !DILocation(line: 341, column: 14, scope: !6080)
!6162 = !DILocation(line: 342, column: 17, scope: !6080)
!6163 = !DILocation(line: 342, column: 16, scope: !6080)
!6164 = !DILocation(line: 342, column: 4, scope: !6080)
!6165 = !DILocation(line: 342, column: 10, scope: !6080)
!6166 = !DILocation(line: 342, column: 14, scope: !6080)
!6167 = distinct !{!6167, !6160, !6162}
!6168 = !DILocation(line: 343, column: 10, scope: !6080)
!6169 = !DILocation(line: 343, column: 23, scope: !6080)
!6170 = !DILocation(line: 343, column: 21, scope: !6080)
!6171 = !DILocation(line: 343, column: 8, scope: !6080)
!6172 = !DILocation(line: 344, column: 3, scope: !6080)
!6173 = !DILocation(line: 344, column: 14, scope: !6080)
!6174 = !DILocation(line: 345, column: 16, scope: !6080)
!6175 = !DILocation(line: 345, column: 4, scope: !6080)
!6176 = !DILocation(line: 345, column: 10, scope: !6080)
!6177 = !DILocation(line: 345, column: 14, scope: !6080)
!6178 = distinct !{!6178, !6172, !6174}
!6179 = !DILocation(line: 346, column: 2, scope: !6080)
!6180 = !DILocation(line: 348, column: 10, scope: !5784)
!6181 = !DILocation(line: 348, column: 2, scope: !5784)
!6182 = !DILocation(line: 350, column: 3, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 348, column: 16)
!6184 = !DILocation(line: 350, column: 8, scope: !6183)
!6185 = !DILocation(line: 350, column: 21, scope: !6183)
!6186 = !DILocation(line: 350, column: 28, scope: !6183)
!6187 = !DILocation(line: 351, column: 3, scope: !6183)
!6188 = !DILocation(line: 355, column: 31, scope: !6183)
!6189 = !DILocation(line: 355, column: 30, scope: !6183)
!6190 = !DILocation(line: 355, column: 3, scope: !6183)
!6191 = !DILocation(line: 355, column: 8, scope: !6183)
!6192 = !DILocation(line: 355, column: 21, scope: !6183)
!6193 = !DILocation(line: 355, column: 28, scope: !6183)
!6194 = !DILocation(line: 356, column: 3, scope: !6183)
!6195 = !DILocation(line: 359, column: 22, scope: !5784)
!6196 = !DILocation(line: 359, column: 9, scope: !5784)
!6197 = !DILocation(line: 359, column: 15, scope: !5784)
!6198 = !DILocation(line: 359, column: 20, scope: !5784)
!6199 = !DILocation(line: 360, column: 26, scope: !5784)
!6200 = !DILocation(line: 360, column: 31, scope: !5784)
!6201 = !DILocation(line: 360, column: 44, scope: !5784)
!6202 = !DILocation(line: 360, column: 50, scope: !5784)
!6203 = !DILocation(line: 360, column: 9, scope: !5784)
!6204 = !DILocation(line: 360, column: 15, scope: !5784)
!6205 = !DILocation(line: 360, column: 24, scope: !5784)
!6206 = !DILocation(line: 361, column: 26, scope: !5784)
!6207 = !DILocation(line: 361, column: 31, scope: !5784)
!6208 = !DILocation(line: 361, column: 44, scope: !5784)
!6209 = !DILocation(line: 361, column: 50, scope: !5784)
!6210 = !DILocation(line: 361, column: 9, scope: !5784)
!6211 = !DILocation(line: 361, column: 15, scope: !5784)
!6212 = !DILocation(line: 361, column: 24, scope: !5784)
!6213 = !DILocation(line: 362, column: 20, scope: !5784)
!6214 = !DILocation(line: 362, column: 25, scope: !5784)
!6215 = !DILocation(line: 362, column: 38, scope: !5784)
!6216 = !DILocation(line: 362, column: 44, scope: !5784)
!6217 = !DILocation(line: 362, column: 9, scope: !5784)
!6218 = !DILocation(line: 362, column: 15, scope: !5784)
!6219 = !DILocation(line: 362, column: 18, scope: !5784)
!6220 = !DILocation(line: 363, column: 20, scope: !5784)
!6221 = !DILocation(line: 363, column: 25, scope: !5784)
!6222 = !DILocation(line: 363, column: 38, scope: !5784)
!6223 = !DILocation(line: 363, column: 44, scope: !5784)
!6224 = !DILocation(line: 363, column: 9, scope: !5784)
!6225 = !DILocation(line: 363, column: 15, scope: !5784)
!6226 = !DILocation(line: 363, column: 18, scope: !5784)
!6227 = !DILocation(line: 364, column: 24, scope: !5784)
!6228 = !DILocation(line: 364, column: 29, scope: !5784)
!6229 = !DILocation(line: 364, column: 42, scope: !5784)
!6230 = !DILocation(line: 364, column: 48, scope: !5784)
!6231 = !DILocation(line: 364, column: 9, scope: !5784)
!6232 = !DILocation(line: 364, column: 15, scope: !5784)
!6233 = !DILocation(line: 364, column: 22, scope: !5784)
!6234 = !DILocation(line: 365, column: 23, scope: !5784)
!6235 = !DILocation(line: 365, column: 28, scope: !5784)
!6236 = !DILocation(line: 365, column: 41, scope: !5784)
!6237 = !DILocation(line: 365, column: 47, scope: !5784)
!6238 = !DILocation(line: 365, column: 9, scope: !5784)
!6239 = !DILocation(line: 365, column: 15, scope: !5784)
!6240 = !DILocation(line: 365, column: 21, scope: !5784)
!6241 = !DILocation(line: 366, column: 17, scope: !5784)
!6242 = !DILocation(line: 366, column: 22, scope: !5784)
!6243 = !DILocation(line: 366, column: 35, scope: !5784)
!6244 = !DILocation(line: 366, column: 39, scope: !5784)
!6245 = !DILocation(line: 366, column: 9, scope: !5784)
!6246 = !DILocation(line: 366, column: 13, scope: !5784)
!6247 = !DILocation(line: 366, column: 15, scope: !5784)
!6248 = !DILocation(line: 367, column: 17, scope: !5784)
!6249 = !DILocation(line: 367, column: 22, scope: !5784)
!6250 = !DILocation(line: 367, column: 35, scope: !5784)
!6251 = !DILocation(line: 367, column: 39, scope: !5784)
!6252 = !DILocation(line: 367, column: 9, scope: !5784)
!6253 = !DILocation(line: 367, column: 13, scope: !5784)
!6254 = !DILocation(line: 367, column: 15, scope: !5784)
!6255 = !DILocation(line: 368, column: 16, scope: !5784)
!6256 = !DILocation(line: 368, column: 21, scope: !5784)
!6257 = !DILocation(line: 368, column: 34, scope: !5784)
!6258 = !DILocation(line: 368, column: 9, scope: !5784)
!6259 = !DILocation(line: 368, column: 14, scope: !5784)
!6260 = !DILocation(line: 369, column: 18, scope: !5784)
!6261 = !DILocation(line: 369, column: 23, scope: !5784)
!6262 = !DILocation(line: 369, column: 36, scope: !5784)
!6263 = !DILocation(line: 369, column: 9, scope: !5784)
!6264 = !DILocation(line: 369, column: 16, scope: !5784)
!6265 = !DILocation(line: 370, column: 9, scope: !5784)
!6266 = !DILocation(line: 370, column: 15, scope: !5784)
!6267 = !DILocation(line: 370, column: 21, scope: !5784)
!6268 = !DILocation(line: 371, column: 9, scope: !5784)
!6269 = !DILocation(line: 371, column: 13, scope: !5784)
!6270 = !DILocation(line: 373, column: 6, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 373, column: 6)
!6272 = !DILocation(line: 373, column: 12, scope: !6271)
!6273 = !DILocation(line: 373, column: 19, scope: !6271)
!6274 = !DILocation(line: 373, column: 6, scope: !5784)
!6275 = !DILocation(line: 374, column: 9, scope: !6271)
!6276 = !DILocation(line: 374, column: 15, scope: !6271)
!6277 = !DILocation(line: 374, column: 22, scope: !6271)
!6278 = !DILocation(line: 374, column: 32, scope: !6271)
!6279 = !DILocation(line: 374, column: 7, scope: !6271)
!6280 = !DILocation(line: 374, column: 3, scope: !6271)
!6281 = !DILocation(line: 376, column: 6, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !5784, file: !1, line: 376, column: 6)
!6283 = !DILocation(line: 376, column: 6, scope: !5784)
!6284 = !DILocation(line: 377, column: 15, scope: !6282)
!6285 = !DILocation(line: 377, column: 3, scope: !6282)
!6286 = !DILocation(line: 379, column: 2, scope: !5784)
!6287 = !DILocation(line: 379, column: 7, scope: !5784)
!6288 = !DILocation(line: 379, column: 20, scope: !5784)
!6289 = !DILocation(line: 380, column: 1, scope: !5784)
!6290 = distinct !DISubprogram(name: "bit_update_start", scope: !1, file: !1, line: 382, type: !4775, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6291 = !DILocalVariable(name: "info", arg: 1, scope: !6290, file: !1, line: 382, type: !4515)
!6292 = !DILocation(line: 382, column: 45, scope: !6290)
!6293 = !DILocalVariable(name: "ops", scope: !6290, file: !1, line: 384, type: !155)
!6294 = !DILocation(line: 384, column: 20, scope: !6290)
!6295 = !DILocation(line: 384, column: 26, scope: !6290)
!6296 = !DILocation(line: 384, column: 32, scope: !6290)
!6297 = !DILocalVariable(name: "err", scope: !6290, file: !1, line: 385, type: !140)
!6298 = !DILocation(line: 385, column: 6, scope: !6290)
!6299 = !DILocation(line: 387, column: 23, scope: !6290)
!6300 = !DILocation(line: 387, column: 30, scope: !6290)
!6301 = !DILocation(line: 387, column: 35, scope: !6290)
!6302 = !DILocation(line: 387, column: 8, scope: !6290)
!6303 = !DILocation(line: 387, column: 6, scope: !6290)
!6304 = !DILocation(line: 388, column: 21, scope: !6290)
!6305 = !DILocation(line: 388, column: 27, scope: !6290)
!6306 = !DILocation(line: 388, column: 31, scope: !6290)
!6307 = !DILocation(line: 388, column: 2, scope: !6290)
!6308 = !DILocation(line: 388, column: 7, scope: !6290)
!6309 = !DILocation(line: 388, column: 11, scope: !6290)
!6310 = !DILocation(line: 388, column: 19, scope: !6290)
!6311 = !DILocation(line: 389, column: 21, scope: !6290)
!6312 = !DILocation(line: 389, column: 27, scope: !6290)
!6313 = !DILocation(line: 389, column: 31, scope: !6290)
!6314 = !DILocation(line: 389, column: 2, scope: !6290)
!6315 = !DILocation(line: 389, column: 7, scope: !6290)
!6316 = !DILocation(line: 389, column: 11, scope: !6290)
!6317 = !DILocation(line: 389, column: 19, scope: !6290)
!6318 = !DILocation(line: 390, column: 19, scope: !6290)
!6319 = !DILocation(line: 390, column: 25, scope: !6290)
!6320 = !DILocation(line: 390, column: 29, scope: !6290)
!6321 = !DILocation(line: 390, column: 2, scope: !6290)
!6322 = !DILocation(line: 390, column: 7, scope: !6290)
!6323 = !DILocation(line: 390, column: 11, scope: !6290)
!6324 = !DILocation(line: 390, column: 17, scope: !6290)
!6325 = !DILocation(line: 391, column: 9, scope: !6290)
!6326 = !DILocation(line: 391, column: 2, scope: !6290)
!6327 = distinct !DISubprogram(name: "attr_col_ec", scope: !157, file: !157, line: 119, type: !6328, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!140, !140, !163, !4515, !140}
!6330 = !DILocalVariable(name: "shift", arg: 1, scope: !6327, file: !157, line: 119, type: !140)
!6331 = !DILocation(line: 119, column: 35, scope: !6327)
!6332 = !DILocalVariable(name: "vc", arg: 2, scope: !6327, file: !157, line: 119, type: !163)
!6333 = !DILocation(line: 119, column: 58, scope: !6327)
!6334 = !DILocalVariable(name: "info", arg: 3, scope: !6327, file: !157, line: 120, type: !4515)
!6335 = !DILocation(line: 120, column: 26, scope: !6327)
!6336 = !DILocalVariable(name: "is_fg", arg: 4, scope: !6327, file: !157, line: 120, type: !140)
!6337 = !DILocation(line: 120, column: 36, scope: !6327)
!6338 = !DILocalVariable(name: "is_mono01", scope: !6327, file: !157, line: 122, type: !140)
!6339 = !DILocation(line: 122, column: 6, scope: !6327)
!6340 = !DILocalVariable(name: "col", scope: !6327, file: !157, line: 123, type: !140)
!6341 = !DILocation(line: 123, column: 6, scope: !6327)
!6342 = !DILocalVariable(name: "fg", scope: !6327, file: !157, line: 124, type: !140)
!6343 = !DILocation(line: 124, column: 6, scope: !6327)
!6344 = !DILocalVariable(name: "bg", scope: !6327, file: !157, line: 125, type: !140)
!6345 = !DILocation(line: 125, column: 6, scope: !6327)
!6346 = !DILocation(line: 127, column: 7, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6327, file: !157, line: 127, column: 6)
!6348 = !DILocation(line: 127, column: 6, scope: !6327)
!6349 = !DILocation(line: 128, column: 3, scope: !6347)
!6350 = !DILocation(line: 130, column: 6, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6327, file: !157, line: 130, column: 6)
!6352 = !DILocation(line: 130, column: 10, scope: !6351)
!6353 = !DILocation(line: 130, column: 6, scope: !6327)
!6354 = !DILocation(line: 131, column: 10, scope: !6351)
!6355 = !DILocation(line: 131, column: 18, scope: !6351)
!6356 = !DILocation(line: 132, column: 6, scope: !6351)
!6357 = !DILocation(line: 131, column: 3, scope: !6351)
!6358 = !DILocation(line: 134, column: 7, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6327, file: !157, line: 134, column: 6)
!6360 = !DILocation(line: 134, column: 6, scope: !6327)
!6361 = !DILocation(line: 135, column: 3, scope: !6359)
!6362 = !DILocation(line: 137, column: 17, scope: !6327)
!6363 = !DILocation(line: 137, column: 8, scope: !6327)
!6364 = !DILocation(line: 137, column: 6, scope: !6327)
!6365 = !DILocation(line: 138, column: 14, scope: !6327)
!6366 = !DILocation(line: 138, column: 20, scope: !6327)
!6367 = !DILocation(line: 138, column: 24, scope: !6327)
!6368 = !DILocation(line: 138, column: 31, scope: !6327)
!6369 = !DILocation(line: 138, column: 12, scope: !6327)
!6370 = !DILocation(line: 140, column: 6, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6327, file: !157, line: 140, column: 6)
!6372 = !DILocation(line: 140, column: 6, scope: !6327)
!6373 = !DILocation(line: 141, column: 8, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6371, file: !157, line: 140, column: 45)
!6375 = !DILocation(line: 141, column: 20, scope: !6374)
!6376 = !DILocation(line: 141, column: 6, scope: !6374)
!6377 = !DILocation(line: 142, column: 8, scope: !6374)
!6378 = !DILocation(line: 142, column: 24, scope: !6374)
!6379 = !DILocation(line: 142, column: 6, scope: !6374)
!6380 = !DILocation(line: 143, column: 2, scope: !6374)
!6381 = !DILocation(line: 145, column: 8, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6371, file: !157, line: 144, column: 7)
!6383 = !DILocation(line: 145, column: 24, scope: !6382)
!6384 = !DILocation(line: 145, column: 6, scope: !6382)
!6385 = !DILocation(line: 146, column: 8, scope: !6382)
!6386 = !DILocation(line: 146, column: 20, scope: !6382)
!6387 = !DILocation(line: 146, column: 6, scope: !6382)
!6388 = !DILocation(line: 149, column: 9, scope: !6327)
!6389 = !DILocation(line: 149, column: 17, scope: !6327)
!6390 = !DILocation(line: 149, column: 22, scope: !6327)
!6391 = !DILocation(line: 149, column: 2, scope: !6327)
!6392 = !DILocation(line: 150, column: 1, scope: !6327)
!6393 = distinct !DISubprogram(name: "mono_col", scope: !157, file: !157, line: 111, type: !6394, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6394 = !DISubroutineType(types: !6395)
!6395 = !{!140, !6396}
!6396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6397, size: 64)
!6397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4516)
!6398 = !DILocalVariable(name: "info", arg: 1, scope: !6393, file: !157, line: 111, type: !6396)
!6399 = !DILocation(line: 111, column: 50, scope: !6393)
!6400 = !DILocalVariable(name: "max_len", scope: !6393, file: !157, line: 113, type: !455)
!6401 = !DILocation(line: 113, column: 8, scope: !6393)
!6402 = !DILocalVariable(name: "__UNIQUE_ID___x241", scope: !6403, file: !157, line: 114, type: !6404)
!6403 = distinct !DILexicalBlock(scope: !6393, file: !157, line: 114, column: 12)
!6404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!6405 = !DILocation(line: 114, column: 12, scope: !6403)
!6406 = !DILocalVariable(name: "__UNIQUE_ID___y242", scope: !6403, file: !157, line: 114, type: !6404)
!6407 = !DILocation(line: 114, column: 10, scope: !6393)
!6408 = !DILocalVariable(name: "__UNIQUE_ID___x243", scope: !6409, file: !157, line: 115, type: !6404)
!6409 = distinct !DILexicalBlock(scope: !6393, file: !157, line: 115, column: 12)
!6410 = !DILocation(line: 115, column: 12, scope: !6409)
!6411 = !DILocalVariable(name: "__UNIQUE_ID___y244", scope: !6409, file: !157, line: 115, type: !455)
!6412 = !DILocation(line: 115, column: 10, scope: !6393)
!6413 = !DILocation(line: 116, column: 21, scope: !6393)
!6414 = !DILocation(line: 116, column: 18, scope: !6393)
!6415 = !DILocation(line: 116, column: 10, scope: !6393)
!6416 = !DILocation(line: 116, column: 31, scope: !6393)
!6417 = !DILocation(line: 116, column: 2, scope: !6393)
!6418 = distinct !DISubprogram(name: "get_attribute", scope: !157, file: !157, line: 230, type: !6419, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6419 = !DISubroutineType(types: !6420)
!6420 = !{!140, !4515, !142}
!6421 = !DILocalVariable(name: "info", arg: 1, scope: !6418, file: !157, line: 230, type: !4515)
!6422 = !DILocation(line: 230, column: 49, scope: !6418)
!6423 = !DILocalVariable(name: "c", arg: 2, scope: !6418, file: !157, line: 230, type: !142)
!6424 = !DILocation(line: 230, column: 59, scope: !6418)
!6425 = !DILocalVariable(name: "attribute", scope: !6418, file: !157, line: 232, type: !140)
!6426 = !DILocation(line: 232, column: 6, scope: !6418)
!6427 = !DILocation(line: 234, column: 26, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6418, file: !157, line: 234, column: 6)
!6429 = !DILocation(line: 234, column: 32, scope: !6428)
!6430 = !DILocation(line: 234, column: 38, scope: !6428)
!6431 = !DILocation(line: 234, column: 44, scope: !6428)
!6432 = !DILocation(line: 234, column: 6, scope: !6428)
!6433 = !DILocation(line: 234, column: 49, scope: !6428)
!6434 = !DILocation(line: 234, column: 6, scope: !6418)
!6435 = !DILocation(line: 235, column: 7, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !157, line: 235, column: 7)
!6437 = distinct !DILexicalBlock(scope: !6428, file: !157, line: 234, column: 55)
!6438 = !DILocation(line: 235, column: 7, scope: !6437)
!6439 = !DILocation(line: 236, column: 14, scope: !6436)
!6440 = !DILocation(line: 236, column: 4, scope: !6436)
!6441 = !DILocation(line: 237, column: 7, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6437, file: !157, line: 237, column: 7)
!6443 = !DILocation(line: 237, column: 7, scope: !6437)
!6444 = !DILocation(line: 238, column: 14, scope: !6442)
!6445 = !DILocation(line: 238, column: 4, scope: !6442)
!6446 = !DILocation(line: 239, column: 7, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6437, file: !157, line: 239, column: 7)
!6448 = !DILocation(line: 239, column: 7, scope: !6437)
!6449 = !DILocation(line: 240, column: 14, scope: !6447)
!6450 = !DILocation(line: 240, column: 4, scope: !6447)
!6451 = !DILocation(line: 241, column: 2, scope: !6437)
!6452 = !DILocation(line: 243, column: 9, scope: !6418)
!6453 = !DILocation(line: 243, column: 2, scope: !6418)
!6454 = distinct !DISubprogram(name: "bit_putcs_aligned", scope: !1, file: !1, line: 77, type: !6455, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6455 = !DISubroutineType(types: !6456)
!6456 = !{null, !163, !4515, !6457, !454, !454, !454, !454, !454, !6459, !4649, !4649}
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6458, size: 64)
!6458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!6459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!6460 = !DILocalVariable(name: "vc", arg: 1, scope: !6454, file: !1, line: 77, type: !163)
!6461 = !DILocation(line: 77, column: 54, scope: !6454)
!6462 = !DILocalVariable(name: "info", arg: 2, scope: !6454, file: !1, line: 77, type: !4515)
!6463 = !DILocation(line: 77, column: 74, scope: !6454)
!6464 = !DILocalVariable(name: "s", arg: 3, scope: !6454, file: !1, line: 78, type: !6457)
!6465 = !DILocation(line: 78, column: 21, scope: !6454)
!6466 = !DILocalVariable(name: "attr", arg: 4, scope: !6454, file: !1, line: 78, type: !454)
!6467 = !DILocation(line: 78, column: 28, scope: !6454)
!6468 = !DILocalVariable(name: "cnt", arg: 5, scope: !6454, file: !1, line: 78, type: !454)
!6469 = !DILocation(line: 78, column: 38, scope: !6454)
!6470 = !DILocalVariable(name: "d_pitch", arg: 6, scope: !6454, file: !1, line: 79, type: !454)
!6471 = !DILocation(line: 79, column: 14, scope: !6454)
!6472 = !DILocalVariable(name: "s_pitch", arg: 7, scope: !6454, file: !1, line: 79, type: !454)
!6473 = !DILocation(line: 79, column: 27, scope: !6454)
!6474 = !DILocalVariable(name: "cellsize", arg: 8, scope: !6454, file: !1, line: 79, type: !454)
!6475 = !DILocation(line: 79, column: 40, scope: !6454)
!6476 = !DILocalVariable(name: "image", arg: 9, scope: !6454, file: !1, line: 80, type: !6459)
!6477 = !DILocation(line: 80, column: 27, scope: !6454)
!6478 = !DILocalVariable(name: "buf", arg: 10, scope: !6454, file: !1, line: 80, type: !4649)
!6479 = !DILocation(line: 80, column: 38, scope: !6454)
!6480 = !DILocalVariable(name: "dst", arg: 11, scope: !6454, file: !1, line: 80, type: !4649)
!6481 = !DILocation(line: 80, column: 47, scope: !6454)
!6482 = !DILocalVariable(name: "charmask", scope: !6454, file: !1, line: 82, type: !142)
!6483 = !DILocation(line: 82, column: 6, scope: !6454)
!6484 = !DILocation(line: 82, column: 17, scope: !6454)
!6485 = !DILocation(line: 82, column: 21, scope: !6454)
!6486 = !DILocalVariable(name: "idx", scope: !6454, file: !1, line: 83, type: !454)
!6487 = !DILocation(line: 83, column: 6, scope: !6454)
!6488 = !DILocation(line: 83, column: 12, scope: !6454)
!6489 = !DILocation(line: 83, column: 16, scope: !6454)
!6490 = !DILocation(line: 83, column: 24, scope: !6454)
!6491 = !DILocation(line: 83, column: 30, scope: !6454)
!6492 = !DILocalVariable(name: "src", scope: !6454, file: !1, line: 84, type: !4649)
!6493 = !DILocation(line: 84, column: 6, scope: !6454)
!6494 = !DILocation(line: 86, column: 2, scope: !6454)
!6495 = !DILocation(line: 86, column: 12, scope: !6454)
!6496 = !DILocation(line: 87, column: 9, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6454, file: !1, line: 86, column: 16)
!6498 = !DILocation(line: 87, column: 13, scope: !6497)
!6499 = !DILocation(line: 87, column: 21, scope: !6497)
!6500 = !DILocation(line: 87, column: 29, scope: !6497)
!6501 = !DILocation(line: 88, column: 8, scope: !6497)
!6502 = !DILocation(line: 87, column: 43, scope: !6497)
!6503 = !DILocation(line: 88, column: 18, scope: !6497)
!6504 = !DILocation(line: 88, column: 17, scope: !6497)
!6505 = !DILocation(line: 87, column: 26, scope: !6497)
!6506 = !DILocation(line: 87, column: 7, scope: !6497)
!6507 = !DILocation(line: 90, column: 7, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6497, file: !1, line: 90, column: 7)
!6509 = !DILocation(line: 90, column: 7, scope: !6497)
!6510 = !DILocation(line: 91, column: 16, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6508, file: !1, line: 90, column: 13)
!6512 = !DILocation(line: 91, column: 21, scope: !6511)
!6513 = !DILocation(line: 91, column: 26, scope: !6511)
!6514 = !DILocation(line: 91, column: 32, scope: !6511)
!6515 = !DILocation(line: 91, column: 4, scope: !6511)
!6516 = !DILocation(line: 92, column: 10, scope: !6511)
!6517 = !DILocation(line: 92, column: 8, scope: !6511)
!6518 = !DILocation(line: 93, column: 3, scope: !6511)
!6519 = !DILocation(line: 95, column: 7, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6497, file: !1, line: 95, column: 7)
!6521 = !DILocation(line: 95, column: 7, scope: !6497)
!6522 = !DILocation(line: 96, column: 28, scope: !6520)
!6523 = !DILocation(line: 96, column: 33, scope: !6520)
!6524 = !DILocation(line: 96, column: 42, scope: !6520)
!6525 = !DILocation(line: 96, column: 47, scope: !6520)
!6526 = !DILocation(line: 97, column: 7, scope: !6520)
!6527 = !DILocation(line: 97, column: 14, scope: !6520)
!6528 = !DILocation(line: 96, column: 4, scope: !6520)
!6529 = !DILocation(line: 99, column: 26, scope: !6520)
!6530 = !DILocation(line: 99, column: 31, scope: !6520)
!6531 = !DILocation(line: 99, column: 40, scope: !6520)
!6532 = !DILocation(line: 99, column: 45, scope: !6520)
!6533 = !DILocation(line: 100, column: 12, scope: !6520)
!6534 = !DILocation(line: 100, column: 19, scope: !6520)
!6535 = !DILocation(line: 99, column: 4, scope: !6520)
!6536 = !DILocation(line: 102, column: 10, scope: !6497)
!6537 = !DILocation(line: 102, column: 7, scope: !6497)
!6538 = distinct !{!6538, !6494, !6539}
!6539 = !DILocation(line: 103, column: 2, scope: !6454)
!6540 = !DILocation(line: 105, column: 2, scope: !6454)
!6541 = !DILocation(line: 105, column: 8, scope: !6454)
!6542 = !DILocation(line: 105, column: 15, scope: !6454)
!6543 = !DILocation(line: 105, column: 28, scope: !6454)
!6544 = !DILocation(line: 105, column: 34, scope: !6454)
!6545 = !DILocation(line: 106, column: 1, scope: !6454)
!6546 = distinct !DISubprogram(name: "bit_putcs_unaligned", scope: !1, file: !1, line: 108, type: !6455, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6547 = !DILocalVariable(name: "vc", arg: 1, scope: !6546, file: !1, line: 108, type: !163)
!6548 = !DILocation(line: 108, column: 56, scope: !6546)
!6549 = !DILocalVariable(name: "info", arg: 2, scope: !6546, file: !1, line: 109, type: !4515)
!6550 = !DILocation(line: 109, column: 28, scope: !6546)
!6551 = !DILocalVariable(name: "s", arg: 3, scope: !6546, file: !1, line: 109, type: !6457)
!6552 = !DILocation(line: 109, column: 45, scope: !6546)
!6553 = !DILocalVariable(name: "attr", arg: 4, scope: !6546, file: !1, line: 110, type: !454)
!6554 = !DILocation(line: 110, column: 16, scope: !6546)
!6555 = !DILocalVariable(name: "cnt", arg: 5, scope: !6546, file: !1, line: 110, type: !454)
!6556 = !DILocation(line: 110, column: 26, scope: !6546)
!6557 = !DILocalVariable(name: "d_pitch", arg: 6, scope: !6546, file: !1, line: 110, type: !454)
!6558 = !DILocation(line: 110, column: 35, scope: !6546)
!6559 = !DILocalVariable(name: "s_pitch", arg: 7, scope: !6546, file: !1, line: 111, type: !454)
!6560 = !DILocation(line: 111, column: 16, scope: !6546)
!6561 = !DILocalVariable(name: "cellsize", arg: 8, scope: !6546, file: !1, line: 111, type: !454)
!6562 = !DILocation(line: 111, column: 29, scope: !6546)
!6563 = !DILocalVariable(name: "image", arg: 9, scope: !6546, file: !1, line: 112, type: !6459)
!6564 = !DILocation(line: 112, column: 29, scope: !6546)
!6565 = !DILocalVariable(name: "buf", arg: 10, scope: !6546, file: !1, line: 112, type: !4649)
!6566 = !DILocation(line: 112, column: 40, scope: !6546)
!6567 = !DILocalVariable(name: "dst", arg: 11, scope: !6546, file: !1, line: 113, type: !4649)
!6568 = !DILocation(line: 113, column: 16, scope: !6546)
!6569 = !DILocalVariable(name: "charmask", scope: !6546, file: !1, line: 115, type: !142)
!6570 = !DILocation(line: 115, column: 6, scope: !6546)
!6571 = !DILocation(line: 115, column: 17, scope: !6546)
!6572 = !DILocation(line: 115, column: 21, scope: !6546)
!6573 = !DILocalVariable(name: "shift_low", scope: !6546, file: !1, line: 116, type: !454)
!6574 = !DILocation(line: 116, column: 6, scope: !6546)
!6575 = !DILocalVariable(name: "mod", scope: !6546, file: !1, line: 116, type: !454)
!6576 = !DILocation(line: 116, column: 21, scope: !6546)
!6577 = !DILocation(line: 116, column: 27, scope: !6546)
!6578 = !DILocation(line: 116, column: 31, scope: !6546)
!6579 = !DILocation(line: 116, column: 39, scope: !6546)
!6580 = !DILocation(line: 116, column: 45, scope: !6546)
!6581 = !DILocalVariable(name: "shift_high", scope: !6546, file: !1, line: 117, type: !454)
!6582 = !DILocation(line: 117, column: 6, scope: !6546)
!6583 = !DILocalVariable(name: "idx", scope: !6546, file: !1, line: 118, type: !454)
!6584 = !DILocation(line: 118, column: 6, scope: !6546)
!6585 = !DILocation(line: 118, column: 12, scope: !6546)
!6586 = !DILocation(line: 118, column: 16, scope: !6546)
!6587 = !DILocation(line: 118, column: 24, scope: !6546)
!6588 = !DILocation(line: 118, column: 30, scope: !6546)
!6589 = !DILocalVariable(name: "src", scope: !6546, file: !1, line: 119, type: !4649)
!6590 = !DILocation(line: 119, column: 6, scope: !6546)
!6591 = !DILocation(line: 121, column: 2, scope: !6546)
!6592 = !DILocation(line: 121, column: 12, scope: !6546)
!6593 = !DILocation(line: 122, column: 9, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6546, file: !1, line: 121, column: 16)
!6595 = !DILocation(line: 122, column: 13, scope: !6594)
!6596 = !DILocation(line: 122, column: 21, scope: !6594)
!6597 = !DILocation(line: 122, column: 29, scope: !6594)
!6598 = !DILocation(line: 123, column: 8, scope: !6594)
!6599 = !DILocation(line: 122, column: 43, scope: !6594)
!6600 = !DILocation(line: 123, column: 18, scope: !6594)
!6601 = !DILocation(line: 123, column: 17, scope: !6594)
!6602 = !DILocation(line: 122, column: 26, scope: !6594)
!6603 = !DILocation(line: 122, column: 7, scope: !6594)
!6604 = !DILocation(line: 125, column: 7, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6594, file: !1, line: 125, column: 7)
!6606 = !DILocation(line: 125, column: 7, scope: !6594)
!6607 = !DILocation(line: 126, column: 16, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6605, file: !1, line: 125, column: 13)
!6609 = !DILocation(line: 126, column: 21, scope: !6608)
!6610 = !DILocation(line: 126, column: 26, scope: !6608)
!6611 = !DILocation(line: 126, column: 32, scope: !6608)
!6612 = !DILocation(line: 126, column: 4, scope: !6608)
!6613 = !DILocation(line: 127, column: 10, scope: !6608)
!6614 = !DILocation(line: 127, column: 8, scope: !6608)
!6615 = !DILocation(line: 128, column: 3, scope: !6608)
!6616 = !DILocation(line: 130, column: 27, scope: !6594)
!6617 = !DILocation(line: 130, column: 32, scope: !6594)
!6618 = !DILocation(line: 130, column: 41, scope: !6594)
!6619 = !DILocation(line: 130, column: 46, scope: !6594)
!6620 = !DILocation(line: 131, column: 6, scope: !6594)
!6621 = !DILocation(line: 131, column: 13, scope: !6594)
!6622 = !DILocation(line: 131, column: 21, scope: !6594)
!6623 = !DILocation(line: 132, column: 6, scope: !6594)
!6624 = !DILocation(line: 132, column: 17, scope: !6594)
!6625 = !DILocation(line: 130, column: 3, scope: !6594)
!6626 = !DILocation(line: 133, column: 16, scope: !6594)
!6627 = !DILocation(line: 133, column: 13, scope: !6594)
!6628 = !DILocation(line: 134, column: 11, scope: !6594)
!6629 = !DILocation(line: 134, column: 21, scope: !6594)
!6630 = !DILocation(line: 134, column: 10, scope: !6594)
!6631 = !DILocation(line: 134, column: 29, scope: !6594)
!6632 = !DILocation(line: 134, column: 39, scope: !6594)
!6633 = !DILocation(line: 134, column: 47, scope: !6594)
!6634 = !DILocation(line: 134, column: 7, scope: !6594)
!6635 = !DILocation(line: 135, column: 13, scope: !6594)
!6636 = !DILocation(line: 136, column: 20, scope: !6594)
!6637 = !DILocation(line: 136, column: 18, scope: !6594)
!6638 = !DILocation(line: 136, column: 14, scope: !6594)
!6639 = distinct !{!6639, !6591, !6640}
!6640 = !DILocation(line: 137, column: 2, scope: !6546)
!6641 = !DILocation(line: 139, column: 2, scope: !6546)
!6642 = !DILocation(line: 139, column: 8, scope: !6546)
!6643 = !DILocation(line: 139, column: 15, scope: !6546)
!6644 = !DILocation(line: 139, column: 28, scope: !6546)
!6645 = !DILocation(line: 139, column: 34, scope: !6546)
!6646 = !DILocation(line: 141, column: 1, scope: !6546)
!6647 = distinct !DISubprogram(name: "get_order", scope: !6648, file: !6648, line: 29, type: !6649, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6648 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!140, !194}
!6651 = !DILocalVariable(name: "x", arg: 1, scope: !6652, file: !6653, line: 366, type: !459)
!6652 = distinct !DISubprogram(name: "fls64", scope: !6653, file: !6653, line: 366, type: !6654, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6653 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6654 = !DISubroutineType(types: !6655)
!6655 = !{!140, !459}
!6656 = !DILocation(line: 366, column: 40, scope: !6652, inlinedAt: !6657)
!6657 = distinct !DILocation(line: 46, column: 9, scope: !6647)
!6658 = !DILocalVariable(name: "bitpos", scope: !6652, file: !6653, line: 368, type: !140)
!6659 = !DILocation(line: 368, column: 6, scope: !6652, inlinedAt: !6657)
!6660 = !DILocalVariable(name: "size", arg: 1, scope: !6647, file: !6648, line: 29, type: !194)
!6661 = !DILocation(line: 29, column: 63, scope: !6647)
!6662 = !DILocation(line: 31, column: 27, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6647, file: !6648, line: 31, column: 6)
!6664 = !DILocation(line: 31, column: 6, scope: !6663)
!6665 = !DILocation(line: 31, column: 6, scope: !6647)
!6666 = !DILocation(line: 32, column: 8, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6668, file: !6648, line: 32, column: 7)
!6668 = distinct !DILexicalBlock(scope: !6663, file: !6648, line: 31, column: 34)
!6669 = !DILocation(line: 32, column: 7, scope: !6668)
!6670 = !DILocation(line: 33, column: 4, scope: !6667)
!6671 = !DILocation(line: 35, column: 7, scope: !6672)
!6672 = distinct !DILexicalBlock(scope: !6668, file: !6648, line: 35, column: 7)
!6673 = !DILocation(line: 35, column: 12, scope: !6672)
!6674 = !DILocation(line: 35, column: 7, scope: !6668)
!6675 = !DILocation(line: 36, column: 4, scope: !6672)
!6676 = !DILocation(line: 38, column: 10, scope: !6668)
!6677 = !DILocation(line: 38, column: 28, scope: !6668)
!6678 = !DILocation(line: 38, column: 41, scope: !6668)
!6679 = !DILocation(line: 38, column: 3, scope: !6668)
!6680 = !DILocation(line: 41, column: 6, scope: !6647)
!6681 = !DILocation(line: 42, column: 7, scope: !6647)
!6682 = !DILocation(line: 46, column: 15, scope: !6647)
!6683 = !DILocation(line: 374, column: 2, scope: !6652, inlinedAt: !6657)
!6684 = !DILocation(line: 376, column: 14, scope: !6652, inlinedAt: !6657)
!6685 = !{i32 307192}
!6686 = !DILocation(line: 377, column: 9, scope: !6652, inlinedAt: !6657)
!6687 = !DILocation(line: 377, column: 16, scope: !6652, inlinedAt: !6657)
!6688 = !DILocation(line: 46, column: 2, scope: !6647)
!6689 = !DILocation(line: 48, column: 1, scope: !6647)
!6690 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6691, file: !6691, line: 30, type: !6692, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6691 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6692 = !DISubroutineType(types: !6693)
!6693 = !{!140, !458}
!6694 = !DILocation(line: 366, column: 40, scope: !6652, inlinedAt: !6695)
!6695 = distinct !DILocation(line: 32, column: 9, scope: !6690)
!6696 = !DILocation(line: 368, column: 6, scope: !6652, inlinedAt: !6695)
!6697 = !DILocalVariable(name: "n", arg: 1, scope: !6690, file: !6691, line: 30, type: !458)
!6698 = !DILocation(line: 30, column: 21, scope: !6690)
!6699 = !DILocation(line: 32, column: 15, scope: !6690)
!6700 = !DILocation(line: 374, column: 2, scope: !6652, inlinedAt: !6695)
!6701 = !DILocation(line: 376, column: 14, scope: !6652, inlinedAt: !6695)
!6702 = !DILocation(line: 377, column: 9, scope: !6652, inlinedAt: !6695)
!6703 = !DILocation(line: 377, column: 16, scope: !6652, inlinedAt: !6695)
!6704 = !DILocation(line: 32, column: 18, scope: !6690)
!6705 = !DILocation(line: 32, column: 2, scope: !6690)
!6706 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6707, file: !6707, line: 137, type: !6708, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6707 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6708 = !DISubroutineType(types: !6709)
!6709 = !{!139, !996, !2220, !366, !137}
!6710 = !DILocalVariable(name: "s", arg: 1, scope: !6706, file: !6707, line: 137, type: !996)
!6711 = !DILocation(line: 137, column: 54, scope: !6706)
!6712 = !DILocalVariable(name: "object", arg: 2, scope: !6706, file: !6707, line: 137, type: !2220)
!6713 = !DILocation(line: 137, column: 69, scope: !6706)
!6714 = !DILocalVariable(name: "size", arg: 3, scope: !6706, file: !6707, line: 138, type: !366)
!6715 = !DILocation(line: 138, column: 12, scope: !6706)
!6716 = !DILocalVariable(name: "flags", arg: 4, scope: !6706, file: !6707, line: 138, type: !137)
!6717 = !DILocation(line: 138, column: 24, scope: !6706)
!6718 = !DILocation(line: 140, column: 17, scope: !6706)
!6719 = !DILocation(line: 140, column: 2, scope: !6706)
!6720 = distinct !DISubprogram(name: "update_attr", scope: !1, file: !1, line: 25, type: !6721, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6721 = !DISubroutineType(types: !6722)
!6722 = !{null, !4649, !4649, !140, !163}
!6723 = !DILocalVariable(name: "dst", arg: 1, scope: !6720, file: !1, line: 25, type: !4649)
!6724 = !DILocation(line: 25, column: 29, scope: !6720)
!6725 = !DILocalVariable(name: "src", arg: 2, scope: !6720, file: !1, line: 25, type: !4649)
!6726 = !DILocation(line: 25, column: 38, scope: !6720)
!6727 = !DILocalVariable(name: "attribute", arg: 3, scope: !6720, file: !1, line: 25, type: !140)
!6728 = !DILocation(line: 25, column: 47, scope: !6720)
!6729 = !DILocalVariable(name: "vc", arg: 4, scope: !6720, file: !1, line: 26, type: !163)
!6730 = !DILocation(line: 26, column: 27, scope: !6720)
!6731 = !DILocalVariable(name: "i", scope: !6720, file: !1, line: 28, type: !140)
!6732 = !DILocation(line: 28, column: 6, scope: !6720)
!6733 = !DILocalVariable(name: "offset", scope: !6720, file: !1, line: 28, type: !140)
!6734 = !DILocation(line: 28, column: 9, scope: !6720)
!6735 = !DILocation(line: 28, column: 19, scope: !6720)
!6736 = !DILocation(line: 28, column: 23, scope: !6720)
!6737 = !DILocation(line: 28, column: 31, scope: !6720)
!6738 = !DILocation(line: 28, column: 38, scope: !6720)
!6739 = !DILocation(line: 28, column: 18, scope: !6720)
!6740 = !DILocalVariable(name: "width", scope: !6720, file: !1, line: 29, type: !140)
!6741 = !DILocation(line: 29, column: 6, scope: !6720)
!6742 = !DILocation(line: 29, column: 14, scope: !6720)
!6743 = !DILocalVariable(name: "cellsize", scope: !6720, file: !1, line: 30, type: !5)
!6744 = !DILocation(line: 30, column: 15, scope: !6720)
!6745 = !DILocation(line: 30, column: 26, scope: !6720)
!6746 = !DILocation(line: 30, column: 30, scope: !6720)
!6747 = !DILocation(line: 30, column: 38, scope: !6720)
!6748 = !DILocation(line: 30, column: 47, scope: !6720)
!6749 = !DILocation(line: 30, column: 45, scope: !6720)
!6750 = !DILocalVariable(name: "c", scope: !6720, file: !1, line: 31, type: !1403)
!6751 = !DILocation(line: 31, column: 5, scope: !6720)
!6752 = !DILocation(line: 33, column: 11, scope: !6720)
!6753 = !DILocation(line: 33, column: 23, scope: !6720)
!6754 = !DILocation(line: 33, column: 32, scope: !6720)
!6755 = !DILocation(line: 33, column: 30, scope: !6720)
!6756 = !DILocation(line: 33, column: 20, scope: !6720)
!6757 = !DILocation(line: 33, column: 9, scope: !6720)
!6758 = !DILocation(line: 34, column: 9, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6720, file: !1, line: 34, column: 2)
!6760 = !DILocation(line: 34, column: 7, scope: !6759)
!6761 = !DILocation(line: 34, column: 14, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6759, file: !1, line: 34, column: 2)
!6763 = !DILocation(line: 34, column: 18, scope: !6762)
!6764 = !DILocation(line: 34, column: 16, scope: !6762)
!6765 = !DILocation(line: 34, column: 2, scope: !6759)
!6766 = !DILocation(line: 35, column: 7, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6762, file: !1, line: 34, column: 33)
!6768 = !DILocation(line: 35, column: 11, scope: !6767)
!6769 = !DILocation(line: 35, column: 5, scope: !6767)
!6770 = !DILocation(line: 36, column: 7, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6767, file: !1, line: 36, column: 7)
!6772 = !DILocation(line: 36, column: 17, scope: !6771)
!6773 = !DILocation(line: 36, column: 45, scope: !6771)
!6774 = !DILocation(line: 36, column: 48, scope: !6771)
!6775 = !DILocation(line: 36, column: 53, scope: !6771)
!6776 = !DILocation(line: 36, column: 50, scope: !6771)
!6777 = !DILocation(line: 36, column: 7, scope: !6767)
!6778 = !DILocation(line: 37, column: 6, scope: !6771)
!6779 = !DILocation(line: 37, column: 4, scope: !6771)
!6780 = !DILocation(line: 38, column: 7, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6767, file: !1, line: 38, column: 7)
!6782 = !DILocation(line: 38, column: 17, scope: !6781)
!6783 = !DILocation(line: 38, column: 7, scope: !6767)
!6784 = !DILocation(line: 39, column: 9, scope: !6781)
!6785 = !DILocation(line: 39, column: 11, scope: !6781)
!6786 = !DILocation(line: 39, column: 6, scope: !6781)
!6787 = !DILocation(line: 39, column: 4, scope: !6781)
!6788 = !DILocation(line: 40, column: 7, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6767, file: !1, line: 40, column: 7)
!6790 = !DILocation(line: 40, column: 17, scope: !6789)
!6791 = !DILocation(line: 40, column: 7, scope: !6767)
!6792 = !DILocation(line: 41, column: 9, scope: !6789)
!6793 = !DILocation(line: 41, column: 8, scope: !6789)
!6794 = !DILocation(line: 41, column: 6, scope: !6789)
!6795 = !DILocation(line: 41, column: 4, scope: !6789)
!6796 = !DILocation(line: 42, column: 12, scope: !6767)
!6797 = !DILocation(line: 42, column: 3, scope: !6767)
!6798 = !DILocation(line: 42, column: 7, scope: !6767)
!6799 = !DILocation(line: 42, column: 10, scope: !6767)
!6800 = !DILocation(line: 43, column: 2, scope: !6767)
!6801 = !DILocation(line: 34, column: 29, scope: !6762)
!6802 = !DILocation(line: 34, column: 2, scope: !6762)
!6803 = distinct !{!6803, !6765, !6804}
!6804 = !DILocation(line: 43, column: 2, scope: !6759)
!6805 = !DILocation(line: 44, column: 1, scope: !6720)
!6806 = distinct !DISubprogram(name: "__fb_pad_aligned_buffer", scope: !4517, file: !4517, line: 644, type: !6807, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6807 = !DISubroutineType(types: !6808)
!6808 = !{null, !4649, !454, !4649, !454, !454}
!6809 = !DILocalVariable(name: "dst", arg: 1, scope: !6806, file: !4517, line: 644, type: !4649)
!6810 = !DILocation(line: 644, column: 48, scope: !6806)
!6811 = !DILocalVariable(name: "d_pitch", arg: 2, scope: !6806, file: !4517, line: 644, type: !454)
!6812 = !DILocation(line: 644, column: 57, scope: !6806)
!6813 = !DILocalVariable(name: "src", arg: 3, scope: !6806, file: !4517, line: 645, type: !4649)
!6814 = !DILocation(line: 645, column: 13, scope: !6806)
!6815 = !DILocalVariable(name: "s_pitch", arg: 4, scope: !6806, file: !4517, line: 645, type: !454)
!6816 = !DILocation(line: 645, column: 22, scope: !6806)
!6817 = !DILocalVariable(name: "height", arg: 5, scope: !6806, file: !4517, line: 645, type: !454)
!6818 = !DILocation(line: 645, column: 35, scope: !6806)
!6819 = !DILocalVariable(name: "i", scope: !6806, file: !4517, line: 647, type: !454)
!6820 = !DILocation(line: 647, column: 6, scope: !6806)
!6821 = !DILocalVariable(name: "j", scope: !6806, file: !4517, line: 647, type: !454)
!6822 = !DILocation(line: 647, column: 9, scope: !6806)
!6823 = !DILocation(line: 649, column: 13, scope: !6806)
!6824 = !DILocation(line: 649, column: 10, scope: !6806)
!6825 = !DILocation(line: 651, column: 11, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6806, file: !4517, line: 651, column: 2)
!6827 = !DILocation(line: 651, column: 9, scope: !6826)
!6828 = !DILocation(line: 651, column: 7, scope: !6826)
!6829 = !DILocation(line: 651, column: 20, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6826, file: !4517, line: 651, column: 2)
!6831 = !DILocation(line: 651, column: 2, scope: !6826)
!6832 = !DILocation(line: 653, column: 10, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6834, file: !4517, line: 653, column: 3)
!6834 = distinct !DILexicalBlock(scope: !6830, file: !4517, line: 651, column: 26)
!6835 = !DILocation(line: 653, column: 8, scope: !6833)
!6836 = !DILocation(line: 653, column: 15, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6833, file: !4517, line: 653, column: 3)
!6838 = !DILocation(line: 653, column: 19, scope: !6837)
!6839 = !DILocation(line: 653, column: 17, scope: !6837)
!6840 = !DILocation(line: 653, column: 3, scope: !6833)
!6841 = !DILocation(line: 654, column: 17, scope: !6837)
!6842 = !DILocation(line: 654, column: 13, scope: !6837)
!6843 = !DILocation(line: 654, column: 8, scope: !6837)
!6844 = !DILocation(line: 654, column: 11, scope: !6837)
!6845 = !DILocation(line: 654, column: 4, scope: !6837)
!6846 = !DILocation(line: 653, column: 29, scope: !6837)
!6847 = !DILocation(line: 653, column: 3, scope: !6837)
!6848 = distinct !{!6848, !6840, !6849}
!6849 = !DILocation(line: 654, column: 17, scope: !6833)
!6850 = !DILocation(line: 655, column: 10, scope: !6834)
!6851 = !DILocation(line: 655, column: 7, scope: !6834)
!6852 = !DILocation(line: 651, column: 2, scope: !6830)
!6853 = distinct !{!6853, !6831, !6854}
!6854 = !DILocation(line: 656, column: 2, scope: !6826)
!6855 = !DILocation(line: 657, column: 1, scope: !6806)
!6856 = distinct !DISubprogram(name: "real_y", scope: !157, file: !157, line: 221, type: !6857, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6857 = !DISubroutineType(types: !6858)
!6858 = !{!140, !5004, !140}
!6859 = !DILocalVariable(name: "p", arg: 1, scope: !6856, file: !157, line: 221, type: !5004)
!6860 = !DILocation(line: 221, column: 48, scope: !6856)
!6861 = !DILocalVariable(name: "ypos", arg: 2, scope: !6856, file: !157, line: 221, type: !140)
!6862 = !DILocation(line: 221, column: 55, scope: !6856)
!6863 = !DILocalVariable(name: "rows", scope: !6856, file: !157, line: 223, type: !140)
!6864 = !DILocation(line: 223, column: 6, scope: !6856)
!6865 = !DILocation(line: 223, column: 13, scope: !6856)
!6866 = !DILocation(line: 223, column: 16, scope: !6856)
!6867 = !DILocation(line: 225, column: 10, scope: !6856)
!6868 = !DILocation(line: 225, column: 13, scope: !6856)
!6869 = !DILocation(line: 225, column: 7, scope: !6856)
!6870 = !DILocation(line: 226, column: 9, scope: !6856)
!6871 = !DILocation(line: 226, column: 16, scope: !6856)
!6872 = !DILocation(line: 226, column: 14, scope: !6856)
!6873 = !DILocation(line: 226, column: 23, scope: !6856)
!6874 = !DILocation(line: 226, column: 30, scope: !6856)
!6875 = !DILocation(line: 226, column: 37, scope: !6856)
!6876 = !DILocation(line: 226, column: 35, scope: !6856)
!6877 = !DILocation(line: 226, column: 2, scope: !6856)
!6878 = distinct !DISubprogram(name: "kmalloc_array", scope: !130, file: !130, line: 584, type: !6879, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!6879 = !DISubroutineType(types: !6880)
!6880 = !{!139, !366, !366, !137}
!6881 = !DILocation(line: 445, column: 72, scope: !5209, inlinedAt: !6882)
!6882 = distinct !DILocation(line: 552, column: 10, scope: !5214, inlinedAt: !6883)
!6883 = distinct !DILocation(line: 591, column: 10, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6878, file: !130, line: 590, column: 6)
!6885 = !DILocation(line: 446, column: 9, scope: !5209, inlinedAt: !6882)
!6886 = !DILocation(line: 446, column: 23, scope: !5209, inlinedAt: !6882)
!6887 = !DILocation(line: 448, column: 8, scope: !5209, inlinedAt: !6882)
!6888 = !DILocation(line: 318, column: 67, scope: !5229, inlinedAt: !6889)
!6889 = distinct !DILocation(line: 553, column: 20, scope: !5214, inlinedAt: !6883)
!6890 = !DILocation(line: 346, column: 58, scope: !5235, inlinedAt: !6891)
!6891 = distinct !DILocation(line: 547, column: 11, scope: !5214, inlinedAt: !6883)
!6892 = !DILocation(line: 472, column: 28, scope: !5241, inlinedAt: !6893)
!6893 = distinct !DILocation(line: 481, column: 9, scope: !5246, inlinedAt: !6894)
!6894 = distinct !DILocation(line: 545, column: 11, scope: !5248, inlinedAt: !6883)
!6895 = !DILocation(line: 472, column: 40, scope: !5241, inlinedAt: !6893)
!6896 = !DILocation(line: 472, column: 60, scope: !5241, inlinedAt: !6893)
!6897 = !DILocation(line: 478, column: 51, scope: !5246, inlinedAt: !6894)
!6898 = !DILocation(line: 478, column: 63, scope: !5246, inlinedAt: !6894)
!6899 = !DILocation(line: 480, column: 15, scope: !5246, inlinedAt: !6894)
!6900 = !DILocation(line: 538, column: 45, scope: !5216, inlinedAt: !6883)
!6901 = !DILocation(line: 538, column: 57, scope: !5216, inlinedAt: !6883)
!6902 = !DILocation(line: 542, column: 16, scope: !5214, inlinedAt: !6883)
!6903 = !DILocalVariable(name: "n", arg: 1, scope: !6878, file: !130, line: 584, type: !366)
!6904 = !DILocation(line: 584, column: 42, scope: !6878)
!6905 = !DILocalVariable(name: "size", arg: 2, scope: !6878, file: !130, line: 584, type: !366)
!6906 = !DILocation(line: 584, column: 52, scope: !6878)
!6907 = !DILocalVariable(name: "flags", arg: 3, scope: !6878, file: !130, line: 584, type: !137)
!6908 = !DILocation(line: 584, column: 64, scope: !6878)
!6909 = !DILocalVariable(name: "bytes", scope: !6878, file: !130, line: 586, type: !366)
!6910 = !DILocation(line: 586, column: 9, scope: !6878)
!6911 = !DILocalVariable(name: "__a", scope: !6912, file: !130, line: 588, type: !366)
!6912 = distinct !DILexicalBlock(scope: !6913, file: !130, line: 588, column: 6)
!6913 = distinct !DILexicalBlock(scope: !6878, file: !130, line: 588, column: 6)
!6914 = !DILocation(line: 588, column: 6, scope: !6912)
!6915 = !DILocalVariable(name: "__b", scope: !6912, file: !130, line: 588, type: !366)
!6916 = !DILocalVariable(name: "__d", scope: !6912, file: !130, line: 588, type: !6917)
!6917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!6918 = !DILocation(line: 588, column: 6, scope: !6913)
!6919 = !DILocation(line: 588, column: 6, scope: !6878)
!6920 = !DILocation(line: 589, column: 3, scope: !6913)
!6921 = !DILocation(line: 590, column: 27, scope: !6884)
!6922 = !DILocation(line: 590, column: 6, scope: !6884)
!6923 = !DILocation(line: 590, column: 30, scope: !6884)
!6924 = !DILocation(line: 590, column: 54, scope: !6884)
!6925 = !DILocation(line: 590, column: 33, scope: !6884)
!6926 = !DILocation(line: 590, column: 6, scope: !6878)
!6927 = !DILocation(line: 591, column: 18, scope: !6884)
!6928 = !DILocation(line: 591, column: 25, scope: !6884)
!6929 = !DILocation(line: 540, column: 27, scope: !5215, inlinedAt: !6883)
!6930 = !DILocation(line: 540, column: 6, scope: !5215, inlinedAt: !6883)
!6931 = !DILocation(line: 540, column: 6, scope: !5216, inlinedAt: !6883)
!6932 = !DILocation(line: 544, column: 7, scope: !5248, inlinedAt: !6883)
!6933 = !DILocation(line: 544, column: 12, scope: !5248, inlinedAt: !6883)
!6934 = !DILocation(line: 544, column: 7, scope: !5214, inlinedAt: !6883)
!6935 = !DILocation(line: 545, column: 25, scope: !5248, inlinedAt: !6883)
!6936 = !DILocation(line: 545, column: 31, scope: !5248, inlinedAt: !6883)
!6937 = !DILocation(line: 480, column: 33, scope: !5246, inlinedAt: !6894)
!6938 = !DILocation(line: 480, column: 23, scope: !5246, inlinedAt: !6894)
!6939 = !DILocation(line: 481, column: 29, scope: !5246, inlinedAt: !6894)
!6940 = !DILocation(line: 481, column: 35, scope: !5246, inlinedAt: !6894)
!6941 = !DILocation(line: 481, column: 42, scope: !5246, inlinedAt: !6894)
!6942 = !DILocation(line: 474, column: 23, scope: !5241, inlinedAt: !6893)
!6943 = !DILocation(line: 474, column: 29, scope: !5241, inlinedAt: !6893)
!6944 = !DILocation(line: 474, column: 36, scope: !5241, inlinedAt: !6893)
!6945 = !DILocation(line: 474, column: 9, scope: !5241, inlinedAt: !6893)
!6946 = !DILocation(line: 545, column: 4, scope: !5248, inlinedAt: !6883)
!6947 = !DILocation(line: 547, column: 25, scope: !5214, inlinedAt: !6883)
!6948 = !DILocation(line: 348, column: 7, scope: !5383, inlinedAt: !6891)
!6949 = !DILocation(line: 348, column: 6, scope: !5235, inlinedAt: !6891)
!6950 = !DILocation(line: 349, column: 3, scope: !5383, inlinedAt: !6891)
!6951 = !DILocation(line: 351, column: 6, scope: !5387, inlinedAt: !6891)
!6952 = !DILocation(line: 351, column: 11, scope: !5387, inlinedAt: !6891)
!6953 = !DILocation(line: 351, column: 6, scope: !5235, inlinedAt: !6891)
!6954 = !DILocation(line: 352, column: 3, scope: !5387, inlinedAt: !6891)
!6955 = !DILocation(line: 354, column: 32, scope: !5392, inlinedAt: !6891)
!6956 = !DILocation(line: 354, column: 37, scope: !5392, inlinedAt: !6891)
!6957 = !DILocation(line: 354, column: 42, scope: !5392, inlinedAt: !6891)
!6958 = !DILocation(line: 354, column: 45, scope: !5392, inlinedAt: !6891)
!6959 = !DILocation(line: 354, column: 50, scope: !5392, inlinedAt: !6891)
!6960 = !DILocation(line: 354, column: 6, scope: !5235, inlinedAt: !6891)
!6961 = !DILocation(line: 355, column: 3, scope: !5392, inlinedAt: !6891)
!6962 = !DILocation(line: 356, column: 32, scope: !5400, inlinedAt: !6891)
!6963 = !DILocation(line: 356, column: 37, scope: !5400, inlinedAt: !6891)
!6964 = !DILocation(line: 356, column: 43, scope: !5400, inlinedAt: !6891)
!6965 = !DILocation(line: 356, column: 46, scope: !5400, inlinedAt: !6891)
!6966 = !DILocation(line: 356, column: 51, scope: !5400, inlinedAt: !6891)
!6967 = !DILocation(line: 356, column: 6, scope: !5235, inlinedAt: !6891)
!6968 = !DILocation(line: 357, column: 3, scope: !5400, inlinedAt: !6891)
!6969 = !DILocation(line: 358, column: 6, scope: !5408, inlinedAt: !6891)
!6970 = !DILocation(line: 358, column: 11, scope: !5408, inlinedAt: !6891)
!6971 = !DILocation(line: 358, column: 6, scope: !5235, inlinedAt: !6891)
!6972 = !DILocation(line: 358, column: 26, scope: !5408, inlinedAt: !6891)
!6973 = !DILocation(line: 359, column: 6, scope: !5413, inlinedAt: !6891)
!6974 = !DILocation(line: 359, column: 11, scope: !5413, inlinedAt: !6891)
!6975 = !DILocation(line: 359, column: 6, scope: !5235, inlinedAt: !6891)
!6976 = !DILocation(line: 359, column: 26, scope: !5413, inlinedAt: !6891)
!6977 = !DILocation(line: 360, column: 6, scope: !5418, inlinedAt: !6891)
!6978 = !DILocation(line: 360, column: 11, scope: !5418, inlinedAt: !6891)
!6979 = !DILocation(line: 360, column: 6, scope: !5235, inlinedAt: !6891)
!6980 = !DILocation(line: 360, column: 26, scope: !5418, inlinedAt: !6891)
!6981 = !DILocation(line: 361, column: 6, scope: !5423, inlinedAt: !6891)
!6982 = !DILocation(line: 361, column: 11, scope: !5423, inlinedAt: !6891)
!6983 = !DILocation(line: 361, column: 6, scope: !5235, inlinedAt: !6891)
!6984 = !DILocation(line: 361, column: 26, scope: !5423, inlinedAt: !6891)
!6985 = !DILocation(line: 362, column: 6, scope: !5428, inlinedAt: !6891)
!6986 = !DILocation(line: 362, column: 11, scope: !5428, inlinedAt: !6891)
!6987 = !DILocation(line: 362, column: 6, scope: !5235, inlinedAt: !6891)
!6988 = !DILocation(line: 362, column: 26, scope: !5428, inlinedAt: !6891)
!6989 = !DILocation(line: 363, column: 6, scope: !5433, inlinedAt: !6891)
!6990 = !DILocation(line: 363, column: 11, scope: !5433, inlinedAt: !6891)
!6991 = !DILocation(line: 363, column: 6, scope: !5235, inlinedAt: !6891)
!6992 = !DILocation(line: 363, column: 26, scope: !5433, inlinedAt: !6891)
!6993 = !DILocation(line: 364, column: 6, scope: !5438, inlinedAt: !6891)
!6994 = !DILocation(line: 364, column: 11, scope: !5438, inlinedAt: !6891)
!6995 = !DILocation(line: 364, column: 6, scope: !5235, inlinedAt: !6891)
!6996 = !DILocation(line: 364, column: 26, scope: !5438, inlinedAt: !6891)
!6997 = !DILocation(line: 365, column: 6, scope: !5443, inlinedAt: !6891)
!6998 = !DILocation(line: 365, column: 11, scope: !5443, inlinedAt: !6891)
!6999 = !DILocation(line: 365, column: 6, scope: !5235, inlinedAt: !6891)
!7000 = !DILocation(line: 365, column: 26, scope: !5443, inlinedAt: !6891)
!7001 = !DILocation(line: 366, column: 6, scope: !5448, inlinedAt: !6891)
!7002 = !DILocation(line: 366, column: 11, scope: !5448, inlinedAt: !6891)
!7003 = !DILocation(line: 366, column: 6, scope: !5235, inlinedAt: !6891)
!7004 = !DILocation(line: 366, column: 26, scope: !5448, inlinedAt: !6891)
!7005 = !DILocation(line: 367, column: 6, scope: !5453, inlinedAt: !6891)
!7006 = !DILocation(line: 367, column: 11, scope: !5453, inlinedAt: !6891)
!7007 = !DILocation(line: 367, column: 6, scope: !5235, inlinedAt: !6891)
!7008 = !DILocation(line: 367, column: 26, scope: !5453, inlinedAt: !6891)
!7009 = !DILocation(line: 368, column: 6, scope: !5458, inlinedAt: !6891)
!7010 = !DILocation(line: 368, column: 11, scope: !5458, inlinedAt: !6891)
!7011 = !DILocation(line: 368, column: 6, scope: !5235, inlinedAt: !6891)
!7012 = !DILocation(line: 368, column: 26, scope: !5458, inlinedAt: !6891)
!7013 = !DILocation(line: 369, column: 6, scope: !5463, inlinedAt: !6891)
!7014 = !DILocation(line: 369, column: 11, scope: !5463, inlinedAt: !6891)
!7015 = !DILocation(line: 369, column: 6, scope: !5235, inlinedAt: !6891)
!7016 = !DILocation(line: 369, column: 26, scope: !5463, inlinedAt: !6891)
!7017 = !DILocation(line: 370, column: 6, scope: !5468, inlinedAt: !6891)
!7018 = !DILocation(line: 370, column: 11, scope: !5468, inlinedAt: !6891)
!7019 = !DILocation(line: 370, column: 6, scope: !5235, inlinedAt: !6891)
!7020 = !DILocation(line: 370, column: 26, scope: !5468, inlinedAt: !6891)
!7021 = !DILocation(line: 371, column: 6, scope: !5473, inlinedAt: !6891)
!7022 = !DILocation(line: 371, column: 11, scope: !5473, inlinedAt: !6891)
!7023 = !DILocation(line: 371, column: 6, scope: !5235, inlinedAt: !6891)
!7024 = !DILocation(line: 371, column: 26, scope: !5473, inlinedAt: !6891)
!7025 = !DILocation(line: 372, column: 6, scope: !5478, inlinedAt: !6891)
!7026 = !DILocation(line: 372, column: 11, scope: !5478, inlinedAt: !6891)
!7027 = !DILocation(line: 372, column: 6, scope: !5235, inlinedAt: !6891)
!7028 = !DILocation(line: 372, column: 26, scope: !5478, inlinedAt: !6891)
!7029 = !DILocation(line: 373, column: 6, scope: !5483, inlinedAt: !6891)
!7030 = !DILocation(line: 373, column: 11, scope: !5483, inlinedAt: !6891)
!7031 = !DILocation(line: 373, column: 6, scope: !5235, inlinedAt: !6891)
!7032 = !DILocation(line: 373, column: 26, scope: !5483, inlinedAt: !6891)
!7033 = !DILocation(line: 374, column: 6, scope: !5488, inlinedAt: !6891)
!7034 = !DILocation(line: 374, column: 11, scope: !5488, inlinedAt: !6891)
!7035 = !DILocation(line: 374, column: 6, scope: !5235, inlinedAt: !6891)
!7036 = !DILocation(line: 374, column: 26, scope: !5488, inlinedAt: !6891)
!7037 = !DILocation(line: 375, column: 6, scope: !5493, inlinedAt: !6891)
!7038 = !DILocation(line: 375, column: 11, scope: !5493, inlinedAt: !6891)
!7039 = !DILocation(line: 375, column: 6, scope: !5235, inlinedAt: !6891)
!7040 = !DILocation(line: 375, column: 27, scope: !5493, inlinedAt: !6891)
!7041 = !DILocation(line: 376, column: 6, scope: !5498, inlinedAt: !6891)
!7042 = !DILocation(line: 376, column: 11, scope: !5498, inlinedAt: !6891)
!7043 = !DILocation(line: 376, column: 6, scope: !5235, inlinedAt: !6891)
!7044 = !DILocation(line: 376, column: 32, scope: !5498, inlinedAt: !6891)
!7045 = !DILocation(line: 377, column: 6, scope: !5503, inlinedAt: !6891)
!7046 = !DILocation(line: 377, column: 11, scope: !5503, inlinedAt: !6891)
!7047 = !DILocation(line: 377, column: 6, scope: !5235, inlinedAt: !6891)
!7048 = !DILocation(line: 377, column: 32, scope: !5503, inlinedAt: !6891)
!7049 = !DILocation(line: 378, column: 6, scope: !5508, inlinedAt: !6891)
!7050 = !DILocation(line: 378, column: 11, scope: !5508, inlinedAt: !6891)
!7051 = !DILocation(line: 378, column: 6, scope: !5235, inlinedAt: !6891)
!7052 = !DILocation(line: 378, column: 32, scope: !5508, inlinedAt: !6891)
!7053 = !DILocation(line: 379, column: 6, scope: !5513, inlinedAt: !6891)
!7054 = !DILocation(line: 379, column: 11, scope: !5513, inlinedAt: !6891)
!7055 = !DILocation(line: 379, column: 6, scope: !5235, inlinedAt: !6891)
!7056 = !DILocation(line: 379, column: 33, scope: !5513, inlinedAt: !6891)
!7057 = !DILocation(line: 380, column: 6, scope: !5518, inlinedAt: !6891)
!7058 = !DILocation(line: 380, column: 11, scope: !5518, inlinedAt: !6891)
!7059 = !DILocation(line: 380, column: 6, scope: !5235, inlinedAt: !6891)
!7060 = !DILocation(line: 380, column: 33, scope: !5518, inlinedAt: !6891)
!7061 = !DILocation(line: 381, column: 6, scope: !5523, inlinedAt: !6891)
!7062 = !DILocation(line: 381, column: 11, scope: !5523, inlinedAt: !6891)
!7063 = !DILocation(line: 381, column: 6, scope: !5235, inlinedAt: !6891)
!7064 = !DILocation(line: 381, column: 33, scope: !5523, inlinedAt: !6891)
!7065 = !DILocation(line: 382, column: 2, scope: !5528, inlinedAt: !6891)
!7066 = !DILocation(line: 382, column: 2, scope: !5532, inlinedAt: !6891)
!7067 = !DILocation(line: 382, column: 2, scope: !5533, inlinedAt: !6891)
!7068 = !DILocation(line: 386, column: 1, scope: !5235, inlinedAt: !6891)
!7069 = !DILocation(line: 547, column: 9, scope: !5214, inlinedAt: !6883)
!7070 = !DILocation(line: 549, column: 8, scope: !5539, inlinedAt: !6883)
!7071 = !DILocation(line: 549, column: 7, scope: !5214, inlinedAt: !6883)
!7072 = !DILocation(line: 550, column: 4, scope: !5539, inlinedAt: !6883)
!7073 = !DILocation(line: 553, column: 33, scope: !5214, inlinedAt: !6883)
!7074 = !DILocation(line: 325, column: 6, scope: !5544, inlinedAt: !6889)
!7075 = !DILocation(line: 325, column: 6, scope: !5229, inlinedAt: !6889)
!7076 = !DILocation(line: 326, column: 3, scope: !5544, inlinedAt: !6889)
!7077 = !DILocation(line: 332, column: 9, scope: !5229, inlinedAt: !6889)
!7078 = !DILocation(line: 332, column: 15, scope: !5229, inlinedAt: !6889)
!7079 = !DILocation(line: 332, column: 2, scope: !5229, inlinedAt: !6889)
!7080 = !DILocation(line: 336, column: 1, scope: !5229, inlinedAt: !6889)
!7081 = !DILocation(line: 553, column: 5, scope: !5214, inlinedAt: !6883)
!7082 = !DILocation(line: 553, column: 41, scope: !5214, inlinedAt: !6883)
!7083 = !DILocation(line: 554, column: 5, scope: !5214, inlinedAt: !6883)
!7084 = !DILocation(line: 554, column: 12, scope: !5214, inlinedAt: !6883)
!7085 = !DILocation(line: 448, column: 31, scope: !5209, inlinedAt: !6882)
!7086 = !DILocation(line: 448, column: 34, scope: !5209, inlinedAt: !6882)
!7087 = !DILocation(line: 448, column: 14, scope: !5209, inlinedAt: !6882)
!7088 = !DILocation(line: 450, column: 22, scope: !5209, inlinedAt: !6882)
!7089 = !DILocation(line: 450, column: 25, scope: !5209, inlinedAt: !6882)
!7090 = !DILocation(line: 450, column: 30, scope: !5209, inlinedAt: !6882)
!7091 = !DILocation(line: 450, column: 36, scope: !5209, inlinedAt: !6882)
!7092 = !DILocation(line: 450, column: 8, scope: !5209, inlinedAt: !6882)
!7093 = !DILocation(line: 450, column: 6, scope: !5209, inlinedAt: !6882)
!7094 = !DILocation(line: 451, column: 9, scope: !5209, inlinedAt: !6882)
!7095 = !DILocation(line: 552, column: 3, scope: !5214, inlinedAt: !6883)
!7096 = !DILocation(line: 557, column: 19, scope: !5216, inlinedAt: !6883)
!7097 = !DILocation(line: 557, column: 25, scope: !5216, inlinedAt: !6883)
!7098 = !DILocation(line: 557, column: 9, scope: !5216, inlinedAt: !6883)
!7099 = !DILocation(line: 557, column: 2, scope: !5216, inlinedAt: !6883)
!7100 = !DILocation(line: 558, column: 1, scope: !5216, inlinedAt: !6883)
!7101 = !DILocation(line: 591, column: 3, scope: !6884)
!7102 = !DILocation(line: 592, column: 19, scope: !6878)
!7103 = !DILocation(line: 592, column: 26, scope: !6878)
!7104 = !DILocation(line: 592, column: 9, scope: !6878)
!7105 = !DILocation(line: 592, column: 2, scope: !6878)
!7106 = !DILocation(line: 593, column: 1, scope: !6878)
!7107 = distinct !DISubprogram(name: "__must_check_overflow", scope: !7108, file: !7108, line: 52, type: !7109, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!7108 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!7109 = !DISubroutineType(types: !7110)
!7110 = !{!527, !527}
!7111 = !DILocalVariable(name: "overflow", arg: 1, scope: !7107, file: !7108, line: 52, type: !527)
!7112 = !DILocation(line: 52, column: 60, scope: !7107)
!7113 = !DILocation(line: 54, column: 9, scope: !7107)
!7114 = !DILocation(line: 54, column: 2, scope: !7107)
